// A real call to Gemini with the server's own prompts and schemas (CI, the GEMINI_API_KEY secret): proves the key,
// the model the server picks, that Gemini accepts our response schemas, and how long a turn takes. No deploy, no D1.
import { coach, workout, command } from '../src/aicoach.js';
import { brief } from '../src/aibrief.js';
import * as ab from '../src/aibrief.js';

const env = { GEMINI_API_KEY: process.env.GEMINI_API_KEY };
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
  try {
    const r = await fn();
    console.log(`OK ${name} · ${Date.now() - t} ms · model ${r.model}`);
    console.log(JSON.stringify(r.coach || r.command || r.patch).slice(0, 900));
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
process.exit(failed ? 1 : 0);
