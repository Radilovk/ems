package com.isaigu.gymapp.wearable.xiaomi;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/** Crypto helpers for Xiaomi encrypted BLE V1 (ported from Gadgetbridge / miband-7-pro-monitor). */
final class XiaomiBandCrypto {
    private static final byte[] MIWEAR_AUTH = "miwear-auth".getBytes();

    private XiaomiBandCrypto() {}

    static byte[] hmacSha256(byte[] key, byte[] data) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(key, "HmacSHA256"));
            return mac.doFinal(data);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeyException e) {
            throw new RuntimeException(e);
        }
    }

    static SessionKeys computeSessionKeys(byte[] secretKey, byte[] phoneNonce, byte[] watchNonce) {
        byte[] combinedNonce = XiaomiBandProto.concat(phoneNonce, watchNonce);
        byte[] hmacKey = hmacSha256(combinedNonce, secretKey);
        byte[] output = new byte[64];
        byte[] tmp = new byte[0];
        int bCounter = 1;
        int i = 0;
        while (i < 64) {
            byte[] update = XiaomiBandProto.concat(tmp, MIWEAR_AUTH, new byte[] {(byte) bCounter});
            tmp = hmacSha256(hmacKey, update);
            for (int j = 0; j < tmp.length && i < 64; j++, i++) {
                output[i] = tmp[j];
            }
            bCounter++;
        }
        SessionKeys keys = new SessionKeys();
        keys.decKey = slice(output, 0, 16);
        keys.encKey = slice(output, 16, 16);
        keys.decNonce = slice(output, 32, 4);
        keys.encNonce = slice(output, 36, 4);
        keys.decIndex = 0;
        keys.encIndex = 1;
        return keys;
    }

    static byte[] aesCcmEncrypt(byte[] keyBytes, byte[] nonce4, int counter, byte[] plaintext) {
        byte[] nonce12 = buildPacketNonce(nonce4, counter);
        int tagLen = 4;
        byte[] rawMac = aesCcmMac(keyBytes, nonce12, plaintext, tagLen);
        byte[] ciphertext = aesCcmCtr(keyBytes, nonce12, plaintext, 1);
        byte[] encMac = aesCcmCtr(keyBytes, nonce12, rawMac, 0);
        return XiaomiBandProto.concat(ciphertext, encMac);
    }

    static byte[] aesCcmDecrypt(byte[] keyBytes, byte[] nonce4, int counter, byte[] data) {
        byte[] nonce12 = buildPacketNonce(nonce4, counter);
        int tagLen = 4;
        byte[] ciphertext = slice(data, 0, data.length - tagLen);
        byte[] encTag = slice(data, data.length - tagLen, tagLen);
        byte[] plaintext = aesCcmCtr(keyBytes, nonce12, ciphertext, 1);
        byte[] decTag = aesCcmCtr(keyBytes, nonce12, encTag, 0);
        byte[] expectedTag = aesCcmMac(keyBytes, nonce12, plaintext, tagLen);
        if (!bytesEqual(decTag, expectedTag)) {
            throw new RuntimeException("CCM tag mismatch");
        }
        return plaintext;
    }

    private static byte[] buildPacketNonce(byte[] nonce4, int counter) {
        byte[] n = new byte[12];
        System.arraycopy(nonce4, 0, n, 0, Math.min(4, nonce4.length));
        ByteBuffer.wrap(n).order(ByteOrder.LITTLE_ENDIAN).putInt(8, counter);
        return n;
    }

    private static byte[] aesCcmCtr(byte[] key, byte[] nonce12, byte[] data, int counterStart) {
        byte flags = 0x02;
        byte[] out = new byte[data.length];
        int blockSize = 16;
        for (int i = 0; i < data.length; i += blockSize) {
            int q = counterStart + (i / blockSize);
            byte[] block = new byte[16];
            block[0] = flags;
            System.arraycopy(nonce12, 0, block, 1, 12);
            block[13] = (byte) ((q >> 16) & 0xff);
            block[14] = (byte) ((q >> 8) & 0xff);
            block[15] = (byte) (q & 0xff);
            byte[] ks = aesBlock(key, block);
            for (int j = 0; j < blockSize && (i + j) < data.length; j++) {
                out[i + j] = (byte) (data[i + j] ^ ks[j]);
            }
        }
        return out;
    }

    private static byte[] aesCcmMac(byte[] key, byte[] nonce12, byte[] plaintext, int tagLen) {
        int l = 3;
        byte flagsB0 = (byte) ((((tagLen - 2) / 2) << 3) | (l - 1));
        byte[] b0 = new byte[16];
        b0[0] = flagsB0;
        System.arraycopy(nonce12, 0, b0, 1, 12);
        b0[13] = (byte) ((plaintext.length >> 16) & 0xff);
        b0[14] = (byte) ((plaintext.length >> 8) & 0xff);
        b0[15] = (byte) (plaintext.length & 0xff);
        byte[] x = aesBlock(key, b0);
        int padLen = (16 - (plaintext.length % 16)) % 16;
        byte[] padded = new byte[plaintext.length + padLen];
        System.arraycopy(plaintext, 0, padded, 0, plaintext.length);
        for (int i = 0; i < padded.length; i += 16) {
            byte[] block = new byte[16];
            for (int j = 0; j < 16; j++) {
                block[j] = (byte) (padded[i + j] ^ x[j]);
            }
            x = aesBlock(key, block);
        }
        return slice(x, 0, tagLen);
    }

    private static byte[] aesBlock(byte[] key, byte[] blockBytes) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"),
                    new IvParameterSpec(new byte[16]));
            byte[] raw = cipher.doFinal(blockBytes);
            return slice(raw, 0, 16);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (NoSuchPaddingException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeyException e) {
            throw new RuntimeException(e);
        } catch (InvalidAlgorithmParameterException e) {
            throw new RuntimeException(e);
        } catch (IllegalBlockSizeException e) {
            throw new RuntimeException(e);
        } catch (BadPaddingException e) {
            throw new RuntimeException(e);
        }
    }

    private static byte[] slice(byte[] src, int offset, int len) {
        byte[] out = new byte[len];
        System.arraycopy(src, offset, out, 0, len);
        return out;
    }

    static boolean bytesEqual(byte[] a, byte[] b) {
        if (a == null || b == null || a.length != b.length) {
            return false;
        }
        for (int i = 0; i < a.length; i++) {
            if (a[i] != b[i]) {
                return false;
            }
        }
        return true;
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
