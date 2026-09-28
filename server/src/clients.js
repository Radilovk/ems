// The client dossier (stage 1): the studio's client list lives on the server, keyed by a server id (cid) and
// found by the e-mail / phone hashes. Tablets push only what changed and pull what others changed (with the
// profile inbox, one request). Writes happen only when a record really changed.

import { lookupHash, cardId, isCardId } from './card.js';

export const CLIENT_MAX_BYTES = 16 * 1024;
export const CLIENTS_PUSH_MAX = 20;
export const CLIENTS_PULL_MAX = 200;

/** One pushed record: {key (tablet id), cid?, ek?, pk?, t, deleted?, data?}; null when unusable. */
export function cleanClient(c) {
  if (!c || typeof c !== 'object') return null;
  const key = String(c.key ?? '').replace(/[^0-9A-Za-z_-]/g, '').slice(0, 64);
  const cid = isCardId(c.cid) ? c.cid : null;
  const t = Number.isSafeInteger(c.t) && c.t > 0 ? c.t : 0;
  if (!key || !t) return null;
  const deleted = c.deleted === true;
  let data = null;
  if (!deleted) {
    if (!c.data || typeof c.data !== 'object' || Array.isArray(c.data)) return null;
    data = JSON.stringify(c.data);
    if (data.length > CLIENT_MAX_BYTES) return null;
  } else if (!cid) {
    return null;                                     // nothing to delete on the server
  }
  return { key, cid, ek: lookupHash(c.ek), pk: lookupHash(c.pk), t, deleted, data };
}

async function findExisting(db, licId, c) {
  if (c.cid) {
    const r = await db.prepare('SELECT * FROM clients WHERE license_id = ? AND cid = ?').bind(licId, c.cid).first();
    if (r) return r;
  }
  if (c.ek) {
    const r = await db.prepare('SELECT * FROM clients WHERE license_id = ? AND ek = ? AND deleted = 0 LIMIT 1')
      .bind(licId, c.ek).first();
    if (r) return r;
  }
  if (c.pk) {
    const r = await db.prepare('SELECT * FROM clients WHERE license_id = ? AND pk = ? AND deleted = 0 LIMIT 1')
      .bind(licId, c.pk).first();
    if (r) return r;
  }
  return null;
}

/**
 * Store what a tablet pushed; returns [{key, cid}] so the tablet can remember the server id of each client.
 * A record older than the stored one is not written (the newer edit wins). A client card made under the
 * tablet's own id moves to the cid (only when its hashes are this client's).
 */
export async function putClients(db, licId, list, srvNow) {
  const out = [];
  let n = 0;
  for (const raw of list.slice(0, CLIENTS_PUSH_MAX)) {
    const c = cleanClient(raw);
    if (!c) continue;
    const at = srvNow + n++;                          // distinct cursor values within one push
    const old = await findExisting(db, licId, c);
    if (!old) {
      if (c.deleted) continue;
      const cid = cardId();
      await db.prepare(
        'INSERT INTO clients (license_id, cid, ek, pk, data, t, deleted, srv_at, created_at) VALUES (?, ?, ?, ?, ?, ?, 0, ?, ?)',
      ).bind(licId, cid, c.ek, c.pk, c.data, c.t, at, at).run();
      out.push({ key: c.key, cid });
      await adoptCard(db, licId, c, cid);
      continue;
    }
    out.push({ key: c.key, cid: old.cid });
    const changed = c.deleted ? !old.deleted : (c.data !== old.data || old.deleted || c.ek !== old.ek || c.pk !== old.pk);
    if (changed && c.t >= old.t) {
      await db.prepare(
        'UPDATE clients SET ek = ?, pk = ?, data = ?, t = ?, deleted = ?, srv_at = ? WHERE license_id = ? AND cid = ?',
      ).bind(c.deleted ? old.ek : c.ek, c.deleted ? old.pk : c.pk, c.deleted ? old.data : c.data, c.t,
        c.deleted ? 1 : 0, at, licId, old.cid).run();
    }
    if (!c.deleted) await adoptCard(db, licId, c, old.cid);
  }
  return out;
}

/** The card the tablet made under its own client id belongs to this dossier: move it (hashes must match). */
async function adoptCard(db, licId, c, cid) {
  if (c.key === cid || (!c.ek && !c.pk)) return;
  await db.prepare(
    `UPDATE OR IGNORE client_cards SET client_key = ?1 WHERE license_id = ?2 AND client_key = ?3
     AND ((?4 IS NOT NULL AND email_hash = ?4) OR (?5 IS NOT NULL AND phone_hash = ?5))`,
  ).bind(cid, licId, c.key, c.ek, c.pk).run();
}

/** What changed after the cursor (srv_at, cid), oldest first. */
export async function pullClients(db, licId, since, after, limit = CLIENTS_PULL_MAX) {
  const s = Number.isSafeInteger(since) && since > 0 ? since : 0;
  const a = isCardId(after) ? after : '';
  const { results } = await db.prepare(
    `SELECT cid, data, t, deleted, srv_at FROM clients WHERE license_id = ?1
     AND (srv_at > ?2 OR (srv_at = ?2 AND cid > ?3)) ORDER BY srv_at, cid LIMIT ?4`,
  ).bind(licId, s, a, limit).all();
  const rows = results || [];
  const items = rows.map((r) => ({ cid: r.cid, t: r.t, d: r.deleted ? 1 : 0, p: r.deleted ? null : JSON.parse(r.data) }));
  const last = rows[rows.length - 1];
  return { items, next: last ? { since: last.srv_at, after: last.cid } : null, more: rows.length === limit };
}
