// The AI layer over the training algorithm (docs/xems-ai-brief.md): the trainer's free text (or speech) about a client
// → a PATCH of the algorithm's own inputs, from closed lists only. The model never sends a number of the impulse
// (Hz, µs, ON/OFF): the tablet's planner computes those from the patched inputs and its limits.
// Gemini with a response schema; the newest Flash model this key can use is picked by itself (cached per isolate).

export const FOCUS = ['abs', 'glutes', 'legs', 'arms', 'back', 'chest'];
export const COND = ['menopause', 'prediabetes', 'pcos', 'thyroid', 'water', 'postpartum', 'back', 'neck', 'knees',
  'joints', 'injury', 'diastasis', 'osteo', 'varicose', 'desk', 'stress', 'sleep', 'senior', 'sensitive'];
export const TODAY = ['t_sleep', 't_food', 't_active', 't_stress', 't_sore', 't_period'];
export const CONTRA = ['pregnancy', 'implant', 'cardiovascular', 'circulation', 'hernia', 'cancer', 'bleeding',
  'epilepsy', 'neurological', 'recent_surgery', 'skin_lesion', 'kidney', 'tuberculosis'];
export const ZONES = ['chest', 'abs', 'front_thigh', 'calf', 'arms', 'traps', 'back', 'lower_back', 'glutes',
  'back_thigh'];
export const GOALS = ['TONE', 'SLIM', 'HEALTH'];
export const KINDS = ['ACTIVE', 'PASSIVE'];
export const INTENSITY = ['SOFT', 'STANDARD', 'INTENSE'];
export const FITNESS = ['LOW', 'MID', 'HIGH'];
export const SEX = ['FEMALE', 'MALE'];
export const EXTRA = ['diastasis', 'breastfeeding', 'cesarean', 'backAcute', 'backRadiating', 'backTrauma',
  'backSurgery', 'injectable'];
/** During a session: what the text may do live (the tablet maps each to its own control). */
export const LIVE = ['softer', 'stronger', 'pause', 'resume', 'skip', 'to_recovery'];

export const BRIEF_MAX_BYTES = 16 * 1024;
const TEXT_MAX = 1200;
const MODEL_CACHE_MS = 6 * 3600 * 1000;

function arr(enumList, extra = {}) {
  return { type: 'ARRAY', items: { type: 'STRING', enum: enumList }, ...extra };
}

/** The response schema Gemini must fill (OpenAPI subset). `programs` = the menu ids the tablet sent. */
export function responseSchema(programs) {
  const p = {
    goal: { type: 'STRING', enum: GOALS, nullable: true },
    kind: { type: 'STRING', enum: KINDS, nullable: true },
    sex: { type: 'STRING', enum: SEX, nullable: true },
    age: { type: 'INTEGER', nullable: true },
    weight_kg: { type: 'INTEGER', nullable: true },
    height_cm: { type: 'INTEGER', nullable: true },
    fitness: { type: 'STRING', enum: FITNESS, nullable: true },
    sessions: { type: 'INTEGER', nullable: true },
    intensity: { type: 'STRING', enum: INTENSITY, nullable: true },
    minutes: { type: 'INTEGER', nullable: true },
    exercises: { type: 'BOOLEAN', nullable: true },
    double_pulse: { type: 'BOOLEAN', nullable: true },
    focus_add: arr(FOCUS),
    focus_remove: arr(FOCUS),
    cond_add: arr(COND),
    cond_remove: arr(COND),
    today_add: arr(TODAY),
    contra_add: arr(CONTRA),
    extra_on: arr(EXTRA),
    zones_off: arr(ZONES),
    zones_on: arr(ZONES),
    live: arr(LIVE),
    note: { type: 'STRING' },
    question: {
      type: 'OBJECT',
      nullable: true,
      properties: {
        text: { type: 'STRING' },
        options: { type: 'ARRAY', items: { type: 'STRING' } },
      },
      required: ['text', 'options'],
    },
  };
  if (programs.length) p.program = { type: 'STRING', enum: programs, nullable: true };
  return { type: 'OBJECT', properties: p, required: ['note'] };
}

const SYSTEM = `You are the planning assistant of XEMS, a whole-body EMS (electrical muscle stimulation) studio app.
A trainer describes a client or what they want, in Bulgarian (often dictated, informal). You translate it into
changes of the planner's inputs. A deterministic planner then computes everything numeric (impulse frequency, pulse
width, impulse/pause, phases, rests, duration, exercises) and the trainer sets the current strength by hand.

Rules:
- Fill ONLY what the text implies; leave every other field null / empty. Never invent facts.
- program: choose from the menu only when the text clearly points to one, else null (the planner's default stays).
  Active = with exercises/movement; passive = lying/sitting procedure (drainage, relaxation, pain, cellulite).
- Map complaints to cond_add (back pain → back, knee pain → knees, sits all day → desk, varicose veins → varicose,
  osteoporosis → osteo, after birth → postpartum + extra, menopause, thyroid, water retention → water, anxious/burned
  out → stress, sleeps badly → sleep, sensitive to current → sensitive, recent injury → injury).
- Today's state → today_add (slept little → t_sleep, ate just now → t_food, trained hard already today/yesterday →
  t_active, stressed today → t_stress, sore muscles → t_sore, period → t_period).
- Wants more on a body part → focus_add. A zone that must not get current (wound, fresh injury, implant area, painful
  joint region) → zones_off. Contraindications go to contra_add only when clearly stated (pregnant, pacemaker…).
- intensity SOFT for a beginner, a tired or fragile client, an older client's first time; INTENSE only on an explicit
  wish of a trained client. minutes only when a time is named (it will be capped by the planner).
- exercises=false when the client cannot or will not move (then a passive procedure usually fits better).
- live: only when the context says a session is RUNNING and the text is a command for now ("по-леко", "пауза",
  "прескочи", "към възстановяване").
- question: ask ONE short question only when the answer changes the plan materially and the text does not tell
  (e.g. acute vs chronic back pain). 2–4 short options. Otherwise null. Never ask what the context already has.
- note: one short plain Bulgarian sentence for the trainer — what you understood and changed. No warnings, no
  disclaimers, no advice to see a doctor.`;

/** The user turn: the planner's current inputs and menu + the trainer's text (+ the answer to our last question). */
export function buildPrompt(body) {
  const ctx = body.context && typeof body.context === 'object' ? body.context : {};
  const lines = [];
  lines.push('CONTEXT (current planner inputs, JSON):');
  lines.push(JSON.stringify(ctx).slice(0, 4000));
  if (Array.isArray(body.menu) && body.menu.length) {
    lines.push('PROGRAM MENU (id — name — goal/kind):');
    for (const m of body.menu.slice(0, 60)) {
      lines.push(`${m.id} — ${String(m.name || '').slice(0, 60)} — ${m.goal || ''}/${m.kind || ''}`);
    }
  }
  if (body.answer && body.question) {
    lines.push(`YOU ASKED: ${String(body.question).slice(0, 200)}`);
    lines.push(`TRAINER ANSWERED: ${String(body.answer).slice(0, 200)}`);
  }
  lines.push('TRAINER TEXT:');
  lines.push(String(body.text || '').slice(0, TEXT_MAX));
  return lines.join('\n');
}

function pickEnum(v, list) {
  return typeof v === 'string' && list.includes(v) ? v : null;
}

function pickList(v, list, max = 8) {
  if (!Array.isArray(v)) return [];
  const out = [];
  for (const x of v) {
    if (typeof x === 'string' && list.includes(x) && !out.includes(x)) out.push(x);
    if (out.length >= max) break;
  }
  return out;
}

function pickInt(v, lo, hi) {
  const n = typeof v === 'number' ? Math.round(v) : typeof v === 'string' && /^\d+$/.test(v) ? Number(v) : NaN;
  return Number.isFinite(n) && n >= lo && n <= hi ? n : null;
}

function cleanText(v, max) {
  if (typeof v !== 'string') return '';
  return v.replace(/[\u0000-\u001f\u007f]/g, ' ').replace(/\s+/g, ' ').trim().slice(0, max);
}

/** Whatever the model returned → only known keys and values (anything else is dropped, never trusted). */
export function validatePatch(raw, programs) {
  const r = raw && typeof raw === 'object' ? raw : {};
  const out = {
    goal: pickEnum(r.goal, GOALS),
    kind: pickEnum(r.kind, KINDS),
    program: pickEnum(r.program, programs),
    sex: pickEnum(r.sex, SEX),
    age: pickInt(r.age, 14, 95),
    weight_kg: pickInt(r.weight_kg, 35, 200),
    height_cm: pickInt(r.height_cm, 130, 220),
    fitness: pickEnum(r.fitness, FITNESS),
    sessions: pickInt(r.sessions, 0, 500),
    intensity: pickEnum(r.intensity, INTENSITY),
    minutes: pickInt(r.minutes, 5, 60),
    exercises: typeof r.exercises === 'boolean' ? r.exercises : null,
    double_pulse: typeof r.double_pulse === 'boolean' ? r.double_pulse : null,
    focus_add: pickList(r.focus_add, FOCUS),
    focus_remove: pickList(r.focus_remove, FOCUS),
    cond_add: pickList(r.cond_add, COND),
    cond_remove: pickList(r.cond_remove, COND),
    today_add: pickList(r.today_add, TODAY),
    contra_add: pickList(r.contra_add, CONTRA),
    extra_on: pickList(r.extra_on, EXTRA),
    zones_off: pickList(r.zones_off, ZONES, 10),
    zones_on: pickList(r.zones_on, ZONES, 10),
    live: pickList(r.live, LIVE, 3),
    note: cleanText(r.note, 240),
    question: null,
  };
  out.focus_remove = out.focus_remove.filter((x) => !out.focus_add.includes(x));
  out.zones_on = out.zones_on.filter((x) => !out.zones_off.includes(x));
  const q = r.question;
  if (q && typeof q === 'object') {
    const text = cleanText(q.text, 160);
    const opts = Array.isArray(q.options) ? q.options.map((o) => cleanText(o, 40)).filter(Boolean).slice(0, 4) : [];
    if (text && opts.length >= 2) out.question = { text, options: opts };
  }
  return out;
}

/**
 * The newest general Flash model the key can call: "gemini-<ver>-flash" (no lite / preview / image / tts / live
 * variants when a stable one exists). Falls back to a preview Flash, then to the newest any-Flash.
 */
export function pickModel(models) {
  const names = [];
  for (const m of Array.isArray(models) ? models : []) {
    const name = String(m?.name || '').replace(/^models\//, '');
    const methods = Array.isArray(m?.supportedGenerationMethods) ? m.supportedGenerationMethods : [];
    if (!/^gemini-\d+(\.\d+)?-flash/.test(name) || !methods.includes('generateContent')) continue;
    names.push(name);
  }
  const ver = (n) => Number((n.match(/^gemini-(\d+(?:\.\d+)?)/) || [])[1] || 0);
  const bad = /(lite|image|tts|audio|live|thinking|exp|8b|embedding|native)/;
  const rank = (n) => {
    if (bad.test(n)) return 0;
    if (/^gemini-\d+(\.\d+)?-flash(-\d{3})?$/.test(n) || /-latest$/.test(n)) return 3;  // stable
    if (/preview/.test(n)) return 2;
    return 1;
  };
  names.sort((a, b) => ver(b) - ver(a) || rank(b) - rank(a) || b.localeCompare(a));
  const top = names.filter((n) => rank(n) >= 2);
  return top[0] || names[0] || null;
}

let modelCache = { name: null, lite: null, at: 0 };

export function resetModelCache() {
  modelCache = { name: null, lite: null, at: 0 };
}

/** The newest stable Flash-Lite (the cheapest, fastest): for the spoken commands (owner, 1.1.539). */
export function pickLiteModel(models) {
  const names = [];
  for (const m of Array.isArray(models) ? models : []) {
    const name = String(m?.name || '').replace(/^models\//, '');
    const methods = Array.isArray(m?.supportedGenerationMethods) ? m.supportedGenerationMethods : [];
    if (/^gemini-\d+(\.\d+)?-flash-lite/.test(name) && methods.includes('generateContent')) names.push(name);
  }
  const ver = (n) => Number((n.match(/^gemini-(\d+(?:\.\d+)?)/) || [])[1] || 0);
  const rank = (n) => (/^gemini-\d+(\.\d+)?-flash-lite(-\d{3})?$/.test(n) || /-latest$/.test(n) ? 3
    : /preview/.test(n) ? 2 : 1);
  // a stable one first (1.1.547): the newest preview Lite refused the system text and JSON mode, so every live
  // answer fell back to the slow main model
  names.sort((a, b) => rank(b) - rank(a) || ver(b) - ver(a) || b.localeCompare(a));
  return names[0] || null;
}

const API = 'https://generativelanguage.googleapis.com/v1beta';

async function currentModel(env, fetchImpl, ts, lite = false) {
  if (lite && env.GEMINI_LITE_MODEL) return env.GEMINI_LITE_MODEL;
  if (!lite && env.GEMINI_MODEL) return env.GEMINI_MODEL;
  if (modelCache.name && ts - modelCache.at < MODEL_CACHE_MS) return lite ? modelCache.lite : modelCache.name;
  const res = await fetchImpl(`${API}/models?pageSize=200`, { headers: { 'x-goog-api-key': String(env.GEMINI_API_KEY).trim() } });
  if (!res.ok) throw new Error(`models ${res.status}`);
  const j = await res.json();
  const name = pickModel(j.models) || 'gemini-2.5-flash';
  modelCache = { name, lite: pickLiteModel(j.models) || name, at: ts };
  return lite ? modelCache.lite : name;
}

/** The last refusal from Gemini (diagnostics: ai-smoke prints it). */
export let lastError = '';

/** Least thinking a model takes: none on 2.x Flash, "minimal" on 3.x — short, fast answers (owner, 1.1.535). */
export function thinkingFor(model) {
  if (/^gemini-2\./.test(model)) return { thinkingBudget: 0 };
  if (/^gemini-\d/.test(model)) return { thinkingLevel: 'minimal' };
  return null;
}

/**
 * The settings to try, least thinking first (ai-smoke, 2026-11-24: gemini-3.8-flash refuses "minimal" — "low" is
 * its least; a model that refuses every level is asked with none).
 */
export function thinkingLadder(model) {
  const t = thinkingFor(model);
  if (!t) return [null];
  if (t.thinkingLevel === 'minimal') return [t, { thinkingLevel: 'low' }, null];
  return [t, null];
}

/**
 * One structured call: system + user text → the JSON the schema asks for. A model that refuses the thinking setting
 * (400) is asked once more without it. Throws on a model / network failure (the tablet keeps what it has).
 */
export async function generateJson(env, system, userText, schema, maxTokens, fetchImpl = fetch, ts = Date.now(),
  lite = false) {
  if (!env.GEMINI_API_KEY) throw new Error('no_key');
  const model = await currentModel(env, fetchImpl, ts, lite);
  const ladder = thinkingLadder(model);
  // some models (the Flash-Lite one) take no system instruction ("Developer instruction is not enabled"): then it
  // goes in front of the user text
  let merged = false;
  for (let attempt = 0; attempt < ladder.length + 1; attempt++) {
    const think = ladder[Math.min(attempt, ladder.length - 1)];
    const gen = {
      temperature: 0,
      responseMimeType: 'application/json',
      responseSchema: schema,
      // the thinking shares this budget (2026-11-24: 630 thought tokens cut a 900-token answer)
      maxOutputTokens: maxTokens,
    };
    if (think) gen.thinkingConfig = think;
    const body = merged
      ? { contents: [{ role: 'user', parts: [{ text: system + '\n\n' + userText }] }], generationConfig: gen }
      : { systemInstruction: { parts: [{ text: system }] }, contents: [{ role: 'user', parts: [{ text: userText }] }],
        generationConfig: gen };
    const res = await fetchImpl(`${API}/models/${encodeURIComponent(model)}:generateContent`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json', 'x-goog-api-key': String(env.GEMINI_API_KEY).trim() },
      body: JSON.stringify(body),
    });
    if (!res.ok) {
      // Google's own message (never the key): what was refused — the thinking setting, the schema, the model
      let why = '';
      try {
        const e = await res.json();
        why = String(e?.error?.message || '').replace(/\s+/g, ' ').slice(0, 240);
      } catch {
        why = '';
      }
      lastError = `gemini ${res.status} (thinking ${think ? JSON.stringify(think) : 'none'}${merged ? ', merged' : ''}): ${why}`;
      if (res.status === 400 && /developer instruction|system instruction/i.test(why) && !merged) {
        merged = true;
        attempt--;
        continue;
      }
      if (res.status === 400 && /think/i.test(why) && attempt < ladder.length - 1) continue;
      if (res.status === 404) resetModelCache();
      // the cheap model cannot do this (2026-11-24: "JSON mode is not enabled for this model"): the main one does
      if (lite && res.status === 400) {
        return generateJson(env, system, userText, schema, maxTokens, fetchImpl, ts, false);
      }
      throw new Error(lastError);
    }
    const j = await res.json();
    const cand = j?.candidates?.[0];
    const text = cand?.content?.parts?.filter((p) => !p.thought).map((p) => p.text || '').join('') || '';
    try {
      return { model, raw: JSON.parse(text) };
    } catch {
      // cut off at the budget (2026-11-24, 1.1.548 smoke: the planning answer ran to 2985 tokens and stopped
      // mid-JSON): once more with twice the room — the tablet waits up to 30 s
      if (cand?.finishReason === 'MAX_TOKENS' && maxTokens < 6000) {
        return generateJson(env, system, userText, schema, Math.min(8192, maxTokens * 2), fetchImpl, ts, lite);
      }
      const u = j?.usageMetadata || {};
      throw new Error(`bad_json finish=${cand?.finishReason} out=${u.candidatesTokenCount} thoughts=${u.thoughtsTokenCount}`
        + ` text=${JSON.stringify(text.slice(0, 120))}`);
    }
  }
  throw new Error('gemini 400');
}

/** One brief: text + context → validated patch. Throws on a model / network failure (the tablet keeps its plan). */
export async function brief(env, body, fetchImpl = fetch, ts = Date.now()) {
  const programs = Array.isArray(body.menu)
    ? body.menu.map((m) => String(m?.id || '')).filter((id) => /^[a-z0-9_]{1,40}$/.test(id)).slice(0, 60)
    : [];
  const r = await generateJson(env, SYSTEM, buildPrompt(body), responseSchema(programs), 3000, fetchImpl, ts);
  return { model: r.model, patch: validatePatch(r.raw, programs) };
}
