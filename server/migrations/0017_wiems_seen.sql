-- The WiEMS tablet app's update checks (owner 2026-11-16: "the tablet is far away — see its version from here").
-- One row per check (at start, on resume, at most hourly while it runs): which version runs where. No IP is kept.
CREATE TABLE IF NOT EXISTS wiems_seen (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ts INTEGER NOT NULL,
  code INTEGER NOT NULL DEFAULT 0,
  name TEXT NOT NULL DEFAULT '',
  device TEXT NOT NULL DEFAULT '',
  unit TEXT NOT NULL DEFAULT '',
  state TEXT NOT NULL DEFAULT '',
  offered INTEGER NOT NULL DEFAULT 0,
  country TEXT NOT NULL DEFAULT ''
);
CREATE INDEX IF NOT EXISTS idx_wiems_seen_ts ON wiems_seen(ts DESC);
