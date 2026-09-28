// Full training records (per-second series) kept in R2, one folder per client. The client reads them
// through the id of their card (an unguessable link id), so nobody needs a token on the phone.

export const SESSION_MAX_BYTES = 1024 * 1024;
export const SUMMARY_MAX_BYTES = 8 * 1024;
export const INDEX_MAX = 600;

/** A training id is its start time in ms: digits only, else null. */
export function sessionId(v) {
  const s = String(v ?? '').trim();
  return /^[1-9][0-9]{9,14}$/.test(s) ? s : null;
}

export function folder(licId, clientKey) {
  return `s/${licId}/${clientKey}/`;
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

/** The index: oldest first, the same id replaced, the oldest dropped past INDEX_MAX. */
export function mergeIndex(list, sum, max = INDEX_MAX) {
  const out = (Array.isArray(list) ? list : []).filter((o) => o && String(o.id) !== String(sum.id));
  out.push(sum);
  out.sort((a, b) => Number(a.id) - Number(b.id));
  return out.length > max ? out.slice(out.length - max) : out;
}

export async function readIndex(bucket, licId, clientKey) {
  const obj = await bucket.get(folder(licId, clientKey) + 'index.json');
  if (!obj) return [];
  try {
    const v = JSON.parse(await obj.text());
    return Array.isArray(v) ? v : [];
  } catch {
    return [];
  }
}

export async function putSession(bucket, licId, clientKey, id, sum, data) {
  const dir = folder(licId, clientKey);
  const clean = { ...data };
  delete clean.name;
  delete clean.userId;
  const opts = { httpMetadata: { contentType: 'application/json; charset=utf-8' } };
  await bucket.put(`${dir}${id}.json`, JSON.stringify(clean), opts);
  const index = mergeIndex(await readIndex(bucket, licId, clientKey), publicSummary(sum));
  await bucket.put(`${dir}index.json`, JSON.stringify(index), opts);
  return index.length;
}

export async function getSession(bucket, licId, clientKey, id) {
  return bucket.get(`${folder(licId, clientKey)}${id}.json`);
}
