import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import { readFileSync, readdirSync } from 'node:fs';
import { sweep } from '../src/sweep.js';

/** D1-shaped wrapper over node:sqlite with the real migrations. */
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

describe('nightly sweep', () => {
  it('drops only what is old', async () => {
    const DB = d1();
    const ts = 2_000_000_000;
    DB.db.exec(`INSERT INTO licenses (id, key_hash, key_hint, plan, mods, feat, max_devices, status, created_at)
      VALUES ('L1', 'h', 'x', 'pro', '[]', '[]', 1, 'active', 0)`);
    const act = (dev, status, seen) => DB.db.prepare(
      `INSERT INTO activations (license_id, device_id, first_seen, last_seen, status) VALUES ('L1', ?, 0, ?, ?)`,
    ).run(dev, seen, status);
    act('old-pending', 'pending', ts - 40 * 86400);
    act('new-pending', 'pending', ts - 86400);
    act('old-active', 'active', ts - 400 * 86400);
    DB.db.prepare('INSERT INTO audit (ts, action) VALUES (?, ?)').run(ts - 200 * 86400, 'old');
    DB.db.prepare('INSERT INTO audit (ts, action) VALUES (?, ?)').run(ts - 86400, 'new');
    await sweep({ DB }, ts);
    const devs = DB.db.prepare('SELECT device_id FROM activations ORDER BY device_id').all().map((r) => r.device_id);
    assert.deepEqual(devs, ['new-pending', 'old-active']);
    assert.deepEqual(DB.db.prepare('SELECT action FROM audit').all().map((r) => r.action), ['new']);
  });

  it('keeps the voice month counter (the free-characters line) for the whole month', async () => {
    const DB = d1();
    const ts = 2_000_000_000;
    const put = (k, w) => DB.db.prepare('INSERT INTO rate_limits (key, count, window_start) VALUES (?, 5, ?)').run(k, w);
    put('tts:chars:2033-05', ts - 20 * 86400);     // the month's counter, created 20 days ago: stays
    put('tts:chars:2033-01', ts - 100 * 86400);    // an old month: goes
    put('brief:lic:L1', ts - 20 * 86400);           // an ordinary 7-day window: goes
    await sweep({ DB }, ts);
    assert.deepEqual(DB.db.prepare('SELECT key FROM rate_limits').all().map((r) => r.key), ['tts:chars:2033-05']);
  });
});
