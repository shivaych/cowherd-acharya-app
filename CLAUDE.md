# cowherd-acharya-app — Production App

## What This Is
KarmYog Vatika Sales & Service training agent — Cowherd Acharya (Gopal) persona, internal trilingual playbook (Bengali/Hindi/English), AI chat + quiz + voice.

## Tech Stack
- **Framework:** Next.js 16 (App Router, TypeScript)
- **Database:** Supabase (shared KarmYog instance, schema `acharya_cowherd`)
- **Styling:** Tailwind CSS v4
- **State:** Zustand (persisted to localStorage, key `cowherd-acharya-store`)
- **AI:** Gemini 2.5 Flash (chat + quiz), Gemini Live (voice), Google TTS (audio)
- **Deploy:** Vercel

## Key Architecture Decisions
- Global module + language selectors in header — all tabs read from zustand store
- Content stored per-section per-language in Supabase (not monolithic)
- Progress: localStorage first (instant), Supabase sync (async)
- API routes at `src/app/api/{chat,quiz,tts}/route.ts`
- System prompt in `src/lib/system-prompt.ts` — exports `COWHERD_SYSTEM_PROMPT`
- Persona: Gopal (গোপাল আচার্য / गोपाल आचार्य / Cowherd Acharya)
- Acharya slug: `cowherd`, schema: `acharya_cowherd`

## Supabase
- Shared gunakul schema for identity/logs
- Per-acharya content in `acharya_cowherd` schema
- Set NEXT_PUBLIC_ACHARYA_SLUG=cowherd and NEXT_PUBLIC_ACHARYA_SCHEMA=acharya_cowherd

## Commands
```
npm run dev        # local dev (defaults to :3000, falls back to :3001)
npm run build      # production build
npm run lint       # eslint
npm run typecheck  # tsc --noEmit
npx vercel         # deploy preview
npx vercel --prod  # deploy production (requires approval)
```

## Old Project
- `D:/abhishek-kaarigar-saathi/` — vanilla HTML prototype, stays running until cutover

## graphify

This project has a knowledge graph at graphify-out/ with god nodes, community structure, and cross-file relationships.

Rules:
- ALWAYS read graphify-out/GRAPH_REPORT.md before reading any source files, running grep/glob searches, or answering codebase questions. The graph is your primary map of the codebase.
- IF graphify-out/wiki/index.md EXISTS, navigate it instead of reading raw files
- For cross-module "how does X relate to Y" questions, prefer `graphify query "<question>"`, `graphify path "<A>" "<B>"`, or `graphify explain "<concept>"` over grep — these traverse the graph's EXTRACTED + INFERRED edges instead of scanning files
- After modifying code, run `graphify update .` to keep the graph current (AST-only, no API cost).
