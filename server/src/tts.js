// The coach's voice (owner, 1.1.559: "least delay, a good voice, free"): Microsoft neural speech (Azure AI Speech),
// streamed to the tablet as raw PCM while it is being made, so the first word sounds in ~0.3–0.5 s. The key stays
// here (AZURE_SPEECH_KEY); the free tier (F0) is 500 000 characters a month and never charges — the server stops at
// 95 % and the tablet speaks with its own engine until the 1st. Every phrase is kept (Cloudflare cache, the tablet's
// own files too): "Пауза", "Сила 46" are made once.

export const TTS_MAX_CHARS = 400;
export const FREE_CHARS = 500000;
export const STOP_SHARE = 0.95;
/** 24 kHz, 16-bit, mono: what the tablet's AudioTrack plays as it arrives. */
export const TTS_FORMAT = 'raw-24khz-16bit-mono-pcm';

/** Voices the tablet may ask for (Bulgarian, or multilingual ones that speak it). */
export const TTS_VOICES = [
  'bg-BG-KalinaNeural', 'bg-BG-BorislavNeural', 'en-US-AvaMultilingualNeural', 'en-US-AndrewMultilingualNeural',
  'de-DE-SeraphinaMultilingualNeural', 'de-DE-FlorianMultilingualNeural',
];
export const TTS_DEFAULT_VOICE = 'bg-BG-KalinaNeural';

export function pickVoice(asked, env = {}) {
  if (typeof asked === 'string' && TTS_VOICES.includes(asked)) return asked;
  if (typeof env.TTS_VOICE === 'string' && TTS_VOICES.includes(env.TTS_VOICE)) return env.TTS_VOICE;
  return TTS_DEFAULT_VOICE;
}

/** The words as Azure reads them: one line, no control characters, at most TTS_MAX_CHARS. */
export function cleanText(text) {
  return String(text || '').replace(/[\u0000-\u001f\u007f]/g, ' ').replace(/\s+/g, ' ').trim().slice(0, TTS_MAX_CHARS);
}

function xml(s) {
  return s.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(/"/g, '&quot;')
    .replace(/'/g, '&apos;');
}

/** SSML: a multilingual voice is told the text is Bulgarian. */
export function ssml(text, voice) {
  const body = voice.startsWith('bg-') ? xml(text) : `<lang xml:lang="bg-BG">${xml(text)}</lang>`;
  return `<speak version="1.0" xml:lang="bg-BG" xmlns="http://www.w3.org/2001/10/synthesis"><voice name="${voice}">`
    + `${body}</voice></speak>`;
}

/** The month Azure counts in (UTC), e.g. "2026-11". */
export function monthKey(ts = Date.now()) {
  return new Date(ts).toISOString().slice(0, 7);
}

/** A stable cache key for a phrase in a voice. */
export async function cacheKey(voice, text) {
  const d = await crypto.subtle.digest('SHA-256', new TextEncoder().encode(`${voice}|${TTS_FORMAT}|${text}`));
  const hex = [...new Uint8Array(d)].map((b) => b.toString(16).padStart(2, '0')).join('');
  return `https://tts.cache.xems/${hex}`;
}

/**
 * The month's characters so far + n would stay under the stop line? Counts them when so. D1 row
 * `tts:chars:<month>` in rate_limits (count = characters).
 */
export async function takeChars(env, n, ts = Date.now()) {
  const key = `tts:chars:${monthKey(ts)}`;
  const limit = Math.floor((Number(env.TTS_FREE_CHARS) || FREE_CHARS) * STOP_SHARE);
  const row = await env.DB.prepare('SELECT count FROM rate_limits WHERE key = ?').bind(key).first();
  const used = row ? Number(row.count) || 0 : 0;
  if (used + n > limit) return { ok: false, used, limit };
  if (row) {
    await env.DB.prepare('UPDATE rate_limits SET count = count + ? WHERE key = ?').bind(n, key).run();
  } else {
    await env.DB.prepare('INSERT OR REPLACE INTO rate_limits (key, count, window_start) VALUES (?, ?, ?)')
      .bind(key, n, Math.floor(ts / 1000)).run();
  }
  return { ok: true, used: used + n, limit };
}

/** Azure's answer for one phrase (a streaming Response). Throws on a missing key. */
export async function azureSpeak(env, text, voice, fetchImpl = fetch) {
  if (!env.AZURE_SPEECH_KEY) throw new Error('no_tts_key');
  const region = String(env.AZURE_SPEECH_REGION || 'germanywestcentral').replace(/[^a-z0-9]/g, '');
  return fetchImpl(`https://${region}.tts.speech.microsoft.com/cognitiveservices/v1`, {
    method: 'POST',
    headers: {
      'Ocp-Apim-Subscription-Key': String(env.AZURE_SPEECH_KEY).trim(),
      'Content-Type': 'application/ssml+xml',
      'X-Microsoft-OutputFormat': TTS_FORMAT,
      'User-Agent': 'xems-license',
    },
    body: ssml(text, voice),
  });
}
