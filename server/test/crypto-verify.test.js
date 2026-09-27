import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { signToken, verifyToken } from '../src/crypto.js';

async function pem() {
  const kp = await crypto.subtle.generateKey({ name: 'ECDSA', namedCurve: 'P-256' }, true, ['sign', 'verify']);
  const der = new Uint8Array(await crypto.subtle.exportKey('pkcs8', kp.privateKey));
  let bin = '';
  for (const b of der) bin += String.fromCharCode(b);
  return `-----BEGIN PRIVATE KEY-----\n${btoa(bin)}\n-----END PRIVATE KEY-----`;
}

describe('verifyToken', () => {
  it('accepts its own token and rejects a changed one', async () => {
    const key = await pem();
    const t = await signToken(key, { lic: 'L1', dev: 'ABCD' });
    assert.equal(await verifyToken(key, t), true);
    const [, sig] = t.split('.');
    const forged = btoa(JSON.stringify({ lic: 'L2', dev: 'ABCD' })).replace(/=+$/, '') + '.' + sig;
    assert.equal(await verifyToken(key, forged), false);
    assert.equal(await verifyToken(key, 'garbage'), false);
  });
});
