import { test } from 'node:test';
import assert from 'node:assert/strict';
import { normalizePick, picksPayload, enabledIds, codeMatches } from '../src/exercises.js';

const known = new Set(['squat', 'plank', 'row']);

test('a pick needs a known id; frames 0–3, anything else → 0', () => {
  assert.equal(normalizePick({ id: 'nope', on: true }, known, 5), null);
  assert.equal(normalizePick(null, known, 5), null);
  assert.deepEqual(normalizePick({ id: 'squat', on: true, frames: 2 }, known, 5),
    { id: 'squat', on_app: 1, frames: 2, updated_at: 5 });
  assert.equal(normalizePick({ id: 'squat', on: 0, frames: 7 }, known, 5).frames, 0);
  assert.equal(normalizePick({ id: 'squat', on: 0, frames: 1.5 }, known, 5).on_app, 0);
});

test('payload: version is the last change, picks sorted', () => {
  const p = picksPayload([{ id: 'row', on_app: 1, frames: 0, updated_at: 9 }, { id: 'plank', on_app: 0, frames: 1, updated_at: 3 }]);
  assert.equal(p.v, 9);
  assert.deepEqual(p.picks, [{ id: 'plank', on: 0, frames: 1 }, { id: 'row', on: 1, frames: 0 }]);
  assert.deepEqual(picksPayload([]), { v: 0, picks: [] });
});

test('enabled: built-ins by default, the admin switches either way', () => {
  const lib = { exercises: [{ id: 'squat', b: 1 }, { id: 'plank', b: 1 }, { id: 'row', b: 0 }] };
  assert.deepEqual(enabledIds(lib, []), ['squat', 'plank']);
  assert.deepEqual(enabledIds(lib, [{ id: 'plank', on: 0 }, { id: 'row', on: 1 }]), ['squat', 'row']);
});

test('access code: matches its SHA-256, trims and ignores case; nothing else passes', async () => {
  // sha256("ABCD-EFGH-JKLM")
  const h = 'c7d6e56ec1f1cfba17f2cd9d1b46de8ad6bfca4a0bd1ee1d8e7fd4e9f0b1d0b2';
  const real = await crypto.subtle.digest('SHA-256', new TextEncoder().encode('ABCD-EFGH-JKLM'));
  const hex = [...new Uint8Array(real)].map((b) => b.toString(16).padStart(2, '0')).join('');
  assert.equal(await codeMatches(' abcd-efgh-jklm ', hex), true);
  assert.equal(await codeMatches('ABCD-EFGH-JKLX', hex), false);
  assert.equal(await codeMatches('', hex), false);
  assert.equal(await codeMatches('ABCD-EFGH-JKLM', ''), false);
  assert.equal(h.length, 64);
});
