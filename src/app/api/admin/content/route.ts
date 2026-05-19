import { NextRequest, NextResponse } from "next/server";
import { dbAcharya, dbConfigured } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";

/**
 * POST /api/admin/content
 *
 * Upserts the body for (section_id, lang) in crs_section_tr. Body:
 *   { sectionId, lang, body }
 */
export async function POST(req: NextRequest) {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) return NextResponse.json({ ok: true });

  const body = await req.json().catch(() => null);
  if (!body || typeof body !== "object") {
    return NextResponse.json({ error: "Invalid body" }, { status: 400 });
  }

  const { sectionId, lang, body: text } = body as {
    sectionId?: string;
    lang?: string;
    body?: string;
  };

  if (!sectionId || typeof sectionId !== "string" || sectionId.length > 80) {
    return NextResponse.json({ error: "Invalid sectionId" }, { status: 400 });
  }
  if (!["bn", "hi", "en"].includes(lang || "")) {
    return NextResponse.json({ error: "Invalid lang" }, { status: 400 });
  }
  if (typeof text !== "string" || text.length > 50000) {
    return NextResponse.json({ error: "Invalid body text" }, { status: 400 });
  }

  const { data: existing } = await dbAcharya
    .from("crs_section_tr")
    .select("id")
    .eq("section_id", sectionId)
    .eq("lang", lang)
    .maybeSingle();

  if (existing) {
    const { error } = await dbAcharya
      .from("crs_section_tr")
      .update({ body: text, status: "published" })
      .eq("id", existing.id);
    if (error) return NextResponse.json({ error: "Write failed" }, { status: 502 });
  } else {
    const { error } = await dbAcharya
      .from("crs_section_tr")
      .insert({ section_id: sectionId, lang, body: text, status: "published" });
    if (error) return NextResponse.json({ error: "Write failed" }, { status: 502 });
  }

  return NextResponse.json({ ok: true });
}
