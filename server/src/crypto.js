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

export async function sha256Hex(data) {
  const input = typeof data === 'string' ? new TextEncoder().encode(data) : data;
  const buf = await crypto.subtle.digest('SHA-256', input);
  return [...new Uint8Array(buf)].map((b) => b.toString(16).padStart(2, '0')).join('');
}

/** ASN.1 DER ECDSA signature → IEEE P1363 (r||s, 64 bytes) for Web Crypto. */
export function derToIeeeP1363(der) {
  if (der[0] !== 0x30) throw new Error('not DER');
  let i = 2;
  const part = () => {
    if (der[i] !== 0x02) throw new Error('not DER');
    const len = der[i + 1];
    let v = der.slice(i + 2, i + 2 + len);
    i += 2 + len;
    while (v.length > 32 && v[0] === 0) v = v.slice(1);
    const out = new Uint8Array(32);
    out.set(v, 32 - v.length);
    return out;
  };
  const r = part();
  const s = part();
  const out = new Uint8Array(64);
  out.set(r, 0);
  out.set(s, 32);
  return out;
}

function b64urlBytes(s) {
  const bin = atob(s.replace(/-/g, '+').replace(/_/g, '/') + '==='.slice((s.length + 3) % 4));
  const out = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; i++) out[i] = bin.charCodeAt(i);
  return out;
}

let cachedPublic = null;

/** The public half of the signing key (from its JWK, private part dropped). */
async function publicKey(pem) {
  if (cachedPublic) return cachedPublic;
  const priv = await crypto.subtle.importKey('pkcs8', pemToDer(pem), { name: 'ECDSA', namedCurve: 'P-256' }, true, ['sign']);
  const jwk = await crypto.subtle.exportKey('jwk', priv);
  delete jwk.d;
  jwk.key_ops = ['verify'];
  cachedPublic = await crypto.subtle.importKey('jwk', jwk, { name: 'ECDSA', namedCurve: 'P-256' }, false, ['verify']);
  return cachedPublic;
}

/** True when `token` was signed by this server (body.signature, DER signature). */
export async function verifyToken(privateKeyPem, token) {
  try {
    const [body, sig] = String(token || '').split('.');
    if (!body || !sig) return false;
    return await crypto.subtle.verify(
      { name: 'ECDSA', hash: 'SHA-256' },
      await publicKey(privateKeyPem),
      derToIeeeP1363(b64urlBytes(sig)),
      new TextEncoder().encode(body),
    );
  } catch {
    return false;
  }
}
