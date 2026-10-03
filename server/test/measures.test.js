import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { DatabaseSync } from 'node:sqlite';
import { validMeasure, cleanMeasure, putMeasures, measuresJson, MEASURE_KEEP, MEASURE_SEND } from '../src/measures.js';

function fakeD1() {
  const db = new DatabaseSync(':memory:');
  db.exec(readFileSync(new URL('../migrations/0013_body_measures.sql', import.meta.url), 'utf8'));
  const stmt = (sql, args = []) => ({
    sql, args,
    bind: (...a) => stmt(sql, a),
    all: async () => ({ results: db.prepare(sql).all(...args) }),
    first: async () => db.prepare(sql).get(...args) ?? null,
    run: async () => db.prepare(sql).run(...args),
  });
  return { raw: db, prepare: (sql) => stmt(sql), batch: async (list) => { for (const s of list) await s.run(); } };
}

const m = (t, extra = {}) => ({
  t, w: 81.4, fat: 17.8, fatKg: 14.5, muscle: 62.3, water: 60.2, visc: 4, bmi: 26.6, ffmi: 21.8, fmi: 4.7,
  page: 20, type: 0, nf: [5, 8, 20, 25], nm: [16, 17, 20, 23], nw: [45, 50, 65, 70],
  segMus: [29.1, 3.9, 4.0, 11.0, 11.0], segFat: [7.5, 0.7, 0.7, 2.3, 2.3], ...extra,
});

test('a real weigh-in passes, nonsense does not', () => {
  assert.equal(validMeasure(m(1790000000000)), null);
  assert.equal(validMeasure(m(1790000000000, { w: 900 })), 'w');
  assert.equal(validMeasure(m(1790000000000, { fat: -3 })), 'fat');
  assert.equal(validMeasure(m(12)), 't');
  assert.equal(validMeasure(m(1790000000000, { nf: [1, 2] })), 'nf');
  assert.equal(validMeasure(m(1790000000000, { segMus: [1, 2, 3] })), 'segMus');
  assert.equal(validMeasure(m(1790000000000, { type: 9 })), 'type');
  assert.equal(validMeasure([]), 'not an object');
});

test('only known fields are stored (no name, no impedances)', () => {
  const c = cleanMeasure({ ...m(1790000000000), name: 'Иван', z20: [1, 2, 3, 4, 5] });
  assert.ok(!('name' in c) && !('z20' in c));
  assert.equal(c.fat, 17.8);
});

test('stored per client, same t replaces, oldest first, trimmed', async () => {
  const db = fakeD1();
  await putMeasures(db, 'L', 'c1', [m(1790000000000), m(1790000100000)], 1);
  await putMeasures(db, 'L', 'c1', [m(1790000100000, { fat: 17.0 })], 2);
  await putMeasures(db, 'L', 'c2', [m(1790000200000)], 3);
  const a = JSON.parse(await measuresJson(db, 'L', 'c1'));
  assert.equal(a.length, 2);
  assert.ok(a[0].t < a[1].t, 'oldest first');
  assert.equal(a[1].fat, 17.0, 'same t replaced');
  assert.equal(JSON.parse(await measuresJson(db, 'L', 'c2')).length, 1);
  assert.equal(JSON.parse(await measuresJson(db, 'X', 'c1')).length, 0);
  const many = [];
  for (let i = 0; i < MEASURE_KEEP + 5; i++) many.push(m(1790000000000 + i * 1000));
  for (let i = 0; i < many.length; i += 30) await putMeasures(db, 'L', 'c3', many.slice(i, i + 30), 4);
  const n = db.raw.prepare("SELECT COUNT(*) n FROM body_measures WHERE client_key='c3'").get().n;
  assert.equal(n, MEASURE_KEEP);
  assert.equal(JSON.parse(await measuresJson(db, 'L', 'c3')).length, MEASURE_SEND);
});

test('a measurement removed on the tablet is removed on the server', async () => {
  assert.equal(validMeasure({ t: 1790000000000, del: true }), null);
  assert.equal(validMeasure({ t: 1790000000000, del: true, w: 80 }), 'del');
  const db = fakeD1();
  await putMeasures(db, 'L', 'c1', [m(1790000000000), m(1790000100000)], 1);
  await putMeasures(db, 'L', 'c1', [{ t: 1790000000000, del: true }], 2);
  const a = JSON.parse(await measuresJson(db, 'L', 'c1'));
  assert.equal(a.length, 1);
  assert.equal(a[0].t, 1790000100000);
});
