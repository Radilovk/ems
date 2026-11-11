// The VR game's leg recordings (owner 2026-11-10: "the legs in the game are bad — record, find the cause"): the game
// (vr-workout, XEMS Studio on the Quest) uploads the last minute of what its leg solver got — the sensors' raw gamepad
// axes, the headset, the hands, what it solved — gzip, in parts, under a random 10-character code it shows the player.
// The code is the only key (no account on the headset): whoever has it can read that one recording. Kept 14 days.
//   POST /v1/vrlog?id=<code>&part=<i>&parts=<n>   body: the gzip bytes of part i  → `OK`
//   GET  /v1/vrlog/<code>                          → {ok, parts, have: [i…]}
//   GET  /v1/vrlog/<code>/<i>                      → the bytes of part i
import { now } from './utils.js';

export const VRLOG_PART_MAX = 512 * 1024;
export const VRLOG_PARTS_MAX = 8;
export const VRLOG_KEEP_DAYS = 14;

export const vrlogId = (s) => (/^[A-Z2-9]{10}$/.test(s || '') ? s : '');
const int = (s) => (/^\d{1,3}$/.test(s || '') ? +s : -1);

function text(body, status = 200) {
  return new Response(body, { status, headers: { 'Content-Type': 'text/plain; charset=utf-8', 'Cache-Control': 'no-store' } });
}

/** POST — limit(key, max, sec) → bool */
export async function handleVrlogPut(request, env, url, limit) {
  const id = vrlogId(url.searchParams.get('id'));
  const part = int(url.searchParams.get('part'));
  const parts = int(url.searchParams.get('parts'));
  if (!id || part < 0 || parts < 1 || parts > VRLOG_PARTS_MAX || part >= parts) return text('ERR bad\n', 400);
  const ip = request.headers.get('CF-Connecting-IP') || 'unknown';
  if (!(await limit(`vrlog:${ip}`, 40, 3600))) return text('ERR busy\n', 429);
  const cl = +(request.headers.get('Content-Length') || 0);
  if (cl > VRLOG_PART_MAX) return text('ERR big\n', 413);
  const buf = new Uint8Array(await request.arrayBuffer());
  if (buf.length > VRLOG_PART_MAX) return text('ERR big\n', 413);
  if (!buf.length) return text('ERR empty\n', 400);
  await env.DB.prepare(
    'INSERT OR REPLACE INTO vr_logs (id, part, parts, ts, size, body) VALUES (?, ?, ?, ?, ?, ?)',
  ).bind(id, part, parts, now(), buf.length, buf).run();
  return text('OK\n');
}

/** GET /v1/vrlog/recent — the codes of the last 24 h (owner 2026-11-11: "the codes flash too briefly to write down —
 * find them"): code, time, parts, size; newest first, at most 20. The recordings hold only motion (no names). */
export async function handleVrlogRecent(env, ts = now()) {
  const rows = await env.DB.prepare(
    'SELECT id, MAX(ts) AS ts, MAX(parts) AS parts, COUNT(*) AS have, SUM(size) AS size FROM vr_logs WHERE ts > ? GROUP BY id ORDER BY ts DESC LIMIT 20',
  ).bind(ts - 86400).all();
  return new Response(JSON.stringify({ ok: true, recent: rows.results || [] }),
    { headers: { 'Content-Type': 'application/json', 'Cache-Control': 'no-store' } });
}

/** GET /v1/vrlog/<code>[/<part>] */
export async function handleVrlogGet(env, rest) {
  if (rest === 'recent') return handleVrlogRecent(env);
  const [code, p] = String(rest || '').split('/');
  const id = vrlogId(code);
  if (!id) return text('not found\n', 404);
  if (p === undefined || p === '') {
    const rows = await env.DB.prepare('SELECT part, parts, ts, size FROM vr_logs WHERE id = ? ORDER BY part').bind(id).all();
    const r = rows.results || [];
    if (!r.length) return text('not found\n', 404);
    return new Response(JSON.stringify({ ok: true, parts: r[0].parts, ts: r[0].ts, have: r.map((x) => x.part), size: r.reduce((a, x) => a + x.size, 0) }),
      { headers: { 'Content-Type': 'application/json', 'Cache-Control': 'no-store' } });
  }
  const part = int(p);
  const row = part >= 0 ? await env.DB.prepare('SELECT body FROM vr_logs WHERE id = ? AND part = ?').bind(id, part).first() : null;
  if (!row) return text('not found\n', 404);
  const body = row.body instanceof ArrayBuffer ? new Uint8Array(row.body) : new Uint8Array(row.body);
  return new Response(body, { headers: { 'Content-Type': 'application/gzip', 'Cache-Control': 'no-store' } });
}
