import { test } from 'node:test';
import assert from 'node:assert/strict';
import { validatePatch, pickModel, brief, resetModelCache, responseSchema, buildPrompt } from '../src/aibrief.js';

test('validatePatch keeps only known keys and values', () => {
  const p = validatePatch({
    goal: 'SLIM', kind: 'HACK', program: 'glutes', age: 300, minutes: 90, sessions: 3,
    focus_add: ['glutes', 'glutes', 'nose'], focus_remove: ['glutes', 'abs'], cond_add: ['knees', 'x'],
    zones_off: ['lower_back'], zones_on: ['lower_back', 'arms'], live: ['softer', 'rm -rf'],
    note: 'Разбрах:\n болки в коляното', question: { text: 'Остра?', options: ['Да'] }, evil: 1,
  }, ['glutes', 'general']);
  assert.equal(p.goal, 'SLIM');
  assert.equal(p.kind, null);
  assert.equal(p.program, 'glutes');
  assert.equal(p.age, null);
  assert.equal(p.minutes, null);
  assert.equal(p.sessions, 3);
  assert.deepEqual(p.focus_add, ['glutes']);
  assert.deepEqual(p.focus_remove, ['abs']);
  assert.deepEqual(p.cond_add, ['knees']);
  assert.deepEqual(p.zones_on, ['arms']);
  assert.deepEqual(p.live, ['softer']);
  assert.equal(p.note, 'Разбрах: болки в коляното');
  assert.equal(p.question, null);                       // one option is no question
  assert.equal('evil' in p, false);
});

test('validatePatch: a program not in the menu is dropped; a good question is kept', () => {
  const p = validatePatch({ program: 'drain', question: { text: 'Болката остра ли е?', options: ['Остра', 'Хронична'] } },
    ['general']);
  assert.equal(p.program, null);
  assert.deepEqual(p.question, { text: 'Болката остра ли е?', options: ['Остра', 'Хронична'] });
  assert.ok(validatePatch(null, []).note === '');
});

test('pickModel takes the newest stable Flash', () => {
  const m = (name) => ({ name: 'models/' + name, supportedGenerationMethods: ['generateContent'] });
  assert.equal(pickModel([m('gemini-2.0-flash'), m('gemini-2.5-flash'), m('gemini-2.5-flash-lite'),
    m('gemini-2.5-pro'), m('gemini-3-flash-preview')]), 'gemini-3-flash-preview');
  assert.equal(pickModel([m('gemini-3-flash-preview'), m('gemini-3-flash'), m('gemini-3-flash-lite')]), 'gemini-3-flash');
  assert.equal(pickModel([m('gemini-2.5-flash-image'), m('gemini-2.5-flash')]), 'gemini-2.5-flash');
  assert.equal(pickModel([{ name: 'models/gemini-9-flash', supportedGenerationMethods: ['embedContent'] }]), null);
  assert.equal(pickModel(undefined), null);
});

test('schema lists the menu programs; prompt carries context, menu, answer', () => {
  assert.deepEqual(responseSchema(['a', 'b']).properties.program.enum, ['a', 'b']);
  assert.equal(responseSchema([]).properties.program, undefined);
  const t = buildPrompt({ text: 'болки в кръста', context: { age: 52 }, menu: [{ id: 'back_pain', name: 'Болки' }],
    question: 'Остра?', answer: 'Хронична' });
  assert.match(t, /"age":52/);
  assert.match(t, /back_pain — Болки/);
  assert.match(t, /TRAINER ANSWERED: Хронична/);
});

test('brief: model list → generateContent → validated patch', async () => {
  resetModelCache();
  const calls = [];
  const fake = async (url, init) => {
    calls.push(url);
    if (url.includes('/models?')) {
      return new Response(JSON.stringify({ models: [
        { name: 'models/gemini-2.5-flash', supportedGenerationMethods: ['generateContent'] },
        { name: 'models/gemini-3-flash', supportedGenerationMethods: ['generateContent'] },
      ] }));
    }
    const req = JSON.parse(init.body);
    assert.equal(req.generationConfig.responseMimeType, 'application/json');
    assert.equal(init.headers['x-goog-api-key'], 'k');
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({
      cond_add: ['back'], intensity: 'SOFT', program: 'back_pain', note: 'Кръстът — по-меко.' }) }] } }] }));
  };
  const r = await brief({ GEMINI_API_KEY: 'k' }, { text: 'болки в кръста', menu: [{ id: 'back_pain' }] }, fake, 1000);
  assert.equal(r.model, 'gemini-3-flash');
  assert.deepEqual(r.patch.cond_add, ['back']);
  assert.equal(r.patch.intensity, 'SOFT');
  assert.equal(r.patch.program, 'back_pain');
  assert.match(calls[1], /gemini-3-flash:generateContent/);
  await brief({ GEMINI_API_KEY: 'k' }, { text: 'x' }, fake, 2000);
  assert.equal(calls.filter((u) => u.includes('/models?')).length, 1);   // the model is cached
});

test('brief: no key / model error throw (the tablet keeps its plan)', async () => {
  resetModelCache();
  await assert.rejects(brief({}, { text: 'x' }), /no_key/);
  const fail = async () => new Response('{}', { status: 500 });
  await assert.rejects(brief({ GEMINI_API_KEY: 'k', GEMINI_MODEL: 'm' }, { text: 'x' }, fail), /gemini 500/);
});

test('an answer cut at the token budget is asked once more with twice the room (1.1.548 smoke)', async () => {
  resetModelCache();
  const budgets = [];
  const fake = async (url, init) => {
    const req = JSON.parse(init.body);
    budgets.push(req.generationConfig.maxOutputTokens);
    if (budgets.length === 1) {
      return new Response(JSON.stringify({ candidates: [{ finishReason: 'MAX_TOKENS',
        content: { parts: [{ text: '{"note":"cut' }] } }], usageMetadata: { candidatesTokenCount: 2985 } }));
    }
    return new Response(JSON.stringify({ candidates: [{ content: { parts: [{ text: JSON.stringify({ note: 'ok' }) }] } }] }));
  };
  const r = await brief({ GEMINI_API_KEY: 'k', GEMINI_MODEL: 'm' }, { text: 'x' }, fake, 1000);
  assert.equal(r.patch.note, 'ok');
  assert.deepEqual(budgets, [3000, 6000]);
});
