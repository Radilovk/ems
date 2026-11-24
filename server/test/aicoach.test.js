import { test } from 'node:test';
import assert from 'node:assert/strict';
import { validateCoach, coachPrompt, coach, coachSchema, validateWorkout, workoutSchema } from '../src/aicoach.js';
import { resetModelCache, thinkingFor, pickLiteModel } from '../src/aibrief.js';
import { validateCommand, command, clearCommandCache, commandKey } from '../src/aicoach.js';

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

test('thinking: none on 2.x, minimal on 3.x; the coach starts at low; a refused setting is retried without it', async () => {
  assert.deepEqual(thinkingFor('gemini-2.5-flash'), { thinkingBudget: 0 });
  assert.deepEqual(thinkingFor('gemini-3-flash'), { thinkingLevel: 'minimal' });
  resetModelCache();
  const bodies = [];
  const fake = async (url, init) => {
    const req = JSON.parse(init.body);
    bodies.push(req);
    if (req.generationConfig.thinkingConfig) {
      return new Response(JSON.stringify({ error: { message: 'Thinking level MINIMAL is not supported for this model.' } }),
        { status: 400 });
    }
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [
      { text: 'thinking…', thought: true },
      { text: JSON.stringify({ reply: 'Готово.', actions: ['pause'] }) }] } }] }));
  };
  const r = await coach({ GEMINI_API_KEY: 'k', GEMINI_MODEL: 'gemini-3-flash' }, { text: 'пауза' }, fake);
  assert.equal(bodies.length, 2);                       // the coach (1.1.556): low → none
  assert.deepEqual(bodies[0].generationConfig.thinkingConfig, { thinkingLevel: 'low' });
  assert.equal(bodies[1].generationConfig.thinkingConfig, undefined);
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

test('the AI workout: blocks from closed lists, windows clamped, ≤ 12', () => {
  const w = validateWorkout({ reply: 'ok', title: 'Гири и постелка', blocks: [
    { name: 'Загрявка', kind: 'warmup', sets: 1, work_s: 60, rest_s: 5 },
    { name: 'Румънска тяга', how: 'Бавно, гръб прав.', kind: 'strength', equipment: 'dumbbells', sets: 9, work_s: 10, rest_s: 300 },
    { name: 'X', kind: 'nuclear', sets: 1, work_s: 30, rest_s: 30 },
    { name: '', kind: 'core', sets: 1, work_s: 30, rest_s: 30 },
  ] });
  assert.equal(w.title, 'Гири и постелка');
  assert.equal(w.blocks.length, 2);
  assert.deepEqual(w.blocks[0], { name: 'Загрявка', how: '', kind: 'warmup', equipment: 'body', sets: 1, work_s: 45, rest_s: 15, hz: null });
  assert.equal(w.blocks[1].sets, 4);
  assert.equal(w.blocks[1].work_s, 20);
  assert.equal(w.blocks[1].rest_s, 90);
  assert.ok(workoutSchema().properties.blocks.items.properties.kind.enum.includes('core'));
});

test('the veto: only with a reason and a value, clamped', () => {
  const v = validateCoach({ reply: 'x', veto: { hz: 300, on_s: 0, reason: 'Остеопороза — по-ниско.' } }, 0, 'auto', []);
  assert.deepEqual(v.veto, { hz: 120, on_s: 1, off_s: null, reason: 'Остеопороза — по-ниско.' });
  assert.equal(validateCoach({ veto: { hz: 50 } }, 0, 'auto', []).veto, null);
  assert.equal(validateCoach({ veto: { reason: 'x' } }, 0, 'auto', []).veto, null);
  assert.equal(validateCoach({ veto: { hz: 50, reason: 'x' } }, 0, null, []).veto, null);
});

test('spoken commands: closed lists, the cheapest model', async () => {
  const v = validateCommand({ commands: [{ target: 'legs', dir: 'down' }, { target: 'nose', dir: 'up' },
    { target: 'arms', dir: 'up', step: 'small' }], actions: ['pause', 'explode'] });
  assert.deepEqual(v.commands, [{ target: 'legs', dir: 'down', step: 'normal' }, { target: 'arms', dir: 'up', step: 'small' }]);
  assert.deepEqual(v.actions, ['pause']);
  assert.equal(v.coach, false);
  assert.equal(validateCommand({}).coach, true);
  const m = (n) => ({ name: 'models/' + n, supportedGenerationMethods: ['generateContent'] });
  // a stable Lite before a newer preview one (1.1.547: the preview refused the system text and JSON mode)
  assert.equal(pickLiteModel([m('gemini-2.5-flash-lite'), m('gemini-3-flash-lite-preview'), m('gemini-3-flash')]),
    'gemini-2.5-flash-lite');
  assert.equal(pickLiteModel([m('gemini-3-flash-lite-preview'), m('gemini-3-flash')]), 'gemini-3-flash-lite-preview');
  assert.equal(pickLiteModel([m('gemini-3-flash')]), null);
  resetModelCache();
  clearCommandCache();
  const urls = [];
  const fake = async (url) => {
    urls.push(url);
    if (url.includes('/models?')) return new Response(JSON.stringify({ models: [m('gemini-3-flash'), m('gemini-2.5-flash-lite')] }));
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({
      commands: [{ target: 'legs', dir: 'down' }], coach: false }) }] } }] }));
  };
  const r = await command({ GEMINI_API_KEY: 'k' }, { text: 'намали краката' }, fake);
  assert.equal(r.model, 'gemini-2.5-flash-lite');
  assert.match(urls[1], /gemini-2.5-flash-lite:generateContent/);
  assert.deepEqual(r.command.commands, [{ target: 'legs', dir: 'down', step: 'normal' }]);
});

test('a model without system instructions gets them in front of the user text', async () => {
  resetModelCache();
  clearCommandCache();
  const bodies = [];
  const fake = async (url, init) => {
    const req = JSON.parse(init.body);
    bodies.push(req);
    if (req.systemInstruction) {
      return new Response(JSON.stringify({ error: { message: 'Developer instruction is not enabled for this model' } }),
        { status: 400 });
    }
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({
      commands: [{ target: 'legs', dir: 'down' }], coach: false }) }] } }] }));
  };
  const r = await command({ GEMINI_API_KEY: 'k', GEMINI_LITE_MODEL: 'gemma-x' }, { text: 'намали краката' }, fake);
  assert.equal(bodies.length, 2);
  assert.match(bodies[1].contents[0].parts[0].text, /^Turn a spoken Bulgarian/);
  assert.deepEqual(r.command.commands, [{ target: 'legs', dir: 'down', step: 'normal' }]);
});

test('live coach commands: the answer to its question acts on one channel, unknown targets dropped', () => {
  const c = validateCoach({ reply: 'Добре, краката малко нагоре.', commands: [
    { target: 'legs', dir: 'up', step: 'small' }, { target: 'nose', dir: 'up' }, { target: 'abs', dir: 'sideways' }] });
  assert.deepEqual(c.commands, [{ target: 'legs', dir: 'up', step: 'small' }]);
  assert.deepEqual(validateCoach({ reply: 'x' }).commands, []);
});

test('command cache: the same words cost one model call; unclear readings are not kept', async () => {
  resetModelCache();
  clearCommandCache();
  let calls = 0;
  let answer = { commands: [{ target: 'legs', dir: 'up' }], coach: false };
  const fake = async () => {
    calls++;
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify(answer) }] } }] }));
  };
  const env = { GEMINI_API_KEY: 'k', GEMINI_LITE_MODEL: 'gemini-2.5-flash-lite' };
  const a = await command(env, { text: 'По-силно краката!' }, fake);
  const b = await command(env, { text: 'по-силно   краката' }, fake);
  assert.equal(calls, 1);
  assert.equal(b.model, 'cache');
  assert.deepEqual(b.command, a.command);
  assert.equal(commandKey('По-силно, краката!'), commandKey('по силно краката'));
  answer = { coach: true };
  await command(env, { text: 'долната част малко' }, fake);
  await command(env, { text: 'долната част малко' }, fake);
  assert.equal(calls, 3);
  // pain / symptoms never reach the cheap model: straight to the coach, no call
  const p = await command(env, { text: 'боли ме коляното' }, fake);
  assert.equal(calls, 3);
  assert.equal(p.command.coach, true);
});

test('live coach prompt: no program menu, a short chat — fewer input tokens on every live call', async () => {
  resetModelCache();
  const chat = [];
  for (let i = 0; i < 12; i++) chat.push({ role: i % 2 ? 'ai' : 'user', text: 'дума '.repeat(100) });
  const menu = [];
  for (let i = 0; i < 40; i++) menu.push({ id: 'prog_' + i, name: 'Програма ' + i, goal: 'tone', kind: 'active' });
  const prompts = [];
  const fake = async (url, init) => {
    const req = JSON.parse(init.body);
    prompts.push(req.contents[0].parts[0].text);
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({ reply: 'Добре.' }) }] } }] }));
  };
  const env = { GEMINI_API_KEY: 'k', GEMINI_MODEL: 'gemini-3-flash', GEMINI_LITE_MODEL: 'gemini-2.5-flash-lite' };
  await coach(env, { domain: 'auto', menu, chat, text: 'как е', context: { session: 'RUNNING' } }, fake);
  await coach(env, { domain: 'auto', menu, chat, text: 'как е', context: { session: 'PREP' } }, fake);
  const [live, prep] = prompts;
  assert.ok(!live.includes('MENU:'));
  assert.ok(prep.includes('MENU:'));
  assert.ok(live.length < prep.length / 2, `live ${live.length} vs prep ${prep.length}`);
});

test('route: Lite only for plain commands; the coach thinks, more with health or physiology in the turn', async () => {
  const { route, careful } = await import('../src/airoute.js');
  assert.deepEqual([route('command').lite, route('command').think], [true, 'minimal']);
  const live = { session: 'RUNNING' };
  assert.deepEqual([route('coach', { text: 'колко минути остават', context: live }).lite,
    route('coach', { text: 'колко минути остават', context: live }).think], [false, 'low']);
  assert.equal(route('coach', { text: 'замая ми се', context: live }).think, 'medium');
  assert.equal(route('coach', { text: 'защо 85 херца', context: live }).think, 'medium');
  assert.equal(route('coach', { text: 'нагласи я', context: { cond: ['knees'] } }).think, 'medium');
  assert.equal(route('coach', { text: 'нагласи я', context: {} }).think, 'low');
  assert.equal(route('workout').think, 'medium');
  assert.equal(route('brief', { text: 'има диабет' }).think, 'medium');
  for (const t of ['боли ме кръста', 'не ми е добре', 'имам пейсмейкър', 'бременна съм', 'how does EMS work']) {
    assert.ok(careful(t), t);
  }
  for (const t of ['увеличи краката', 'характерът ѝ е силен', 'играе футбол', 'пауза']) assert.ok(!careful(t), t);
});

test('the coach asks Google with the route: the main model, thinking medium for a symptom, room for it', async () => {
  resetModelCache();
  const bodies = [];
  const urls = [];
  const fake = async (url, init) => {
    urls.push(url);
    bodies.push(JSON.parse(init.body));
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({ reply: 'Спри.',
      actions: ['pause'] }) }] } }] }));
  };
  const env = { GEMINI_API_KEY: 'k', GEMINI_MODEL: 'gemini-3-flash', GEMINI_LITE_MODEL: 'gemini-3-flash-lite' };
  const r = await coach(env, { text: 'замая ми се', context: { session: 'RUNNING' } }, fake);
  assert.match(urls[0], /gemini-3-flash:generateContent/);
  assert.deepEqual(bodies[0].generationConfig.thinkingConfig, { thinkingLevel: 'medium' });
  assert.ok(bodies[0].generationConfig.maxOutputTokens >= 5000);
  assert.match(bodies[0].systemInstruction.parts[0].text, /RED FLAGS/);
  assert.equal(r.route, 'careful');
});

test('commands carry the named number as points of the 0–100 scale: up by / set to', () => {
  const c = validateCommand({ commands: [
    { target: 'strength', dir: 'up', amount: 1 }, { target: 'legs', dir: 'set', amount: 50 },
    { target: 'arms', dir: 'set' }, { target: 'abs', dir: 'down', amount: 250 }, { target: 'glutes', dir: 'off', amount: 5 },
    { target: 'chest', dir: 'up' }] });
  assert.deepEqual(c.commands, [
    { target: 'strength', dir: 'up', step: 'normal', amount: 1 },
    { target: 'legs', dir: 'set', step: 'normal', amount: 50 },
    { target: 'abs', dir: 'down', step: 'normal', amount: 100 },
    { target: 'glutes', dir: 'off', step: 'normal' },
    { target: 'chest', dir: 'up', step: 'normal' }]);
  const k = validateCoach({ reply: 'Вдигам с един.', commands: [{ target: 'strength', dir: 'up', amount: 1 }] });
  assert.deepEqual(k.commands, [{ target: 'strength', dir: 'up', step: 'normal', amount: 1 }]);
});

test('one change, not two: a strength command drops the softer / stronger action', () => {
  const c = validateCoach({ reply: 'Намалявам малко.', actions: ['softer', 'pause'],
    commands: [{ target: 'strength', dir: 'down' }] });
  assert.deepEqual(c.actions, ['pause']);
  assert.deepEqual(validateCoach({ reply: 'x', actions: ['softer'], commands: [{ target: 'legs', dir: 'down' }] }).actions,
    ['softer']);
});
