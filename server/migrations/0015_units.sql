-- Units without a license (the XBody unit's XEMS mod): versions the admin publishes, logs a trainer sends.
-- Both only on request from the unit (xbody/overlay/opt/xems/bin/xems-net) — nothing polls.
CREATE TABLE IF NOT EXISTS unit_releases (
  app TEXT NOT NULL,
  version INTEGER NOT NULL,
  url TEXT NOT NULL,
  sha256 TEXT NOT NULL,
  size INTEGER NOT NULL DEFAULT 0,
  notes TEXT,
  published_at INTEGER NOT NULL,
  PRIMARY KEY (app, version)
);

CREATE TABLE IF NOT EXISTS unit_logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ts INTEGER NOT NULL,
  app TEXT NOT NULL,
  unit TEXT NOT NULL,
  version INTEGER NOT NULL DEFAULT 0,
  size INTEGER NOT NULL DEFAULT 0,
  body TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_unit_logs_ts ON unit_logs(ts DESC);
