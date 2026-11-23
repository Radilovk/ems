// The AI coach of the Smart Session (owner, 1.1.535 — docs/xems-ai-coach.md): a short dialogue with the trainer /
// client over the planner. The model answers with a reply, at most one question at a time (≤ 3 in a dialogue), a
// patch of the session's inputs, a live tune of the running impulse (small moves, the tablet clamps them), and the
// session's advice (exercise type and load, drink before / during, food after). Numbers of the impulse stay the
// planner's; the model only nudges them inside fixed windows.

import { generateJson, FOCUS, CONTRA } from './aibrief.js';

export const GOALS = ['TONE', 'FAT', 'MASSAGE', 'DRAIN', 'CELLULITE'];
export const MODES = ['ACTIVE', 'PASSIVE'];
export const COND = ['menopause', 'prediabetes', 'diabetes', 'insulin', 'pcos', 'thyroid', 'water', 'postpartum',
  'back', 'neck', 'knees', 'joints', 'injury', 'diastasis', 'osteo', 'varicose', 'desk', 'stress', 'sleep', 'senior',
  'sensitive', 'hypertension', 'heart', 'anticoag', 'beta_blocker', 'obesity'];
export const TODAY = ['t_sleep', 't_food', 't_active', 't_stress', 't_sore', 't_period', 't_gentle'];
export const ACTIONS = ['softer', 'stronger', 'pause', 'resume', 'continue', 'to_cooldown', 'double_on', 'double_off'];
const ADVICE = ['exercise', 'load', 'rest', 'equipment', 'before', 'during', 'after'];

// The automatic mode's vocabulary (owner, 1.1.537: the AI training runs the Auto programs with the coach on top)
export const AUTO = {
  goals: ['TONE', 'SLIM', 'HEALTH'],
  actions: ['softer', 'stronger', 'pause', 'resume', 'skip', 'to_recovery', 'double_on', 'double_off'],
  on: [-1, 1], off: [-1, 2], hz: [-10, 10],
};
export const INTENSITY = ['SOFT', 'STANDARD', 'INTENSE'];

const MAX_TURNS = 12;
const QUESTIONS_MAX = 3;

// no maxLength in the schema (not every Gemini accepts it): validateCoach cuts the lengths
const str = () => ({ type: 'STRING' });
const list = (e) => ({ type: 'ARRAY', items: { type: 'STRING', enum: e } });

export function coachSchema(domain = null, programs = []) {
  const advice = { type: 'OBJECT', nullable: true, properties: {} };
  for (const k of ADVICE) advice.properties[k] = str(170);
  return {
    type: 'OBJECT',
    properties: {
      reply: str(260),
      question: {
        type: 'OBJECT', nullable: true,
        properties: { text: str(140), options: { type: 'ARRAY', items: str(40) } },
        required: ['text', 'options'],
      },
      goal: { type: 'STRING', enum: domain === 'auto' ? AUTO.goals : GOALS, nullable: true },
      mode: { type: 'STRING', enum: MODES, nullable: true },
      ...(domain === 'auto' && programs.length ? { program: { type: 'STRING', enum: programs, nullable: true } } : {}),
      ...(domain === 'auto' ? { intensity: { type: 'STRING', enum: INTENSITY, nullable: true } } : {}),
      minutes: { type: 'INTEGER', nullable: true },
      double_impulse: { type: 'BOOLEAN', nullable: true },
      cond_add: list(COND),
      cond_remove: list(COND),
      focus_add: list(FOCUS),
      today_add: list(TODAY),
      contra_add: list(CONTRA),
      actions: list(domain === 'auto' ? AUTO.actions : ACTIONS),
      on_delta: { type: 'INTEGER', nullable: true },
      off_delta: { type: 'INTEGER', nullable: true },
      hz_pct: { type: 'INTEGER', nullable: true },
      rest_pct: { type: 'INTEGER', nullable: true },
      end_in_min: { type: 'INTEGER', nullable: true },
      advice,
    },
    required: ['reply'],
  };
}

// Compact on purpose: every word is paid for in time on each turn.
export const COACH_SYSTEM = `You are the EMS coach inside XEMS (whole-body EMS suit, 20–25 min sessions).
You talk with a trainer about one client, in short natural Bulgarian. A deterministic planner sets the impulse
(Hz, pulse width, ON/OFF, phases, rests, time); the person sets the current strength. You adjust the planner's
inputs and, while a session runs, nudge the impulse. No warnings, no disclaimers, no "consult a doctor".

Each turn return JSON:
- reply: 1–2 sentences, what you did or recommend. Plain words, no jargon.
- question: only if the answer would change the plan or the advice and is not in CONTEXT/CHAT; 2–4 short options;
  never more than ${QUESTIONS_MAX} questions in the whole chat (see asked); else null.
- goal / mode / minutes / double_impulse / cond_add / cond_remove / focus_add / today_add / contra_add: only what the
  latest message implies. "по-леко днес" → today_add t_gentle. Not eaten → t_food. Slept badly → t_sleep.
  Insulin or sugar pills → cond insulin (+diabetes). Beta-blockers → beta_blocker. Blood thinners → anticoag.
- While SESSION=RUNNING, a command for now: actions (softer=−10% strength, stronger=+5%, pause, resume, continue
  after a rest, to_cooldown, double_on/off), on_delta −2..2 s, off_delta −2..3 s, hz_pct −15..15, rest_pct −30..60
  (longer/shorter rests), end_in_min (finish the active part in N min). Null when not asked.
- advice (fill on the first turn and whenever it changes, else null), each ≤ 1 short sentence:
  exercise: movement type for EMS (bodyweight, slow controlled; static holds for beginners, joints, older or obese
    clients; dynamic for trained). Knees: no jumps, no deep squats (half squat, hip hinge, bridge). Back: no loaded
    flexion or twist. Passive mode: lying relaxed, no exercise.
  load: how hard it should feel (CR-10) and how many reps/seconds per set.
  rest: what to do in the rests (breathe, stand, walk on the spot).
  equipment: own body, or light weights only for trained clients without joint issues.
  before: if not eaten / low energy → a small easy carb 20–30 min before (banana, yogurt with honey); insulin or
    sugar pills + not eaten → fast carbs first and start after 10–15 min; else "nothing special".
  during: water in small sips; electrolytes only for heavy sweat, heat, dizziness or low blood pressure.
  after: within 1–2 h a meal with protein and some carbs; slimming → protein + vegetables, fewer carbs; water.`;

/** CONTEXT (the session's inputs and plan as the tablet has them) + the chat + the latest message. */
export function coachPrompt(body) {
  const ctx = body.context && typeof body.context === 'object' ? body.context : {};
  const turns = Array.isArray(body.chat) ? body.chat.slice(-MAX_TURNS) : [];
  const asked = turns.filter((t) => t && t.role === 'ai' && t.q).length;
  const lines = [`CONTEXT: ${JSON.stringify(ctx).slice(0, 3000)}`, `asked: ${asked}/${QUESTIONS_MAX}`, 'CHAT:'];
  for (const t of turns) {
    if (!t || typeof t.text !== 'string') continue;
    lines.push(`${t.role === 'ai' ? 'coach' : 'trainer'}: ${t.text.slice(0, 400)}`);
  }
  lines.push(`trainer: ${String(body.text || '').slice(0, 800)}`);
  return lines.join('\n');
}

function pick(v, list) {
  return typeof v === 'string' && list.includes(v) ? v : null;
}

function picks(v, list, max = 8) {
  if (!Array.isArray(v)) return [];
  const out = [];
  for (const x of v) if (typeof x === 'string' && list.includes(x) && !out.includes(x) && out.length < max) out.push(x);
  return out;
}

function int(v, lo, hi) {
  const n = typeof v === 'number' ? Math.round(v) : NaN;
  return Number.isFinite(n) ? Math.max(lo, Math.min(hi, n)) : null;
}

function text(v, max) {
  return typeof v === 'string' ? v.replace(/[\u0000-\u001f\u007f]/g, ' ').replace(/\s+/g, ' ').trim().slice(0, max) : '';
}

export function validateCoach(raw, askedSoFar = 0, domain = null, programs = []) {
  const r = raw && typeof raw === 'object' ? raw : {};
  const auto = domain === 'auto';
  const out = {
    reply: text(r.reply, 260),
    question: null,
    goal: pick(r.goal, auto ? AUTO.goals : GOALS),
    program: auto ? pick(r.program, programs) : null,
    intensity: auto ? pick(r.intensity, INTENSITY) : null,
    mode: pick(r.mode, MODES),
    minutes: r.minutes == null ? null : int(r.minutes, 10, 25),
    double_impulse: typeof r.double_impulse === 'boolean' ? r.double_impulse : null,
    cond_add: picks(r.cond_add, COND),
    cond_remove: picks(r.cond_remove, COND),
    focus_add: picks(r.focus_add, FOCUS),
    today_add: picks(r.today_add, TODAY),
    contra_add: picks(r.contra_add, CONTRA),
    actions: picks(r.actions, auto ? AUTO.actions : ACTIONS, 3),
    on_delta: r.on_delta == null ? null : auto ? int(r.on_delta, ...AUTO.on) : int(r.on_delta, -2, 2),
    off_delta: r.off_delta == null ? null : auto ? int(r.off_delta, ...AUTO.off) : int(r.off_delta, -2, 3),
    hz_pct: r.hz_pct == null ? null : auto ? int(r.hz_pct, ...AUTO.hz) : int(r.hz_pct, -15, 15),
    rest_pct: r.rest_pct == null ? null : int(r.rest_pct, -30, 60),
    end_in_min: r.end_in_min == null ? null : int(r.end_in_min, 0, 25),
    advice: null,
  };
  out.cond_remove = out.cond_remove.filter((k) => !out.cond_add.includes(k));
  const q = r.question;
  if (q && typeof q === 'object' && askedSoFar < QUESTIONS_MAX) {
    const t = text(q.text, 140);
    const o = Array.isArray(q.options) ? q.options.map((x) => text(x, 40)).filter(Boolean).slice(0, 4) : [];
    if (t && o.length >= 2) out.question = { text: t, options: o };
  }
  if (r.advice && typeof r.advice === 'object') {
    const a = {};
    let any = false;
    for (const k of ADVICE) {
      a[k] = text(r.advice[k], 170);
      any = any || a[k].length > 0;
    }
    if (any) out.advice = a;
  }
  return out;
}

const AUTO_NOTE = `
This session runs a READY PROGRAM of the automatic mode (MENU below; CONTEXT.program is the current one).
- program: switch only when the client clearly fits another one better; goal TONE (firming), SLIM (weight loss),
  HEALTH (back, joints, recovery, 50+). mode ACTIVE = with exercises, PASSIVE = lying procedure.
- intensity SOFT for beginners, tired, older or fragile clients; INTENSE only on an explicit wish of a trained one.
- Live: actions softer/stronger/pause/resume/skip (next exercise)/to_recovery/double_on/double_off;
  on_delta −1..1, off_delta −1..2, hz_pct −10..10, rest_pct −30..60, end_in_min.
- minutes: the program's time stays unless a time is named (it is capped at 20 min active + 10 min recovery).`;

export async function coach(env, body, fetchImpl = fetch, ts = Date.now()) {
  const asked = Array.isArray(body.chat) ? body.chat.filter((t) => t && t.role === 'ai' && t.q).length : 0;
  const auto = body.domain === 'auto';
  const programs = auto && Array.isArray(body.menu)
    ? body.menu.map((m) => String(m?.id || '')).filter((id) => /^[a-z0-9_]{1,40}$/.test(id)).slice(0, 60)
    : [];
  let prompt = coachPrompt(body);
  if (auto && body.menu) {
    prompt = 'MENU: ' + body.menu.slice(0, 60).map((m) => `${m.id}=${String(m.name || '').slice(0, 40)} (${m.goal}/${m.kind})`)
      .join('; ') + '\n' + prompt;
  }
  const system = auto ? COACH_SYSTEM + AUTO_NOTE : COACH_SYSTEM;
  const r = await generateJson(env, system, prompt, coachSchema(auto ? 'auto' : null, programs), 900, fetchImpl, ts);
  return { model: r.model, coach: validateCoach(r.raw, asked, auto ? 'auto' : null, programs) };
}
