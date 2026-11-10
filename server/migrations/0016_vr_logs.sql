-- The VR game's leg recordings (src/vrlog.js): gzip parts under a random code the player passes on; kept 14 days.
CREATE TABLE IF NOT EXISTS vr_logs (
  id    TEXT    NOT NULL,
  part  INTEGER NOT NULL,
  parts INTEGER NOT NULL,
  ts    INTEGER NOT NULL,
  size  INTEGER NOT NULL,
  body  BLOB    NOT NULL,
  PRIMARY KEY (id, part)
);
CREATE INDEX IF NOT EXISTS vr_logs_ts ON vr_logs (ts);
