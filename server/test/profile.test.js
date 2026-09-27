import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { cleanProfile, isStudioCode, studioCode, allowHit } from '../src/profile.js';

const NOW = 1790000000;
const p = (o = {}) => ({ consent: true, name: 'Мария Иванова', email: 'Maria@X.bg', phone: '+359 888 123 456',
  sex: 'F', by: 1990, h: 168, w: 61, goal: 'tone', fit: 'mid', contra: ['implant', 'bogus', 'implant'], t: NOW, ...o });

describe('studio code', () => {
  it('is 8 unambiguous lower-case characters', () => {
    for (let i = 0; i < 50; i++) assert.ok(isStudioCode(studioCode()));
    assert.equal(isStudioCode('ABCDEFGH'), false);
    assert.equal(isStudioCode('abc'), false);
  });
});

describe('cleanProfile', () => {
  it('keeps the known fields and drops unknown values', () => {
    const c = cleanProfile(p(), NOW);
    assert.equal(c.email, 'maria@x.bg');
    assert.deepEqual(c.contra, ['implant']);
    assert.equal(c.by, 1990);
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
