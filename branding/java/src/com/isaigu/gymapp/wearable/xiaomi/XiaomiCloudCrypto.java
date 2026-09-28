package com.isaigu.gymapp.wearable.xiaomi;

import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Xiaomi Mi Fitness cloud crypto — RC4-drop[1024] + SHA1 signature (i42.c "encrypted" mode).
 * Ported from huami-token (MIT, Kirill Snezhko) so the tablet can read a paired band's auth key
 * straight from the Xiaomi account, the same way Mi Fitness does.
 *
 * Pure java.* (own Base64) so it behaves identically on device and in the offline crypto test;
 * no lambdas / anonymous classes (dx-safe).
 */
final class XiaomiCloudCrypto {

    private XiaomiCloudCrypto() {}

    // ---------------------------------------------------------------- digests
    static byte[] digest(String algo, byte[] data) {
        try {
            return MessageDigest.getInstance(algo).digest(data);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    static byte[] utf8(String s) {
        try {
            return s.getBytes("UTF-8");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    static String md5Upper(String s) {
        byte[] h = digest("MD5", utf8(s));
        StringBuilder b = new StringBuilder(32);
        for (int i = 0; i < h.length; i++) {
            b.append(Character.forDigit((h[i] >> 4) & 15, 16)).append(Character.forDigit(h[i] & 15, 16));
        }
        return b.toString().toUpperCase(java.util.Locale.US);
    }

    // ---------------------------------------------------------------- RC4-drop[1024]
    static final class RC4 {
        private final int[] s = new int[256];
        private int i;
        private int j;

        RC4(byte[] key) {
            for (int k = 0; k < 256; k++) {
                s[k] = k;
            }
            int a = 0;
            for (int k = 0; k < 256; k++) {
                a = (a + s[k] + (key[k % key.length] & 0xFF)) & 0xFF;
                int t = s[k];
                s[k] = s[a];
                s[a] = t;
            }
        }

        byte[] crypt(byte[] data) {
            byte[] out = new byte[data.length];
            for (int idx = 0; idx < data.length; idx++) {
                i = (i + 1) & 0xFF;
                j = (j + s[i]) & 0xFF;
                int t = s[i];
                s[i] = s[j];
                s[j] = t;
                out[idx] = (byte) (data[idx] ^ s[(s[i] + s[j]) & 0xFF]);
            }
            return out;
        }
    }

    static RC4 makeRc4(String keyB64) {
        RC4 rc4 = new RC4(b64decode(keyB64));
        rc4.crypt(new byte[1024]);            // drop first 1024 bytes
        return rc4;
    }

    /** RC4 key = base64(SHA256(base64Decode(ssecurity) || base64Decode(nonce))). */
    static String deriveRc4Key(String ssecurityB64, String nonceB64) {
        byte[] a = b64decode(ssecurityB64);
        byte[] b = b64decode(nonceB64);
        byte[] combined = new byte[a.length + b.length];
        System.arraycopy(a, 0, combined, 0, a.length);
        System.arraycopy(b, 0, combined, a.length, b.length);
        return b64encode(digest("SHA-256", combined));
    }

    /** nonce = base64(random8 || int32_be((now_ms + timeDiff) / 60000)). */
    static String generateNonce(long timeDiffMs) {
        byte[] out = new byte[12];
        byte[] rnd = new byte[8];
        new java.security.SecureRandom().nextBytes(rnd);
        System.arraycopy(rnd, 0, out, 0, 8);
        int minutes = (int) ((System.currentTimeMillis() + timeDiffMs) / 60000L);
        out[8] = (byte) ((minutes >> 24) & 0xFF);
        out[9] = (byte) ((minutes >> 16) & 0xFF);
        out[10] = (byte) ((minutes >> 8) & 0xFF);
        out[11] = (byte) (minutes & 0xFF);
        return b64encode(out);
    }

    /** SHA1 signing string: METHOD&path&k1=v1&k2=v2&rc4Key → base64(SHA1(...)). */
    static String sha1Sign(String method, String path, Map<String, String> params, String rc4KeyB64) {
        List<String> parts = new ArrayList<String>();
        if (method != null && method.length() > 0) {
            parts.add(method.toUpperCase(java.util.Locale.US));
        }
        if (path != null && path.length() > 0) {
            parts.add(path);
        }
        List<String> keys = new ArrayList<String>(params.keySet());
        Collections.sort(keys);
        for (int i = 0; i < keys.size(); i++) {
            parts.add(keys.get(i) + "=" + params.get(keys.get(i)));
        }
        parts.add(rc4KeyB64);
        return b64encode(digest("SHA-1", utf8(join(parts, "&"))));
    }

    /**
     * Encrypt request params (i42.c). Returns encrypted values (sorted key order, one continuous RC4
     * stream) plus "signature" and "_nonce". Mirrors mi_encrypt_params.
     */
    static Map<String, String> encryptParams(String method, String signingPath, Map<String, String> params,
                                              String nonceB64, String ssecurityB64) {
        String rc4Key = deriveRc4Key(ssecurityB64, nonceB64);

        // rc4_hash__ over the plaintext params
        Map<String, String> plain = sorted(params);
        String rc4Hash = sha1Sign(method, signingPath, plain, rc4Key);
        plain.put("rc4_hash__", rc4Hash);
        plain = sorted(plain);

        // one RC4 stream encrypts each value in sorted key order
        RC4 rc4 = makeRc4(rc4Key);
        Map<String, String> enc = new LinkedHashMap<String, String>();
        List<String> keys = new ArrayList<String>(plain.keySet());
        Collections.sort(keys);
        for (int i = 0; i < keys.size(); i++) {
            enc.put(keys.get(i), b64encode(rc4.crypt(utf8(plain.get(keys.get(i))))));
        }

        String signature = sha1Sign(method, signingPath, enc, rc4Key);
        Map<String, String> out = new LinkedHashMap<String, String>(enc);
        out.put("signature", signature);
        out.put("_nonce", nonceB64);
        return out;
    }

    /** Decrypt a base64 RC4 response body. */
    static String decryptResponse(String bodyB64, String nonceB64, String ssecurityB64) {
        String rc4Key = deriveRc4Key(ssecurityB64, nonceB64);
        return new String(utf8Wrap(makeRc4(rc4Key).crypt(b64decode(bodyB64))));
    }

    /** signing path: pathPrefix empty → from the first '/'. */
    static String signingPath(String fullPath) {
        int idx = fullPath.indexOf('/');
        return idx >= 0 ? fullPath.substring(idx) : fullPath;
    }

    // ---------------------------------------------------------------- helpers
    private static Map<String, String> sorted(Map<String, String> in) {
        List<String> keys = new ArrayList<String>(in.keySet());
        Collections.sort(keys);
        Map<String, String> out = new LinkedHashMap<String, String>();
        for (int i = 0; i < keys.size(); i++) {
            out.put(keys.get(i), in.get(keys.get(i)));
        }
        return out;
    }

    private static String join(List<String> parts, String sep) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < parts.size(); i++) {
            if (i > 0) {
                b.append(sep);
            }
            b.append(parts.get(i));
        }
        return b.toString();
    }

    private static char[] utf8Wrap(byte[] b) {
        try {
            return new String(b, "UTF-8").toCharArray();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    // ---------------------------------------------------------------- Base64 (standard, no wrapping)
    private static final char[] B64 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    static String b64encode(byte[] data) {
        StringBuilder b = new StringBuilder(((data.length + 2) / 3) * 4);
        int i = 0;
        while (i + 3 <= data.length) {
            int n = ((data[i] & 0xFF) << 16) | ((data[i + 1] & 0xFF) << 8) | (data[i + 2] & 0xFF);
            b.append(B64[(n >> 18) & 63]).append(B64[(n >> 12) & 63]).append(B64[(n >> 6) & 63]).append(B64[n & 63]);
            i += 3;
        }
        int rem = data.length - i;
        if (rem == 1) {
            int n = (data[i] & 0xFF) << 16;
            b.append(B64[(n >> 18) & 63]).append(B64[(n >> 12) & 63]).append('=').append('=');
        } else if (rem == 2) {
            int n = ((data[i] & 0xFF) << 16) | ((data[i + 1] & 0xFF) << 8);
            b.append(B64[(n >> 18) & 63]).append(B64[(n >> 12) & 63]).append(B64[(n >> 6) & 63]).append('=');
        }
        return b.toString();
    }

    static byte[] b64decode(String s) {
        int[] inv = new int[128];
        for (int i = 0; i < inv.length; i++) {
            inv[i] = -1;
        }
        for (int i = 0; i < B64.length; i++) {
            inv[B64[i]] = i;
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        int buf = 0;
        int bits = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '=' || c > 127 || inv[c] < 0) {
                continue;
            }
            buf = (buf << 6) | inv[c];
            bits += 6;
            if (bits >= 8) {
                bits -= 8;
                out.write((buf >> bits) & 0xFF);
            }
        }
        return out.toByteArray();
    }
}
