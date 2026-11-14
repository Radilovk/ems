import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { handleWiemsUpdate, handleWiemsApk, parseVersion, WIEMS_RAW } from '../src/wiemsapp.js';

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
});
