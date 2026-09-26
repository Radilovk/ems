import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { MODULES, FEATURES, filterMods, filterFeat, isKnownModule } from '../src/catalog.js';

describe('catalog', () => {
  it('has all current modules', () => {
    assert.ok(MODULES.find((m) => m.id === 'timer'));
    assert.ok(MODULES.find((m) => m.id === 'band'));
  });

  it('filters unknown module ids', () => {
    assert.deepEqual(filterMods(['timer', 'future_mod', 'music']), ['timer', 'music']);
  });

  it('filters unknown features', () => {
    assert.deepEqual(filterFeat(['arms_full', 'x']), ['arms_full']);
  });

  it('marks modules as subscription', () => {
    assert.equal(MODULES.every((m) => m.subscription), true);
    assert.equal(FEATURES.every((f) => f.subscription), true);
  });

  it('isKnownModule', () => {
    assert.equal(isKnownModule('ai'), true);
    assert.equal(isKnownModule('unknown'), false);
  });
});
