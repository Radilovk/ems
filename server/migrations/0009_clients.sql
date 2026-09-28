-- The client's dossier on the server: one per person per studio (licence), found by the hashes of the e-mail
-- and the phone, so a reinstalled tablet or a second tablet of the studio gets the same client back.
-- `data` = the tablet's client record (name, contact, body, goal, form answers). `t` = when it was last
-- changed on a tablet (ms); `srv_at` = when the server stored it (ms, the pull cursor).
-- Later stages hang measurements and goal ratings on (license_id, cid).
CREATE TABLE IF NOT EXISTS clients (
  license_id TEXT NOT NULL,
  cid TEXT NOT NULL,
  ek TEXT,
  pk TEXT,
  data TEXT NOT NULL,
  t INTEGER NOT NULL,
  deleted INTEGER NOT NULL DEFAULT 0,
  srv_at INTEGER NOT NULL,
  created_at INTEGER NOT NULL,
  PRIMARY KEY (license_id, cid)
);
CREATE INDEX IF NOT EXISTS idx_clients_sync ON clients (license_id, srv_at, cid);
CREATE INDEX IF NOT EXISTS idx_clients_ek ON clients (license_id, ek);
CREATE INDEX IF NOT EXISTS idx_clients_pk ON clients (license_id, pk);
