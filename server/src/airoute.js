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
];

/** Physiology and "why": worth thinking over when planning; live, the coach answers it on low (1.1.558: speed). */
const PHYSIO = [
  'защо', 'как действа', 'как работи', 'физиолог', 'умора', 'млечна', 'възстанов', 'мускулна треска', 'херц',
  'честота', 'импулс', 'ширина', 'микросекунд', 'калори', 'изгаря', 'метабол', 'хормон', 'колко често', 'колко пъти седмично',
  'why', 'how does',
];
CAREFUL.push('pain', 'hurt', 'dizzy', 'nause', 'chest', 'heart', 'breath', 'pregnan', 'diabet', 'injur');

/** Does this text hold a stem of the list (word-start) or one of its phrases? */
function matches(text, list) {
  const t = String(text || '').toLowerCase().replace(/ѝ/g, 'и');
  const words = t.split(/[^\p{L}\p{N}]+/u).filter(Boolean);
  const flat = ' ' + words.join(' ') + ' ';
  for (const w of list) {
    // a stem matches the start of a word ("болка", not "футбол"); a phrase matches as words
    if (w.includes(' ') ? flat.includes(' ' + w + ' ') || flat.includes(' ' + w) : words.some((x) => x.startsWith(w))) {
      return true;
    }
  }
  return false;
}

/** Health in the turn: pain, symptoms, conditions (thinking medium, always). */
export function symptom(text) {
  return matches(text, CAREFUL);
}

/** Health or physiology in the turn. */
export function careful(text) {
  return matches(text, CAREFUL) || matches(text, PHYSIO);
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
  // live: only symptoms think more (a "why" is answered well on low, and sooner); planning: physiology too
  const risky = live ? symptom(body?.text) : careful(body?.text) || careful(last);
  if (kind === 'command') return { lite: true, think: 'minimal', max: 800, why: 'command' };
  if (kind === 'workout') {
    // a whole workout: thinking more only when health or physiology is in it; a plain one on the fast Flash, low thinking
    const careful = risky || hasConditions(body);
    return careful ? { lite: false, think: 'medium', max: 6000, why: 'plan' }
      : { lite: false, fast: true, think: 'low', max: 6000, why: 'plan-fast' };
  }
  if (kind === 'brief') {
    return risky || hasConditions(body)
      ? { lite: false, think: 'medium', max: 3000, why: 'careful' }
      : { lite: false, think: 'low', max: 3000, why: 'coach' };
  }
  // the coach: live answers short, the planning chat longer
  const max = live ? 1200 : 3000;
  if (risky || (!live && hasConditions(body))) return { lite: false, think: 'medium', max, why: 'careful' };
  // a plain live reply (an exercise, "уморих се", a "why"): the fast Flash (GEMINI_FAST_MODEL) — ai-smoke 1.1.565:
  // 2–3 s and steady, the newest Flash 3–10 s; health keeps the newest one, thinking more
  // the setup's advice for a client with nothing on record is as plain: the fast Flash too (owner, 2026-11-26: "the AI
  // sets the training up extremely slowly"); conditions or a symptom keep the newest Flash with more thinking
  return { lite: false, fast: true, think: 'low', max, why: live ? 'fast' : 'coach' };
}
