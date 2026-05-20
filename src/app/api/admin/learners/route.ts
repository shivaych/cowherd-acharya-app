import { NextRequest, NextResponse } from "next/server";
import { db, dbConfigured, getAcharyaId } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";

const PAGE_SIZE = 50;

export async function GET(req: NextRequest) {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) {
    return NextResponse.json({ learners: [], totalCount: 0, page: 0, pageSize: PAGE_SIZE });
  }

  const url = new URL(req.url);
  const page = Math.max(0, parseInt(url.searchParams.get("page") || "0", 10) || 0);

  const acharyaId = await getAcharyaId();

  const { count } = await db
    .from("mst_users")
    .select("*", { count: "exact", head: true })
    .eq("is_deleted", false);

  const { data: rows, error } = await db
    .from("mst_users")
    .select("id, phone, name, preferred_lang, created_at, last_seen_on")
    .eq("is_deleted", false)
    .order("last_seen_on", { ascending: false, nullsFirst: false })
    .range(page * PAGE_SIZE, (page + 1) * PAGE_SIZE - 1);

  if (error) {
    console.error("admin learners error:", error);
    return NextResponse.json({ error: "Failed to load" }, { status: 502 });
  }
  if (!rows || rows.length === 0) {
    return NextResponse.json({ learners: [], totalCount: count || 0, page, pageSize: PAGE_SIZE });
  }

  const userIds = rows.map((r: { id: string }) => r.id);

  const [progressResult, quizResult] = await Promise.all([
    acharyaId
      ? db.from("log_progress").select("user_id, completed").in("user_id", userIds).eq("acharya_id", acharyaId)
      : db.from("log_progress").select("user_id, completed").in("user_id", userIds),
    acharyaId
      ? db.from("log_quiz").select("user_id, score, total").in("user_id", userIds).eq("acharya_id", acharyaId)
      : db.from("log_quiz").select("user_id, score, total").in("user_id", userIds),
  ]);

  const progressCount: Record<string, number> = {};
  (progressResult.data || []).forEach((p: { user_id: string; completed: boolean }) => {
    if (p.completed) progressCount[p.user_id] = (progressCount[p.user_id] || 0) + 1;
  });

  const quizStats: Record<string, { count: number; score: number; total: number }> = {};
  (quizResult.data || []).forEach((q: { user_id: string; score: number; total: number }) => {
    if (!quizStats[q.user_id]) quizStats[q.user_id] = { count: 0, score: 0, total: 0 };
    quizStats[q.user_id].count++;
    quizStats[q.user_id].score += q.score ?? 0;
    quizStats[q.user_id].total += q.total ?? 0;
  });

  type UserRow = { id: string; phone: string | null; name: string | null; preferred_lang: string; created_at: string; last_seen_on: string | null };
  const learners = (rows as UserRow[]).map((r) => ({
    id: r.id,
    device_id: null,
    name: r.name,
    phone: r.phone,
    preferred_lang: r.preferred_lang,
    created_at: r.created_at,
    last_seen: r.last_seen_on,
    progressCount: progressCount[r.id] || 0,
    quizCount: quizStats[r.id]?.count || 0,
    avgScore:
      quizStats[r.id] && quizStats[r.id].total > 0
        ? Math.round((quizStats[r.id].score / quizStats[r.id].total) * 100)
        : 0,
  }));

  return NextResponse.json({ learners, totalCount: count || 0, page, pageSize: PAGE_SIZE });
}
