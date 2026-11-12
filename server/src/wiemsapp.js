// The WiEMS tablet app's self-update (owner 2026-11-12: "the WiEMS APK updates itself at start"). The release IS the
// repo's main branch: wiems/app/VERSION ("<name> <code>") and wiems/dist/xems-wiems.apk, read through this host so
// the tablet trusts one server only. No admin step: a merge to main is the release.
//   GET /v1/wiems/update?have=<versionCode>  → `version=<code>\nname=<name>\n` when newer, else `version=0\n`
//   GET /v1/wiems/apk                         → the APK bytes (application/vnd.android.package-archive)
export const WIEMS_RAW = 'https://raw.githubusercontent.com/Radilovk/ems/main/';

function text(body, status = 200) {
  return new Response(body, { status, headers: { 'Content-Type': 'text/plain; charset=utf-8', 'Cache-Control': 'no-store' } });
}

/** "1.21 22" → {name, code}; null when it is not that. */
export function parseVersion(s) {
  const m = /^\s*([0-9][0-9A-Za-z.\-]*)\s+(\d{1,9})\s*$/.exec(String(s || ''));
  return m ? { name: m[1], code: +m[2] } : null;
}

export async function handleWiemsUpdate(url, fetchFn = fetch) {
  const have = /^\d{1,9}$/.test(url.searchParams.get('have') || '') ? +url.searchParams.get('have') : 0;
  const res = await fetchFn(WIEMS_RAW + 'wiems/app/VERSION', { cf: { cacheTtl: 120 } });
  if (!res.ok) return text('version=0\n');
  const v = parseVersion(await res.text());
  if (!v || v.code <= have) return text('version=0\n');
  return text(`version=${v.code}\nname=${v.name}\n`);
}

export async function handleWiemsApk(fetchFn = fetch) {
  const res = await fetchFn(WIEMS_RAW + 'wiems/dist/xems-wiems.apk', { cf: { cacheTtl: 120 } });
  if (!res.ok) return text('upstream\n', 502);
  const h = { 'Content-Type': 'application/vnd.android.package-archive', 'Cache-Control': 'no-store' };
  const len = res.headers.get('Content-Length');
  if (len) h['Content-Length'] = len;
  return new Response(res.body, { headers: h });
}
