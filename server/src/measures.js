// The client's scale measurements: the tablet sends each weigh-in's compact result (no impedances, no name);
// the client's card reads them with the training history (GET /v1/history/<cardId> → "body"). Kept per client:
// MEASURE_KEEP rows, all of them go to the card (a weigh-in is ~0.5 KB: the client can open every one).

export const MEASURE_MAX_BYTES = 64 * 1024;
export const MEASURE_ITEM_BYTES = 2048;
export const MEASURES_PUSH_MAX = 30;
export const MEASURE_KEEP = 400;
export const MEASURE_SEND = MEASURE_KEEP;

const fin = (v) => typeof v === 'number' && Number.isFinite(v);
const inRange = (v, lo, hi) => fin(v) && v >= lo && v <= hi;
const optRange = (v, lo, hi) => v === undefined || v === null || inRange(v, lo, hi);
const edges = (e) => e === undefined || (Array.isArray(e) && e.length === 4 && e.every((x) => fin(x)));

/** One weigh-in from the tablet: shape and plausible ranges; null when fine, else what is wrong. */
export function validMeasure(m) {
  if (!m || typeof m !== 'object' || Array.isArray(m)) return 'not an object';
  if (JSON.stringify(m).length > MEASURE_ITEM_BYTES) return 'too big';
  if (!Number.isInteger(m.t) || m.t < 1.5e12 || m.t > 4e12) return 't';
  if (m.del !== undefined) return m.del === true && Object.keys(m).length === 2 ? null : 'del';
  if (!inRange(m.w, 20, 250)) return 'w';
  for (const [k, lo, hi] of [['fat', 2, 70], ['fatKg', 0, 200], ['muscle', 5, 150], ['water', 20, 80],
    ['visc', 0, 30], ['bmi', 8, 80], ['ffmi', 5, 40], ['fmi', 0, 50], ['page', 10, 100], ['ready', 0, 100]]) {
    if (!optRange(m[k], lo, hi)) return k;
  }
  if (m.type !== undefined && !(Number.isInteger(m.type) && m.type >= -1 && m.type <= 6)) return 'type';
  for (const k of ['nf', 'nm', 'nw']) if (!edges(m[k])) return k;
  for (const [k, hi] of [['segMus', 80], ['segFat', 80], ['zm', 400], ['zf', 400]]) {
    const s = m[k];
    if (s !== undefined && !(Array.isArray(s) && s.length === 5 && s.every((x) => x === null || inRange(x, 0, hi)))) {
      return k;
    }
  }
  return null;
}

/** Only the known fields travel on (nothing the card does not need, nothing the tablet slipped in). */
const FIELDS = ['t', 'w', 'fat', 'fatKg', 'muscle', 'water', 'visc', 'bmi', 'ffmi', 'fmi', 'page', 'ready', 'type',
  'nf', 'nm', 'nw', 'segMus', 'segFat', 'zm', 'zf'];
export function cleanMeasure(m) {
  const o = {};
  for (const k of FIELDS) if (m[k] !== undefined) o[k] = m[k];
  return o;
}

/** Store the weigh-ins (same t replaces; {t, del: true} removes one) and trim the client's oldest beyond MEASURE_KEEP — one batch. */
export async function putMeasures(db, licId, clientKey, items, ts) {
  const stmts = items.map((m) => (m.del
    ? db.prepare('DELETE FROM body_measures WHERE license_id = ?1 AND client_key = ?2 AND t = ?3')
      .bind(licId, clientKey, m.t)
    : db.prepare(
      'INSERT OR REPLACE INTO body_measures (license_id, client_key, t, data, created_at) VALUES (?1, ?2, ?3, ?4, ?5)',
    ).bind(licId, clientKey, m.t, JSON.stringify(cleanMeasure(m)), ts)));
  stmts.push(db.prepare(
    `DELETE FROM body_measures WHERE license_id = ?1 AND client_key = ?2 AND t NOT IN
     (SELECT t FROM body_measures WHERE license_id = ?1 AND client_key = ?2 ORDER BY t DESC LIMIT ${MEASURE_KEEP})`,
  ).bind(licId, clientKey));
  await db.batch(stmts);
}

/** The newest MEASURE_SEND weigh-ins, oldest first, as a JSON array string (stored parts not parsed). */
export async function measuresJson(db, licId, clientKey) {
  const { results } = await db.prepare(
    `SELECT data FROM body_measures WHERE license_id = ? AND client_key = ? ORDER BY t DESC LIMIT ${MEASURE_SEND}`,
  ).bind(licId, clientKey).all();
  return '[' + (results || []).slice().reverse().map((r) => r.data).join(',') + ']';
}

/** The card of a client the scale measured before any training: the body only (client-card.html, n = 0). */
export function bodyCardData(dossier, measuredAt) {
  const name = String(dossier?.name || '').trim().split(/\s+/)[0].slice(0, 60);
  return {
    v: 1, lang: 'bg', sex: dossier?.sex === 'M' ? 'M' : 'F', name: name || 'Клиент', goal: '', studio: '',
    gen: measuredAt, since: measuredAt, n: 0, sec: 0, act: 0, kcal: 0, contr: 0, weeks: [], streak: 0,
    eff: [], mus: Array(10).fill(0), delt: -1, last: { d: measuredAt },
  };
}

/**
 * No card matches the client's e-mail / phone, but the studio's dossier does and the scale has measured them:
 * make their card now (once; the tablet's first training card then replaces its data under the same link).
 * {id, updated_at, n} of the card, or null. Costs on a miss: one indexed read (+ one per matching dossier).
 */
export async function findBodyCard(db, licId, ek, pk, ts, newId, ttlSec) {
  const { results } = await db.prepare(
    `SELECT cid, ek, pk, data FROM clients WHERE license_id = ? AND deleted = 0 AND (ek = ? OR pk = ?) LIMIT 5`,
  ).bind(licId, ek || '-', pk || '-').all();
  for (const c of results || []) {
    if (!((c.ek && ek && c.ek === ek) || (c.pk && pk && c.pk === pk))) continue;
    const m = await db.prepare(
      'SELECT t FROM body_measures WHERE license_id = ? AND client_key = ? ORDER BY t DESC LIMIT 1',
    ).bind(licId, c.cid).first();
    if (!m) continue;
    let d = null;
    try { d = JSON.parse(c.data); } catch { /* no name */ }
    // a card of this client that the lookup missed (expired, or made before the e-mail / phone) is renewed
    await db.prepare(
      `INSERT INTO client_cards (id, license_id, client_key, data, created_at, updated_at, expires_at, email_hash, phone_hash)
       VALUES (?1, ?2, ?3, ?4, ?5, ?5, ?6, ?7, ?8)
       ON CONFLICT (license_id, client_key) DO UPDATE SET expires_at = ?6,
         email_hash = COALESCE(?7, email_hash), phone_hash = COALESCE(?8, phone_hash)`,
    ).bind(newId, licId, c.cid, JSON.stringify(bodyCardData(d, m.t)), ts, ts + ttlSec, c.ek || null, c.pk || null).run();
    return db.prepare(
      `SELECT id, updated_at, json_extract(data, '$.n') AS n FROM client_cards WHERE license_id = ? AND client_key = ?`,
    ).bind(licId, c.cid).first();
  }
  return null;
}
