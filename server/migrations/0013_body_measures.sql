-- The client's body-composition measurements (the studio's scale, read by the tablet): one row per weigh-in,
-- under the same (license_id, client_key) as the trainings. `data` = the tablet's compact result (weight, fat,
-- muscle, water, visceral, type, physical age, the norms' edges) — what the client's card shows.
CREATE TABLE IF NOT EXISTS body_measures (
  license_id TEXT NOT NULL,
  client_key TEXT NOT NULL,
  t INTEGER NOT NULL,
  data TEXT NOT NULL,
  created_at INTEGER NOT NULL,
  PRIMARY KEY (license_id, client_key, t)
);
