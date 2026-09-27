-- A public studio code for the booking PWA (the license id stays private), and the inbox of client
-- profiles the PWA sends: kept 14 days, every tablet of the studio pulls what is newer than it has seen.
ALTER TABLE licenses ADD COLUMN studio_code TEXT;
CREATE UNIQUE INDEX IF NOT EXISTS idx_licenses_studio ON licenses (studio_code);
CREATE TABLE IF NOT EXISTS client_inbox (
  license_id TEXT NOT NULL,
  pkey TEXT NOT NULL,
  data TEXT NOT NULL,
  updated_at INTEGER NOT NULL,
  PRIMARY KEY (license_id, pkey)
);
CREATE INDEX IF NOT EXISTS idx_client_inbox_since ON client_inbox (license_id, updated_at);
