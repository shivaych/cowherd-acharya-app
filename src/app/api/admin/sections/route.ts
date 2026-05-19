import { NextRequest, NextResponse } from "next/server";
import { dbAcharya, dbConfigured } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";

export async function POST(req: NextRequest) {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) return NextResponse.json({ ok: true });

  const body = await req.json().catch(() => null);
  if (!body || typeof body !== "object") {
    return NextResponse.json({ error: "Invalid body" }, { status: 400 });
  }

  const { moduleId, sortOrder } = body as { moduleId?: string; sortOrder?: number };
  if (!moduleId || typeof moduleId !== "string" || moduleId.length > 80) {
    return NextResponse.json({ error: "Invalid moduleId" }, { status: 400 });
  }

  // moduleId here is the slug — look up the UUID
  const { data: mod, error: mErr } = await dbAcharya
    .from("crs_modules")
    .select("id")
    .eq("slug", moduleId)
    .maybeSingle();

  if (mErr || !mod) {
    return NextResponse.json({ error: "Module not found" }, { status: 404 });
  }

  const { data: sec, error: sErr } = await dbAcharya
    .from("crs_sections")
    .insert({
      module_id: mod.id,
      sort_order: typeof sortOrder === "number" ? sortOrder : 1,
      estimated_hours: 1,
    })
    .select("id")
    .single();

  if (sErr || !sec) {
    return NextResponse.json({ error: "Write failed" }, { status: 502 });
  }

  // Seed default titles
  const trRows = [
    { section_id: sec.id, lang: "en", title: "New Section", body: "", status: "draft" },
    { section_id: sec.id, lang: "bn", title: "নতুন বিভাগ", body: "", status: "draft" },
    { section_id: sec.id, lang: "hi", title: "नया खंड", body: "", status: "draft" },
  ];
  await dbAcharya.from("crs_section_tr").insert(trRows);

  return NextResponse.json({ ok: true });
}
