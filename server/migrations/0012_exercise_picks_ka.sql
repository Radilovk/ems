-- The same exercise selector for KA fitness (aidiet/fitness): its own selection, apart from the XEMS tablets'.
-- Nothing stored = on (KA uses the whole library until the admin narrows it).
CREATE TABLE IF NOT EXISTS exercise_picks_ka (
  id TEXT PRIMARY KEY,
  on_app INTEGER NOT NULL,
  frames INTEGER NOT NULL DEFAULT 0,
  zone TEXT NOT NULL DEFAULT '',
  updated_at INTEGER NOT NULL
);
