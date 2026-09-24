import { signToken, sha256Hex } from './crypto.js';
import { resolveEntitlements, PLANS } from './plans.js';
import { adminHtml } from './admin.js';

const JSON_HEADERS = { 'Content-Type': 'application/json; charset=utf-8' };

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    const path = url.pathname;

    try {
      if (path === '/health') return json({ ok: true, service: 'xems-license' });

      if (path === '/v1/license/activate' && request.method === 'POST') {
        return handleActivate(request, env);
      }
      if (path === '/v1/license/refresh' && request.method === 'POST') {
        return handleRefresh(request, env);
      }
      if (path === '/v1/app/update' && request.method === 'GET') {
        return handleUpdate(url, env);
      }

      if (path.startsWith('/releases/')) {
        return serveRelease(request, env, path);
      }

      if (path === '/admin' || path === '/admin/') {
        return adminPage(env);
      }
      if (path.startsWith('/admin/api/')) {
        return adminApi(request, env, path);
      }

      return json({ ok: false, error: 'not_found' }, 404);
    } catch (e) {
      console.error(e);
      return json({ ok: false, error: 'internal' }, 500);
    }
  },
};

// ─── Public API ───────────────────────────────────────────────────────────────

async function handleActivate(request, env) {
  const ip = request.headers.get('CF-Connecting-IP') || 'unknown';
  if (!(await rateLimit(env, `activate:${ip}`, 10, 60))) {
    return json({ ok: false, error: 'rate_limit', message: 'Too many attempts' }, 429);
  }

  const body = await request.json();
  const key = normKey(body.key);
  const deviceId = normDevice(body.device_id);
  if (!key || !deviceId) return err('invalid_request', 'Missing key or device_id');

  const keyHash = await sha256Hex(key);
  const lic = await env.DB.prepare('SELECT * FROM licenses WHERE key_hash = ?').bind(keyHash).first();
  if (!lic) return err('invalid_key', 'License key not found');
  if (lic.status === 'disabled' || lic.status === 'revoked') return err('disabled', 'License disabled');
  if (lic.expires_at && lic.expires_at < now()) return err('expired', 'License expired');

  const existing = await env.DB.prepare(
    'SELECT * FROM activations WHERE license_id = ? AND device_id = ?',
  ).bind(lic.id, deviceId).first();

  if (existing) {
    if (existing.status !== 'active') return err('revoked', 'Device removed');
    await touchActivation(env, existing, body);
  } else {
    const active = await env.DB.prepare(
      "SELECT COUNT(*) AS n FROM activations WHERE license_id = ? AND status = 'active'",
    ).bind(lic.id).first();
    if ((active?.n || 0) >= lic.max_devices) {
      return err('device_limit', 'Maximum devices reached');
    }
    const ts = now();
    await env.DB.prepare(
      `INSERT INTO activations (license_id, device_id, device_model, android, app_version, app_code, lang, first_seen, last_seen, status, ems_local, setup)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', ?, ?)`,
    ).bind(
      lic.id, deviceId, body.device_model || '', body.android || 0,
      body.app_version || '', body.app_code || 0, body.lang || 'bg', ts, ts,
      JSON.stringify(normMacList(body.ems_local)), body.setup ? 1 : 0,
    ).run();
  }

  const token = await mintToken(env, lic, deviceId);
  await audit(env, 'activate', lic.id, deviceId, body.device_model);
  return json({ ok: true, token });
}

async function handleRefresh(request, env) {
  const body = await request.json();
  const deviceId = normDevice(body.device_id);
  const token = body.token || '';
  const licId = parseTokenLic(token);
  if (!licId || !deviceId) return err('unknown', 'Invalid token');

  const lic = await env.DB.prepare('SELECT * FROM licenses WHERE id = ?').bind(licId).first();
  if (!lic || lic.status === 'disabled' || lic.status === 'revoked') return err('revoked', 'License revoked');
  if (lic.expires_at && lic.expires_at < now()) return err('expired', 'License expired');

  const act = await env.DB.prepare(
    'SELECT * FROM activations WHERE license_id = ? AND device_id = ?',
  ).bind(licId, deviceId).first();
  if (!act || act.status !== 'active') return err('revoked', 'Device removed');

  await touchActivation(env, act, body);
  const newToken = await mintToken(env, lic, deviceId);
  await audit(env, 'refresh', lic.id, deviceId, null);
  return json({ ok: true, token: newToken });
}

async function handleUpdate(url, env) {
  const app = url.searchParams.get('app') || 'xems';
  const channel = url.searchParams.get('channel') || 'stable';
  const code = parseInt(url.searchParams.get('code') || '0', 10);
  if (app !== 'xems') return json({ ok: true, version_code: 0 });

  const rel = await env.DB.prepare(
    'SELECT * FROM releases WHERE channel = ? AND version_code > ? ORDER BY version_code DESC LIMIT 1',
  ).bind(channel, code).first();

  if (!rel) return json({ ok: true, version_code: 0 });

  const base = env.PUBLIC_URL || url.origin;
  const apkUrl = rel.object_key.startsWith('https://')
    ? rel.object_key
    : `${base}/releases/${rel.object_key}`;
  return json({
    ok: true,
    version_code: rel.version_code,
    version_name: rel.version_name,
    url: apkUrl,
    sha256: rel.sha256,
    size: rel.size,
    notes: rel.notes || '',
    mandatory: rel.mandatory === 1,
  });
}

async function serveRelease(request, env, path) {
  const key = path.replace(/^\/releases\//, '');
  if (!key || key.includes('..')) return new Response('Not found', { status: 404 });
  if (env.RELEASES) {
    const obj = await env.RELEASES.get(key);
    if (obj) {
      const headers = new Headers();
      headers.set('Content-Type', 'application/vnd.android.package-archive');
      headers.set('Cache-Control', 'public, max-age=86400');
      if (obj.etag) headers.set('ETag', obj.etag);
      return new Response(obj.body, { headers });
    }
  }
  const rel = await env.DB.prepare('SELECT object_key FROM releases WHERE object_key = ? OR object_key LIKE ?').bind(key, `%${key}`).first();
  if (rel?.object_key?.startsWith('https://')) {
    return Response.redirect(rel.object_key, 302);
  }
  return new Response('Not found', { status: 404 });
}

// ─── Admin API ──────────────────────────────────────────────────────────────

async function adminApi(request, env, path) {
  if (!checkAdmin(request, env)) {
    return new Response('Unauthorized', { status: 401, headers: { 'WWW-Authenticate': 'Basic realm="XEMS Admin"' } });
  }

  const route = path.replace('/admin/api/', '');

  if (route === 'licenses' && request.method === 'GET') {
    const rows = await env.DB.prepare('SELECT * FROM licenses ORDER BY created_at DESC LIMIT 200').all();
    return json({ ok: true, licenses: rows.results });
  }

  if (route === 'licenses/create' && request.method === 'POST') {
    const b = await request.json();
    const rawKey = generateKey();
    const keyHash = await sha256Hex(normKey(rawKey));
    const id = `L-${new Date().getFullYear()}-${String(Math.floor(Math.random() * 999999)).padStart(6, '0')}`;
    const plan = b.plan || 'pro';
    const preset = PLANS[plan] || PLANS.custom;
    const mods = JSON.stringify(b.mods || preset?.mods || []);
    const feat = JSON.stringify(b.feat || preset?.feat || []);
    const ems = JSON.stringify(normMacList(b.ems));
    const expiresAt = b.expires_days ? now() + b.expires_days * 86400 : (b.expires_at || null);

    await env.DB.prepare(
      `INSERT INTO licenses (id, key_hash, key_hint, customer, plan, mods, feat, ems, max_devices, expires_at, status, created_at, note)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'active', ?, ?)`,
    ).bind(
      id, keyHash, rawKey.slice(-4), b.customer || '', plan, mods, feat, ems,
      b.max_devices || 1, expiresAt, now(), b.note || '',
    ).run();
    await audit(env, 'create_license', id, null, b.customer);
    return json({ ok: true, id, key: rawKey });
  }

  if (route.startsWith('licenses/') && request.method === 'PATCH') {
    const id = route.split('/')[1];
    const b = await request.json();
    const sets = [];
    const vals = [];
    for (const [k, col] of [['status', 'status'], ['plan', 'plan'], ['max_devices', 'max_devices'], ['customer', 'customer'], ['note', 'note']]) {
      if (b[k] !== undefined) { sets.push(`${col} = ?`); vals.push(b[k]); }
    }
    if (b.mods) { sets.push('mods = ?'); vals.push(JSON.stringify(b.mods)); }
    if (b.feat) { sets.push('feat = ?'); vals.push(JSON.stringify(b.feat)); }
    if (b.ems !== undefined) { sets.push('ems = ?'); vals.push(JSON.stringify(normMacList(b.ems))); }
    if (b.expires_days !== undefined) {
      sets.push('expires_at = ?');
      vals.push(b.expires_days ? now() + b.expires_days * 86400 : null);
    }
    if (!sets.length) return json({ ok: false }, 400);
    vals.push(id);
    await env.DB.prepare(`UPDATE licenses SET ${sets.join(', ')} WHERE id = ?`).bind(...vals).run();
    await audit(env, 'update_license', id, null, JSON.stringify(b));
    return json({ ok: true });
  }

  if (route.match(/^activations\/[^/]+\/[^/]+\/remove$/) && request.method === 'POST') {
    const parts = route.split('/');
    const licId = parts[1];
    const deviceId = parts[2];
    await env.DB.prepare(
      "UPDATE activations SET status = 'removed' WHERE license_id = ? AND device_id = ?",
    ).bind(licId, deviceId).run();
    await audit(env, 'remove_device', licId, deviceId, null);
    return json({ ok: true });
  }

  if (route.startsWith('activations/') && request.method === 'GET') {
    const licId = route.split('/')[1];
    const rows = await env.DB.prepare(
      'SELECT * FROM activations WHERE license_id = ? ORDER BY last_seen DESC',
    ).bind(licId).all();
    return json({ ok: true, activations: rows.results });
  }

  if (route === 'releases' && request.method === 'GET') {
    const rows = await env.DB.prepare('SELECT * FROM releases ORDER BY version_code DESC').all();
    return json({ ok: true, releases: rows.results });
  }

  if ((route === 'releases/upload' || route === 'releases/register') && request.method === 'POST') {
    const b = await request.json();
    const version_code = +b.version_code;
    const version_name = String(b.version_name || '').trim();
    const object_key = String(b.object_key || b.url || '').trim();
    if (!version_code || !version_name || !object_key) {
      return json({ ok: false, error: 'missing_fields', message: 'version_code, version_name and url are required' }, 400);
    }
    let sha256 = String(b.sha256 || '').trim().toLowerCase();
    let size = +b.size || 0;
    if (!sha256 || !size) {
      const fetched = await fetchReleaseMeta(object_key);
      if (!fetched.ok) return json({ ok: false, error: fetched.error, message: fetched.message }, 400);
      sha256 = fetched.sha256;
      size = fetched.size;
    }
    await env.DB.prepare(
      `INSERT OR REPLACE INTO releases (version_code, version_name, channel, object_key, sha256, size, notes, mandatory, published_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
    ).bind(
      version_code, version_name, b.channel || 'stable', object_key, sha256, size,
      b.notes || '', b.mandatory ? 1 : 0, now(),
    ).run();
    return json({ ok: true, version_code, version_name, sha256, size });
  }

  if (route === 'devices' && request.method === 'GET') {
    const rows = await env.DB.prepare(
      `SELECT a.*, l.customer, l.plan, l.status AS license_status
       FROM activations a JOIN licenses l ON l.id = a.license_id
       ORDER BY a.last_seen DESC LIMIT 300`,
    ).all();
    return json({ ok: true, devices: rows.results });
  }

  if (route === 'audit' && request.method === 'GET') {
    const rows = await env.DB.prepare('SELECT * FROM audit ORDER BY ts DESC LIMIT 150').all();
    return json({ ok: true, audit: rows.results });
  }

  if (route === 'releases/verify' && request.method === 'POST') {
    const b = await request.json();
    const object_key = String(b.object_key || b.url || '').trim();
    if (!object_key) return json({ ok: false, error: 'missing_url', message: 'URL is required' }, 400);
    const fetched = await fetchReleaseMeta(object_key);
    if (!fetched.ok) return json({ ok: false, error: fetched.error, message: fetched.message }, 400);
    return json({ ok: true, sha256: fetched.sha256, size: fetched.size });
  }

  if (route.match(/^releases\/\d+$/) && request.method === 'PATCH') {
    const version_code = +route.split('/')[1];
    const b = await request.json();
    const sets = [];
    const vals = [];
    if (b.mandatory !== undefined) { sets.push('mandatory = ?'); vals.push(b.mandatory ? 1 : 0); }
    if (b.notes !== undefined) { sets.push('notes = ?'); vals.push(String(b.notes)); }
    if (!sets.length) return json({ ok: false, error: 'nothing_to_update' }, 400);
    vals.push(version_code);
    await env.DB.prepare(`UPDATE releases SET ${sets.join(', ')} WHERE version_code = ?`).bind(...vals).run();
    await audit(env, 'update_release', null, null, String(version_code));
    return json({ ok: true });
  }

  if (route.match(/^releases\/\d+$/) && request.method === 'DELETE') {
    const version_code = +route.split('/')[1];
    await env.DB.prepare('DELETE FROM releases WHERE version_code = ?').bind(version_code).run();
    await audit(env, 'delete_release', null, null, String(version_code));
    return json({ ok: true });
  }

  if (route === 'stats' && request.method === 'GET') {
    const licenses = await env.DB.prepare("SELECT COUNT(*) AS n FROM licenses WHERE status='active'").first();
    const devices = await env.DB.prepare("SELECT COUNT(*) AS n FROM activations WHERE status='active'").first();
    const releases = await env.DB.prepare('SELECT MAX(version_code) AS v FROM releases').first();
    const latest = await env.DB.prepare('SELECT version_name FROM releases ORDER BY version_code DESC LIMIT 1').first();
    return json({
      ok: true,
      active_licenses: licenses?.n || 0,
      active_devices: devices?.n || 0,
      latest_version: releases?.v || 0,
      latest_version_name: latest?.version_name || '',
    });
  }

  return json({ ok: false, error: 'not_found' }, 404);
}

function adminPage(env) {
  return new Response(adminHtml, { headers: { 'Content-Type': 'text/html; charset=utf-8' } });
}

// ─── Helpers ────────────────────────────────────────────────────────────────

async function mintToken(env, lic, deviceId) {
  const { mods, feat } = resolveEntitlements(lic.plan, lic.mods, lic.feat);
  const payload = {
    v: 1,
    lic: lic.id,
    dev: deviceId,
    plan: lic.plan,
    mods,
    feat,
    ems: parseMacList(lic.ems),
    iat: now(),
    exp: lic.expires_at || 0,
  };
  return signToken(env.LICENSE_PRIVATE_KEY, payload);
}

function parseTokenLic(token) {
  try {
    const body = token.split('.')[0];
    const json = JSON.parse(atob(body.replace(/-/g, '+').replace(/_/g, '/')));
    return json.lic || null;
  } catch { return null; }
}

async function touchActivation(env, act, body) {
  await env.DB.prepare(
    `UPDATE activations SET last_seen = ?, device_model = ?, android = ?, app_version = ?, app_code = ?, lang = ?,
       ems_local = ?, setup = ?
     WHERE license_id = ? AND device_id = ?`,
  ).bind(
    now(), body.device_model || act.device_model, body.android || act.android,
    body.app_version || act.app_version, body.app_code || act.app_code,
    body.lang || act.lang,
    Array.isArray(body.ems_local) ? JSON.stringify(normMacList(body.ems_local)) : (act.ems_local || '[]'),
    body.setup === undefined ? (act.setup || 0) : (body.setup ? 1 : 0),
    act.license_id, act.device_id,
  ).run();
}

async function rateLimit(env, key, max, windowSec) {
  const ts = now();
  const row = await env.DB.prepare('SELECT * FROM rate_limits WHERE key = ?').bind(key).first();
  if (!row || ts - row.window_start >= windowSec) {
    await env.DB.prepare('INSERT OR REPLACE INTO rate_limits (key, count, window_start) VALUES (?, 1, ?)').bind(key, ts).run();
    return true;
  }
  if (row.count >= max) return false;
  await env.DB.prepare('UPDATE rate_limits SET count = count + 1 WHERE key = ?').bind(key).run();
  return true;
}

async function audit(env, action, licenseId, deviceId, detail) {
  await env.DB.prepare(
    'INSERT INTO audit (ts, actor, action, license_id, device_id, detail) VALUES (?, ?, ?, ?, ?, ?)',
  ).bind(now(), 'api', action, licenseId || '', deviceId || '', detail || '').run();
}

function generateKey() {
  const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
  const part = () => Array.from({ length: 4 }, () => chars[Math.floor(Math.random() * chars.length)]).join('');
  return `XEMS-${part()}-${part()}`;
}

/** One spelling for a suit MAC: AA:BB:CC:DD:EE:FF (12 hex digits, anything else is dropped). */
function normMac(m) {
  const hex = String(m || '').toUpperCase().replace(/[^0-9A-F]/g, '');
  return hex.length === 12 ? hex.match(/../g).join(':') : null;
}
/** Array or text (comma / space / new line separated) → unique normalized MACs. */
function normMacList(v) {
  const items = Array.isArray(v) ? v : String(v || '').split(/[\s,;]+/);
  return [...new Set(items.map(normMac).filter(Boolean))];
}
function parseMacList(jsonText) {
  try { return normMacList(JSON.parse(jsonText || '[]')); } catch { return []; }
}
function normKey(k) { return (k || '').trim().toUpperCase(); }
function normDevice(d) { return (d || '').trim().toUpperCase().replace(/[^A-F0-9]/g, ''); }
function now() { return Math.floor(Date.now() / 1000); }

/** Download APK (or any file) and return sha256 + size for the admin web form. */
async function fetchReleaseMeta(url) {
  try {
    const res = await fetch(url, { redirect: 'follow' });
    if (!res.ok) {
      return { ok: false, error: 'fetch_failed', message: `HTTP ${res.status} for ${url}` };
    }
    const buf = await res.arrayBuffer();
    const size = buf.byteLength;
    if (size < 1_000_000) {
      return { ok: false, error: 'too_small', message: 'File looks too small to be a valid APK' };
    }
    const sha256 = await sha256Hex(new Uint8Array(buf));
    return { ok: true, sha256, size };
  } catch (e) {
    return { ok: false, error: 'fetch_failed', message: String(e.message || e) };
  }
}

function checkAdmin(request, env) {
  const auth = request.headers.get('Authorization') || '';
  if (!auth.startsWith('Basic ')) return false;
  const decoded = atob(auth.slice(6));
  const [user, pass] = decoded.split(':');
  const expected = env.ADMIN_PASSWORD || '';
  const expectedUser = env.ADMIN_USER || 'admin';
  return user === expectedUser && pass === expected && expected.length > 0;
}

function json(obj, status = 200) {
  return new Response(JSON.stringify(obj), { status, headers: JSON_HEADERS });
}

function err(error, message) {
  return json({ ok: false, error, message }, 400);
}
