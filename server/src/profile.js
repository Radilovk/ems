/** Client profiles from the booking PWA → the studio's tablets (validation, studio code, cheap limiter). */

export const PROFILE_MAX_BYTES = 4 * 1024;
export const INBOX_KEEP_SEC = 14 * 86400;
export const INBOX_MAX_PER_STUDIO = 500;
export const INBOX_BATCH = 100;
/** A tablet's token is refreshed about daily; an older one may not poll the inbox (no D1 lookups here). */
export const INBOX_TOKEN_MAX_AGE_SEC = 10 * 86400;

export const GOALS = ['tone', 'fat', 'massage', 'drain', 'cellulite'];
export const FITNESS = ['low', 'mid', 'high'];
export const CONTRA = ['pregnancy', 'implant', 'cardiovascular', 'circulation', 'hernia', 'cancer', 'bleeding',
  'epilepsy', 'neurological', 'recent_surgery', 'skin_lesion', 'kidney', 'tuberculosis'];

/** Zones the client wants worked more (tablet: +5 % on those channels). */
export const FOCUS = ['abs', 'glutes', 'legs', 'arms', 'back', 'chest'];
/** Not obstacles — what to take into account (tablet: gentler zones / start, reasons for the trainer). */
export const COND = ['back', 'neck', 'knees', 'injury', 'desk', 'stress', 'sensitive', 'postpartum'];

const CODE_ALPHABET = '23456789abcdefghijkmnpqrstuvwxyz';

export function studioCode() {
  const b = new Uint8Array(8);
  crypto.getRandomValues(b);
  let s = '';
  for (const x of b) s += CODE_ALPHABET[x % CODE_ALPHABET.length];
  return s;
}

export function isStudioCode(s) {
  return typeof s === 'string' && /^[2-9a-km-z]{8}$/.test(s);
}

const pick = (v, allowed) => (Array.isArray(v) ? [...new Set(v.filter((x) => allowed.includes(x)))] : []);
const str = (v, max) => (typeof v === 'string' ? v.trim().slice(0, max) : '');
const int = (v, lo, hi) => (Number.isInteger(v) && v >= lo && v <= hi ? v : null);

/**
 * The profile as the PWA sends it → a clean copy, or a string naming the bad field.
 * Needs a name and an e-mail or a phone (so the tablet can find the client), and the consent.
 */
export function cleanProfile(p, nowSec) {
  if (!p || typeof p !== 'object' || Array.isArray(p)) return 'profile';
  if (p.consent !== true) return 'consent';
  const out = {
    name: str(p.name, 80),
    email: str(p.email, 120).toLowerCase(),
    phone: str(p.phone, 30),
    sex: p.sex === 'F' || p.sex === 'M' ? p.sex : '',
    by: int(p.by, 1920, new Date(nowSec * 1000).getUTCFullYear() - 10),
    h: int(p.h, 100, 230),
    w: int(p.w, 30, 250),
    goal: GOALS.includes(p.goal) ? p.goal : '',
    fit: FITNESS.includes(p.fit) ? p.fit : '',
    focus: pick(p.focus, FOCUS),
    cond: pick(p.cond, COND),
    contra: pick(p.contra, CONTRA),
    note: str(p.note, 300),
    t: int(p.t, 0, nowSec + 86400) ?? nowSec,
  };
  if (out.name.length < 2) return 'name';
  if (out.email && !/^[^@\s]+@[^@\s]+\.[a-z]{2,}$/i.test(out.email)) return 'email';
  if (out.phone && !/^\+?[0-9 ()\-/.]{7,30}$/.test(out.phone)) return 'phone';
  if (!out.email && !out.phone) return 'contact';
  return out;
}

/** Best-effort per-isolate limiter for the public endpoints: no D1 write per request. */
const HITS = new Map();
export function allowHit(key, max, windowSec, nowSec) {
  const h = HITS.get(key);
  if (!h || nowSec - h.start >= windowSec) {
    if (HITS.size > 5000) HITS.clear();
    HITS.set(key, { start: nowSec, n: 1 });
    return true;
  }
  h.n += 1;
  return h.n <= max;
}
