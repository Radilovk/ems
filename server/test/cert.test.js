import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import { readFileSync, readdirSync } from 'node:fs';
import { handleCertIssue, certName, certNo } from '../src/cert.js';

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
  return { db, prepare: stmt };
}
const ask = async (env, name, limit = async () => true) => {
  const r = await handleCertIssue(new Request('https://x.test/v1/cert', { method: 'POST', body: JSON.stringify({ name }) }), env, limit);
  return { status: r.status, ...(await r.json()) };
};

describe('trainer certificates', () => {
  it('numbers run on from the paper series', () => {
    assert.equal(certNo(1), '00043');
    assert.equal(certName('  Мария   Иванова  '), 'Мария Иванова');
  });
  it('a new name gets the next number, the same name gets its own back', async () => {
    const env = { DB: d1() };
    assert.equal((await ask(env, 'Мария Иванова Петрова')).no, '00043');
    assert.equal((await ask(env, 'Георги Димитров')).no, '00044');
    assert.equal((await ask(env, 'мария  иванова петрова')).no, '00043');
    assert.equal((await ask(env, 'Иван Колев')).no, '00045');
  });
  it('refuses an empty or nameless name, and too many new ones', async () => {
    const env = { DB: d1() };
    assert.equal((await ask(env, ' ')).status, 400);
    assert.equal((await ask(env, '123')).status, 400);
    assert.equal((await ask(env, 'Нов Човек', async () => false)).status, 429);
  });
});
