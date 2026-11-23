import { test } from 'node:test';
import assert from 'node:assert/strict';
import { validateCoach, coachPrompt, coach, coachSchema } from '../src/aicoach.js';
import { resetModelCache, thinkingFor } from '../src/aibrief.js';

test('validateCoach: known values only, windows clamped, questions capped at 3', () => {
  const c = validateCoach({
    reply: 'Добре,\n по-леко.', goal: 'FAT', mode: 'X', minutes: 40, cond_add: ['knees', 'insulin', 'evil'],
    today_add: ['t_gentle', 't_food'], actions: ['softer', 'format_disk'], on_delta: 9, off_delta: -9, hz_pct: 40,
    rest_pct: 200, end_in_min: -3, question: { text: 'Инсулин?', options: ['Да', 'Не'] },
    advice: { before: 'Банан преди.', after: 'Белтък след.', bogus: 'x' },
  }, 0);
  assert.equal(c.reply, 'Добре, по-леко.');
  assert.equal(c.goal, 'FAT');
  assert.equal(c.mode, null);
  assert.equal(c.minutes, 25);
  assert.deepEqual(c.cond_add, ['knees', 'insulin']);
  assert.deepEqual(c.actions, ['softer']);
  assert.equal(c.on_delta, 2);
  assert.equal(c.off_delta, -2);
  assert.equal(c.hz_pct, 15);
  assert.equal(c.rest_pct, 60);
  assert.equal(c.end_in_min, 0);
  assert.deepEqual(c.question, { text: 'Инсулин?', options: ['Да', 'Не'] });
  assert.equal(c.advice.before, 'Банан преди.');
  assert.equal(c.advice.during, '');
  assert.equal('bogus' in c.advice, false);
  assert.equal(validateCoach({ reply: 'x', question: { text: 'Още?', options: ['a', 'b'] } }, 3).question, null);
  assert.equal(validateCoach(null).reply, '');
});

test('coachPrompt: context, asked count, chat, latest message', () => {
  const t = coachPrompt({ context: { sex: 'MALE', bmi: 28.6 }, text: 'по-леко днес',
    chat: [{ role: 'trainer', text: 'болят ме коленете' }, { role: 'ai', text: 'Инсулин?', q: true }] });
  assert.match(t, /"bmi":28.6/);
  assert.match(t, /asked: 1\/3/);
  assert.match(t, /coach: Инсулин\?/);
  assert.match(t, /trainer: по-леко днес$/);
  assert.ok(coachSchema().properties.advice.properties.after);
});

test('thinking: none on 2.x, minimal on 3.x; a refused setting is retried without it', async () => {
  assert.deepEqual(thinkingFor('gemini-2.5-flash'), { thinkingBudget: 0 });
  assert.deepEqual(thinkingFor('gemini-3-flash'), { thinkingLevel: 'minimal' });
  resetModelCache();
  const bodies = [];
  const fake = async (url, init) => {
    const req = JSON.parse(init.body);
    bodies.push(req);
    if (req.generationConfig.thinkingConfig) return new Response('{}', { status: 400 });
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [
      { text: 'thinking…', thought: true },
      { text: JSON.stringify({ reply: 'Готово.', actions: ['pause'] }) }] } }] }));
  };
  const r = await coach({ GEMINI_API_KEY: 'k', GEMINI_MODEL: 'gemini-3-flash' }, { text: 'пауза' }, fake);
  assert.equal(bodies.length, 2);
  assert.equal(r.coach.reply, 'Готово.');
  assert.deepEqual(r.coach.actions, ['pause']);
});

test('auto domain: Auto goals, the menu program, intensity, Auto windows', async () => {
  const c = validateCoach({ reply: 'ok', goal: 'SLIM', program: 'glutes', intensity: 'SOFT', actions: ['skip', 'continue'],
    on_delta: 2, off_delta: 5, hz_pct: 15 }, 0, 'auto', ['glutes', 'general']);
  assert.equal(c.goal, 'SLIM');
  assert.equal(c.program, 'glutes');
  assert.equal(c.intensity, 'SOFT');
  assert.deepEqual(c.actions, ['skip']);
  assert.equal(c.on_delta, 1);
  assert.equal(c.off_delta, 2);
  assert.equal(c.hz_pct, 10);
  assert.equal(validateCoach({ goal: 'FAT', program: 'x' }, 0, 'auto', ['glutes']).goal, null);
  const sc = coachSchema('auto', ['glutes']);
  assert.deepEqual(sc.properties.program.enum, ['glutes']);
  assert.deepEqual(sc.properties.goal.enum, ['TONE', 'SLIM', 'HEALTH']);
  let sent;
  const fake = async (url, init) => { sent = JSON.parse(init.body);
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({ reply: 'x', program: 'glutes' }) }] } }] })); };
  const r = await coach({ GEMINI_API_KEY: 'k', GEMINI_MODEL: 'm' }, { domain: 'auto', text: 'седалище', menu: [{ id: 'glutes', name: 'Седалище', goal: 'TONE', kind: 'ACTIVE' }] }, fake);
  assert.equal(r.coach.program, 'glutes');
  assert.match(sent.contents[0].parts[0].text, /^MENU: glutes=Седалище/);
  assert.match(sent.systemInstruction.parts[0].text, /READY PROGRAM/);
});
