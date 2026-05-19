import { NextResponse } from "next/server";
import { dbAcharya, dbConfigured } from "@/lib/server/supabase";
import { requireAdmin } from "@/lib/server/auth";

export async function GET() {
  const guard = await requireAdmin();
  if (guard instanceof NextResponse) return guard;

  if (!dbConfigured) return NextResponse.json({ modules: [] });

  const { data, error } = await dbAcharya
    .from("crs_modules")
    .select(`
      id, slug, sort_order, theory_hours, practical_hours,
      icon, group_key, group_label_en, group_label_bn, group_label_hi,
      crs_module_tr ( lang, title, short_desc, status ),
      crs_sections ( id, crs_section_tr ( id, body, status ) )
    `)
    .eq("is_deleted", false)
    .order("sort_order");

  if (error) {
    return NextResponse.json({ error: "Failed to load modules" }, { status: 502 });
  }

  type RawTr = { lang: string; title: string | null; short_desc: string | null; status: string | null };
  type RawSectionTr = { id: string; body: string | null; status: string | null };
  type RawSection = { id: string; crs_section_tr: RawSectionTr[] };
  type RawModule = {
    id: string; slug: string; sort_order: number;
    theory_hours: number | null; practical_hours: number | null;
    icon: string | null; group_key: string | null;
    group_label_en: string | null; group_label_bn: string | null; group_label_hi: string | null;
    crs_module_tr: RawTr[];
    crs_sections: RawSection[];
  };

  const modules = (data as RawModule[] || []).map((m) => {
    const pick = (l: string) => m.crs_module_tr.find((t) => t.lang === l);
    const en = pick("en"); const bn = pick("bn"); const hi = pick("hi");
    const sectionCount = m.crs_sections.length;
    const contentCount = m.crs_sections.reduce((acc, s) => {
      return acc + s.crs_section_tr.filter((t) => t.body && t.status === "published").length;
    }, 0);
    return {
      id: m.slug,
      title_en: en?.title || "",
      title_bn: bn?.title || en?.title || "",
      title_hi: hi?.title || en?.title || "",
      icon: m.icon,
      sort_order: m.sort_order,
      theory_hours: m.theory_hours ?? 0,
      practical_hours: m.practical_hours ?? 0,
      group_key: m.group_key || "general",
      group_label_en: m.group_label_en || "",
      group_label_bn: m.group_label_bn || "",
      group_label_hi: m.group_label_hi || "",
      sectionCount,
      contentCount,
    };
  });

  return NextResponse.json({ modules });
}
