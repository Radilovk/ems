CREATE TABLE IF NOT EXISTS licenses (
  id TEXT PRIMARY KEY,
  key_hash TEXT UNIQUE NOT NULL,
  key_hint TEXT,
  customer TEXT,
  plan TEXT NOT NULL DEFAULT 'base',
  mods TEXT NOT NULL DEFAULT '[]',
  feat TEXT NOT NULL DEFAULT '[]',
  max_devices INTEGER NOT NULL DEFAULT 1,
  expires_at INTEGER,
  status TEXT NOT NULL DEFAULT 'active',
  created_at INTEGER NOT NULL,
  note TEXT
);

CREATE TABLE IF NOT EXISTS activations (
  license_id TEXT NOT NULL,
  device_id TEXT NOT NULL,
  device_model TEXT,
  android INTEGER,
  app_version TEXT,
  app_code INTEGER,
  lang TEXT,
  first_seen INTEGER NOT NULL,
  last_seen INTEGER NOT NULL,
  status TEXT NOT NULL DEFAULT 'active',
  PRIMARY KEY (license_id, device_id),
  FOREIGN KEY (license_id) REFERENCES licenses(id)
);

CREATE TABLE IF NOT EXISTS releases (
  version_code INTEGER PRIMARY KEY,
  version_name TEXT NOT NULL,
  channel TEXT NOT NULL DEFAULT 'stable',
  object_key TEXT NOT NULL,
  sha256 TEXT NOT NULL,
  size INTEGER NOT NULL DEFAULT 0,
  notes TEXT,
  mandatory INTEGER NOT NULL DEFAULT 0,
  min_code INTEGER,
  published_at INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS audit (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ts INTEGER NOT NULL,
  actor TEXT,
  action TEXT NOT NULL,
  license_id TEXT,
  device_id TEXT,
  detail TEXT
);

CREATE TABLE IF NOT EXISTS rate_limits (
  key TEXT PRIMARY KEY,
  count INTEGER NOT NULL DEFAULT 0,
  window_start INTEGER NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_licenses_status ON licenses(status);
CREATE INDEX IF NOT EXISTS idx_activations_license ON activations(license_id);
CREATE INDEX IF NOT EXISTS idx_releases_channel ON releases(channel, version_code DESC);
