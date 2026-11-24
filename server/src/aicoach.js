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
      ...(domain === 'auto' ? { veto: {
        type: 'OBJECT', nullable: true,
        properties: { hz: { type: 'INTEGER', nullable: true }, on_s: { type: 'INTEGER', nullable: true },
          off_s: { type: 'INTEGER', nullable: true }, reason: { type: 'STRING' } },
        required: ['reason'],
      } } : {}),
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
    veto: null,
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
  if (auto && r.veto && typeof r.veto === 'object') {
    const v = {
      hz: r.veto.hz == null ? null : int(r.veto.hz, 1, 120),
      on_s: r.veto.on_s == null ? null : int(r.veto.on_s, 1, 10),
      off_s: r.veto.off_s == null ? null : int(r.veto.off_s, 1, 10),
      reason: text(r.veto.reason, 120),
    };
    if (v.reason && (v.hz != null || v.on_s != null || v.off_s != null)) out.veto = v;
  }
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
- minutes: the program's time stays unless a time is named (it is capped at 20 min active + 10 min recovery).
- veto (you may overrule the planner's main impulse): only when it is wrong for THIS client (e.g. osteoporosis,
  fresh injury, 70+, very obese beginner → lower hz / shorter on_s; trained athlete wanting strength → 85–100 hz).
  Give hz, on_s, off_s (any of them) and a short reason in Bulgarian. The tablet keeps the absolute limits.`;

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
  const r = await generateJson(env, system, prompt, coachSchema(auto ? 'auto' : null, programs), 3000, fetchImpl, ts);
  return { model: r.model, coach: validateCoach(r.raw, asked, auto ? 'auto' : null, programs) };
}

// ================================================================ the AI's own workout (owner, 1.1.538)
// Not a template: the model writes the exercises (dumbbells, kettlebell, free weight, mat, band, own body), described
// in words; for each block it picks the LOAD KIND from a closed list — the tablet turns the kind into the impulse
// (Hz, µs, ON/OFF) by its own table and limits, and caps the whole at 20 min active + 10 min recovery.
export const LOAD_KINDS = ['warmup', 'strength', 'hypertrophy', 'endurance', 'power', 'cardio', 'core', 'mobility', 'tone'];
export const EQUIPMENT = ['body', 'mat', 'dumbbells', 'kettlebell', 'barbell', 'band', 'ball', 'step'];
const MAX_BLOCKS = 12;

export function workoutSchema() {
  const base = coachSchema('auto', []);
  base.properties.title = { type: 'STRING' };
  base.properties.blocks = {
    type: 'ARRAY',
    items: {
      type: 'OBJECT',
      properties: {
        name: { type: 'STRING' },
        how: { type: 'STRING' },
        kind: { type: 'STRING', enum: LOAD_KINDS },
        equipment: { type: 'STRING', enum: EQUIPMENT },
        sets: { type: 'INTEGER' },
        work_s: { type: 'INTEGER' },
        rest_s: { type: 'INTEGER' },
        hz: { type: 'INTEGER', nullable: true },
      },
      required: ['name', 'kind', 'sets', 'work_s', 'rest_s'],
    },
  };
  base.required = ['reply', 'blocks'];
  return base;
}

export const WORKOUT_NOTE = `
Now WRITE A NEW WORKOUT for this client (not a ready program): blocks = exercises in order, starting with 1 warmup
block and ending with a mobility block. 5–10 blocks. Prefer free weights (dumbbells, kettlebell), a mat, a band or the
body; slow controlled movement under EMS; light weights (EMS adds the load). Respect CONTEXT (knees, back, BMI,
age, experience, today's state, active/passive). Per block: name (2–4 words, Bulgarian), how (one short sentence: the
movement, tempo, what to watch), kind (the EMS load: warmup, strength 85 Hz, hypertrophy 70 Hz, endurance 50 Hz,
power 100 Hz, tone 40 Hz, core 80 Hz, cardio = 7 Hz twitches while the client moves (jacks, marching, steps, rope),
mobility 10 Hz), equipment, sets 1–4, work_s 20–45 s per set, rest_s 15–90 s. hz only to overrule the kind's frequency for this client (else null). The whole active part ≤ 20 min with rests.
Fill advice too (before / during / after, load, rests, equipment). title: 2–5 words.`;

export function validateWorkout(raw, askedSoFar = 0) {
  const out = validateCoach(raw, askedSoFar, 'auto', []);
  const r = raw && typeof raw === 'object' ? raw : {};
  out.title = text(r.title, 60);
  out.blocks = [];
  for (const b of Array.isArray(r.blocks) ? r.blocks : []) {
    if (!b || typeof b !== 'object' || out.blocks.length >= MAX_BLOCKS) continue;
    const name = text(b.name, 50);
    const kind = pick(b.kind, LOAD_KINDS);
    if (!name || !kind) continue;
    out.blocks.push({
      name,
      how: text(b.how, 160),
      kind,
      equipment: pick(b.equipment, EQUIPMENT) || 'body',
      sets: int(b.sets, 1, 4) ?? 1,
      work_s: int(b.work_s, 20, 45) ?? 30,
      rest_s: int(b.rest_s, 15, 90) ?? 30,
      hz: b.hz == null ? null : int(b.hz, 1, 120),
    });
  }
  return out;
}

export async function workout(env, body, fetchImpl = fetch, ts = Date.now()) {
  const asked = Array.isArray(body.chat) ? body.chat.filter((t) => t && t.role === 'ai' && t.q).length : 0;
  const r = await generateJson(env, COACH_SYSTEM + WORKOUT_NOTE, coachPrompt(body), workoutSchema(), 6000, fetchImpl, ts);
  return { model: r.model, coach: validateWorkout(r.raw, asked) };
}

// ================================================================ spoken commands (owner, 1.1.539)
// The cheapest model, a tiny prompt: words → commands. "намали краката" → {target: legs, dir: down}. The tablet does
// the arithmetic itself: a step is ~10 % of the value now ("малко" ~5 %), never less than 1 (arms at 4 → ±1).
// Not a command (a complaint, a question) → coach:true and the tablet asks the full coach.
export const CMD_TARGETS = ['strength', 'legs', 'thighs', 'calves', 'glutes', 'abs', 'arms', 'chest', 'back',
  'lower_back', 'traps', 'impulse', 'pause', 'frequency', 'rest', 'all_channels'];
export const CMD_DIRS = ['up', 'down', 'off', 'on'];
export const CMD_ACTIONS = ['pause', 'resume', 'skip', 'to_recovery', 'double_on', 'double_off', 'stop'];

export const COMMAND_SYSTEM = `Turn a spoken Bulgarian EMS-training command into JSON. targets: strength (overall
current), legs, thighs, calves, glutes, abs, arms, chest, back, lower_back, traps, all_channels (muscle channels),
impulse (its seconds), pause (its seconds), frequency (Hz), rest (between sets). dir: up / down / off / on.
step: small ("малко", "леко") or normal. actions: pause, resume, skip, to_recovery, double_on, double_off, stop.
Several commands may come in one sentence. Anything that is not a command (pain, a question, a wish about the plan)
→ coach true, no commands.`;

export function commandSchema() {
  return {
    type: 'OBJECT',
    properties: {
      commands: { type: 'ARRAY', items: { type: 'OBJECT', properties: {
        target: { type: 'STRING', enum: CMD_TARGETS }, dir: { type: 'STRING', enum: CMD_DIRS },
        step: { type: 'STRING', enum: ['small', 'normal'] } }, required: ['target', 'dir'] } },
      actions: { type: 'ARRAY', items: { type: 'STRING', enum: CMD_ACTIONS } },
      coach: { type: 'BOOLEAN' },
    },
    required: ['coach'],
  };
}

export function validateCommand(raw) {
  const r = raw && typeof raw === 'object' ? raw : {};
  const commands = [];
  for (const c of Array.isArray(r.commands) ? r.commands : []) {
    const target = pick(c?.target, CMD_TARGETS);
    const dir = pick(c?.dir, CMD_DIRS);
    if (target && dir && commands.length < 6) commands.push({ target, dir, step: c.step === 'small' ? 'small' : 'normal' });
  }
  const actions = picks(r.actions, CMD_ACTIONS, 3);
  return { commands, actions, coach: !commands.length && !actions.length ? true : r.coach === true };
}

export async function command(env, body, fetchImpl = fetch, ts = Date.now()) {
  const r = await generateJson(env, COMMAND_SYSTEM, String(body.text || '').slice(0, 300), commandSchema(), 800,
    fetchImpl, ts, true);
  return { model: r.model, command: validateCommand(r.raw) };
}
