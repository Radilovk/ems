import { test } from 'node:test';
import assert from 'node:assert/strict';
import { ssml, pickVoice, pickRate, cleanText, takeChars, azureSpeak, monthKey, TTS_FORMAT } from '../src/tts.js';

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

test('ssml: the text escaped; a multilingual voice is told it is Bulgarian', () => {
  assert.equal(ssml('A & <b>', 'bg-BG-KalinaNeural').includes('A &amp; &lt;b&gt;'), true);
  assert.match(ssml('Здравей', 'en-US-AvaMultilingualNeural'), /<lang xml:lang="bg-BG">Здравей<\/lang>/);
  assert.ok(!ssml('Здравей', 'bg-BG-BorislavNeural').includes('<lang'));
});

test('voice: only the allowed ones; the server default otherwise', () => {
  assert.equal(pickVoice('bg-BG-BorislavNeural'), 'bg-BG-BorislavNeural');
  assert.equal(pickVoice('evil-voice'), 'bg-BG-KalinaNeural');
  assert.equal(pickVoice(null, { TTS_VOICE: 'en-US-AvaMultilingualNeural' }), 'en-US-AvaMultilingualNeural');
  assert.equal(cleanText(' a\n\tb '), 'a b');
  assert.equal(cleanText('x'.repeat(900)).length, 400);
});

test('the month\'s free characters: counted, stopped at 95 %', async () => {
  const env = { DB: fakeDb(), TTS_FREE_CHARS: 1000 };
  const ts = Date.UTC(2026, 10, 25);
  assert.equal((await takeChars(env, 900, ts)).ok, true);
  assert.equal((await takeChars(env, 40, ts)).ok, true);
  const no = await takeChars(env, 20, ts);
  assert.equal(no.ok, false);
  assert.equal(no.used, 940);
  assert.equal((await takeChars(env, 20, Date.UTC(2026, 11, 1))).ok, true);   // a new month
  assert.equal(monthKey(ts), '2026-11');
});

test('azure: the region, the key in the header, raw PCM asked', async () => {
  let seen;
  const fake = async (url, init) => { seen = { url, init }; return new Response('pcm'); };
  await azureSpeak({ AZURE_SPEECH_KEY: ' k ', AZURE_SPEECH_REGION: 'germanywestcentral' }, 'Пауза', 'bg-BG-KalinaNeural', fake);
  assert.equal(seen.url, 'https://germanywestcentral.tts.speech.microsoft.com/cognitiveservices/v1');
  assert.equal(seen.init.headers['Ocp-Apim-Subscription-Key'], 'k');
  assert.equal(seen.init.headers['X-Microsoft-OutputFormat'], TTS_FORMAT);
  await assert.rejects(azureSpeak({}, 'x', 'bg-BG-KalinaNeural', fake), /no_tts_key/);
});

test('tempo: slow / fast as a prosody rate, anything else normal', () => {
  assert.match(ssml('Пауза', 'bg-BG-KalinaNeural', 'fast'), /<prosody rate="\+12%">Пауза<\/prosody>/);
  assert.match(ssml('Пауза', 'bg-BG-KalinaNeural', 'slow'), /rate="-12%"/);
  assert.ok(!ssml('Пауза', 'bg-BG-KalinaNeural', 'evil').includes('prosody'));
  assert.equal(pickRate('fast'), 'fast');
  assert.equal(pickRate('toString'), 'normal');
});

import { isChirp, azureTwin, googleSpeak, wavData, CHIRP_VOICES, TTS_VOICES as ALL_VOICES } from '../src/tts.js';

test('chirp: the owner\'s picks are offered, each has a Microsoft stand-in of its gender', () => {
  assert.ok(CHIRP_VOICES.every((v) => ALL_VOICES.includes(v) && isChirp(v)));
  assert.equal(pickVoice('bg-BG-Chirp3-HD-Charon'), 'bg-BG-Chirp3-HD-Charon');
  assert.equal(pickVoice('bg-BG-Chirp3-HD-Nope'), 'bg-BG-KalinaNeural');
  assert.equal(azureTwin('bg-BG-Chirp3-HD-Charon'), 'bg-BG-BorislavNeural');
  assert.equal(azureTwin('bg-BG-Chirp3-HD-Kore'), 'bg-BG-KalinaNeural');
  assert.equal(isChirp('bg-BG-KalinaNeural'), false);
});

test('chirp: Google\'s WAV answer → raw PCM; the key, voice and tempo sent; no key throws', async () => {
  const pcm = new Uint8Array(4800).fill(7);
  const head = new Uint8Array(44);
  head.set([82, 73, 70, 70], 0); head.set([87, 65, 86, 69], 8); head.set([102, 109, 116, 32], 12);
  new DataView(head.buffer).setUint32(16, 16, true);
  head.set([100, 97, 116, 97], 36); new DataView(head.buffer).setUint32(40, pcm.length, true);
  const wavBytes = new Uint8Array(44 + pcm.length); wavBytes.set(head); wavBytes.set(pcm, 44);
  assert.equal(wavData(wavBytes).length, 4800);
  let url, body;
  const fake = async (u, o) => { url = u; body = JSON.parse(o.body);
    return new Response(JSON.stringify({ audioContent: Buffer.from(wavBytes).toString('base64') })); };
  const out = await googleSpeak({ GEMINI_API_KEY: 'g' }, 'Сила 46', 'bg-BG-Chirp3-HD-Kore', fake, 'fast');
  assert.equal(out.length, 4800);
  assert.match(url, /texttospeech\.googleapis\.com\/v1\/text:synthesize\?key=g$/);
  assert.equal(body.voice.name, 'bg-BG-Chirp3-HD-Kore');
  assert.equal(body.audioConfig.sampleRateHertz, 24000);
  assert.equal(body.audioConfig.speakingRate, 1.12);
  await assert.rejects(googleSpeak({}, 'x', 'bg-BG-Chirp3-HD-Kore', fake));
  await assert.rejects(googleSpeak({ GOOGLE_TTS_KEY: 'k' }, 'x', 'bg-BG-Chirp3-HD-Kore', async () => new Response('', { status: 403 })));
});
