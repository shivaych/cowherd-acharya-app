-- ============================================================================
-- 007 — Dedupe crs_sections rows and add UNIQUE (module_id, slug) constraint
-- Run this BEFORE re-running 005a–005i.
-- ============================================================================
-- Why: migration 002 created crs_sections without UNIQUE (module_id, slug),
-- so `ON CONFLICT DO NOTHING` in the seeds only matched the gen_random_uuid()
-- primary key — i.e. every run inserted another duplicate. M03-S1 had 5
-- duplicates by the time we caught it. The downstream INSERT into
-- crs_section_tr would then JOIN to all duplicates, multiplying inserted
-- rows and triggering a misleading "relation a does not exist" error in
-- the Supabase web SQL editor.

-- Step 1: delete duplicates, keeping the oldest row for each (module_id, slug).
-- crs_section_tr has ON DELETE CASCADE so any stale translations get dropped.
DELETE FROM acharya_cowherd.crs_sections s
USING acharya_cowherd.crs_sections older
WHERE s.module_id = older.module_id
  AND s.slug      = older.slug
  AND s.created_at > older.created_at;

-- Step 2: add the missing unique constraint so future seeds can dedupe.
-- Wrapped in DO so re-runs are idempotent (ALTER TABLE ADD CONSTRAINT has no IF NOT EXISTS).
DO $$
BEGIN
  ALTER TABLE acharya_cowherd.crs_sections
    ADD CONSTRAINT crs_sections_module_id_slug_key UNIQUE (module_id, slug);
EXCEPTION
  WHEN duplicate_object THEN NULL;
END $$;
