import { test } from 'node:test';
import assert from 'node:assert/strict';
import { normalizePick, picksPayload, enabledIds } from '../src/exercises.js';

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
