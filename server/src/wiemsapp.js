// The WiEMS tablet app's self-update (owner 2026-11-12: "the WiEMS APK updates itself at start"). The release IS the
// repo's main branch: wiems/app/VERSION ("<name> <code>") and wiems/dist/xems-wiems.apk, read through this host so
// the tablet trusts one server only. No admin step: a merge to main is the release.
//   GET /v1/wiems/update?have=<versionCode>  → `version=<code>\nname=<name>\n` when newer, else `version=0\n`
//   GET /v1/wiems/apk                         → the APK bytes (application/vnd.android.package-archive)
//   GET /v1/wiems/seen                        → the last update checks: which version runs on which tablet (JSON)
export const WIEMS_RAW = 'https://raw.githubusercontent.com/Radilovk/ems/main/';

function text(body, status = 200) {
  return new Response(body, { status, headers: { 'Content-Type': 'text/plain; charset=utf-8', 'Cache-Control': 'no-store' } });
}

/** "1.21 22" → {name, code}; null when it is not that. */
export function parseVersion(s) {
  const m = /^\s*([0-9][0-9A-Za-z.\-]*)\s+(\d{1,9})\s*$/.exec(String(s || ''));
  return m ? { name: m[1], code: +m[2] } : null;
}

export async function handleWiemsUpdate(url, fetchFn = fetch, env = null, request = null) {
  const have = /^\d{1,9}$/.test(url.searchParams.get('have') || '') ? +url.searchParams.get('have') : 0;
  let offered = 0, body = 'version=0\n';
  const res = await fetchFn(WIEMS_RAW + 'wiems/app/VERSION', { cf: { cacheTtl: 120 } });
  if (res.ok) {
    const v = parseVersion(await res.text());
    if (v && v.code > have) {
      offered = v.code;
      body = `version=${v.code}\nname=${v.name}\n`;
    }
  }
  await recordSeen(env, url, request, have, offered);
  return text(body);
}

/** A short plain field from the query: printable, no markup, ≤ max chars. */
export function field(v, max) {
  return String(v || '').replace(/[^\p{L}\p{N} ._()\-·✓…:+]/gu, '').slice(0, max);
}

const SEEN_KEEP_S = 90 * 86400;

/**
 * Remember the check (owner: the tablet is far away — which version runs where, from here). Never breaks the update:
 * no DB / an error → nothing kept. 1.33+ also sends name, dev (the tablet's model), unit (the last unit's MAC), st
 * (what its self-update said last).
 */
export async function recordSeen(env, url, request, have, offered) {
  if (!env || !env.DB) return;
  try {
    const p = url.searchParams;
    const unit = /^[0-9a-f]{12}$/.test((p.get('unit') || '').toLowerCase().replace(/[^0-9a-f]/g, ''))
      ? (p.get('unit') || '').toLowerCase().replace(/[^0-9a-f]/g, '') : '';
    const country = field(request && request.cf ? request.cf.country : '', 4);
    const ts = Math.floor(Date.now() / 1000);
    await env.DB.prepare('INSERT INTO wiems_seen (ts, code, name, device, unit, state, offered, country) VALUES (?, ?, ?, ?, ?, ?, ?, ?)')
      .bind(ts, have, field(p.get('name'), 24), field(p.get('dev'), 48), unit, field(p.get('st'), 80), offered, country).run();
    if (ts % 50 === 0) await env.DB.prepare('DELETE FROM wiems_seen WHERE ts < ?').bind(ts - SEEN_KEEP_S).run();
  } catch (e) {
    // the update answer matters more than the record
  }
}

/** GET /v1/wiems/seen[?since=<unix s>] → {ok, now, seen: [{ts, code, name, device, unit, state, offered, country}]} (≤ 50). */
export async function handleWiemsSeen(env, url) {
  const since = /^\d{1,12}$/.test(url.searchParams.get('since') || '') ? +url.searchParams.get('since') : 0;
  const rows = await env.DB.prepare(
    'SELECT ts, code, name, device, unit, state, offered, country FROM wiems_seen WHERE ts > ? ORDER BY ts DESC, id DESC LIMIT 50',
  ).bind(since).all();
  return new Response(JSON.stringify({ ok: true, now: Math.floor(Date.now() / 1000), seen: rows.results || [] }),
    { headers: { 'Content-Type': 'application/json', 'Cache-Control': 'no-store' } });
}

export async function handleWiemsApk(fetchFn = fetch) {
  const res = await fetchFn(WIEMS_RAW + 'wiems/dist/xems-wiems.apk', { cf: { cacheTtl: 120 } });
  if (!res.ok) return text('upstream\n', 502);
  const h = { 'Content-Type': 'application/vnd.android.package-archive', 'Cache-Control': 'no-store' };
  const len = res.headers.get('Content-Length');
  if (len) h['Content-Length'] = len;
  return new Response(res.body, { headers: h });
}
