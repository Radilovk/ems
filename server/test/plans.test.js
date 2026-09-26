import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { resolveEntitlements, PLANS } from '../src/plans.js';

describe('resolveEntitlements', () => {
  it('uses DB mods/feat regardless of plan preset', () => {
    const result = resolveEntitlements('pro', '["ai","band"]', '["arms_full"]');
    assert.deepEqual(result.mods, ['ai', 'band']);
    assert.deepEqual(result.feat, ['arms_full']);
  });

  it('returns empty arrays for base plan stored in DB', () => {
    const result = resolveEntitlements('base', '[]', '[]');
    assert.deepEqual(result.mods, []);
    assert.deepEqual(result.feat, []);
  });

  it('handles invalid JSON gracefully', () => {
    const result = resolveEntitlements('full', 'bad', 'also-bad');
    assert.deepEqual(result.mods, []);
    assert.deepEqual(result.feat, []);
  });
});

describe('PLANS presets', () => {
  it('full plan includes all modules', () => {
    assert.deepEqual(PLANS.full.mods, ['timer', 'music', 'pulse', 'ai', 'band']);
  });
});
