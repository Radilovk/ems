import { test } from 'node:test';
import assert from 'node:assert/strict';
import { decodeAudio, wav, takeSeconds, azureHear, secondsOf, STT_MAX_BYTES } from '../src/stt.js';

function fakeDb() {
  const rows = new Map();
  return {
    rows,
    prepare(sql) {
      return {
        bind(...a) {
          return {
            async first() { return sql.startsWith('SELECT') ? rows.get(a[0]) || null : null; },
            async run() {
              if (sql.startsWith('UPDATE')) rows.get(a[1]).count += a[0];
              else rows.set(a[0], { count: a[1], window_start: a[2] });
            },
          };
        },
      };
    },
  };
}

const b64 = (n) => Buffer.from(new Uint8Array(n)).toString('base64');

test('audio: base64 PCM in, too short / too long / not base64 refused', () => {
  assert.equal(decodeAudio(b64(32000)).length, 32000);
  assert.equal(decodeAudio(b64(100)), null);
  assert.equal(decodeAudio(b64(STT_MAX_BYTES + 2000)), null);
  assert.equal(decodeAudio('***'), null);
  assert.equal(decodeAudio(null), null);
  assert.equal(secondsOf(new Uint8Array(32000)), 1);
  assert.equal(secondsOf(new Uint8Array(32001)), 2);
});

test('wav: a 44-byte header, 16 kHz mono 16-bit', () => {
  const w = wav(new Uint8Array(10));
  assert.equal(w.length, 54);
  assert.equal(String.fromCharCode(...w.slice(0, 4)), 'RIFF');
  const v = new DataView(w.buffer);
  assert.equal(v.getUint32(24, true), 16000);
  assert.equal(v.getUint16(34, true), 16);
  assert.equal(v.getUint32(40, true), 10);
});

test('the month\'s free audio: counted, stopped at 95 %', async () => {
  const env = { DB: fakeDb(), STT_FREE_SECONDS: 100 };
  assert.equal((await takeSeconds(env, 90)).ok, true);
  assert.equal((await takeSeconds(env, 5)).ok, true);
  const r = await takeSeconds(env, 1);
  assert.equal(r.ok, false);
  assert.equal(r.used, 95);
});

test('azure: the text, silence as empty text, an error as not ok, no key throws', async () => {
  const env = { AZURE_SPEECH_KEY: 'k', AZURE_SPEECH_REGION: 'westeurope' };
  let url, headers;
  const ok = async (u, o) => { url = u; headers = o.headers; return new Response(JSON.stringify({ RecognitionStatus: 'Success', DisplayText: 'Окей, треньор, пауза.' })); };
  assert.deepEqual(await azureHear(env, new Uint8Array(3200), ok), { ok: true, text: 'Окей, треньор, пауза.' });
  assert.match(url, /^https:\/\/westeurope\.stt\.speech\.microsoft\.com\/.*language=bg-BG/);
  assert.match(headers['Content-Type'], /samplerate=16000/);
  const none = async () => new Response(JSON.stringify({ RecognitionStatus: 'NoMatch' }));
  assert.deepEqual(await azureHear(env, new Uint8Array(3200), none), { ok: true, text: '' });
  const bad = async () => new Response('x', { status: 401 });
  assert.equal((await azureHear(env, new Uint8Array(3200), bad)).ok, false);
  await assert.rejects(azureHear({}, new Uint8Array(3200), ok));
});
