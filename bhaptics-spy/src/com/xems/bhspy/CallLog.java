package com.xems.bhspy;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Map;
import java.util.TreeMap;

/**
 * One JSON line per call the game makes to the (look-alike) Player, appended to a file; the file is what gets
 * uploaded. What matters for reading it later: the order, the timing (ms since the first call), who called, every
 * argument in full (event patterns, motor arrays, paths), and what we answered.
 * The game developer's API key is masked (it is their secret, not ours to keep).
 * High-rate calls (motors / paths / dots) are thinned once the file is big, but still counted. Pure Java.
 */
final class CallLog {
    static final int STRING_MAX = 100_000;
    static final int ARRAY_MAX = 4_000;
    static final long THIN_AFTER = 8L << 20;      // bytes: from here a hot method is written every 10th time
    static final long STOP_AFTER = 24L << 20;     // bytes: from here only counts

    private final File file;
    private BufferedWriter out;
    private long bytes;
    private long firstNs = -1;
    private long hot;
    final Map<String, Integer> counts = new TreeMap<String, Integer>();
    final Map<String, Integer> callers = new TreeMap<String, Integer>();
    int calls;
    private int sinceFlush;

    CallLog(File file) throws IOException {
        this.file = file;
        this.bytes = file.exists() ? file.length() : 0;
        this.out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8"), 1 << 16);
    }

    File file() {
        return file;
    }

    static boolean isHot(String m) {
        return m.startsWith("playMotors") || m.startsWith("playPath") || m.startsWith("hapticEventDot")
            || m.startsWith("hapticEventPath") || m.startsWith("playGlove");
    }

    synchronized void header(String json) {
        write(json);
    }

    /** nowNs: a monotonic clock; the first call is time 0. */
    synchronized void record(long nowNs, String who, int index, Object[] args, String ret) {
        if (firstNs < 0) firstNs = nowNs;
        String m = Sig.name(index);
        calls++;
        counts.put(m, counts.containsKey(m) ? counts.get(m) + 1 : 1);
        callers.put(who, callers.containsKey(who) ? callers.get(who) + 1 : 1);
        if (bytes > STOP_AFTER) return;
        if (isHot(m) && bytes > THIN_AFTER && (hot++ % 10) != 0) return;
        StringBuilder b = new StringBuilder(256);
        b.append("{\"t\":").append((nowNs - firstNs) / 1_000_000L).append(",\"who\":");
        str(b, who);
        b.append(",\"m\":");
        str(b, m);
        b.append(",\"a\":[");
        for (int i = 0; i < args.length; i++) {
            if (i > 0) b.append(',');
            arg(b, m, i, args[i]);
        }
        b.append("],\"r\":");
        str(b, ret);
        b.append('}');
        write(b.toString());
    }

    private void write(String line) {
        try {
            out.write(line);
            out.write('\n');
            bytes += line.length() + 1;
            if (++sinceFlush >= 25) flush();
        } catch (IOException e) {
            // a full disk must not break the game's call
        }
    }

    synchronized void flush() {
        try {
            out.flush();
            sinceFlush = 0;
        } catch (IOException e) {
            // ignore
        }
    }

    synchronized void close() {
        try {
            out.close();
        } catch (IOException e) {
            // ignore
        }
    }

    /** Summary line for the top of an upload. */
    synchronized String summary() {
        StringBuilder b = new StringBuilder("{\"summary\":{\"calls\":").append(calls).append(",\"counts\":{");
        boolean first = true;
        for (Map.Entry<String, Integer> e : counts.entrySet()) {
            if (!first) b.append(',');
            first = false;
            str(b, e.getKey());
            b.append(':').append(e.getValue());
        }
        b.append("},\"callers\":{");
        first = true;
        for (Map.Entry<String, Integer> e : callers.entrySet()) {
            if (!first) b.append(',');
            first = false;
            str(b, e.getKey());
            b.append(':').append(e.getValue());
        }
        return b.append("},\"fileBytes\":").append(bytes).append("}}").toString();
    }

    static void arg(StringBuilder b, String method, int i, Object a) {
        if (a == null) {
            b.append("null");
        } else if (a instanceof String) {
            String s = (String) a;
            if (i == 1 && method.startsWith("initialize")) {          // (appId, apiKey, mapping): mask the key
                s = s.length() <= 4 ? "****" : s.substring(0, 3) + "…(" + s.length() + ")";
            }
            str(b, s.length() > STRING_MAX ? s.substring(0, STRING_MAX) + "…(+" + (s.length() - STRING_MAX) + ")" : s);
        } else if (a instanceof int[]) {
            int[] v = (int[]) a;
            b.append('[');
            for (int k = 0; k < v.length && k < ARRAY_MAX; k++) {
                if (k > 0) b.append(',');
                b.append(v[k]);
            }
            b.append(']');
        } else if (a instanceof float[]) {
            float[] v = (float[]) a;
            b.append('[');
            for (int k = 0; k < v.length && k < ARRAY_MAX; k++) {
                if (k > 0) b.append(',');
                b.append(v[k]);
            }
            b.append(']');
        } else if (a instanceof byte[]) {
            byte[] v = (byte[]) a;
            b.append('"');
            for (int k = 0; k < v.length && k < ARRAY_MAX; k++) {
                b.append(Character.forDigit((v[k] >> 4) & 15, 16)).append(Character.forDigit(v[k] & 15, 16));
            }
            b.append('"');
        } else {
            b.append(a);                                              // numbers and booleans
        }
    }

    static void str(StringBuilder b, String s) {
        if (s == null) {
            b.append("null");
            return;
        }
        b.append('"');
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            switch (c) {
                case '"': b.append("\\\""); break;
                case '\\': b.append("\\\\"); break;
                case '\n': b.append("\\n"); break;
                case '\r': b.append("\\r"); break;
                case '\t': b.append("\\t"); break;
                default:
                    if (c < 0x20) b.append(String.format("\\u%04x", (int) c)); else b.append(c);
            }
        }
        b.append('"');
    }
}
