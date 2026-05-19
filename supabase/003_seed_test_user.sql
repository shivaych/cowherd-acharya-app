-- ============================================================================
-- 003 — seed a test learner (edit phone before running)
-- ============================================================================

-- Replace +91XXXXXXXXXX with an actual Indian mobile number (with country code).
-- OTP is always 123456 in pilot mode.

INSERT INTO gunakul.mst_users (phone, name, preferred_lang, role_id, category_id)
SELECT
  '+91XXXXXXXXXX',          -- ← change this
  'Test Learner',
  'bn',
  (SELECT id FROM gunakul.mst_roles      WHERE slug = 'learner'),
  (SELECT id FROM gunakul.mst_categories WHERE slug = 'general')
ON CONFLICT (phone) DO NOTHING;
