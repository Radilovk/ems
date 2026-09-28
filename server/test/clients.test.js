import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { DatabaseSync } from 'node:sqlite';
import { cleanClient, putClients, pullClients } from '../src/clients.js';

function fakeD1() {
  const db = new DatabaseSync(':memory:');
  for (const f of ['0004_client_cards.sql', '0005_client_card_lookup.sql', '0009_clients.sql']) {
    db.exec(readFileSync(new URL('../migrations/' + f, import.meta.url), 'utf8'));
  }
  const stmt = (sql, args = []) => ({
    bind: (...a) => stmt(sql, a),
    all: async () => ({ results: db.prepare(sql).all(...args) }),
    first: async () => db.prepare(sql).get(...args) ?? null,
    run: async () => db.prepare(sql).run(...args),
  });
  return { raw: db, prepare: (sql) => stmt(sql), batch: async (l) => { for (const s of l) await s.run(); } };
}
const H = (c) => c.repeat(64);

test('cleanClient', () => {
  assert.equal(cleanClient({ key: '-100001', t: 5, data: { name: 'A' } }).key, '-100001');
  assert.equal(cleanClient({ key: '1', t: 0, data: {} }), null);
  assert.equal(cleanClient({ key: '1', t: 5 }), null);
  assert.equal(cleanClient({ key: '1', t: 5, deleted: true }), null);         // no cid: nothing to delete
  assert.equal(cleanClient({ key: '1', t: 5, data: { x: 'y'.repeat(20000) } }), null);
});

test('one client, two tablets: the same dossier, found by e-mail; newer edit wins; pull cursor', async () => {
  const db = fakeD1();
  const [a] = await putClients(db, 'L', [{ key: '-100001', ek: H('a'), t: 100, data: { name: 'Мария', w: 64 } }], 1000);
  assert.ok(a.cid);
  const [b] = await putClients(db, 'L', [{ key: '-100007', ek: H('a'), pk: H('b'), t: 200, data: { name: 'Мария', w: 62 } }], 2000);
  assert.equal(b.cid, a.cid, 'the second tablet gets the same client');
  await putClients(db, 'L', [{ key: '-100001', cid: a.cid, ek: H('a'), t: 150, data: { name: 'стара', w: 70 } }], 3000);
  let p = await pullClients(db, 'L', 0, '');
  assert.equal(p.items.length, 1);
  assert.equal(p.items[0].p.w, 62, 'an older edit does not overwrite');
  assert.equal(p.next.since, 2000);
  const again = await pullClients(db, 'L', p.next.since, p.next.after);
  assert.equal(again.items.length, 0, 'nothing new after the cursor');
  assert.equal((await pullClients(db, 'L2', 0, '')).items.length, 0, 'other studios see nothing');
  await putClients(db, 'L', [{ key: '-100007', cid: a.cid, t: 300, deleted: true }], 4000);
  p = await pullClients(db, 'L', 2000, p.next.after);
  assert.deepEqual([p.items[0].d, p.items[0].p], [1, null]);
});

test('an unchanged record is not written again', async () => {
  const db = fakeD1();
  const [a] = await putClients(db, 'L', [{ key: '1', ek: H('c'), t: 10, data: { name: 'X' } }], 1000);
  await putClients(db, 'L', [{ key: '1', cid: a.cid, ek: H('c'), t: 20, data: { name: 'X' } }], 5000);
  assert.equal(db.raw.prepare('SELECT srv_at FROM clients').get().srv_at, 1000);
});

test('a card made under the tablet id moves to the dossier only when the hashes match', async () => {
  const db = fakeD1();
  db.raw.prepare(`INSERT INTO client_cards (id, license_id, client_key, data, created_at, updated_at, expires_at, email_hash)
    VALUES ('AbCdEfGhJkMn','L','-100001','{}',1,1,9, ?)`).run(H('a'));
  db.raw.prepare(`INSERT INTO client_cards (id, license_id, client_key, data, created_at, updated_at, expires_at, email_hash)
    VALUES ('BbCdEfGhJkMn','L','-100002','{}',1,1,9, ?)`).run(H('z'));
  const [a] = await putClients(db, 'L', [{ key: '-100001', ek: H('a'), t: 1, data: { n: 1 } }], 1000);
  await putClients(db, 'L', [{ key: '-100002', ek: H('b'), t: 1, data: { n: 2 } }], 2000);
  const rows = db.raw.prepare('SELECT id, client_key FROM client_cards ORDER BY id').all();
  assert.equal(rows[0].client_key, a.cid);
  assert.equal(rows[1].client_key, '-100002', 'another client\'s card with the same tablet id stays');
});
