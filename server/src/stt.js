// The trainer's words as text (owner, 1.1.592: "the wake phrase does not work the first time; on Huawei nothing
// listens"). Two stages, as the big assistants do it: the tablet's own spotter only *suspects* "окей тренер" (loose,
// so it never misses) and sends the few seconds it heard here; Azure AI Speech (bg-BG) writes them down. The tablet
// then checks the text for "тренер" — a false suspicion costs nothing but those seconds — and takes the rest as the
// command. No Google or Huawei recognizer is needed, so every tablet works the same way.
// The key stays here (AZURE_SPEECH_KEY, the same as the voice). The free tier (F0) is 5 hours of audio a month and
// never charges: the server stops at 95 % and the tablet falls back to the system recognizer until the 1st.

import { monthKey } from './tts.js';

export const STT_RATE = 16000;
/** At most 8 s of 16-bit mono 16 kHz audio in one request (the phrase + a command). */
export const STT_MAX_SECONDS = 8;
export const STT_MAX_BYTES = STT_RATE * 2 * STT_MAX_SECONDS;
/** Azure F0: 5 audio hours a month. */
export const FREE_SECONDS = 5 * 3600;
export const STT_STOP_SHARE = 0.95;

/** Base64 → bytes (the tablet's PCM). Null when not base64 or too long. */
export function decodeAudio(b64) {
  if (typeof b64 !== 'string' || !b64 || b64.length > Math.ceil(STT_MAX_BYTES / 3) * 4 + 8) return null;
  let bin;
  try {
    bin = atob(b64);
  } catch {
    return null;
  }
  const n = bin.length & ~1;
  if (n < STT_RATE / 5 || n > STT_MAX_BYTES) return null;           // < 0.1 s is no word
  const out = new Uint8Array(n);
  for (let i = 0; i < n; i++) out[i] = bin.charCodeAt(i);
  return out;
}

/** 16 kHz 16-bit mono PCM → a WAV file (what Azure's short-audio endpoint reads). */
export function wav(pcm, rate = STT_RATE) {
  const out = new Uint8Array(44 + pcm.length);
  const v = new DataView(out.buffer);
  const s = (o, t) => { for (let i = 0; i < t.length; i++) out[o + i] = t.charCodeAt(i); };
  s(0, 'RIFF'); v.setUint32(4, 36 + pcm.length, true); s(8, 'WAVE');
  s(12, 'fmt '); v.setUint32(16, 16, true); v.setUint16(20, 1, true); v.setUint16(22, 1, true);
  v.setUint32(24, rate, true); v.setUint32(28, rate * 2, true); v.setUint16(32, 2, true); v.setUint16(34, 16, true);
  s(36, 'data'); v.setUint32(40, pcm.length, true);
  out.set(pcm, 44);
  return out;
}

export function secondsOf(pcm) {
  return Math.max(1, Math.ceil(pcm.length / (STT_RATE * 2)));
}

/** The month's audio seconds + n stay under the stop line? Counted when so (D1 rate_limits `stt:sec:<month>`). */
export async function takeSeconds(env, n, ts = Date.now()) {
  const key = `stt:sec:${monthKey(ts)}`;
  const limit = Math.floor((Number(env.STT_FREE_SECONDS) || FREE_SECONDS) * STT_STOP_SHARE);
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

/** Azure short audio → {ok, text} ({ok:true, text:''} when nothing was said). Throws on a missing key. */
export async function azureHear(env, pcm, fetchImpl = fetch, lang = 'bg-BG') {
  if (!env.AZURE_SPEECH_KEY) throw new Error('no_stt_key');
  const region = String(env.AZURE_SPEECH_REGION || 'germanywestcentral').replace(/[^a-z0-9]/g, '');
  const res = await fetchImpl(`https://${region}.stt.speech.microsoft.com/speech/recognition/conversation/`
      + `cognitiveservices/v1?language=${lang}&format=simple&profanity=raw`, {
    method: 'POST',
    headers: {
      'Ocp-Apim-Subscription-Key': String(env.AZURE_SPEECH_KEY).trim(),
      'Content-Type': `audio/wav; codecs=audio/pcm; samplerate=${STT_RATE}`,
      Accept: 'application/json',
      'User-Agent': 'xems-license',
    },
    body: wav(pcm),
  });
  if (!res.ok) return { ok: false, status: res.status };
  const j = await res.json().catch(() => null);
  if (!j) return { ok: false, status: 502 };
  if (j.RecognitionStatus === 'Success') return { ok: true, text: String(j.DisplayText || '').trim() };
  if (j.RecognitionStatus === 'NoMatch' || j.RecognitionStatus === 'InitialSilenceTimeout'
      || j.RecognitionStatus === 'BabbleTimeout') return { ok: true, text: '' };
  return { ok: false, status: 502, why: String(j.RecognitionStatus || '') };
}

/** The loudest sample (0..32767) — a log row tells a silent microphone from a voice. */
export function peakOf(pcm) {
  const v = new DataView(pcm.buffer, pcm.byteOffset, pcm.byteLength);
  let p = 0;
  for (let i = 0; i + 1 < pcm.length; i += 2) p = Math.max(p, Math.abs(v.getInt16(i, true)));
  return p;
}

/** One row of the cloud ear's log (best effort, never fails the request); prunes rows older than 14 days. */
export async function logStt(env, row, ts = Date.now()) {
  try {
    await env.DB.prepare('INSERT INTO stt_log (ts, device, seconds, peak, status, text, ms) VALUES (?, ?, ?, ?, ?, ?, ?)')
      .bind(Math.floor(ts / 1000), String(row.device || '').slice(0, 40), Number(row.seconds) || 0, Number(row.peak) || 0,
        String(row.status || '').slice(0, 40), String(row.text || '').slice(0, 300), Number(row.ms) || 0).run();
    if (Math.random() < 0.05) {
      await env.DB.prepare('DELETE FROM stt_log WHERE ts < ?').bind(Math.floor(ts / 1000) - 14 * 86400).run();
    }
  } catch {
    // the log table not migrated yet: the request still works
  }
}
