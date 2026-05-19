import { NextResponse } from "next/server";
import { dbAcharya, dbConfigured } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";

export async function GET(_req: Request, ctx: { params: Promise<{ id: string }> }) {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) return NextResponse.json({ module: null, sections: [] });

  const { id } = await ctx.params;
  if (!id || id.length > 80) {
    return NextResponse.json({ error: "Invalid id" }, { status: 400 });
  }

  // Module id in the admin = slug
  const { data: mod, error: mErr } = await dbAcharya
    .from("crs_modules")
    .select(`
      id, slug, sort_order, theory_hours, practical_hours, icon,
      group_key, group_label_en, group_label_bn, group_label_hi,
      crs_module_tr ( lang, title, short_desc )
    `)
    .eq("slug", id)
    .eq("is_deleted", false)
    .maybeSingle();

  if (mErr || !mod) {
    return NextResponse.json({ error: "Not found" }, { status: 404 });
  }

  type Tr = { lang: string; title: string | null };
  const trs = (mod.crs_module_tr || []) as Tr[];
  const pick = (l: string) => trs.find((t) => t.lang === l);
  const en = pick("en"); const bn = pick("bn"); const hi = pick("hi");

  const moduleOut = {
    id: mod.slug,
    title_en: en?.title || "",
    title_bn: bn?.title || en?.title || "",
    title_hi: hi?.title || en?.title || "",
    icon: mod.icon,
    theory_hours: mod.theory_hours ?? 0,
    practical_hours: mod.practical_hours ?? 0,
    group_key: mod.group_key || "general",
  };

  // Sections
  const { data: sections, error: sErr } = await dbAcharya
    .from("crs_sections")
    .select(`id, sort_order, estimated_hours, crs_section_tr ( lang, title, body, status )`)
    .eq("module_id", mod.id)
    .eq("is_deleted", false)
    .order("sort_order");

  if (sErr) {
    return NextResponse.json({ error: "Failed to load sections" }, { status: 502 });
  }

  type SecTr = { lang: string; title: string | null; body: string | null; status: string | null };
  type SecRaw = { id: string; sort_order: number; estimated_hours: number | null; crs_section_tr: SecTr[] };

  const sectionsOut = (sections as SecRaw[] || []).map((s) => {
    const pickS = (l: string) => s.crs_section_tr.find((t) => t.lang === l);
    const sEn = pickS("en"); const sBn = pickS("bn"); const sHi = pickS("hi");
    return {
      id: s.id,
      title_en: sEn?.title || "New Section",
      title_bn: sBn?.title || sEn?.title || "নতুন বিভাগ",
      title_hi: sHi?.title || sEn?.title || "नया खंड",
      sort_order: s.sort_order,
      estimated_hours: s.estimated_hours ?? 1,
      content: {
        en: sEn?.body != null ? { body: sEn.body } : null,
        bn: sBn?.body != null ? { body: sBn.body } : null,
        hi: sHi?.body != null ? { body: sHi.body } : null,
      },
    };
  });

  return NextResponse.json({ module: moduleOut, sections: sectionsOut });
}
