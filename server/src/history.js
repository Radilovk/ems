// The data behind the client's training analysis, in D1 (no separate storage). The tablet sends each training's
// summary and its per-second record gzip-compressed (base64); the server never unpacks it — the analysis page
// in the client's browser does. Full records are kept for the newest REC_KEEP trainings of a client (all of them
// reach the client), summaries for up to SUM_KEEP — an older training shows as a short report built from its
// summary, and the client's browser keeps the full records it has seen (src/report.js). The client reads
// everything with one request, by the id of their card.

export const SESSION_MAX_BYTES = 512 * 1024;
export const SUMMARY_MAX_BYTES = 8 * 1024;
export const REC_MAX_CHARS = 400 * 1024;   // base64 of the gzip; a real training is ~10–40 KB
export const REC_KEEP = 12;                 // full records per client (D1 free plan: 500 MB per database)
export const REC_SEND = REC_KEEP;           // every stored record goes to the client (one cached request)
export const SUM_KEEP = 600;

/** A training id is its start time in ms: digits only, else null. */
export function sessionId(v) {
  const s = String(v ?? '').trim();
  return /^[1-9][0-9]{9,14}$/.test(s) ? s : null;
}

/** What identifies the client is the card, not the name: name and tablet-side user id are dropped. */
export function publicSummary(sum) {
  const o = { ...sum };
  delete o.name;
  delete o.userId;
  return o;
}

export function validSummary(s, id) {
  if (!s || typeof s !== 'object' || Array.isArray(s)) return 'not an object';
  if (JSON.stringify(s).length > SUMMARY_MAX_BYTES) return 'too big';
  if (String(s.id) !== id) return 'id';
  if (typeof s.durS !== 'number' || !Number.isFinite(s.durS)) return 'durS';
  return null;
}

/** gzip + base64 from the tablet: checked only for shape and size (it is opened in the client's browser). */
export function validRec(z) {
  if (typeof z !== 'string' || z.length < 20 || z.length > REC_MAX_CHARS) return 'size';
  if (!/^[A-Za-z0-9+/]+={0,2}$/.test(z)) return 'base64';
  if (!z.startsWith('H4sI')) return 'gzip';          // the gzip magic 1f 8b 08, base64-encoded
  return null;
}

/** Store one training and trim the client's older data (one batch). */
export async function putSession(db, licId, clientKey, id, sum, z, ts) {
  const keep = `SELECT id FROM session_records WHERE license_id = ?1 AND client_key = ?2 ORDER BY id DESC LIMIT `;
  await db.batch([
    db.prepare(
      'INSERT OR REPLACE INTO session_records (license_id, client_key, id, sum, rec, created_at) VALUES (?1, ?2, ?3, ?4, ?5, ?6)',
    ).bind(licId, clientKey, Number(id), JSON.stringify(publicSummary(sum)), z, ts),
    db.prepare(
      `UPDATE session_records SET rec = NULL WHERE license_id = ?1 AND client_key = ?2 AND rec IS NOT NULL
       AND id NOT IN (${keep}${REC_KEEP})`,
    ).bind(licId, clientKey),
    db.prepare(
      `DELETE FROM session_records WHERE license_id = ?1 AND client_key = ?2 AND id NOT IN (${keep}${SUM_KEEP})`,
    ).bind(licId, clientKey),
  ]);
}

/**
 * Everything the analysis page needs, as one JSON string built without parsing the stored parts:
 * {ok, client:{name}, sessions:[summary…] oldest first, recs:{id: gzip-base64} for the newest REC_SEND}.
 */
export async function historyJson(db, licId, clientKey, name) {
  const { results } = await db.prepare(
    `SELECT id, sum, rec FROM session_records WHERE license_id = ? AND client_key = ? ORDER BY id DESC LIMIT ${SUM_KEEP}`,
  ).bind(licId, clientKey).all();
  const rows = (results || []).slice().reverse();
  const recs = [];
  for (let i = rows.length - 1; i >= 0 && recs.length < REC_SEND; i--) {
    if (rows[i].rec) recs.push(`"${rows[i].id}":"${rows[i].rec}"`);
  }
  return `{"ok":true,"client":${JSON.stringify({ name: name || '' })},"sessions":[${rows.map((r) => r.sum).join(',')}],"recs":{${recs.join(',')}}}`;
}
