/** Shared helpers for license server (testable, no Worker bindings). */

export function now() {
  return Math.floor(Date.now() / 1000);
}

export function normKey(k) {
  return (k || '').trim().toUpperCase();
}

export function normDevice(d) {
  return (d || '').trim().toUpperCase().replace(/[^A-F0-9]/g, '');
}

/** One spelling for a suit MAC: AA:BB:CC:DD:EE:FF (12 hex digits). */
export function normMac(m) {
  const hex = String(m || '').toUpperCase().replace(/[^0-9A-F]/g, '');
  return hex.length === 12 ? hex.match(/../g).join(':') : null;
}

/** Array or text (comma / space / new line separated) → unique normalized MACs. */
export function normMacList(v) {
  const items = Array.isArray(v) ? v : String(v || '').split(/[\s,;]+/);
  return [...new Set(items.map(normMac).filter(Boolean))];
}

export function parseMacList(jsonText) {
  try {
    return normMacList(JSON.parse(jsonText || '[]'));
  } catch {
    return [];
  }
}

export function parseJsonArray(jsonText) {
  try {
    const arr = JSON.parse(jsonText || '[]');
    return Array.isArray(arr) ? arr : [];
  } catch {
    return [];
  }
}

/** Decode token body (no signature check — server-side ID lookup only). */
export function parseTokenBody(token) {
  try {
    const body = String(token || '').split('.')[0];
    if (!body) return null;
    const json = JSON.parse(atob(body.replace(/-/g, '+').replace(/_/g, '/')));
    return json && typeof json === 'object' ? json : null;
  } catch {
    return null;
  }
}

export function parseTokenLic(token) {
  return parseTokenBody(token)?.lic || null;
}

export function isHttpsUrl(url) {
  try {
    const u = new URL(url);
    return u.protocol === 'https:';
  } catch {
    return false;
  }
}

const KEY_CHARS = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';

export function generateLicenseKey() {
  const part = () => Array.from(
    { length: 4 },
    () => KEY_CHARS[crypto.getRandomValues(new Uint8Array(1))[0] % KEY_CHARS.length],
  ).join('');
  return `XEMS-${part()}-${part()}`;
}

export function generateLicenseId() {
  const n = crypto.getRandomValues(new Uint32Array(1))[0] % 1_000_000;
  return `L-${new Date().getFullYear()}-${String(n).padStart(6, '0')}`;
}
