import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { DatabaseSync } from 'node:sqlite';
import { readFileSync, readdirSync } from 'node:fs';
import { handleWiemsUpdate, handleWiemsApk, handleWiemsSeen, parseVersion, field, WIEMS_RAW } from '../src/wiemsapp.js';

function d1() {
  const db = new DatabaseSync(':memory:');
  for (const f of readdirSync(new URL('../migrations/', import.meta.url)).sort()) {
    db.exec(readFileSync(new URL('../migrations/' + f, import.meta.url), 'utf8'));
  }
  const stmt = (sql) => ({
    sql, args: [],
    bind(...a) { this.args = a; return this; },
    run() { db.prepare(this.sql).run(...this.args); return { meta: {} }; },
    all() { return { results: db.prepare(this.sql).all(...this.args) }; },
    first() { return db.prepare(this.sql).get(...this.args) ?? null; },
  });
  return { db, prepare: stmt };
}

const U = (p) => new URL('https://x.test' + p);
const fake = (map) => async (u) => (u in map ? new Response(map[u], { status: 200 }) : new Response('no', { status: 404 }));

describe('wiems self-update', () => {
  it('parses VERSION', () => {
    assert.deepEqual(parseVersion('1.21 22\n'), { name: '1.21', code: 22 });
    assert.equal(parseVersion('junk'), null);
  });
  it('answers the newer version, else 0', async () => {
    const f = fake({ [WIEMS_RAW + 'wiems/app/VERSION']: '1.22 23\n' });
    assert.equal(await (await handleWiemsUpdate(U('/v1/wiems/update?have=22'), f)).text(), 'version=23\nname=1.22\n');
    assert.equal(await (await handleWiemsUpdate(U('/v1/wiems/update?have=23'), f)).text(), 'version=0\n');
    assert.equal(await (await handleWiemsUpdate(U('/v1/wiems/update?have=x'), fake({}))).text(), 'version=0\n');
  });
  it('passes the APK through', async () => {
    const f = fake({ [WIEMS_RAW + 'wiems/dist/xems-wiems.apk']: 'PK..' });
    const r = await handleWiemsApk(f);
    assert.equal(r.headers.get('Content-Type'), 'application/vnd.android.package-archive');
    assert.equal(await r.text(), 'PK..');
    assert.equal((await handleWiemsApk(fake({}))).status, 502);
  });
  it('remembers every check — which version runs on which tablet — and reads them back', async () => {
    const env = { DB: d1() };
    const f = fake({ [WIEMS_RAW + 'wiems/app/VERSION']: '1.33 34\n' });
    const req = { cf: { country: 'BG' } };
    // an old app: only have=
    assert.equal(await (await handleWiemsUpdate(U('/v1/wiems/update?have=32'), f, env, req)).text(), 'version=34\nname=1.33\n');
    // 1.33+: its name, the tablet's model, the last unit, what its update said; markup dropped
    await handleWiemsUpdate(U('/v1/wiems/update?have=34&name=1.33&dev=Lenovo%20TB-8505F<b>&unit=88:6B:0F:CC:BE:49&st=последна%20версия%20✓'), f, env, req);
    const r = await (await handleWiemsSeen(env, U('/v1/wiems/seen'))).json();
    assert.equal(r.ok, true);
    assert.equal(r.seen.length, 2);
    assert.deepEqual({ ...r.seen[0], ts: 0 }, { ts: 0, code: 34, name: '1.33', device: 'Lenovo TB-8505Fb', unit: '886b0fccbe49', state: 'последна версия ✓', offered: 0, country: 'BG' });
    assert.equal(r.seen[1].code, 32);
    assert.equal(r.seen[1].offered, 34);
  });
  it('answers the update even without a database', async () => {
    const f = fake({ [WIEMS_RAW + 'wiems/app/VERSION']: '1.33 34\n' });
    assert.equal(await (await handleWiemsUpdate(U('/v1/wiems/update?have=1'), f, { DB: { prepare() { throw new Error('down'); } } })).text(), 'version=34\nname=1.33\n');
  });
  it('keeps fields short and plain', () => {
    assert.equal(field('<script>x</script>', 40), 'scriptxscript');
    assert.equal(field('a'.repeat(100), 10).length, 10);
  });
});
