/** ECDSA P-256 token signing compatible with Android XemsLicenseToken (DER signatures). */

function trimLeadingZeros(buf) {
  let i = 0;
  while (i < buf.length - 1 && buf[i] === 0) i++;
  return buf.slice(i);
}

function derEncodeInteger(buf) {
  let b = trimLeadingZeros(buf);
  if (b[0] & 0x80) {
    const out = new Uint8Array(b.length + 1);
    out[0] = 0;
    out.set(b, 1);
    b = out;
  }
  const out = new Uint8Array(2 + b.length);
  out[0] = 0x02;
  out[1] = b.length;
  out.set(b, 2);
  return out;
}

/** Web Crypto returns IEEE P1363 (r||s); Java expects ASN.1 DER. */
export function ieeeP1363ToDer(sig) {
  const r = derEncodeInteger(sig.slice(0, 32));
  const s = derEncodeInteger(sig.slice(32, 64));
  const inner = new Uint8Array(r.length + s.length);
  inner.set(r, 0);
  inner.set(s, r.length);
  const out = new Uint8Array(2 + inner.length);
  out[0] = 0x30;
  out[1] = inner.length;
  out.set(inner, 2);
  return out;
}

export function b64url(bytes) {
  let bin = '';
  for (const b of bytes) bin += String.fromCharCode(b);
  return btoa(bin).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/g, '');
}

export function b64urlStr(str) {
  return b64url(new TextEncoder().encode(str));
}

function pemToDer(pem) {
  const b64 = pem.replace(/-----[^-]+-----/g, '').replace(/\s/g, '');
  const bin = atob(b64);
  const out = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; i++) out[i] = bin.charCodeAt(i);
  return out;
}

let cachedKey = null;

export async function importPrivateKey(pem) {
  if (cachedKey) return cachedKey;
  const pkcs8 = pemToDer(pem);
  cachedKey = await crypto.subtle.importKey(
    'pkcs8',
    pkcs8,
    { name: 'ECDSA', namedCurve: 'P-256' },
    false,
    ['sign'],
  );
  return cachedKey;
}

export async function signToken(privateKeyPem, payload) {
  const key = await importPrivateKey(privateKeyPem);
  const body = b64urlStr(JSON.stringify(payload));
  const raw = await crypto.subtle.sign(
    { name: 'ECDSA', hash: 'SHA-256' },
    key,
    new TextEncoder().encode(body),
  );
  const der = ieeeP1363ToDer(new Uint8Array(raw));
  return `${body}.${b64url(der)}`;
}

export async function sha256Hex(str) {
  const buf = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(str));
  return [...new Uint8Array(buf)].map((b) => b.toString(16).padStart(2, '0')).join('');
}
