import { test } from 'node:test';
import assert from 'node:assert/strict';
import { ssml, pickVoice, cleanText, takeChars, azureSpeak, monthKey, TTS_FORMAT } from '../src/tts.js';

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
