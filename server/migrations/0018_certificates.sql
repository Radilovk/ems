-- Trainer certificates (owner 2026-11-21: "every new filling, new names → a new serial number"). The page /cert asks
-- for a number when the trainer downloads; the number is id + 42 (the paper series ended at № 00042). The same name
-- asked again within a day gets its own number back, so a second download does not use up a new one. No IP is kept.
CREATE TABLE IF NOT EXISTS certificates (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ts INTEGER NOT NULL,
  name TEXT NOT NULL,
  name_key TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_certificates_key ON certificates(name_key, ts DESC);
