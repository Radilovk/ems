import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { normMac } from '../src/utils.js';
import { EMS_TOKEN_STATUSES } from '../src/ems.js';

describe('EMS remote pairing helpers', () => {
  it('normalizes MAC for device registry', () => {
    assert.equal(normMac('aa-bb-cc-dd-ee-ff'), 'AA:BB:CC:DD:EE:FF');
  });

  it('token statuses include pending for pre-provisioned suits', () => {
    assert.deepEqual(EMS_TOKEN_STATUSES, ['active', 'pending']);
  });
});
