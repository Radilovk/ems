-- What the client's training analysis needs (short + full view): one row per training. `sum` = the summary
-- (list, dates, scores); `rec` = the tablet's per-second record, gzip + base64, kept only for the newest
-- trainings of each client (older rows keep just the summary). Replaces the R2 bucket.
CREATE TABLE IF NOT EXISTS session_records (
  license_id TEXT NOT NULL,
  client_key TEXT NOT NULL,
  id INTEGER NOT NULL,
  sum TEXT NOT NULL,
  rec TEXT,
  created_at INTEGER NOT NULL,
  PRIMARY KEY (license_id, client_key, id)
);
