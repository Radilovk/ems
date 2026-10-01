import { test } from 'node:test';
import assert from 'node:assert/strict';
import { normalizePick, picksPayload, enabledIds, codeMatches, frameNumbers, selectionPayload } from '../src/exercises.js';

const known = new Set(['squat', 'plank', 'row']);

test('a pick needs a known id; frames 0–3, anything else → 0', () => {
  assert.equal(normalizePick({ id: 'nope', on: true }, known, 5), null);
  assert.equal(normalizePick(null, known, 5), null);
  assert.deepEqual(normalizePick({ id: 'squat', on: true, frames: 2 }, known, 5),
    { id: 'squat', on_app: 1, frames: 2, zone: '', updated_at: 5 });
  assert.equal(normalizePick({ id: 'squat', on: 0, frames: 7 }, known, 5).frames, 0);
  assert.equal(normalizePick({ id: 'squat', on: 0, frames: 1.5 }, known, 5).on_app, 0);
});

test('the admin\'s group: one of the known ones, else the library\'s; sent only when set', () => {
  assert.equal(normalizePick({ id: 'row', on: 1, zone: 'functional' }, known, 5).zone, 'functional');
  assert.equal(normalizePick({ id: 'row', on: 1, zone: 'nonsense' }, known, 5).zone, '');
  const p = picksPayload([{ id: 'row', on_app: 1, frames: 0, zone: 'back', updated_at: 1 },
    { id: 'plank', on_app: 1, frames: 0, zone: '', updated_at: 1 }]);
  assert.deepEqual(p.picks, [{ id: 'plank', on: 1, frames: 0 }, { id: 'row', on: 1, frames: 0, zone: 'back' }]);
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
  // a built-in shipped for a program but not in the owner's selection stays off until switched on
  const lib2 = { exercises: [{ id: 'squat', b: 1, d: 1 }, { id: 'push-up', b: 1, d: 0 }] };
  assert.deepEqual(enabledIds(lib2, []), ['squat']);
  assert.deepEqual(enabledIds(lib2, [{ id: 'push-up', on: 1 }]), ['squat', 'push-up']);
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

test('selection for other apps: what is on, with the chosen frames and the redrawn ones', () => {
  assert.deepEqual(frameNumbers(3, 0), [1, 2, 3]);
  assert.deepEqual(frameNumbers(3, 2), [1, 3]);
  assert.deepEqual(frameNumbers(3, 1), [1]);
  assert.deepEqual(frameNumbers(2, 3), [1, 2]);
  const lib = {
    frames: 'cdn/{id}/frame-{n}.svg', fixedUrl: 'fix/{id}-{n}.svg', fixed: ['squat/2'],
    exercises: [{ id: 'squat', b: 1, d: 1, n: 3, zone: 'legs' }, { id: 'row', b: 0, n: 3, zone: 'back' },
      { id: 'plank', b: 1, d: 1, n: 1, zone: 'abs' }],
  };
  const s = selectionPayload(lib, [{ id: 'row', on_app: 1, frames: 2, zone: 'functional', updated_at: 4 },
    { id: 'plank', on_app: 0, frames: 0, zone: '', updated_at: 2 }]);
  assert.equal(s.v, 4);
  assert.deepEqual(s.items, [
    { id: 'squat', zone: 'legs', frames: ['cdn/squat/frame-1.svg', 'fix/squat-2.svg', 'cdn/squat/frame-3.svg'] },
    { id: 'row', zone: 'functional', frames: ['cdn/row/frame-1.svg', 'cdn/row/frame-3.svg'] },
  ]);
});

test('KA fitness: its own selection, everything on until switched off', () => {
  const lib = { frames: 'c/{id}/{n}', exercises: [{ id: 'a', b: 0, n: 1 }, { id: 'b', b: 1, d: 1, n: 1 }] };
  assert.deepEqual(enabledIds(lib, [], true), ['a', 'b']);
  assert.deepEqual(enabledIds(lib, [{ id: 'a', on: 0 }], true), ['b']);
  assert.deepEqual(selectionPayload(lib, [], true).items.map((x) => x.id), ['a', 'b']);
});
