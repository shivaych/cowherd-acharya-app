-- ============================================================================
-- 002 — acharya_cowherd schema (content tables)
-- Run this after 001_gunakul_schema.sql
-- ============================================================================

CREATE SCHEMA IF NOT EXISTS acharya_cowherd;

-- ---------------------------------------------------------------------------
-- Modules
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS acharya_cowherd.crs_modules (
  id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  slug             TEXT NOT NULL UNIQUE,
  sort_order       INTEGER NOT NULL DEFAULT 0,
  theory_hours     NUMERIC(4,1),
  practical_hours  NUMERIC(4,1),
  icon             TEXT,
  group_key        TEXT,
  group_label_en   TEXT,
  group_label_bn   TEXT,
  group_label_hi   TEXT,
  is_deleted       BOOLEAN NOT NULL DEFAULT FALSE,
  created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS acharya_cowherd.crs_module_tr (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  module_id  UUID NOT NULL REFERENCES acharya_cowherd.crs_modules(id) ON DELETE CASCADE,
  lang       TEXT NOT NULL CHECK (lang IN ('bn','hi','en')),
  title      TEXT,
  short_desc TEXT,
  status     TEXT NOT NULL DEFAULT 'draft',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (module_id, lang)
);

-- ---------------------------------------------------------------------------
-- Sections
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS acharya_cowherd.crs_sections (
  id             UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  module_id      UUID NOT NULL REFERENCES acharya_cowherd.crs_modules(id) ON DELETE CASCADE,
  slug           TEXT,
  sort_order     INTEGER NOT NULL DEFAULT 0,
  estimated_hours NUMERIC(4,1),
  is_deleted     BOOLEAN NOT NULL DEFAULT FALSE,
  created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS acharya_cowherd.crs_section_tr (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  section_id UUID NOT NULL REFERENCES acharya_cowherd.crs_sections(id) ON DELETE CASCADE,
  lang       TEXT NOT NULL CHECK (lang IN ('bn','hi','en')),
  title      TEXT,
  body       TEXT,
  status     TEXT NOT NULL DEFAULT 'draft',
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (section_id, lang)
);

-- ---------------------------------------------------------------------------
-- Videos
-- ---------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS acharya_cowherd.crs_videos (
  id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  module_id     UUID NOT NULL REFERENCES acharya_cowherd.crs_modules(id) ON DELETE CASCADE,
  youtube_id    TEXT NOT NULL,
  start_seconds INTEGER,
  duration      INTEGER,
  sort_order    INTEGER NOT NULL DEFAULT 0,
  is_deleted    BOOLEAN NOT NULL DEFAULT FALSE,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS acharya_cowherd.crs_video_tr (
  id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  video_id   UUID NOT NULL REFERENCES acharya_cowherd.crs_videos(id) ON DELETE CASCADE,
  lang       TEXT NOT NULL CHECK (lang IN ('bn','hi','en')),
  title      TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  UNIQUE (video_id, lang)
);
