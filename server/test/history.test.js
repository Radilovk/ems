import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { DatabaseSync } from 'node:sqlite';
import {
  sessionId, validSummary, validRec, publicSummary, putSession, historyJson, REC_KEEP, REC_SEND,
} from '../src/history.js';
import { activationStale, ACTIVATION_SEEN_SEC } from '../src/utils.js';

/** D1-shaped wrapper over node:sqlite with the real migration. */
function fakeD1() {
  const db = new DatabaseSync(':memory:');
  db.exec(readFileSync(new URL('../migrations/0008_session_records.sql', import.meta.url), 'utf8'));
  const stmt = (sql, args = []) => ({
    sql, args,
    bind: (...a) => stmt(sql, a),
    all: async () => ({ results: db.prepare(sql).all(...args) }),
    first: async () => db.prepare(sql).get(...args) ?? null,
    run: async () => db.prepare(sql).run(...args),
  });
  return { raw: db, prepare: (sql) => stmt(sql), batch: async (list) => { for (const s of list) await s.run(); } };
}

const gz = (o) => gzipSync(Buffer.from(JSON.stringify(o))).toString('base64');

test('sessionId accepts a ms timestamp only', () => {
  assert.equal(sessionId(1790120933589), '1790120933589');
  for (const bad of ['../x', '12', '', null, 'abc', '1790120933589/../a', -5]) assert.equal(sessionId(bad), null);
});

test('validSummary needs a matching id and a duration', () => {
  assert.equal(validSummary({ id: 1790120933589, durS: 600 }, '1790120933589'), null);
  assert.equal(validSummary({ id: 1, durS: 600 }, '1790120933589'), 'id');
  assert.equal(validSummary({ id: 1790120933589 }, '1790120933589'), 'durS');
  assert.equal(validSummary({ id: 1790120933589, durS: 1, pad: 'x'.repeat(9000) }, '1790120933589'), 'too big');
});

test('validRec takes gzip base64 only', () => {
  assert.equal(validRec(gz({ hr: [1, 2, 3] })), null);
  assert.equal(validRec('not base64 !!!!!!!!!!!!'), 'base64');
  assert.equal(validRec(Buffer.from('{"plain":"json, not gzip"}').toString('base64')), 'gzip');
  assert.equal(validRec(123), 'size');
});

test('publicSummary drops the name and the tablet user id', () => {
  assert.deepEqual(publicSummary({ id: 1, name: 'Иван', userId: 7, durS: 3 }), { id: 1, durS: 3 });
});

test('store, trim and read back as one JSON; clients are isolated', async () => {
  const db = fakeD1();
  const base = 1790120933589;
  const n = REC_KEEP + 5;
  for (let k = 0; k < n; k++) {
    const id = String(base + k * 86400000);
    await putSession(db, 'L-1', 'c5', id, { id: Number(id), name: 'Иван', durS: 600 + k }, gz({ id: Number(id), hr: [k] }), 1);
  }
  await putSession(db, 'L-1', 'c6', String(base), { id: base, durS: 1 }, gz({ other: 1 }), 1);
  const withRec = db.raw.prepare("SELECT COUNT(*) n FROM session_records WHERE client_key='c5' AND rec IS NOT NULL").get().n;
  assert.equal(withRec, REC_KEEP);
  const out = JSON.parse(await historyJson(db, 'L-1', 'c5', 'Мария'));
  assert.equal(out.ok, true);
  assert.equal(out.client.name, 'Мария');
  assert.equal(out.sessions.length, n);
  assert.ok(out.sessions[0].id < out.sessions[n - 1].id, 'oldest first');
  assert.ok(!('name' in out.sessions[0]));
  const ids = Object.keys(out.recs);
  assert.equal(ids.length, REC_SEND);
  assert.ok(ids.every((id) => Number(id) >= base + (n - REC_SEND) * 86400000), 'the newest records');
  const one = JSON.parse((await import('node:zlib')).gunzipSync(Buffer.from(out.recs[ids[0]], 'base64')).toString());
  assert.ok(Array.isArray(one.hr));
  const other = JSON.parse(await historyJson(db, 'L-1', 'c6', ''));
  assert.equal(other.sessions.length, 1);
  assert.equal(JSON.parse(await historyJson(db, 'L-2', 'c5', '')).sessions.length, 0);
});

test('the same training sent twice replaces itself', async () => {
  const db = fakeD1();
  await putSession(db, 'L', 'c', '1790120933589', { id: 1790120933589, durS: 1 }, gz({ a: 1 }), 1);
  await putSession(db, 'L', 'c', '1790120933589', { id: 1790120933589, durS: 2 }, gz({ a: 2 }), 2);
  const out = JSON.parse(await historyJson(db, 'L', 'c', ''));
  assert.equal(out.sessions.length, 1);
  assert.equal(out.sessions[0].durS, 2);
});

test('a licence refresh writes the tablet row only when needed', () => {
  const act = { last_seen: 1000, app_version: '1.1.200', app_code: 300, device_model: 'X', lang: 'bg', setup: 0, ems_local: '[]' };
  const same = { app_version: '1.1.200', app_code: 300, device_model: 'X', lang: 'bg', setup: false, ems_local: [] };
  assert.equal(activationStale(act, same, 1000 + 60), false);
  assert.equal(activationStale(act, same, 1000 + ACTIVATION_SEEN_SEC), true);
  assert.equal(activationStale(act, { ...same, app_code: 301 }, 1060), true);
  assert.equal(activationStale(act, { ...same, setup: true }, 1060), true);
  assert.equal(activationStale(act, { ...same, ems_local: ['AA:BB:CC:DD:EE:FF'] }, 1060), true);
});
