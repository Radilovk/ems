import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { createPrivateKey, createPublicKey, generateKeyPairSync, verify } from 'node:crypto';
import { signToken, sha256Hex, b64url, ieeeP1363ToDer } from '../src/crypto.js';

// Generate a test P-256 key pair in PEM format compatible with importPrivateKey
const { privateKey } = generateKeyPairSync('ec', { namedCurve: 'prime256v1' });
const privatePem = privateKey.export({ type: 'pkcs8', format: 'pem' });

describe('sha256Hex', () => {
  it('hashes strings', async () => {
    const hash = await sha256Hex('test');
    assert.equal(hash.length, 64);
    assert.match(hash, /^[0-9a-f]+$/);
  });
});

describe('b64url', () => {
  it('encodes without padding', () => {
    const encoded = b64url(new TextEncoder().encode('hello'));
    assert.ok(!encoded.includes('='));
    assert.ok(!encoded.includes('+'));
  });
});

describe('ieeeP1363ToDer', () => {
  it('produces valid DER sequence', () => {
    const sig = new Uint8Array(64);
    sig[0] = 0x01;
    sig[32] = 0x02;
    const der = ieeeP1363ToDer(sig);
    assert.equal(der[0], 0x30); // SEQUENCE
  });
});

describe('signToken', () => {
  it('returns body.sig format', async () => {
    const payload = {
      v: 1,
      lic: 'L-2026-000001',
      dev: '7F3A91C20B55D1E4',
      plan: 'pro',
      mods: ['timer'],
      feat: [],
      ems: [],
      iat: 1700000000,
      exp: 0,
    };
    const token = await signToken(privatePem, payload);
    const [body, sig] = token.split('.');
    assert.ok(body.length > 10);
    assert.ok(sig.length > 10);

    const decoded = JSON.parse(Buffer.from(body, 'base64url').toString());
    assert.equal(decoded.lic, 'L-2026-000001');
    assert.equal(decoded.dev, '7F3A91C20B55D1E4');
  });

  it('produces verifiable ECDSA signature', async () => {
    const payload = { v: 1, lic: 'L-test', dev: 'ABCD', plan: 'base', mods: [], feat: [], ems: [], iat: 1, exp: 0 };
    const token = await signToken(privatePem, payload);
    const [body, sigB64] = token.split('.');
    const sigDer = Buffer.from(sigB64, 'base64url');
    const pubKey = createPublicKey(createPrivateKey(privatePem));
    assert.ok(verify('sha256', Buffer.from(body), pubKey, sigDer));
  });
});
