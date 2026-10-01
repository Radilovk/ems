// The exercise library the admin curates (branding/exercises/library.json) and what the tablets read.
// Pure helpers; index.js does the D1 work. docs/xems-workouts.md

/** The picker groups the admin may give an exercise ('' = the library's own). */
export const ZONES = ['abs', 'glutes', 'legs', 'back', 'chest', 'arms', 'shoulders', 'functional', 'cardio', 'stretch'];

/** A pick from the admin page → a row, or null when invalid. frames: 0 = the exercise's own count, 1–3;
 *  zone: one of ZONES or '' (anything else → ''). */
export function normalizePick(body, knownIds, now) {
  if (!body || typeof body.id !== 'string' || !knownIds.has(body.id)) return null;
  const frames = Number.isInteger(body.frames) && body.frames >= 0 && body.frames <= 3 ? body.frames : 0;
  const zone = ZONES.includes(body.zone) ? body.zone : '';
  return { id: body.id, on_app: body.on ? 1 : 0, frames, zone, updated_at: now };
}

/** Rows → what a tablet needs: a version (the last change) and the admin's picks. */
export function picksPayload(rows) {
  let v = 0;
  const picks = [];
  for (const r of rows || []) {
    v = Math.max(v, r.updated_at || 0);
    const p = { id: r.id, on: r.on_app ? 1 : 0, frames: r.frames || 0 };
    if (r.zone) p.zone = r.zone;
    picks.push(p);
  }
  picks.sort((a, b) => (a.id < b.id ? -1 : a.id > b.id ? 1 : 0));
  return { v, picks };
}

/** Which exercises a tablet offers: the owner's selection (library "d"; older libraries: built-ins) unless switched
 *  off, the others only when switched on. */
export function enabledIds(library, picks, allByDefault = false) {
  const byId = new Map((picks || []).map((p) => [p.id, p]));
  const out = [];
  for (const e of library.exercises) {
    const p = byId.get(e.id);
    if (p ? p.on : (allByDefault || (e.d ?? e.b))) out.push(e.id);
  }
  return out;
}

/** The selections the page keeps: the XEMS tablets' and KA fitness's (its own table; all on by default). */
export const APPS = { xems: { table: 'exercise_picks', allByDefault: false }, ka: { table: 'exercise_picks_ka', allByDefault: true } };

export function appOf(name) {
  return APPS[name] ? name : 'xems';
}

/** The access code of the exercise page (header X-Access-Code) against its SHA-256 (hex); spaces / case ignored. */
export async function codeMatches(code, sha256Hex) {
  if (!code || !sha256Hex) return false;
  const norm = String(code).trim().toUpperCase().replace(/\s+/g, '');
  const buf = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(norm));
  const hex = [...new Uint8Array(buf)].map((b) => b.toString(16).padStart(2, '0')).join('');
  if (hex.length !== sha256Hex.length) return false;
  let diff = 0;
  for (let i = 0; i < hex.length; i++) diff |= hex.charCodeAt(i) ^ sha256Hex.toLowerCase().charCodeAt(i);
  return diff === 0;
}

/** The frames an exercise shows by the admin's choice (0 = its own count): 3 all, 2 first + last, 1 the first. */
export function frameNumbers(n, want) {
  const w = want || n;
  if (w >= 3 && n >= 3) return [1, 2, 3];
  if (w === 1 || n === 1) return [1];
  return [1, n];
}

/**
 * The selection for other apps (KA fitness): every exercise the admin has on, with the frames to show (the redrawn
 * even-line copy where there is one) and its group. Ids as in the library (bryllim/workout-guide).
 */
export function selectionPayload(library, rows, allByDefault = false) {
  const p = picksPayload(rows);
  const byId = new Map(p.picks.map((x) => [x.id, x]));
  const on = new Set(enabledIds(library, p.picks, allByDefault));
  const fixed = new Set(library.fixed || []);
  const items = [];
  for (const e of library.exercises) {
    if (!on.has(e.id)) continue;
    const pick = byId.get(e.id) || {};
    const n = Number(e.n) || 1;
    const frames = frameNumbers(n, pick.frames).map((k) => (fixed.has(e.id + '/' + k) && library.fixedUrl
      ? library.fixedUrl : library.frames).replace('{id}', e.id).replace('{n}', String(k)));
    items.push({ id: e.id, zone: pick.zone || e.zone, frames });
  }
  return { v: p.v, items };
}
