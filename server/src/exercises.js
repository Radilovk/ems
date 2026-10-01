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
export function enabledIds(library, picks) {
  const byId = new Map((picks || []).map((p) => [p.id, p]));
  const out = [];
  for (const e of library.exercises) {
    const p = byId.get(e.id);
    if (p ? p.on : (e.d ?? e.b)) out.push(e.id);
  }
  return out;
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
