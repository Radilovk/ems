-- Shareable client cards: one per (license, client); the link (id) stays the same when the tablet updates it.
CREATE TABLE IF NOT EXISTS client_cards (
  id TEXT PRIMARY KEY,
  license_id TEXT NOT NULL,
  client_key TEXT NOT NULL,
  data TEXT NOT NULL,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  expires_at INTEGER NOT NULL,
  views INTEGER NOT NULL DEFAULT 0,
  UNIQUE (license_id, client_key)
);
CREATE INDEX IF NOT EXISTS idx_client_cards_expires ON client_cards (expires_at);
