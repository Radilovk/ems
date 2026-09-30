// The exercise library the admin curates (branding/exercises/library.json) and what the tablets read.
// Pure helpers; index.js does the D1 work. docs/xems-workouts.md

/** A pick from the admin page → a row, or null when invalid. frames: 0 = the exercise's own count, 1–3. */
export function normalizePick(body, knownIds, now) {
  if (!body || typeof body.id !== 'string' || !knownIds.has(body.id)) return null;
  const frames = Number.isInteger(body.frames) && body.frames >= 0 && body.frames <= 3 ? body.frames : 0;
  return { id: body.id, on_app: body.on ? 1 : 0, frames, updated_at: now };
}

/** Rows → what a tablet needs: a version (the last change) and the admin's picks. */
export function picksPayload(rows) {
  let v = 0;
  const picks = [];
  for (const r of rows || []) {
    v = Math.max(v, r.updated_at || 0);
    picks.push({ id: r.id, on: r.on_app ? 1 : 0, frames: r.frames || 0 });
  }
  picks.sort((a, b) => (a.id < b.id ? -1 : a.id > b.id ? 1 : 0));
  return { v, picks };
}

/** Which exercises a tablet offers: built-ins unless switched off, others only when switched on. */
export function enabledIds(library, picks) {
  const byId = new Map((picks || []).map((p) => [p.id, p]));
  const out = [];
  for (const e of library.exercises) {
    const p = byId.get(e.id);
    if (p ? p.on : e.b) out.push(e.id);
  }
  return out;
}
