import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import { readFileSync, readdirSync } from 'node:fs';
import { createHash } from 'node:crypto';
import {
  handleUnitUpdate, handleUnitPack, handleUnitLog, adminUnits, updateText, cleanLog, unitId, UNIT_LOG_MAX,
} from '../src/units.js';
import { sweep } from '../src/sweep.js';

function d1() {
  const db = new DatabaseSync(':memory:');
  for (const f of readdirSync(new URL('../migrations/', import.meta.url)).sort()) {
    db.exec(readFileSync(new URL('../migrations/' + f, import.meta.url), 'utf8'));
  }
  const stmt = (sql) => ({
    sql, args: [],
    bind(...a) { this.args = a; return this; },
    run() { const r = db.prepare(this.sql).run(...this.args); return { meta: { last_row_id: Number(r.lastInsertRowid) } }; },
    all() { return { results: db.prepare(this.sql).all(...this.args) }; },
    first() { return db.prepare(this.sql).get(...this.args) ?? null; },
  });
  return { db, prepare: stmt, batch: async (list) => list.map((q) => q.run()) };
}

const json = (o, status = 200) => new Response(JSON.stringify(o), { status, headers: { 'Content-Type': 'application/json' } });
const readJson = async (r) => r.json();
const U = (p) => new URL('https://x.test' + p);
const PACK = new Uint8Array(4096).fill(7);
const PACK_SHA = createHash('sha256').update(PACK).digest('hex');

function withFetch(fn) {
  const real = globalThis.fetch;
  globalThis.fetch = async (u) => (String(u).endsWith('/pack.tar') ? new Response(PACK) : new Response('no', { status: 404 }));
  return fn().finally(() => { globalThis.fetch = real; });
}

async function register(env, version, notes = '') {
  const req = new Request('https://x.test/admin/api/units/release', {
    method: 'POST', body: JSON.stringify({ app: 'xbody', version, url: 'https://gh.test/pack.tar', notes }),
  });
  return adminUnits(req, env, 'units/release', json, readJson);
}

describe('unit update', () => {
  it('answers version=0 with nothing published, or for a foreign app', async () => {
    const env = { DB: d1() };
    assert.equal(await (await handleUnitUpdate(U('/v1/unit/update?app=xbody&have=20'), env)).text(), 'version=0\n');
    assert.equal(await (await handleUnitUpdate(U('/v1/unit/update?app=x&have=1'), env)).text(), 'version=0\n');
  });
  it('registers a pack (sha256 + size from the URL) and offers only a newer one', () => withFetch(async () => {
    const env = { DB: d1() };
    const r = await (await register(env, 21, 'мрежа\nи лог')).json();
    assert.equal(r.ok, true);
    assert.equal(r.sha256, PACK_SHA);
    const t = await (await handleUnitUpdate(U('/v1/unit/update?app=xbody&have=20'), env)).text();
    assert.equal(t, `version=21\nsha256=${PACK_SHA}\nsize=4096\nnotes=мрежа и лог\n`);
    assert.equal(await (await handleUnitUpdate(U('/v1/unit/update?app=xbody&have=21'), env)).text(), 'version=0\n');
    const p = await handleUnitPack(U('/v1/unit/pack?app=xbody&v=21'), env);
    assert.equal(p.status, 200);
    assert.equal((await p.arrayBuffer()).byteLength, 4096);
    assert.equal((await handleUnitPack(U('/v1/unit/pack?app=xbody&v=22'), env)).status, 404);
  }));
  it('refuses an http URL', async () => {
    const env = { DB: d1() };
    const req = new Request('https://x.test/', { method: 'POST', body: JSON.stringify({ version: 2, url: 'http://a/p.tar' }) });
    assert.equal((await adminUnits(req, env, 'units/release', json, readJson)).status, 400);
  });
  it('the text is one value per line', () => {
    assert.equal(updateText(null), 'version=0\n');
  });
});

describe('unit log', () => {
  const allow = async () => true;
  it('stores what the unit sent and answers OK <id>', async () => {
    const env = { DB: d1() };
    const req = new Request('https://x.test/', { method: 'POST', body: 'XEMS log\n2026-10-17 10:00:00.000 Info: x\n' });
    const r = await handleUnitLog(req, env, U('/v1/unit/log?app=xbody&unit=0123456789ab&ver=21'), allow);
    assert.equal(await r.text(), 'OK 1\n');
    const list = await (await adminUnits(new Request('https://x.test/'), env, 'units', json, readJson)).json();
    assert.equal(list.logs[0].unit, '0123456789ab');
    assert.equal(list.logs[0].version, 21);
    const body = await (await adminUnits(new Request('https://x.test/'), env, 'units/log/1', json, readJson)).text();
    assert.match(body, /Info: x/);
  });
  it('refuses a bad unit id, an empty body, and when rate-limited', async () => {
    const env = { DB: d1() };
    const mk = (b) => new Request('https://x.test/', { method: 'POST', body: b });
    assert.equal((await handleUnitLog(mk('x'), env, U('/v1/unit/log?app=xbody&unit=../x'), allow)).status, 400);
    assert.equal((await handleUnitLog(mk(''), env, U('/v1/unit/log?app=xbody&unit=0123456789ab'), allow)).status, 400);
    assert.equal((await handleUnitLog(mk('x'), env, U('/v1/unit/log?app=xbody&unit=0123456789ab'), async () => false)).status, 429);
  });
  it('keeps the newest end of a long log, without NULs', () => {
    const s = cleanLog(new TextEncoder().encode('a\0b' + 'x'.repeat(UNIT_LOG_MAX + 10) + 'END'));
    assert.equal(s.length, UNIT_LOG_MAX);
    assert.ok(s.endsWith('END'));
    assert.equal(unitId('ABC'), '');
  });
  it('the nightly sweep drops old logs', async () => {
    const DB = d1();
    const ts = 2_000_000_000;
    DB.db.exec(`INSERT INTO unit_logs (ts, app, unit, version, size, body) VALUES (${ts - 90 * 86400}, 'xbody', 'a', 1, 1, 'old'),
      (${ts - 86400}, 'xbody', 'a', 1, 1, 'new')`);
    await sweep({ DB }, ts);
    assert.deepEqual(DB.db.prepare('SELECT body FROM unit_logs').all().map((r) => r.body), ['new']);
  });
});
