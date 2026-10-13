package com.isaigu.gymapp.wearable.xiaomi;

import java.security.GeneralSecurityException;

import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/**
 * Crypto of the Xiaomi encrypted BLE V1 link, written from the protocol description in
 * docs/xiaomi-band8-direct-ble.md §4 with the standard algorithms only:
 * <ul>
 * <li>session keys = HKDF-SHA256 (RFC 5869): salt = phoneNonce‖watchNonce, key = the band's auth key,
 * info = "miwear-auth", 64 bytes → decKey 16 | encKey 16 | decNonce 4 | encNonce 4;</li>
 * <li>frames = AES-CCM (RFC 3610 / NIST SP 800-38C): 12-byte nonce = nonce4 ‖ 0000 ‖ counter (u32 LE),
 * 4-byte tag, no associated data; output = ciphertext ‖ tag.</li>
 * </ul>
 * Android's JCE has no CCM, so CCM is built here on AES/ECB (one block = one AES call).
 */
final class XiaomiBandCrypto {
    private static final byte[] INFO = {'m', 'i', 'w', 'e', 'a', 'r', '-', 'a', 'u', 't', 'h'};
    private static final int TAG = 4;
    private static final int NONCE = 12;
    private static final int LEN_BYTES = 15 - NONCE;   // CCM "L": bytes of the length / counter field (3)

    private XiaomiBandCrypto() {}

    static byte[] hmacSha256(byte[] key, byte[] data) {
        try {
            Mac m = Mac.getInstance("HmacSHA256");
            m.init(new SecretKeySpec(key, "HmacSHA256"));
            return m.doFinal(data);
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(e);
        }
    }

    /** RFC 5869 HKDF-SHA256, extract then expand to {@code len} bytes. */
    static byte[] hkdf(byte[] salt, byte[] ikm, byte[] info, int len) {
        byte[] prk = hmacSha256(salt, ikm);
        byte[] out = new byte[len];
        byte[] prev = new byte[0];
        int done = 0;
        for (int round = 1; done < len; round++) {
            byte[] msg = new byte[prev.length + info.length + 1];
            System.arraycopy(prev, 0, msg, 0, prev.length);
            System.arraycopy(info, 0, msg, prev.length, info.length);
            msg[msg.length - 1] = (byte) round;
            prev = hmacSha256(prk, msg);
            int take = Math.min(prev.length, len - done);
            System.arraycopy(prev, 0, out, done, take);
            done += take;
        }
        return out;
    }

    static SessionKeys computeSessionKeys(byte[] secretKey, byte[] phoneNonce, byte[] watchNonce) {
        byte[] okm = hkdf(XiaomiBandProto.concat(phoneNonce, watchNonce), secretKey, INFO, 40);
        SessionKeys k = new SessionKeys();
        k.decKey = part(okm, 0, 16);
        k.encKey = part(okm, 16, 16);
        k.decNonce = part(okm, 32, 4);
        k.encNonce = part(okm, 36, 4);
        k.decIndex = 0;
        k.encIndex = 1;                         // 0 is spent on the auth step's device info
        return k;
    }

    static byte[] aesCcmEncrypt(byte[] keyBytes, byte[] nonce4, int counter, byte[] plaintext) {
        Cipher aes = aes(keyBytes);
        byte[] n = frameNonce(nonce4, counter);
        byte[] tag = cbcMac(aes, n, plaintext);
        byte[] out = new byte[plaintext.length + TAG];
        ctr(aes, n, plaintext, out);
        byte[] s0 = block(aes, counterBlock(n, 0));
        for (int i = 0; i < TAG; i++) {
            out[plaintext.length + i] = (byte) (tag[i] ^ s0[i]);
        }
        return out;
    }

    /** @throws RuntimeException "CCM tag mismatch" when the frame was not made with this key / nonce / counter */
    static byte[] aesCcmDecrypt(byte[] keyBytes, byte[] nonce4, int counter, byte[] data) {
        if (data == null || data.length < TAG) {
            throw new RuntimeException("CCM frame too short");
        }
        Cipher aes = aes(keyBytes);
        byte[] n = frameNonce(nonce4, counter);
        byte[] body = part(data, 0, data.length - TAG);
        byte[] plain = new byte[body.length];
        ctr(aes, n, body, plain);
        byte[] tag = cbcMac(aes, n, plain);
        byte[] s0 = block(aes, counterBlock(n, 0));
        int diff = 0;
        for (int i = 0; i < TAG; i++) {
            diff |= (tag[i] ^ s0[i]) ^ data[body.length + i];
        }
        if (diff != 0) {
            throw new RuntimeException("CCM tag mismatch");
        }
        return plain;
    }

    static boolean bytesEqual(byte[] a, byte[] b) {
        if (a == null || b == null || a.length != b.length) {
            return false;
        }
        int diff = 0;
        for (int i = 0; i < a.length; i++) {
            diff |= a[i] ^ b[i];
        }
        return diff == 0;
    }

    // ---- CCM building blocks (RFC 3610 §2) ----

    private static byte[] frameNonce(byte[] nonce4, int counter) {
        byte[] n = new byte[NONCE];
        System.arraycopy(nonce4, 0, n, 0, 4);
        n[8] = (byte) counter;
        n[9] = (byte) (counter >>> 8);
        n[10] = (byte) (counter >>> 16);
        n[11] = (byte) (counter >>> 24);
        return n;
    }

    /** A_i: flags = L-1, the nonce, then i big-endian in L bytes. */
    private static byte[] counterBlock(byte[] nonce, int i) {
        byte[] a = new byte[16];
        a[0] = (byte) (LEN_BYTES - 1);
        System.arraycopy(nonce, 0, a, 1, NONCE);
        for (int b = 0; b < LEN_BYTES; b++) {
            a[15 - b] = (byte) (i >>> (8 * b));
        }
        return a;
    }

    /** Keystream S_1, S_2, … XOR-ed over {@code in} into {@code out}. */
    private static void ctr(Cipher aes, byte[] nonce, byte[] in, byte[] out) {
        for (int off = 0, i = 1; off < in.length; off += 16, i++) {
            byte[] s = block(aes, counterBlock(nonce, i));
            for (int j = 0; j < 16 && off + j < in.length; j++) {
                out[off + j] = (byte) (in[off + j] ^ s[j]);
            }
        }
    }

    /** CBC-MAC over B_0 and the zero-padded message (no associated data); the first TAG bytes are T. */
    private static byte[] cbcMac(Cipher aes, byte[] nonce, byte[] msg) {
        byte[] x = new byte[16];
        x[0] = (byte) ((((TAG - 2) / 2) << 3) | (LEN_BYTES - 1));
        System.arraycopy(nonce, 0, x, 1, NONCE);
        for (int b = 0; b < LEN_BYTES; b++) {
            x[15 - b] = (byte) (msg.length >>> (8 * b));
        }
        x = block(aes, x);
        for (int off = 0; off < msg.length; off += 16) {
            for (int j = 0; j < 16 && off + j < msg.length; j++) {
                x[j] ^= msg[off + j];
            }
            x = block(aes, x);
        }
        return x;
    }

    private static Cipher aes(byte[] key) {
        try {
            Cipher c = Cipher.getInstance("AES/ECB/NoPadding");
            c.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"));
            return c;
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(e);
        }
    }

    private static byte[] block(Cipher aes, byte[] in) {
        try {
            return aes.doFinal(in);
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(e);
        }
    }

    private static byte[] part(byte[] src, int off, int len) {
        byte[] out = new byte[len];
        System.arraycopy(src, off, out, 0, len);
        return out;
    }

    static final class SessionKeys {
        byte[] decKey;
        byte[] encKey;
        byte[] decNonce;
        byte[] encNonce;
        int decIndex;
        int encIndex;
    }
}
