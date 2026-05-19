import { NextRequest, NextResponse } from "next/server";
import { dbAcharya, dbConfigured } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";

// Map flat field names like title_en → { lang, field }
const TITLE_FIELDS: Record<string, { lang: string; field: "title" }> = {
  title_en: { lang: "en", field: "title" },
  title_bn: { lang: "bn", field: "title" },
  title_hi: { lang: "hi", field: "title" },
};

export async function PATCH(req: NextRequest, ctx: { params: Promise<{ id: string }> }) {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) return NextResponse.json({ ok: true });

  const { id } = await ctx.params;
  if (!id || id.length > 80) {
    return NextResponse.json({ error: "Invalid id" }, { status: 400 });
  }

  const body = await req.json().catch(() => null);
  if (!body || typeof body !== "object") {
    return NextResponse.json({ error: "Invalid body" }, { status: 400 });
  }

  const errors: string[] = [];

  for (const [k, v] of Object.entries(body as Record<string, unknown>)) {
    if (k === "sort_order" || k === "estimated_hours") {
      const { error } = await dbAcharya
        .from("crs_sections")
        .update({ [k]: v })
        .eq("id", id);
      if (error) errors.push(k);
      continue;
    }
    const mapping = TITLE_FIELDS[k];
    if (!mapping) continue;
    if (typeof v !== "string" || v.length > 500) continue;

    // Upsert the translation row
    const { data: existing } = await dbAcharya
      .from("crs_section_tr")
      .select("id")
      .eq("section_id", id)
      .eq("lang", mapping.lang)
      .maybeSingle();

    if (existing) {
      const { error } = await dbAcharya
        .from("crs_section_tr")
        .update({ [mapping.field]: v })
        .eq("id", existing.id);
      if (error) errors.push(k);
    } else {
      const { error } = await dbAcharya
        .from("crs_section_tr")
        .insert({ section_id: id, lang: mapping.lang, [mapping.field]: v, status: "draft" });
      if (error) errors.push(k);
    }
  }

  if (errors.length > 0) {
    return NextResponse.json({ error: "Write failed for: " + errors.join(", ") }, { status: 502 });
  }
  return NextResponse.json({ ok: true });
}

export async function DELETE(_req: NextRequest, ctx: { params: Promise<{ id: string }> }) {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) return NextResponse.json({ ok: true });

  const { id } = await ctx.params;
  if (!id || id.length > 80) {
    return NextResponse.json({ error: "Invalid id" }, { status: 400 });
  }

  const { error } = await dbAcharya.from("crs_sections").delete().eq("id", id);
  if (error) {
    return NextResponse.json({ error: "Delete failed" }, { status: 502 });
  }
  return NextResponse.json({ ok: true });
}
