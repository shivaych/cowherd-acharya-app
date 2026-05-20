import { NextRequest, NextResponse } from 'next/server';
import { generateObject } from 'ai';
import { google } from '@ai-sdk/google';
import { z } from 'zod';
import { rateLimit, rateLimitKey } from '@/lib/rate-limit';
import { logQuizCall } from '@/lib/server/ai-logger';
import { memoCache } from '@/lib/server/cache';

export const runtime = 'nodejs';
export const preferredRegion = 'bom1';
export const maxDuration = 30;

const MODEL = 'gemini-2.5-flash';

// Tighter descriptions push the model toward shorter output, which is the
// single biggest driver of latency here (Haiku ≈ 100 tok/s).
const QuizSchema = z.object({
  questions: z.array(
    z.object({
      q: z.string().describe('Question text, under 20 words'),
      options: z.array(z.string()).describe('Exactly 4 short options, each under 12 words'),
      correct: z.number().describe('Zero-based index of correct option (0-3)'),
      explanation: z.string().describe('One short sentence, under 25 words'),
    })
  ).describe('Exactly 5 questions'),
});

export async function POST(req: NextRequest) {
  const { moduleId, lang, completedModuleIds, learnerId } = await req.json();

  const key = rateLimitKey(req.headers, learnerId, 'quiz');
  const rl = rateLimit(key);
  if (!rl.allowed) {
    return NextResponse.json(
      { error: 'Too many requests. Please wait.', retryInSeconds: rl.resetInSeconds },
      { status: 429, headers: { 'Retry-After': String(rl.resetInSeconds) } }
    );
  }

  if (!moduleId || typeof moduleId !== 'string' || moduleId.length > 50) {
    return NextResponse.json({ error: 'Invalid moduleId' }, { status: 400 });
  }

  // Validate the optional completed-modules context — cheap defence against
  // a client shipping a multi-MB array.
  let completedIds: string[] = [];
  if (Array.isArray(completedModuleIds)) {
    completedIds = completedModuleIds
      .filter((x): x is string => typeof x === 'string' && x.length > 0 && x.length <= 80)
      .slice(0, 40);
  }

  if (!process.env.GOOGLE_GENERATIVE_AI_API_KEY) {
    return NextResponse.json({ error: 'Quiz service not configured' }, { status: 500 });
  }

  const langInstruction: Record<string, string> = {
    bn: `Generate all questions, options, and explanations in Bengali (বাংলা লিপি). Use simple Bengali a low-literacy farmer can understand.

SCRIPT RULE (strict): EVERY word must be in Bengali script. Any English loan word — brand names, product terms, technical vocabulary — MUST be transliterated into Bengali script, NOT left in Latin letters. Examples: "TMIL" → টিএমআইএল · "Balcony" → বালকনি · "project" → প্রজেক্ট · "client" → ক্লায়েন্ট · "maintenance" → মেইনটেনেন্স. Do NOT mix Latin letters into Bengali text. Exceptions: URLs and scientific Latin names only.`,
    hi: `Generate all questions, options, and explanations in Hindi (हिन्दी). Use simple Hindi.

SCRIPT RULE (strict): EVERY word must be in Devanagari script. Any English loan word — brand names, product terms, technical vocabulary — MUST be transliterated into Devanagari, NOT left in Latin letters. Examples: "TMIL" → टीएमआईएल · "Balcony" → बालकनी · "project" → प्रोजेक्ट · "client" → क्लायंट · "maintenance" → मेंटेनेंस. Do NOT mix Latin letters into Hindi text. Exceptions: URLs and scientific Latin names only.`,
    en: 'Generate all questions, options, and explanations in simple English.',
  };

  const completedBlock = completedIds.length > 0
    ? `

The learner has already completed these modules: ${completedIds.join(', ')}.
- Prefer questions that cross-reference ${moduleId} with 1-2 of the completed modules above where it's naturally relevant (e.g. tie irrigation practice to soil/nutrient knowledge the learner already has).
- Do NOT quiz on modules the learner hasn't completed.
- Keep 3 of the 5 questions squarely on ${moduleId} itself; the remaining 1-2 can be cross-module where it adds value.`
    : '';

  const prompt = `Generate exactly 5 multiple-choice questions for KarmYog Vatika livestock caretaker training, module: ${moduleId}

Each question must test practical knowledge a cow and horse caretaker needs on the farm.

${langInstruction[lang] || langInstruction.bn}${completedBlock}

Module topic mapping:
- M01-daily-care: Morning/evening shed routine, health observation, fresh water before feed, dung removal, ammonia risk, counting herd
- M02-feeding: Dry fodder, green fodder, concentrate ratios, mineral blocks, feeding schedule, quantities per body weight
- M03-milking: Hygienic milking technique, udder preparation, teat dip after milking, mastitis prevention, milk storage
- M04-cattle-health: FMD, HS, BQ, mastitis, bloat — symptoms, first response, vaccination calendar, when to call vet
- M05-calf-care: Colostrum in first hour, calf vaccination schedule, weaning age, growth monitoring, deworming
- M06-horse-stable: Stall size (3.6×3.6m minimum), bedding types (straw/sawdust), ventilation, daily cleaning, water buckets
- M07-horse-feeding: Hay (60-70% of diet), oats/concentrates, 2-3 feeds daily, colic prevention, water before/after feeding
- M08-horse-health: Colic signs (pawing, flank watching, rolling) and first response, laminitis, tetanus, worm control, thrush
- M09-grooming: Grooming sequence (head to tail), curry comb, body brush, dandy brush, hoof pick, hoof oil, farrier every 6-8 weeks
- M10-safety: Safe approach from shoulder angle, halter fitting, lead rope use, kick zones, cattle crush, emergency tie-up`;

  const controller = new AbortController();
  const timeoutId = setTimeout(() => controller.abort(), 20000);
  const started = Date.now();

  async function runGeneration() {
    const result = await generateObject({
      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      model: (google as any)(MODEL, { thinkingConfig: { thinkingBudget: 0 } }),
      schema: QuizSchema,
      prompt,
      maxOutputTokens: 4096,
      abortSignal: controller.signal,
    });

    const u = result.usage as unknown as {
      inputTokens?: number;
      outputTokens?: number;
    } | undefined;
    logQuizCall({
      model: MODEL,
      status: 'ok',
      durationMs: Date.now() - started,
      usage: {
        inputTokens: u?.inputTokens,
        outputTokens: u?.outputTokens,
      },
      lang,
      moduleId,
    });

    return result.object.questions;
  }

  // Cache only the non-personalised quizzes (no completedModuleIds). When a
  // learner has completed related modules, we want a fresh cross-referenced
  // quiz each time. For the common first-time case, a 15-min cache means the
  // second through Nth learners for a given module+lang get the same quiz
  // in ~5ms instead of waiting 10 s for Haiku.
  const cacheable = completedIds.length === 0;
  const cacheKey = `quiz:${moduleId}:${lang}`;

  try {
    const questions = cacheable
      ? await memoCache(cacheKey, 15 * 60, runGeneration)
      : await runGeneration();

    clearTimeout(timeoutId);

    return NextResponse.json({ questions });
  } catch (err) {
    clearTimeout(timeoutId);
    const aborted = err instanceof Error && (err.name === 'AbortError' || /aborted|timeout/i.test(err.message));
    const errorMessage = err instanceof Error ? err.message : String(err);
    logQuizCall({
      model: MODEL,
      status: aborted ? 'timeout' : 'error',
      durationMs: Date.now() - started,
      lang,
      moduleId,
      errorMessage,
    });
    console.error('Quiz error:', err);
    if (aborted) {
      return NextResponse.json({ error: 'Quiz generation timed out.' }, { status: 504 });
    }
    return NextResponse.json({ error: 'Quiz generation failed' }, { status: 502 });
  }
}
