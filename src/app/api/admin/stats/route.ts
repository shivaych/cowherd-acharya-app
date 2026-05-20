import { NextResponse } from "next/server";
import { db, dbAcharya, dbConfigured } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";
import { memoCache } from "@/lib/server/cache";

export async function GET() {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) {
    return NextResponse.json({
      modules: 0, sections: 0, contentRows: 0, videos: 0, learners: 0, quizAttempts: 0,
    });
  }

  const stats = await memoCache("admin:stats", 30, async () => {
    const [modules, sections, content, videos, learners, quizzes] = await Promise.all([
      dbAcharya.from("crs_modules").select("id", { count: "exact", head: true }).eq("is_deleted", false),
      dbAcharya.from("crs_sections").select("id", { count: "exact", head: true }).eq("is_deleted", false),
      dbAcharya.from("crs_section_tr").select("id", { count: "exact", head: true }).eq("status", "published"),
      dbAcharya.from("crs_videos").select("id", { count: "exact", head: true }).eq("is_deleted", false),
      db.from("mst_users").select("id", { count: "exact", head: true }).eq("is_deleted", false),
      db.from("log_quiz").select("id", { count: "exact", head: true }),
    ]);
    return {
      modules: modules.count || 0,
      sections: sections.count || 0,
      contentRows: content.count || 0,
      videos: videos.count || 0,
      learners: learners.count || 0,
      quizAttempts: quizzes.count || 0,
    };
  });

  return NextResponse.json(stats, {
    headers: { "Cache-Control": "private, max-age=30, stale-while-revalidate=120" },
  });
}
