-- The cloud ear's answers (owner 2026-11-28: "in a session it hears no voice at all"): one row per /v1/stt request —
-- what came in and what Azure wrote down, so a failure is seen from here without the tablet. No audio is kept.
-- Rows older than 14 days are deleted by the request that adds one.
CREATE TABLE IF NOT EXISTS stt_log (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ts INTEGER NOT NULL,
  device TEXT NOT NULL DEFAULT '',
  seconds REAL NOT NULL DEFAULT 0,
  peak INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL DEFAULT '',
  text TEXT NOT NULL DEFAULT '',
  ms INTEGER NOT NULL DEFAULT 0
);
CREATE INDEX IF NOT EXISTS idx_stt_log_ts ON stt_log(ts DESC);
