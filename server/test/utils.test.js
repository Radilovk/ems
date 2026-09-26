import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import {
  normKey, normDevice, normMac, normMacList, parseMacList,
  parseTokenBody, parseTokenLic, isHttpsUrl, generateLicenseKey, generateLicenseId,
} from '../src/utils.js';

describe('normKey', () => {
  it('trims and uppercases', () => {
    assert.equal(normKey('  xems-abcd-efgh  '), 'XEMS-ABCD-EFGH');
  });
  it('returns empty for null', () => {
    assert.equal(normKey(null), '');
  });
});

describe('normDevice', () => {
  it('strips separators and uppercases', () => {
    assert.equal(normDevice('7f3a-91c2-0b55-d1e4'), '7F3A91C20B55D1E4');
  });
  it('removes invalid chars', () => {
    assert.equal(normDevice('7F3A:91C2'), '7F3A91C2');
  });
});

describe('normMac', () => {
  it('normalizes various formats', () => {
    assert.equal(normMac('aa-bb-cc-dd-ee-ff'), 'AA:BB:CC:DD:EE:FF');
    assert.equal(normMac('AABBCCDDEEFF'), 'AA:BB:CC:DD:EE:FF');
  });
  it('rejects invalid length', () => {
    assert.equal(normMac('AABBCC'), null);
  });
});

describe('normMacList', () => {
  it('deduplicates', () => {
    const list = normMacList('aa:bb:cc:dd:ee:ff, AABBCCDDEEFF');
    assert.deepEqual(list, ['AA:BB:CC:DD:EE:FF']);
  });
  it('parses arrays', () => {
    assert.deepEqual(normMacList(['aa-bb-cc-dd-ee-ff']), ['AA:BB:CC:DD:EE:FF']);
  });
});

describe('parseMacList', () => {
  it('parses JSON array', () => {
    assert.deepEqual(parseMacList('["AA:BB:CC:DD:EE:FF"]'), ['AA:BB:CC:DD:EE:FF']);
  });
  it('returns empty on bad JSON', () => {
    assert.deepEqual(parseMacList('not-json'), []);
  });
});

describe('parseTokenBody', () => {
  it('decodes base64url payload', () => {
    const payload = { v: 1, lic: 'L-2026-000001', dev: '7F3A91C20B55D1E4' };
    const body = Buffer.from(JSON.stringify(payload)).toString('base64url');
    const parsed = parseTokenBody(`${body}.fakesig`);
    assert.equal(parsed.lic, 'L-2026-000001');
    assert.equal(parsed.dev, '7F3A91C20B55D1E4');
  });
  it('returns null for garbage', () => {
    assert.equal(parseTokenBody(''), null);
    assert.equal(parseTokenBody('not.valid'), null);
  });
});

describe('parseTokenLic', () => {
  it('extracts license id', () => {
    const body = Buffer.from(JSON.stringify({ lic: 'L-2026-123456' })).toString('base64url');
    assert.equal(parseTokenLic(`${body}.sig`), 'L-2026-123456');
  });
});

describe('isHttpsUrl', () => {
  it('accepts https', () => {
    assert.equal(isHttpsUrl('https://github.com/foo/bar.apk'), true);
  });
  it('rejects http and garbage', () => {
    assert.equal(isHttpsUrl('http://example.com/x.apk'), false);
    assert.equal(isHttpsUrl('not-a-url'), false);
  });
});

describe('generateLicenseKey', () => {
  it('matches XEMS-XXXX-XXXX format', () => {
    const key = generateLicenseKey();
    assert.match(key, /^XEMS-[A-Z2-9]{4}-[A-Z2-9]{4}$/);
  });
});

describe('generateLicenseId', () => {
  it('matches L-YYYY-NNNNNN format', () => {
    const id = generateLicenseId();
    assert.match(id, /^L-\d{4}-\d{6}$/);
  });
});
