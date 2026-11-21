// Trainer certificates (branding/certificate/index.html, served at /cert): the trainer types the name and downloads a
// PDF / PNG; just before drawing the file the page asks here for the serial number.
//   POST /v1/cert  {name}  → {ok, no: "00043", ts}
// Numbers run on from the paper series (last № 00042). The same name within 24 h gets the same number back.
import { now } from './utils.js';

export const CERT_FIRST = 43;
export const CERT_SAME_SEC = 24 * 3600;

export const certName = (s) => String(s ?? '').normalize('NFC').replace(/\s+/g, ' ').trim().slice(0, 60);
export const certKey = (s) => certName(s).toLocaleLowerCase('bg');
export const certNo = (id) => String(Number(id) + CERT_FIRST - 1).padStart(5, '0');

function out(obj, status = 200) {
  return new Response(JSON.stringify(obj), {
    status, headers: { 'Content-Type': 'application/json; charset=utf-8', 'Cache-Control': 'no-store' },
  });
}

/** POST — limit(key, max, sec) → bool */
export async function handleCertIssue(request, env, limit) {
  let body = null;
  try { body = await request.json(); } catch { /* falls to the name check */ }
  const name = certName(body && body.name);
  if (name.length < 3 || !/\p{L}/u.test(name)) return out({ ok: false, error: 'name' }, 400);
  const key = certKey(name), ts = now();
  const prev = await env.DB.prepare(
    'SELECT id, ts FROM certificates WHERE name_key = ? AND ts > ? ORDER BY id DESC LIMIT 1',
  ).bind(key, ts - CERT_SAME_SEC).first();
  if (prev) return out({ ok: true, no: certNo(prev.id), ts: prev.ts });
  const ip = request.headers.get('CF-Connecting-IP') || 'unknown';
  if (!(await limit(`cert:${ip}`, 30, 3600))) return out({ ok: false, error: 'busy' }, 429);
  const r = await env.DB.prepare('INSERT INTO certificates (ts, name, name_key) VALUES (?, ?, ?)').bind(ts, name, key).run();
  const id = r?.meta?.last_row_id ?? r?.lastInsertRowid;
  return out({ ok: true, no: certNo(id), ts });
}
