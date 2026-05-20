-- ============================================================================
-- 006 — Seed YouTube videos for Cowherd Acharya
-- Run in Supabase SQL editor after 004_seed_demo_modules.sql
-- ============================================================================

-- Cattle videos → M01-daily-care
WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug = 'M01-daily-care')
INSERT INTO acharya_cowherd.crs_videos (module_id, youtube_id, sort_order)
SELECT mod.id, 'Vbwwl3lLOqw', 1 FROM mod
ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug = 'M01-daily-care')
INSERT INTO acharya_cowherd.crs_videos (module_id, youtube_id, sort_order)
SELECT mod.id, 'tQGjpkBKhWw', 2 FROM mod
ON CONFLICT DO NOTHING;

-- Horse videos → M06-horse-stable
WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug = 'M06-horse-stable')
INSERT INTO acharya_cowherd.crs_videos (module_id, youtube_id, sort_order)
SELECT mod.id, 'zI8JSTGtRQc', 1 FROM mod
ON CONFLICT DO NOTHING;

WITH mod AS (SELECT id FROM acharya_cowherd.crs_modules WHERE slug = 'M06-horse-stable')
INSERT INTO acharya_cowherd.crs_videos (module_id, youtube_id, sort_order)
SELECT mod.id, 'fdGhd2phEHs', 2 FROM mod
ON CONFLICT DO NOTHING;
