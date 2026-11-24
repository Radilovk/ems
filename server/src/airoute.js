// Which model and how much thinking each AI call gets (owner, 1.1.556: "maximum adequacy — a cheap model only for the
// easy small things; how strong a model and whether it thinks, chosen by itself").
//
//   tier      what                                                         model   thinking
//   ───────── ──────────────────────────────────────────────────────────── ─────── ─────────
//   command   a spoken command → closed JSON (targets/dirs/actions only,   Lite    minimal
//             validated; the tablet keeps its limits) — nothing to decide
//   coach     every reply of the coach: questions, dialogue, adjustments   Flash   low
//   careful   the same with health or physiology in it: pain, dizziness,   Flash   medium
//             heart, pressure, pregnancy, diabetes, injury… or "why /
//             how does it work"; planning for a client with conditions
//   plan      the AI's own workout (blocks, loads, exercises)              Flash   medium
//
// Lite never decides anything about the body: the moment a phrase is not a plain command it goes to the coach.

/** Stems of what makes a turn careful (Bulgarian + English), matched on the lower-cased text. */
const CAREFUL = [
  // pain, injury, symptoms
  'бол', 'боли', 'заболя', 'щипе', 'пари', 'изгар', 'замая', 'виеж', 'гади', 'повръщ', 'припад', 'причерня', 'тъмнее',
  'изтръп', 'мравуч', 'схван', 'крамп', 'спазъм', 'контузи', 'травм', 'счуп', 'разтегн', 'скъса', 'възпал', 'отек',
  'отеч', 'подут', 'синин', 'зле ми', 'не ми е добре', 'слабост', 'трепер',
  // heart, breath, pressure, conditions
  'сърц', 'гърд', 'задух', 'не мога да дишам', 'диша', 'пулс', 'аритм', 'кръвно', 'налягане', 'хипертон',
  'бремен', 'епилеп', 'пейсмейк', 'стимулатор', 'диабет', 'инсулин', 'захар', 'кърв', 'тромб', 'разредител',
  'операци', 'херни', 'дискова', 'протез', 'остеопор', 'бъбре', 'температур', 'настинк', 'вирус', 'лекарств',
  'хапче', 'рак', 'онко', 'щитовид',
  // physiology and "why"
  'защо', 'как действа', 'как работи', 'физиолог', 'умора', 'млечна', 'възстанов', 'мускулна треска', 'херц',
  'честота', 'импулс', 'ширина', 'микросекунд', 'калори', 'изгаря', 'метабол', 'хормон', 'колко често', 'колко пъти седмично',
  'pain', 'hurt', 'dizzy', 'nause', 'chest', 'heart', 'breath', 'pregnan', 'diabet', 'injur', 'why', 'how does',
];

/** Does this text bring health or physiology into the turn? */
export function careful(text) {
  const t = String(text || '').toLowerCase().replace(/ѝ/g, 'и');
  const words = t.split(/[^\p{L}\p{N}]+/u).filter(Boolean);
  const flat = ' ' + words.join(' ') + ' ';
  for (const w of CAREFUL) {
    // a stem matches the start of a word ("болка", not "футбол"); a phrase matches as words
    if (w.includes(' ') ? flat.includes(' ' + w + ' ') || flat.includes(' ' + w) : words.some((x) => x.startsWith(w))) {
      return true;
    }
  }
  return false;
}

/** The client has conditions on record (the planning must weigh them). */
function hasConditions(body) {
  const c = body?.context;
  const lists = [c?.cond, c?.conditions, c?.contra, c?.client?.cond, body?.input?.cond, body?.input?.conditions];
  return lists.some((l) => Array.isArray(l) && l.length > 0);
}

/**
 * kind: 'command' | 'coach' | 'workout' | 'brief'. Returns { lite, think, max, why }: max is the answer's own room
 * (the thinking's room is added by the caller from THINK_ROOM).
 */
export function route(kind, body = {}) {
  const live = body?.context?.session === 'RUNNING';
  const last = Array.isArray(body?.chat) ? body.chat.slice(-2).map((t) => String(t?.text || '')).join(' ') : '';
  const risky = careful(body?.text) || (live ? false : careful(last));
  if (kind === 'command') return { lite: true, think: 'minimal', max: 800, why: 'command' };
  if (kind === 'workout') return { lite: false, think: 'medium', max: 6000, why: 'plan' };
  if (kind === 'brief') {
    return risky || hasConditions(body)
      ? { lite: false, think: 'medium', max: 3000, why: 'careful' }
      : { lite: false, think: 'low', max: 3000, why: 'coach' };
  }
  // the coach: live answers short, the planning chat longer
  const max = live ? 1200 : 3000;
  if (risky || (!live && hasConditions(body))) return { lite: false, think: 'medium', max, why: 'careful' };
  return { lite: false, think: 'low', max, why: 'coach' };
}
