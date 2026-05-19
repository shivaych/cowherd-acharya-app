-- ============================================================================
-- 001 — gunakul schema (shared identity + telemetry)
-- Run this in the Supabase SQL editor for project tvkxxnvukwnobdxvzerm
-- ============================================================================

CREATE SCHEMA IF NOT EXISTS gunakul;

-- ---------------------------------------------------------------------------
-- Master tables
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS gunakul.mst_acharyas (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug          TEXT NOT NULL UNIQUE,
  name_en       TEXT NOT NULL,
  name_bn       TEXT,
  name_hi       TEXT,
  is_active     BOOLEAN NOT NULL DEFAULT TRUE,
  is_deleted    BOOLEAN NOT NULL DEFAULT FALSE,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gunakul.mst_roles (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug       TEXT NOT NULL UNIQUE,
  label      TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gunakul.mst_categories (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug       TEXT NOT NULL UNIQUE,
  label      TEXT,
  is_active  BOOLEAN NOT NULL DEFAULT TRUE,
  is_deleted BOOLEAN NOT NULL DEFAULT FALSE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gunakul.map_category_acharya (
  id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  category_id UUID NOT NULL REFERENCES gunakul.mst_categories(id) ON DELETE CASCADE,
  acharya_id  UUID NOT NULL REFERENCES gunakul.mst_acharyas(id)  ON DELETE CASCADE,
  UNIQUE (category_id, acharya_id)
);

CREATE TABLE IF NOT EXISTS gunakul.mst_users (
  id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  phone          TEXT NOT NULL UNIQUE,
  name           TEXT,
  preferred_lang TEXT NOT NULL DEFAULT 'bn',
  role_id        UUID REFERENCES gunakul.mst_roles(id),
  category_id    UUID REFERENCES gunakul.mst_categories(id),
  is_active      BOOLEAN NOT NULL DEFAULT TRUE,
  is_deleted     BOOLEAN NOT NULL DEFAULT FALSE,
  last_seen_on   TIMESTAMPTZ,
  created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- Log tables
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS gunakul.log_chat (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id          UUID REFERENCES gunakul.mst_users(id),
  acharya_id       UUID REFERENCES gunakul.mst_acharyas(id),
  module_id        UUID,
  lang             TEXT,
  user_message     TEXT,
  ai_response      TEXT,
  response_time_ms INTEGER,
  created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gunakul.log_quiz (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES gunakul.mst_users(id),
  acharya_id UUID REFERENCES gunakul.mst_acharyas(id),
  module_id  UUID,
  score      INTEGER,
  total      INTEGER,
  questions  JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gunakul.log_progress (
  id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id            UUID REFERENCES gunakul.mst_users(id),
  acharya_id         UUID REFERENCES gunakul.mst_acharyas(id),
  module_id          UUID,
  sections_completed TEXT[] NOT NULL DEFAULT '{}',
  completed          BOOLEAN NOT NULL DEFAULT FALSE,
  completed_at       TIMESTAMPTZ,
  updated_on         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (user_id, acharya_id, module_id)
);

CREATE TABLE IF NOT EXISTS gunakul.log_apply (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES gunakul.mst_users(id),
  acharya_id UUID REFERENCES gunakul.mst_acharyas(id),
  module_id  UUID,
  log_type   TEXT,
  data       JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS gunakul.log_events (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID REFERENCES gunakul.mst_users(id),
  acharya_id UUID REFERENCES gunakul.mst_acharyas(id),
  event_type TEXT,
  event_data JSONB,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- ---------------------------------------------------------------------------
-- Seed: roles
-- ---------------------------------------------------------------------------

INSERT INTO gunakul.mst_roles (slug, label) VALUES
  ('learner', 'Learner'),
  ('admin',   'Admin'),
  ('founder', 'Founder')
ON CONFLICT (slug) DO NOTHING;

-- ---------------------------------------------------------------------------
-- Seed: cowherd acharya
-- ---------------------------------------------------------------------------

INSERT INTO gunakul.mst_acharyas (slug, name_en, name_bn, name_hi) VALUES
  ('cowherd', 'Cowherd Acharya', 'গোপাল আচার্য', 'गोपाल आचार्य')
ON CONFLICT (slug) DO NOTHING;

-- ---------------------------------------------------------------------------
-- Seed: default category + acharya access
-- ---------------------------------------------------------------------------

INSERT INTO gunakul.mst_categories (slug, label) VALUES
  ('general', 'General')
ON CONFLICT (slug) DO NOTHING;

INSERT INTO gunakul.map_category_acharya (category_id, acharya_id)
SELECT c.id, a.id
FROM gunakul.mst_categories c, gunakul.mst_acharyas a
WHERE c.slug = 'general' AND a.slug = 'cowherd'
ON CONFLICT DO NOTHING;
