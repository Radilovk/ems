import test from 'node:test';
import assert from 'node:assert/strict';
import {
  sessionId, validSummary, mergeIndex, publicSummary, putSession, readIndex, getSession, folder,
} from '../src/history.js';

class FakeBucket {
  constructor() { this.m = new Map(); }
  async put(k, v) { this.m.set(k, String(v)); }
  async get(k) {
    if (!this.m.has(k)) return null;
    const v = this.m.get(k);
    return { text: async () => v, body: v };
  }
}

test('sessionId accepts a ms timestamp only', () => {
  assert.equal(sessionId(1790120933589), '1790120933589');
  assert.equal(sessionId('1790120933589'), '1790120933589');
  for (const bad of ['../x', '12', '', null, 'abc', '1790120933589/../a', -5]) assert.equal(sessionId(bad), null);
});

test('validSummary needs a matching id and a duration', () => {
  assert.equal(validSummary({ id: 1790120933589, durS: 600 }, '1790120933589'), null);
  assert.equal(validSummary({ id: 1, durS: 600 }, '1790120933589'), 'id');
  assert.equal(validSummary({ id: 1790120933589 }, '1790120933589'), 'durS');
  assert.equal(validSummary('x', '1'), 'not an object');
  assert.equal(validSummary({ id: 1790120933589, durS: 1, pad: 'x'.repeat(9000) }, '1790120933589'), 'too big');
});

test('publicSummary drops the name and the tablet user id', () => {
  const o = publicSummary({ id: 1, name: 'Иван', userId: 7, durS: 3 });
  assert.deepEqual(o, { id: 1, durS: 3 });
});

test('mergeIndex replaces the same id, sorts, and caps', () => {
  let l = mergeIndex([], { id: 30, durS: 1 });
  l = mergeIndex(l, { id: 10, durS: 1 });
  l = mergeIndex(l, { id: 30, durS: 2 });
  assert.deepEqual(l.map((o) => o.id), [10, 30]);
  assert.equal(l[1].durS, 2);
  const capped = mergeIndex([{ id: 1 }, { id: 2 }, { id: 3 }], { id: 4 }, 3);
  assert.deepEqual(capped.map((o) => o.id), [2, 3, 4]);
});

test('putSession stores the record and the index; the client folder is isolated', async () => {
  const b = new FakeBucket();
  const n = await putSession(b, 'L-1', 'c5', '1790120933589', { id: 1790120933589, name: 'Иван', durS: 600 },
    { id: 1790120933589, name: 'Иван', userId: 5, hr: [1, 2] });
  assert.equal(n, 1);
  const idx = await readIndex(b, 'L-1', 'c5');
  assert.deepEqual(idx, [{ id: 1790120933589, durS: 600 }]);
  const obj = await getSession(b, 'L-1', 'c5', '1790120933589');
  assert.deepEqual(JSON.parse(await obj.text()), { id: 1790120933589, hr: [1, 2] });
  assert.equal(await getSession(b, 'L-1', 'c6', '1790120933589'), null);
  assert.deepEqual(await readIndex(b, 'L-2', 'c5'), []);
  assert.ok(folder('L-1', 'c5').startsWith('s/L-1/c5/'));
});
