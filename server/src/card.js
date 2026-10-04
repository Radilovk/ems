/** Shareable client card: validation of what the tablet sends, the link id, and the page itself. */

export const CARD_MAX_BYTES = 32 * 1024;
export const CARD_TTL_SEC = 365 * 86400;
export const CARD_PLACEHOLDER = '__XEMS_CARD_DATA__';

const ALPHABET = '23456789abcdefghijkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ';

/** Unguessable link id (12 chars ≈ 70 bits), no look-alike characters. */
export function cardId() {
  const b = new Uint8Array(12);
  crypto.getRandomValues(b);
  let s = '';
  for (const x of b) s += ALPHABET[x % ALPHABET.length];
  return s;
}

export function isCardId(s) {
  return typeof s === 'string' && /^[2-9a-km-zA-HJ-NP-Z]{12}$/.test(s);
}

/** A lookup hash as the tablet and the PWA send it: 64 lower-case hex, else null. */
export function lookupHash(v) {
  const s = String(v ?? '').trim().toLowerCase();
  return /^[0-9a-f]{64}$/.test(s) ? s : null;
}

/**
 * Does a card belong to the person asking? The e-mail or the phone the client gave the studio matches the one
 * on the card. One is enough: the booking app often knows only one of them, or the phone is written another
 * way than on the tablet — requiring both hid the card from its own client. A card without any hash is found
 * only by its link.
 */
export function lookupMatches(card, ek, pk) {
  const e = card?.email_hash || null;
  const p = card?.phone_hash || null;
  return Boolean((e && ek && e === ek) || (p && pk && p === pk));
}

export function normClientKey(v) {
  return String(v ?? '').trim().replace(/[^0-9A-Za-z_-]/g, '').slice(0, 64);
}

const num = (v) => typeof v === 'number' && Number.isFinite(v);
const arr = (v, max) => Array.isArray(v) && v.length <= max;

/** The card data as the report page builds it (client-card.html reads exactly these fields). */
export function validCardData(d) {
  if (!d || typeof d !== 'object' || Array.isArray(d)) return 'not an object';
  if (d.v !== 1) return 'version';
  if (typeof d.name !== 'string' || d.name.length > 60) return 'name';
  for (const k of ['n', 'sec', 'kcal', 'contr', 'streak', 'since', 'gen']) if (!num(d[k])) return k;
  if (!arr(d.weeks, 12) || !d.weeks.every(num)) return 'weeks';
  if (!arr(d.mus, 10) || d.mus.length !== 10 || !d.mus.every(num)) return 'mus';
  if (!arr(d.eff, 60)) return 'eff';
  if (!d.last || typeof d.last !== 'object') return 'last';
  const mus10 = (m) => m === undefined || (arr(m, 10) && m.length === 10 && m.every(num));
  if (!mus10(d.last.mus)) return 'last.mus';
  if (d.p30 !== undefined && (typeof d.p30 !== 'object' || !mus10(d.p30.mus) || !arr(d.p30.eff || [], 60))) return 'p30';
  // the deltoid (no suit channel, the exercises only): optional, −1 = no exercise worked it, else 0…1
  const delt = (v) => v === undefined || (num(v) && v >= -1 && v <= 1);
  if (!delt(d.delt) || !delt(d.last.delt) || (d.p30 && !delt(d.p30.delt))) return 'delt';
  // the impulse log (optional): at most 8 short entries
  const str = (v, n) => v === undefined || (typeof v === 'string' && v.length <= n);
  if (d.prm !== undefined && (!arr(d.prm, 8) || !d.prm.every((e) => e && typeof e === 'object' && num(e.t)
    && str(e.var, 40) && str(e.trig, 80) && str(e.main, 80) && (e.d === undefined || (arr(e.d, 4)
    && e.d.every((x) => str(x, 120))))))) return 'prm';
  return null;
}

/** Only the client's figure (female unless the client is a man): the other one is ~400 KB. */
export function keepFigure(template, sex) {
  const drop = sex === 'M' ? 'female' : 'male';
  const a = `<!--FIG:${drop}-->`, b = `<!--/FIG:${drop}-->`;
  const i = template.indexOf(a), j = template.indexOf(b);
  return i >= 0 && j > i ? template.slice(0, i) + template.slice(j + b.length) : template;
}

const esc = (t) => String(t).replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/</g, '&lt;');

/** The page: the card template with the data embedded (never able to close its script tag). */
export function renderCard(template, data) {
  template = keepFigure(template, data && data.sex);
  const json = JSON.stringify(data).replace(/</g, '\\u003c');
  const lang = data && data.lang === 'en' ? 'en' : 'bg';
  return '<!doctype html><html lang="' + lang + '"><head><meta charset="utf-8">'
    + '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
    + '<meta property="og:title" content="' + esc((data && data.name ? data.name + ' · ' : '') + 'XEMS') + '">'
    + '<meta property="og:description" content="' + esc(lang === 'en'
      ? `${data.n} trainings · ${Math.round((data.sec || 0) / 360) / 10} h · ${data.kcal} kcal`
      : `${data.n} тренировки · ${Math.round((data.sec || 0) / 360) / 10} ч · ${data.kcal} kcal`) + '">'
    + '<meta name="theme-color" content="#07080C">'
    + '</head><body>' + template.replace(CARD_PLACEHOLDER, () => json) + '</body></html>';
}

export function cardGonePage() {
  return '<!doctype html><html lang="bg"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">'
    + '<title>XEMS</title></head><body style="margin:0;min-height:100vh;display:grid;place-items:center;background:#0A0C10;color:#EEF1F6;font:16px/1.5 system-ui,sans-serif;padding:24px;text-align:center">'
    + '<div><b style="font-size:20px">Картонът вече не е наличен</b><p style="color:#9AA3B2">Помоли студиото за нов линк.<br>This card is no longer available — ask your studio for a new link.</p></div></body></html>';
}
