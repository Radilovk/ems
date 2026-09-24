package com.isaigu.gymapp.widget;

import java.nio.charset.Charset;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * License token issued by the XEMS license server (no Android classes: unit-testable).
 *
 * <pre>
 * token   = base64url(payload JSON) "." base64url(signature)
 * payload = {"v":1, "lic":"L-2026-000123", "dev":"&lt;device id&gt;", "plan":"pro",
 *            "mods":["timer","music","pulse","ai","band"], "feat":["arms_full"],
 *            "iat":1790000000, "exp":1821536000}
 * signature = ECDSA P-256 / SHA-256 (DER) over the ASCII of the first part
 * </pre>
 * exp = 0 means no end date. The public key is {@link XemsLicense#SERVER_PUBLIC_KEY}.
 */
public final class XemsLicenseToken {
    private static final Charset UTF8 = Charset.forName("UTF-8");

    public String license = "";
    public String device = "";
    public String plan = "";
    public List<String> modules = new ArrayList<String>();
    /** Feature switches, e.g. "arms_full". */
    public List<String> features = new ArrayList<String>();
    public long issuedS;
    public long expiresS;

    private XemsLicenseToken() {}

    /** Parse and verify; the reason for a rejection goes to {@code why[0]}. Null when not valid. */
    public static XemsLicenseToken verify(String token, String publicKeyB64, String deviceId, String[] why) {
        try {
            if (token == null || token.indexOf('.') < 1) {
                return fail(why, "bad_format");
            }
            if (publicKeyB64 == null || publicKeyB64.length() == 0) {
                return fail(why, "no_server_key");
            }
            int dot = token.indexOf('.');
            String body = token.substring(0, dot);
            byte[] sig = b64url(token.substring(dot + 1));
            PublicKey key = KeyFactory.getInstance("EC").generatePublic(new X509EncodedKeySpec(b64(publicKeyB64)));
            Signature s = Signature.getInstance("SHA256withECDSA");
            s.initVerify(key);
            s.update(body.getBytes(UTF8));
            if (!s.verify(sig)) {
                return fail(why, "bad_signature");
            }
            Map<String, Object> p = parseFlat(new String(b64url(body), UTF8));
            XemsLicenseToken t = new XemsLicenseToken();
            t.license = str(p.get("lic"));
            t.device = str(p.get("dev"));
            t.plan = str(p.get("plan"));
            t.issuedS = num(p.get("iat"));
            t.expiresS = num(p.get("exp"));
            Object mods = p.get("mods");
            if (mods instanceof List) {
                for (Object m : (List<?>) mods) {
                    t.modules.add(str(m));
                }
            }
            Object feats = p.get("feat");
            if (feats instanceof List) {
                for (Object f : (List<?>) feats) {
                    t.features.add(str(f));
                }
            }
            if (deviceId != null && t.device.length() > 0 && !t.device.equals(deviceId)) {
                return fail(why, "other_device");
            }
            return t;
        } catch (Throwable e) {
            return fail(why, "bad_token");
        }
    }

    private static XemsLicenseToken fail(String[] why, String reason) {
        if (why != null && why.length > 0) {
            why[0] = reason;
        }
        return null;
    }

    static String str(Object o) {
        return o == null ? "" : String.valueOf(o);
    }

    static long num(Object o) {
        if (o instanceof Number) {
            return ((Number) o).longValue();
        }
        try {
            return o == null ? 0 : Long.parseLong(String.valueOf(o));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    // ================================================================ base64 (URL-safe, padding optional)

    static byte[] b64url(String s) {
        return b64(s.replace('-', '+').replace('_', '/'));
    }

    static byte[] b64(String s) {
        String a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        StringBuilder clean = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (a.indexOf(c) >= 0) {
                clean.append(c);
            }
        }
        int n = clean.length();
        byte[] out = new byte[n * 3 / 4];
        int o = 0;
        int buf = 0;
        int bits = 0;
        for (int i = 0; i < n; i++) {
            buf = (buf << 6) | a.indexOf(clean.charAt(i));
            bits += 6;
            if (bits >= 8) {
                bits -= 8;
                out[o++] = (byte) (buf >> bits);
            }
        }
        if (o == out.length) {
            return out;
        }
        byte[] r = new byte[o];
        System.arraycopy(out, 0, r, 0, o);
        return r;
    }

    // ================================================================ tiny JSON (flat object: strings, numbers, booleans, arrays)

    /** Flat JSON object → map (nested objects are skipped as raw text). Throws on bad input. */
    public static Map<String, Object> parseFlat(String json) {
        Parser p = new Parser(json);
        return p.object();
    }

    static final class Parser {
        final String s;
        int i;

        Parser(String s) {
            this.s = s;
        }

        Map<String, Object> object() {
            Map<String, Object> m = new LinkedHashMap<String, Object>();
            ws();
            expect('{');
            ws();
            if (peek() == '}') {
                i++;
                return m;
            }
            while (true) {
                ws();
                String k = string();
                ws();
                expect(':');
                ws();
                m.put(k, value());
                ws();
                char c = s.charAt(i++);
                if (c == '}') {
                    return m;
                }
                if (c != ',') {
                    throw new IllegalArgumentException("json");
                }
            }
        }

        Object value() {
            char c = peek();
            if (c == '"') {
                return string();
            }
            if (c == '[') {
                i++;
                List<Object> l = new ArrayList<Object>();
                ws();
                if (peek() == ']') {
                    i++;
                    return l;
                }
                while (true) {
                    ws();
                    l.add(value());
                    ws();
                    char d = s.charAt(i++);
                    if (d == ']') {
                        return l;
                    }
                    if (d != ',') {
                        throw new IllegalArgumentException("json");
                    }
                }
            }
            if (c == '{') {
                int depth = 0;
                int start = i;
                do {
                    char d = s.charAt(i++);
                    if (d == '"') {
                        i--;
                        string();
                    } else if (d == '{') {
                        depth++;
                    } else if (d == '}') {
                        depth--;
                    }
                } while (depth > 0);
                return s.substring(start, i);
            }
            int start = i;
            while (i < s.length() && ",}] \t\r\n".indexOf(s.charAt(i)) < 0) {
                i++;
            }
            String w = s.substring(start, i);
            if ("true".equals(w)) {
                return Boolean.TRUE;
            }
            if ("false".equals(w)) {
                return Boolean.FALSE;
            }
            if ("null".equals(w)) {
                return null;
            }
            if (w.indexOf('.') >= 0 || w.indexOf('e') >= 0 || w.indexOf('E') >= 0) {
                return Double.valueOf(w);
            }
            return Long.valueOf(w);
        }

        String string() {
            expect('"');
            StringBuilder b = new StringBuilder();
            while (true) {
                char c = s.charAt(i++);
                if (c == '"') {
                    return b.toString();
                }
                if (c == '\\') {
                    char e = s.charAt(i++);
                    switch (e) {
                        case 'n': b.append('\n'); break;
                        case 't': b.append('\t'); break;
                        case 'r': b.append('\r'); break;
                        case 'b': b.append('\b'); break;
                        case 'f': b.append('\f'); break;
                        case 'u':
                            b.append((char) Integer.parseInt(s.substring(i, i + 4), 16));
                            i += 4;
                            break;
                        default: b.append(e);
                    }
                } else {
                    b.append(c);
                }
            }
        }

        char peek() {
            return s.charAt(i);
        }

        void expect(char c) {
            if (s.charAt(i++) != c) {
                throw new IllegalArgumentException("json");
            }
        }

        void ws() {
            while (i < s.length() && " \t\r\n".indexOf(s.charAt(i)) >= 0) {
                i++;
            }
        }
    }

    /** JSON string literal for requests. */
    public static String quote(String v) {
        StringBuilder b = new StringBuilder("\"");
        String t = v == null ? "" : v;
        for (int i = 0; i < t.length(); i++) {
            char c = t.charAt(i);
            if (c == '"' || c == '\\') {
                b.append('\\').append(c);
            } else if (c < 0x20) {
                b.append(String.format("\\u%04x", (int) c));
            } else {
                b.append(c);
            }
        }
        return b.append('"').toString();
    }
}
