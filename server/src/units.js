// Units without a license — the XBody unit's XEMS mod (xbody/overlay/opt/xems/bin/xems-net). The unit calls only
// when a trainer asks: "update" (is there a newer mod? then its pack) and "log" (the last 2 minutes of its logs).
// Plain-text answers: the unit parses them with busybox sed.
import { now, isHttpsUrl } from './utils.js';
import { sha256Hex } from './crypto.js';

export const UNIT_APPS = ['xbody'];
export const UNIT_LOG_MAX = 256 * 1024;
export const UNIT_PACK_MAX = 20 * 1024 * 1024;
export const UNIT_LOG_KEEP_DAYS = 60;

export const unitApp = (s) => (UNIT_APPS.includes(s) ? s : '');
export const unitId = (s) => (/^[0-9a-f]{12}$/.test(s || '') ? s : '');
const int = (s) => (/^\d{1,9}$/.test(s || '') ? +s : 0);

function text(body, status = 200) {
  return new Response(body, {
    status,
    headers: { 'Content-Type': 'text/plain; charset=utf-8', 'Cache-Control': 'no-store' },
  });
}

/** The newest published version above `have` (or null). */
export async function latestUnitRelease(env, app, have) {
  return env.DB.prepare(
    'SELECT * FROM unit_releases WHERE app = ? AND version > ? ORDER BY version DESC LIMIT 1',
  ).bind(app, have).first();
}

/** The unit's answer: `version=0` when it has the newest, else version / sha256 / size / notes, one per line. */
export function updateText(rel) {
  if (!rel) return 'version=0\n';
  const notes = String(rel.notes || '').replace(/[\r\n]+/g, ' ').slice(0, 300);
  return `version=${rel.version}\nsha256=${rel.sha256}\nsize=${rel.size}\nnotes=${notes}\n`;
}

/** GET /v1/unit/update?app=xbody&have=N */
export async function handleUnitUpdate(url, env) {
  const app = unitApp(url.searchParams.get('app'));
  if (!app) return text('version=0\n');
  return text(updateText(await latestUnitRelease(env, app, int(url.searchParams.get('have')))));
}

/** GET /v1/unit/pack?app=xbody&v=N — the registered pack through this host, so the unit trusts one server only. */
export async function handleUnitPack(url, env) {
  const app = unitApp(url.searchParams.get('app'));
  const v = int(url.searchParams.get('v'));
  const rel = app && v ? await env.DB.prepare(
    'SELECT url FROM unit_releases WHERE app = ? AND version = ?',
  ).bind(app, v).first() : null;
  if (!rel || !isHttpsUrl(rel.url)) return text('not found\n', 404);
  const res = await fetch(rel.url, { redirect: 'follow' });
  if (!res.ok) return text('upstream\n', 502);
  return new Response(res.body, {
    headers: { 'Content-Type': 'application/x-tar', 'Cache-Control': 'no-store' },
  });
}

/** What the unit sent, as stored text: UTF-8, no NULs, the newest end when over the cap. */
export function cleanLog(bytes) {
  let s = new TextDecoder('utf-8', { fatal: false }).decode(bytes).replace(/\0/g, '');
  if (s.length > UNIT_LOG_MAX) s = s.slice(s.length - UNIT_LOG_MAX);
  return s;
}

/** POST /v1/unit/log?app=xbody&unit=<12 hex>&ver=N (text body) → `OK <id>`. limit(key, max, sec) → bool. */
export async function handleUnitLog(request, env, url, limit) {
  const app = unitApp(url.searchParams.get('app'));
  const unit = unitId(url.searchParams.get('unit'));
  if (!app || !unit) return text('ERR bad\n', 400);
  const ip = request.headers.get('CF-Connecting-IP') || 'unknown';
  if (!(await limit(`ulog:${ip}`, 10, 3600))) return text('ERR busy\n', 429);
  const cl = +(request.headers.get('Content-Length') || 0);
  if (cl > UNIT_LOG_MAX * 2) return text('ERR big\n', 413);
  const buf = new Uint8Array(await request.arrayBuffer());
  if (!buf.length) return text('ERR empty\n', 400);
  const body = cleanLog(buf.length > UNIT_LOG_MAX * 2 ? buf.slice(buf.length - UNIT_LOG_MAX * 2) : buf);
  const r = await env.DB.prepare(
    'INSERT INTO unit_logs (ts, app, unit, version, size, body) VALUES (?, ?, ?, ?, ?, ?)',
  ).bind(now(), app, unit, int(url.searchParams.get('ver')), body.length, body).run();
  const id = r?.meta?.last_row_id ?? r?.lastInsertRowid;
  return text(`OK ${id}\n`);
}

/** sha256 + size of a pack at an HTTPS URL (the admin's "register"). */
async function packMeta(packUrl) {
  if (!isHttpsUrl(packUrl)) return { ok: false, error: 'invalid_url', message: 'URL must be HTTPS' };
  const res = await fetch(packUrl, { redirect: 'follow' });
  if (!res.ok) return { ok: false, error: 'fetch_failed', message: `HTTP ${res.status}` };
  const buf = new Uint8Array(await res.arrayBuffer());
  if (buf.length < 1024 || buf.length > UNIT_PACK_MAX) {
    return { ok: false, error: 'bad_size', message: `${buf.length} bytes` };
  }
  return { ok: true, sha256: await sha256Hex(buf), size: buf.length };
}

/** /admin/api/units… (admin already checked). Returns a Response, or null for a route that is not ours. */
export async function adminUnits(request, env, route, json, readJsonBody) {
  if (route === 'units' && request.method === 'GET') {
    const rel = await env.DB.prepare('SELECT * FROM unit_releases ORDER BY app, version DESC').all();
    const logs = await env.DB.prepare(
      'SELECT id, ts, app, unit, version, size FROM unit_logs ORDER BY ts DESC LIMIT 100',
    ).all();
    return json({ ok: true, releases: rel.results, logs: logs.results });
  }
  if (route === 'units/release' && request.method === 'POST') {
    const b = await readJsonBody(request);
    const app = unitApp(b?.app || 'xbody');
    const version = int(String(b?.version ?? ''));
    const packUrl = String(b?.url || '').trim();
    if (!app || !version || !packUrl) {
      return json({ ok: false, error: 'missing_fields', message: 'version and url are required' }, 400);
    }
    const m = await packMeta(packUrl);
    if (!m.ok) return json(m, 400);
    await env.DB.prepare(
      `INSERT OR REPLACE INTO unit_releases (app, version, url, sha256, size, notes, published_at)
       VALUES (?, ?, ?, ?, ?, ?, ?)`,
    ).bind(app, version, packUrl, m.sha256, m.size, String(b.notes || ''), now()).run();
    return json({ ok: true, app, version, sha256: m.sha256, size: m.size });
  }
  let m = route.match(/^units\/release\/(\w+)\/(\d+)$/);
  if (m && request.method === 'DELETE') {
    await env.DB.prepare('DELETE FROM unit_releases WHERE app = ? AND version = ?').bind(m[1], +m[2]).run();
    return json({ ok: true });
  }
  m = route.match(/^units\/log\/(\d+)$/);
  if (m && request.method === 'GET') {
    const row = await env.DB.prepare('SELECT body FROM unit_logs WHERE id = ?').bind(+m[1]).first();
    return row ? text(row.body) : text('not found\n', 404);
  }
  if (m && request.method === 'DELETE') {
    await env.DB.prepare('DELETE FROM unit_logs WHERE id = ?').bind(+m[1]).run();
    return json({ ok: true });
  }
  return null;
}
