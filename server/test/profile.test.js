import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { cleanProfile, isStudioCode, studioCode, allowHit, publicProfile } from '../src/profile.js';

const NOW = 1790000000;
const p = (o = {}) => ({ consent: true, name: 'Мария Иванова', email: 'Maria@X.bg', phone: '+359 888 123 456',
  sex: 'F', by: 1990, h: 168, w: 61, goal: 'tone', fit: 'mid', contra: ['implant', 'bogus', 'implant'], t: NOW, ...o });

describe('studio code', () => {
  it('is 8 unambiguous lower-case characters', () => {
    for (let i = 0; i < 50; i++) assert.ok(isStudioCode(studioCode()));
    assert.equal(isStudioCode('ABCDEFGH'), false);
    assert.equal(isStudioCode('abc'), false);
    assert.equal(isStudioCode('xbody'), true);
    assert.equal(isStudioCode('studio-sofia'), true);
    assert.equal(isStudioCode('-x'), false);
  });
});

describe('cleanProfile', () => {
  it('keeps the known fields and drops unknown values', () => {
    const c = cleanProfile(p(), NOW);
    assert.equal(c.email, 'maria@x.bg');
    assert.deepEqual(c.contra, ['implant']);
    assert.equal(c.by, 1990);
  });
  it('takes the server clock, never the time the client sends', () => {
    assert.equal(cleanProfile(p({ t: NOW + 80000 }), NOW).t, NOW);
    assert.equal(cleanProfile(p({ t: 5 }), NOW).t, NOW);
  });
  it('keeps focus zones and conditions from the known lists', () => {
    const c = cleanProfile(p({ focus: ['abs', 'x', 'abs'], cond: ['back', 'nope', 'menopause'] }), NOW);
    assert.deepEqual(c.focus, ['abs']);
    assert.deepEqual(c.cond, ['back', 'menopause']);
  });
  it('needs consent, a name and a contact', () => {
    assert.equal(cleanProfile(p({ consent: false }), NOW), 'consent');
    assert.equal(cleanProfile(p({ name: 'M' }), NOW), 'name');
    assert.equal(cleanProfile(p({ email: '', phone: '' }), NOW), 'contact');
    assert.equal(cleanProfile(p({ email: 'nope' }), NOW), 'email');
  });
  it('drops out-of-range numbers instead of failing', () => {
    const c = cleanProfile(p({ h: 20, w: 'x', by: 1800 }), NOW);
    assert.equal(c.h, null);
    assert.equal(c.w, null);
    assert.equal(c.by, null);
  });
});

describe('allowHit', () => {
  it('limits within the window and resets after it', () => {
    for (let i = 0; i < 3; i++) assert.equal(allowHit('t', 3, 60, NOW), true);
    assert.equal(allowHit('t', 3, 60, NOW), false);
    assert.equal(allowHit('t', 3, 60, NOW + 60), true);
  });
});

describe('publicProfile (the client reads back their own training data)', () => {
  it('gives the training fields of a sent profile and never the contact, the health or the note', () => {
    const o = publicProfile(cleanProfile(p({ focus: ['abs'], cond: ['back'], note: 'тайна' }), NOW), null);
    assert.deepEqual(o, { sex: 'F', by: 1990, h: 168, w: 61, goal: 'tone', fit: 'mid', focus: ['abs'] });
  });
  it('fills the rest from the tablet\'s dossier (birth date, form "goal|fit|…", focus "a,b")', () => {
    const d = { name: 'X', email: 'x@y.bg', sex: 'M', birth: Date.UTC(1985, 5, 1), h: 181, w: 84.4, remark: 'r',
      form: { u: 'fat|high|implant', focus: 'abs,legs,bogus', cond: 'back', note: 'n' } };
    assert.deepEqual(publicProfile(null, d), { sex: 'M', by: 1985, h: 181, w: 84, goal: 'fat', fit: 'high', focus: ['abs', 'legs'] });
    assert.deepEqual(publicProfile({ sex: 'F', goal: 'tone' }, d), { sex: 'F', goal: 'tone', by: 1985, h: 181, w: 84, fit: 'high', focus: ['abs', 'legs'] });
  });
  it('is empty when nothing is known', () => {
    assert.deepEqual(publicProfile(null, null), {});
    assert.deepEqual(publicProfile({}, { form: {} }), {});
  });
});
