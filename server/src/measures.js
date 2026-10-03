// The client's scale measurements: the tablet sends each weigh-in's compact result (no impedances, no name);
// the client's card reads them with the training history (GET /v1/history/<cardId> → "body"). Kept per client:
// MEASURE_KEEP rows, the newest MEASURE_SEND go to the card.

export const MEASURE_MAX_BYTES = 64 * 1024;
export const MEASURE_ITEM_BYTES = 2048;
export const MEASURES_PUSH_MAX = 30;
export const MEASURE_KEEP = 400;
export const MEASURE_SEND = 120;

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
  for (const k of ['segMus', 'segFat']) {
    const s = m[k];
    if (s !== undefined && !(Array.isArray(s) && s.length === 5 && s.every((x) => x === null || inRange(x, 0, 80)))) {
      return k;
    }
  }
  return null;
}

/** Only the known fields travel on (nothing the card does not need, nothing the tablet slipped in). */
const FIELDS = ['t', 'w', 'fat', 'fatKg', 'muscle', 'water', 'visc', 'bmi', 'ffmi', 'fmi', 'page', 'ready', 'type',
  'nf', 'nm', 'nw', 'segMus', 'segFat'];
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
