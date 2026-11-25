// A real call to Gemini with the server's own prompts and schemas (CI, the GEMINI_API_KEY secret): proves the key,
// the model the server picks, that Gemini accepts our response schemas, and how long a turn takes. No deploy, no D1.
import { coach, workout, command, liveTurn } from '../src/aicoach.js';
import { brief } from '../src/aibrief.js';
import * as ab from '../src/aibrief.js';

const env = { GEMINI_API_KEY: process.env.GEMINI_API_KEY, GEMINI_FAST_MODEL: 'gemini-3.5-flash' };   // as wrangler.toml
if (!env.GEMINI_API_KEY) { console.log('no GEMINI_API_KEY secret'); process.exit(1); }
const menu = [{ id: 'general', name: 'Общо стягане', goal: 'TONE', kind: 'ACTIVE' },
  { id: 'back_pain', name: 'Болки в гърба', goal: 'HEALTH', kind: 'PASSIVE' }];
const context = { session: 'PLANNING', sex: 'MALE', age: 45, height_cm: 185, weight_kg: 98, bmi: 28.6,
  bmi_class: 'наднормено', fitness: 'MID', ems_sessions: 3, goal: 'SLIM', mode: 'ACTIVE', program: 'general',
  cond: ['knees', 'diabetes'], today: [], focus: [], contra: [] };
// what Google says about the key (its error message only — the key itself is never printed)
{
  const r = await fetch('https://generativelanguage.googleapis.com/v1beta/models?pageSize=5',
    { headers: { 'x-goog-api-key': env.GEMINI_API_KEY.trim() } });
  let msg = '';
  try { const j = await r.json(); msg = j?.error ? `${j.error.status}: ${j.error.message}` : `${(j.models || []).length} models`; } catch { msg = 'no JSON'; }
  console.log(`models: HTTP ${r.status} ${msg.slice(0, 300)} · trimmed key differs: ${env.GEMINI_API_KEY.trim() !== env.GEMINI_API_KEY}`);
}
let failed = 0;
async function step(name, fn) {
  const t = Date.now();
  ab.clearLastError();
  try {
    const r = await fn();
    console.log(`OK ${name} · ${Date.now() - t} ms · model ${r.model}`);
    console.log(JSON.stringify(r.coach || r.command || r.patch).slice(0, 900));
    if (ab.lastError) console.log(`   (on the way: ${ab.lastError})`);
  } catch (e) {
    failed++;
    console.log(`FAIL ${name} · ${Date.now() - t} ms · ${e && e.message}`);
    if (ab.lastError) console.log(`   last refusal: ${ab.lastError}`);
  }
}
await step('coach (auto)', () => coach(env, { kind: 'coach', domain: 'auto', menu, context,
  text: 'Днес искам по-леко, не съм закусил, нямам много енергия, искам активна.', chat: [] }));
await step('workout', () => workout(env, { kind: 'workout', domain: 'auto', menu, context,
  text: 'Състави нова тренировка с дъмбели и постелка.', chat: [] }));
await step('command (lite)', () => command(env, { text: 'дай малко повече на долната част на тялото' }));
await step('brief', () => brief(env, { text: '52 г., болки в кръста, иска седалище', menu, context }));
// Free speech during a session (owner, 1.1.551: "does it understand free text?"): each phrase as the tablet sends it
// — the cheap command reader first; what it calls "not a command" goes to the live coach. Printed, not judged.
const live = { ...context, session: 'RUNNING', program: 'general' };
const free = ['краката ме болят малко', 'стига толкова за ръцете', 'почини ми малко', 'прекалено силно е',
  'не усещам нищо в седалището', 'много ме щипе на корема', 'хайде пак', 'смени упражнението', 'уморих се',
  'може ли малко по-нежно', 'какво упражнение за ръцете ми препоръчваш', 'колко повторения мъртва тяга',
  // 1.1.556: health and physiology — the main model thinking more (route "careful"); the answers must be right
  'замая ми се', 'защо 85 херца за сила', 'колко често мога да правя EMS', 'има пейсмейкър',
  'пари ми под електрода на бедрото', 'защо се уморявам по-бързо отколкото във фитнеса'];
for (const text of free) {
  const t = Date.now();
  try {
    // the tablet's live path (1.1.558): one request — the reader, then the coach only if it is not a command
    const r = await liveTurn(env, { kind: 'coach', reader: true, domain: 'auto', menu, context: live, text, chat: [],
      run: { phase: 'Сила', min_done: 6, state: 'RUN' } });
    if (r.command) {
      console.log(`FREE "${text}" · ${Date.now() - t} ms · command ${JSON.stringify({ c: r.command.commands, a: r.command.actions })}`);
      continue;
    }
    const k = r.coach || {};
    const u = r.usage || {};
    const did = { c: k.commands, a: k.actions, on: k.on_delta, off: k.off_delta, hz: k.hz_pct, rest: k.rest_pct, end: k.end_in_min };
    console.log(`FREE "${text}" · ${Date.now() - t} ms · ${r.model}/${r.route} · tokens in ${u.in} out ${u.out} think ${u.think}`
      + ` · coach "${k.reply}"${k.question ? ' ? ' + k.question.text + ' ' + JSON.stringify(k.question.options) : ''} · ${JSON.stringify(did)}`);
  } catch (e) {
    console.log(`FREE "${text}" · error ${e && e.message}`);
  }
}
// A dialogue (owner, 1.1.552: "if something is unclear it may ask"): vague → the coach asks; the answer → it acts.
{
  const ctx = { kind: 'coach', domain: 'auto', menu, context: live, run: { phase: 'Сила', min_done: 6, state: 'RUN' } };
  const t = Date.now();
  try {
    const a = (await coach(env, { ...ctx, text: 'не ми е приятно така', chat: [] })).coach;
    console.log(`DIALOG 1 · ${Date.now() - t} ms · "${a.reply}"${a.question ? ' ? ' + a.question.text + ' ' + JSON.stringify(a.question.options) : ''} · ${JSON.stringify(a.commands)}`);
    const said = (a.reply || '') + (a.question ? ' ' + a.question.text : '');
    const t2 = Date.now();
    const b = (await coach(env, { ...ctx, text: (a.question && a.question.options[0]) || 'корема щипе', chat: [
      { role: 'user', text: 'не ми е приятно така' }, { role: 'ai', text: said, q: !!a.question }] })).coach;
    console.log(`DIALOG 2 · ${Date.now() - t2} ms · "${b.reply}" · ${JSON.stringify(b.commands)}`);
  } catch (e) {
    console.log(`DIALOG · error ${e && e.message}`);
  }
}

// ---- speed of the candidate models for a live answer (1.1.565: "fast when possible, think when needed")
// the same phrase, the same prompt, each Flash the key can call — the time and the answer, printed, not judged
try {
  const lr = await fetch('https://generativelanguage.googleapis.com/v1beta/models?pageSize=200',
    { headers: { 'x-goog-api-key': env.GEMINI_API_KEY.trim() } });
  const all = ((await lr.json()).models || []).map((m) => String(m.name).replace(/^models\//, ''))
    .filter((n) => /^gemini-\d+(\.\d+)?-flash(-lite)?(-preview[-\d]*)?$/.test(n));
  console.log(`SPEED models: ${all.join(', ')}`);
  const phrases = ['какво упражнение за ръцете сега', 'уморих се', 'защо 85 херца'];
  for (const m of all.slice(0, 6)) {
    for (const text of phrases) {
      const t = Date.now();
      try {
        const r = await coach({ ...env, GEMINI_MODEL: m, GEMINI_LITE_MODEL: m }, { kind: 'coach', domain: 'auto', menu,
          context: { ...live, session: 'RUNNING' }, text, chat: [] });
        const u = r.usage || {};
        console.log(`SPEED ${m} · ${Date.now() - t} ms · out ${u.out} think ${u.think} · "${r.coach.reply}"`);
      } catch (e) {
        console.log(`SPEED ${m} · error ${String(e && e.message).slice(0, 120)}`);
      }
    }
  }
} catch (e) {
  console.log(`SPEED · error ${e && e.message}`);
}

process.exit(failed ? 1 : 0);
