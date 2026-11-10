import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import { readFileSync, readdirSync } from 'node:fs';
import { handleVrlogPut, handleVrlogGet, vrlogId, VRLOG_PART_MAX } from '../src/vrlog.js';
import { sweep } from '../src/sweep.js';

function d1() {
  const db = new DatabaseSync(':memory:');
  for (const f of readdirSync(new URL('../migrations/', import.meta.url)).sort()) {
    db.exec(readFileSync(new URL('../migrations/' + f, import.meta.url), 'utf8'));
  }
  const stmt = (sql) => ({
    sql, args: [],
    bind(...a) { this.args = a; return this; },
    run() { return db.prepare(this.sql).run(...this.args); },
    all() { return { results: db.prepare(this.sql).all(...this.args) }; },
    first() { return db.prepare(this.sql).get(...this.args) ?? null; },
  });
  return { db, prepare: stmt, batch: async (list) => list.map((q) => q.run()) };
}

const put = (env, q, bytes, limit = async () => true) => handleVrlogPut(
  new Request('https://x.test/v1/vrlog?' + q, { method: 'POST', body: bytes }), env, new URL('https://x.test/v1/vrlog?' + q), limit);

describe('VR leg recordings', () => {
  it('codes: 10 of A–Z / 2–9 only', () => {
    assert.equal(vrlogId('K7Q2M9XA4D'), 'K7Q2M9XA4D');
    assert.equal(vrlogId('k7q2m9xa4d'), '');
    assert.equal(vrlogId('K7Q2M9XA4'), '');
    assert.equal(vrlogId("K7Q2M9XA4'"), '');
  });
  it('stores the parts and gives them back by the code', async () => {
    const env = { DB: d1() };
    const a = new Uint8Array([31, 139, 8, 0, 1, 2, 3]), b = new Uint8Array([9, 9, 9]);
    assert.equal(await (await put(env, 'id=K7Q2M9XA4D&part=0&parts=2', a)).text(), 'OK\n');
    assert.equal(await (await put(env, 'id=K7Q2M9XA4D&part=1&parts=2', b)).text(), 'OK\n');
    const info = await (await handleVrlogGet(env, 'K7Q2M9XA4D')).json();
    assert.deepEqual([info.parts, info.have, info.size], [2, [0, 1], 10]);
    const got = new Uint8Array(await (await handleVrlogGet(env, 'K7Q2M9XA4D/0')).arrayBuffer());
    assert.deepEqual(Array.from(got), Array.from(a));
    assert.equal((await handleVrlogGet(env, 'AAAAAAAAAA')).status, 404);
    assert.equal((await handleVrlogGet(env, 'K7Q2M9XA4D/5')).status, 404);
  });
  it('refuses a bad code, part, size, and when busy', async () => {
    const env = { DB: d1() };
    assert.equal((await put(env, 'id=bad&part=0&parts=1', new Uint8Array(3))).status, 400);
    assert.equal((await put(env, 'id=K7Q2M9XA4D&part=2&parts=2', new Uint8Array(3))).status, 400);
    assert.equal((await put(env, 'id=K7Q2M9XA4D&part=0&parts=9', new Uint8Array(3))).status, 400);
    assert.equal((await put(env, 'id=K7Q2M9XA4D&part=0&parts=1', new Uint8Array(VRLOG_PART_MAX + 1))).status, 413);
    assert.equal((await put(env, 'id=K7Q2M9XA4D&part=0&parts=1', new Uint8Array(3), async () => false)).status, 429);
  });
  it('the nightly sweep drops recordings older than 14 days', async () => {
    const DB = d1();
    const ts = 2_000_000_000;
    DB.db.prepare('INSERT INTO vr_logs (id, part, parts, ts, size, body) VALUES (?, 0, 1, ?, 1, ?)').run('OLDOLDOLD2', ts - 15 * 86400, new Uint8Array([1]));
    DB.db.prepare('INSERT INTO vr_logs (id, part, parts, ts, size, body) VALUES (?, 0, 1, ?, 1, ?)').run('NEWNEWNEW2', ts - 86400, new Uint8Array([1]));
    await sweep({ DB }, ts);
    assert.deepEqual(DB.db.prepare('SELECT id FROM vr_logs').all().map((r) => r.id), ['NEWNEWNEW2']);
  });
});
