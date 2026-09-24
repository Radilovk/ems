package com.isaigu.gymapp.wearable.xiaomi;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

/**
 * Messages between the XEMS app on the band (quick app, system.interconnect) and XEMS here.
 *
 * How the band wraps an app's message on the phone link is not publicly documented, so the
 * link is learned from the first message: the band app always sends JSON ({"t":…}). Any
 * command XEMS does not know is searched for such a JSON text (also inside nested protobuf
 * messages). The command it was found in becomes the template: replies are built from the same
 * command with only that text replaced, so the band gets our JSON the same way it sent its own.
 * Everything is written to wearable-ble.log ("[applink]") to confirm or correct the guess.
 */
public final class XiaomiBandAppLink {
    public interface Listener {
        void onAppMessage(String json);
    }

    private static final Charset UTF8 = Charset.forName("UTF-8");
    private static volatile Listener listener;
    private static byte[] template;
    private static int[] path;
    private static long lastMs;

    private XiaomiBandAppLink() {}

    public static void setListener(Listener l) {
        listener = l;
    }

    /** The band app has spoken during this connection (so replies have a template). */
    public static boolean isLinked() {
        return template != null;
    }

    public static long getLastMessageMs() {
        return lastMs;
    }

    static void reset() {
        template = null;
        path = null;
    }

    /** Unknown command from the band: is it an app message? */
    static boolean onCommand(int type, int sub, byte[] raw) {
        List<Field> tree = parse(raw, 0);
        if (tree == null) {
            return false;
        }
        List<Integer> found = new ArrayList<Integer>();
        String json = find(tree, found, 0);
        if (json == null) {
            return false;
        }
        template = raw;
        path = new int[found.size()];
        for (int i = 0; i < path.length; i++) {
            path[i] = found.get(i);
        }
        lastMs = System.currentTimeMillis();
        WearableBleDiagLog.log("applink", "type=" + type + "/" + sub + " path=" + pathText() + " " + json);
        Listener l = listener;
        if (l != null) {
            l.onAppMessage(json);
        }
        return true;
    }

    /** Send JSON to the band app (no-op until the app has sent something). */
    public static boolean send(String json) {
        byte[] t = template;
        int[] p = path;
        if (t == null || p == null || json == null) {
            return false;
        }
        List<Field> tree = parse(t, 0);
        if (tree == null) {
            return false;
        }
        byte[] out = encode(tree, p, 0, json.getBytes(UTF8));
        if (out == null) {
            return false;
        }
        XiaomiBandLink link = XiaomiBand.link();
        if (link == null || !link.isConnected()) {
            return false;
        }
        link.sendCommand(out);
        return true;
    }

    private static String pathText() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; path != null && i < path.length; i++) {
            sb.append(i == 0 ? "" : ".").append(path[i]);
        }
        return sb.toString();
    }

    // ================================================================ ordered protobuf

    /** One field; {@code index} counts repeats of the same number to keep the path exact. */
    static final class Field {
        int num;
        int wire;
        long varint;
        byte[] bytes;
    }

    /** Parse all fields in order; null when the bytes are not a clean protobuf message. */
    static List<Field> parse(byte[] b, int depth) {
        if (b == null || depth > 5) {
            return null;
        }
        List<Field> out = new ArrayList<Field>();
        int i = 0;
        try {
            while (i < b.length) {
                long key = 0;
                int shift = 0;
                while (true) {
                    int c = b[i++] & 0xFF;
                    key |= (long) (c & 0x7F) << shift;
                    shift += 7;
                    if (c < 0x80) {
                        break;
                    }
                    if (shift > 35) {
                        return null;
                    }
                }
                Field f = new Field();
                f.num = (int) (key >>> 3);
                f.wire = (int) (key & 7);
                if (f.num <= 0) {
                    return null;
                }
                if (f.wire == 0) {
                    long v = 0;
                    shift = 0;
                    while (true) {
                        int c = b[i++] & 0xFF;
                        v |= (long) (c & 0x7F) << shift;
                        shift += 7;
                        if (c < 0x80) {
                            break;
                        }
                        if (shift > 63) {
                            return null;
                        }
                    }
                    f.varint = v;
                } else if (f.wire == 2) {
                    int len = 0;
                    shift = 0;
                    while (true) {
                        int c = b[i++] & 0xFF;
                        len |= (c & 0x7F) << shift;
                        shift += 7;
                        if (c < 0x80) {
                            break;
                        }
                        if (shift > 28) {
                            return null;
                        }
                    }
                    if (len < 0 || i + len > b.length) {
                        return null;
                    }
                    f.bytes = new byte[len];
                    System.arraycopy(b, i, f.bytes, 0, len);
                    i += len;
                } else if (f.wire == 5) {
                    if (i + 4 > b.length) {
                        return null;
                    }
                    f.bytes = new byte[4];
                    System.arraycopy(b, i, f.bytes, 0, 4);
                    i += 4;
                } else if (f.wire == 1) {
                    if (i + 8 > b.length) {
                        return null;
                    }
                    f.bytes = new byte[8];
                    System.arraycopy(b, i, f.bytes, 0, 8);
                    i += 8;
                } else {
                    return null;
                }
                out.add(f);
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            return null;
        }
        return out;
    }

    /** Depth-first search for a JSON text {"t":…}; fills {@code at} with field positions. */
    private static String find(List<Field> fields, List<Integer> at, int depth) {
        for (int k = 0; k < fields.size(); k++) {
            Field f = fields.get(k);
            if (f.wire != 2 || f.bytes == null) {
                continue;
            }
            String s = asJson(f.bytes);
            if (s != null) {
                at.add(k);
                return s;
            }
            List<Field> inner = parse(f.bytes, depth + 1);
            if (inner != null && !inner.isEmpty()) {
                at.add(k);
                String r = find(inner, at, depth + 1);
                if (r != null) {
                    return r;
                }
                at.remove(at.size() - 1);
            }
        }
        return null;
    }

    private static String asJson(byte[] b) {
        if (b.length < 7 || b[0] != '{') {
            return null;
        }
        String s = new String(b, UTF8);
        return s.contains("\"t\"") && s.endsWith("}") ? s : null;
    }

    /** Re-encode the template with the leaf at {@code p} replaced. */
    private static byte[] encode(List<Field> fields, int[] p, int depth, byte[] leaf) {
        java.io.ByteArrayOutputStream o = new java.io.ByteArrayOutputStream();
        for (int k = 0; k < fields.size(); k++) {
            Field f = fields.get(k);
            byte[] value = f.bytes;
            if (depth < p.length && k == p[depth] && f.wire == 2) {
                if (depth == p.length - 1) {
                    value = leaf;
                } else {
                    List<Field> inner = parse(f.bytes, depth + 1);
                    if (inner == null) {
                        return null;
                    }
                    value = encode(inner, p, depth + 1, leaf);
                    if (value == null) {
                        return null;
                    }
                }
            }
            writeVarint(o, ((long) f.num << 3) | f.wire);
            if (f.wire == 0) {
                writeVarint(o, f.varint);
            } else if (f.wire == 2) {
                writeVarint(o, value.length);
                o.write(value, 0, value.length);
            } else {
                o.write(value, 0, value.length);
            }
        }
        return o.toByteArray();
    }

    private static void writeVarint(java.io.ByteArrayOutputStream o, long v) {
        while (true) {
            int b = (int) (v & 0x7F);
            v >>>= 7;
            if (v != 0) {
                o.write(b | 0x80);
            } else {
                o.write(b);
                return;
            }
        }
    }
}
