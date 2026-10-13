package com.isaigu.gymapp.wearable.bluetens;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * The conversation with one Bluetens pad — pure Java, no Android (the BLE link only moves bytes; the offline test
 * drives this class against a simulated pad). Text shell over FFE0/FFE1: {@code >cmd args\r\n}, every answer one
 * {@code \r\n} line; one request in flight; {@code NOTIFY …} lines arrive any time (docs/xems-bluetens.md).
 * Every call comes from one thread (the main thread on the tablet).
 */
public final class BluetensShell {
    public interface Io {
        /** Bytes to the pad (the link cuts them into 20-byte writes and paces them). */
        void send(byte[] data);

        /** Run later on the same thread. */
        void later(Runnable r, long delayMs);
    }

    public interface Events {
        /** Version, battery or the running time changed. */
        void onInfo(BluetensShell s);

        void onStrength(BluetensShell s, int value, boolean fromPad);

        void onRunning(BluetensShell s, boolean running);

        /** One of the NOTICE_* (electrodes off, low battery …). */
        void onNotice(BluetensShell s, int notice);

        /** Uploading a program (true) or done (false). */
        void onUpload(BluetensShell s, boolean busy);

        /** A request got no answer or an error (its command, e.g. "ssta"). */
        void onFailed(BluetensShell s, String what);
    }

    public static final int NOTICE_NOLOAD = 1, NOTICE_LOW = 2, NOTICE_OFF = 3, NOTICE_ERROR = 4, NOTICE_FULL = 5,
            NOTICE_STOP = 6;
    public static final int MAX_STRENGTH = 60;
    public static final long TIMEOUT_MS = 8000;
    public static final long KEEP_ALIVE_MS = 20000;

    static final int VER = 1, BAT = 2, STAT = 3, MD5 = 4, CAT = 5, SSTA = 6, STR = 7, OSTO = 8;

    final Io io;
    final Events ev;
    /** v2 hardware (battery in mV of 5000): known from the advert's project name. */
    public final boolean v2;

    public String version = "";
    public int batteryMv = -1;
    public int strength;
    public boolean running;
    /** Seconds the pad says the program has run (from {@code >stat}). */
    public int tickS;
    public boolean uploading;

    final List<Req> queue = new ArrayList<Req>();
    Req cur;
    int token;
    boolean closed;
    final StringBuilder line = new StringBuilder();
    boolean cr;
    int keepAliveToken;

    public BluetensShell(Io io, Events ev, boolean v2) {
        this.io = io;
        this.ev = ev;
        this.v2 = v2;
    }

    static final class Req {
        final int kind;
        final String cmd;
        String file;
        byte[] content;
        String md5;
        int value;

        Req(int kind, String cmd) {
            this.kind = kind;
            this.cmd = cmd;
        }
    }

    // ------------------------------------------------------------------ what the screen asks

    /** Right after the link is up: firmware, battery, what runs. */
    public void hello() {
        add(new Req(VER, ">ver"));
        add(new Req(BAT, ">bat"));
        add(new Req(STAT, ">stat"));
    }

    /** Upload the program if the pad does not have this exact one, start it at strength 1. */
    public void start(String file, byte[] content) {
        Req m = new Req(MD5, ">md5 " + file);
        m.file = file;
        m.content = content;
        m.md5 = md5(content);
        add(m);
        Req s = new Req(SSTA, ">ssta " + file);
        s.file = file;
        add(s);
    }

    /** Strength 1..60; while one is on its way only the newest waits behind it. */
    public void strength(int v) {
        v = Math.max(1, Math.min(MAX_STRENGTH, v));
        for (Req r : queue) {
            if (r.kind == STR) {
                r.value = v;
                return;
            }
        }
        Req r = new Req(STR, ">str");
        r.value = v;
        add(r);
    }

    public void stop() {
        for (int i = queue.size() - 1; i >= 0; i--) {
            int k = queue.get(i).kind;
            if (k == STR || k == SSTA || k == MD5 || k == CAT) {
                queue.remove(i);
            }
        }
        add(new Req(OSTO, ">osto"));
    }

    public void battery() {
        add(new Req(BAT, ">bat"));
    }

    public boolean idle() {
        return cur == null && queue.isEmpty();
    }

    public void close() {
        closed = true;
        queue.clear();
        cur = null;
        token++;
        keepAliveToken++;
    }

    /** Battery 0..100 the way the vendor app shows it (v2: mV of 5000; v1: four steps). */
    public int batteryPct() {
        if (batteryMv < 0) {
            return -1;
        }
        if (v2) {
            return Math.max(0, Math.min(100, batteryMv * 100 / 5000));
        }
        int level = batteryMv <= 3800 ? 1 : batteryMv <= 4400 ? 2 : batteryMv <= 4700 ? 3 : 4;
        return level * 25;
    }

    // ------------------------------------------------------------------ queue

    void add(Req r) {
        if (closed) {
            return;
        }
        queue.add(r);
        next();
    }

    void next() {
        if (cur != null || queue.isEmpty() || closed) {
            return;
        }
        cur = queue.remove(0);
        int t = ++token;
        if (cur.kind == STR) {
            send(">str " + cur.value);
        } else if (cur.kind == CAT) {
            uploading = true;
            ev.onUpload(this, true);
            send(cur.cmd);
            io.send(cur.content);
        } else {
            send(cur.cmd);
        }
        long wait = TIMEOUT_MS + (cur.kind == CAT ? cur.content.length * 4L : 0);
        io.later(new Timeout(this, t), wait);
    }

    void send(String s) {
        io.send(ascii(s + "\r\n"));
    }

    void done() {
        Req r = cur;
        cur = null;
        token++;
        if (r != null && r.kind == CAT) {
            uploading = false;
            ev.onUpload(this, false);
        }
        next();
    }

    void timedOut(int t) {
        if (t != token || cur == null) {
            return;
        }
        Req r = cur;
        if (r.kind == STR) {
            strength = r.value;                              // as the vendor app: assume it took
            ev.onStrength(this, strength, false);
        }
        if (r.kind == SSTA || r.kind == CAT || r.kind == MD5) {
            dropStart();
        }
        ev.onFailed(this, r.cmd.substring(1).split(" ")[0]);
        done();
    }

    /** A start that failed half way: forget the rest of it (the screen offers ▶ again). */
    void dropStart() {
        for (int i = queue.size() - 1; i >= 0; i--) {
            int k = queue.get(i).kind;
            if (k == SSTA || k == CAT || k == STR) {
                queue.remove(i);
            }
        }
    }

    // ------------------------------------------------------------------ incoming

    public void onBytes(byte[] data) {
        if (data == null || closed) {
            return;
        }
        for (byte b : data) {
            char c = (char) (b & 0xFF);
            if (c == '\n' && cr) {
                cr = false;
                String l = line.toString();
                line.setLength(0);
                onLine(l);
            } else if (c == '\r') {
                if (cr) {
                    line.append('\r');
                }
                cr = true;
            } else {
                if (cr) {
                    line.append('\r');
                    cr = false;
                }
                if (line.length() < 1024) {
                    line.append(c);
                }
            }
        }
    }

    void onLine(String raw) {
        String l = raw.trim();
        if (l.length() == 0) {
            return;
        }
        if (l.startsWith("NOTIFY ")) {
            notify(l.substring(7).trim());
            return;
        }
        if (cur == null) {
            return;
        }
        switch (cur.kind) {
            case VER:
                if (l.contains("v.") || l.contains("ver")) {
                    version = versionOf(l);
                    ev.onInfo(this);
                    done();
                }
                break;
            case BAT: {
                int mv = batteryOf(l, v2);
                if (mv >= 0) {
                    batteryMv = mv;
                    ev.onInfo(this);
                    done();
                }
                break;
            }
            case STAT:
                if (l.contains("tick") || l.contains("md5")) {
                    stat(l);
                    done();
                }
                break;
            case MD5: {
                Req r = cur;
                String got = l.toUpperCase(Locale.ROOT);
                if (!got.equals(r.md5)) {
                    Req c = new Req(CAT, ">cat " + r.file + " -l=" + r.content.length);
                    c.file = r.file;
                    c.content = r.content;
                    queue.add(0, c);
                }
                done();
                break;
            }
            case CAT: {
                int code = status(l);
                if (code == 3) {
                    done();
                } else if (code < 0 && code != Integer.MIN_VALUE) {
                    dropStart();
                    ev.onFailed(this, "cat");
                    done();
                }
                break;
            }
            case SSTA: {
                int code = status(l);
                if (code != Integer.MIN_VALUE) {
                    if (code >= 0) {                         // the vendor app takes any status as started
                        running = true;
                        strength = 1;
                        tickS = 0;
                        ev.onRunning(this, true);
                        ev.onStrength(this, 1, false);
                        startKeepAlive();
                    } else {
                        dropStart();
                        ev.onFailed(this, "ssta");
                    }
                    done();
                }
                break;
            }
            case STR: {
                int v = strengthOf(l);
                if (v >= 0) {
                    strength = v;
                    ev.onStrength(this, v, false);
                    done();
                }
                break;
            }
            case OSTO:
                if (status(l) != Integer.MIN_VALUE) {
                    setStopped();
                    done();
                }
                break;
            default:
                break;
        }
    }

    void notify(String what) {
        String[] p = what.split(" ");
        String k = p[0];
        if ("strength".equals(k) && p.length > 1) {
            try {
                int v = Integer.parseInt(p[1].trim());
                if (v >= 0) {
                    strength = v;
                    ev.onStrength(this, v, true);
                }
            } catch (NumberFormatException ignored) {
            }
        } else if ("stop".equals(k)) {
            setStopped();
            ev.onNotice(this, NOTICE_STOP);
        } else if ("noload".equals(k)) {
            ev.onNotice(this, NOTICE_NOLOAD);
        } else if ("low".equals(k)) {
            setStopped();
            ev.onNotice(this, NOTICE_LOW);
        } else if ("shutdown".equals(k) || "disconnect".equals(k)) {
            setStopped();
            ev.onNotice(this, NOTICE_OFF);
        } else if ("error".equals(k)) {
            setStopped();
            ev.onNotice(this, NOTICE_ERROR);
        } else if (what.startsWith("insufficient")) {
            ev.onNotice(this, NOTICE_FULL);
        }
    }

    void setStopped() {
        keepAliveToken++;
        if (running) {
            running = false;
            ev.onRunning(this, false);
        }
    }

    void stat(String l) {
        for (String part : l.split(",")) {
            String[] kv = part.split("=");
            if (kv.length < 2) {
                continue;
            }
            String k = kv[0].trim();
            try {
                if ("tick".equals(k)) {
                    tickS = Integer.parseInt(kv[1].trim());
                } else if ("str".equals(k)) {
                    strength = Integer.parseInt(kv[1].trim());
                }
            } catch (NumberFormatException ignored) {
            }
        }
        ev.onInfo(this);
    }

    void startKeepAlive() {
        io.later(new KeepAlive(this, ++keepAliveToken), KEEP_ALIVE_MS);
    }

    void keepAlive(int t) {
        if (t != keepAliveToken || closed || !running) {
            return;
        }
        if (idle()) {
            battery();
        }
        io.later(new KeepAlive(this, t), KEEP_ALIVE_MS);
    }

    // ------------------------------------------------------------------ parsing (static: tested on their own)

    /** {@code "<code>: text"} → code; not a status line → MIN_VALUE. */
    public static int status(String l) {
        int c = l.indexOf(':');
        if (c <= 0) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(l.substring(0, c).trim());
        } catch (NumberFormatException e) {
            return Integer.MIN_VALUE;
        }
    }

    /** {@code "4120 mv"} → 4120; v1 {@code "32769: …"} → full (5000); anything else → -1. */
    public static int batteryOf(String l, boolean v2) {
        if (!v2 && l.startsWith("32769:")) {
            return 5000;
        }
        String[] p = l.split(" ");
        if (p.length == 2 && "mv".equalsIgnoreCase(p[1])) {
            try {
                return Integer.parseInt(p[0].trim());
            } catch (NumberFormatException ignored) {
            }
        }
        return -1;
    }

    /** {@code "str=12"} or {@code "12"} → 12; else -1. */
    public static int strengthOf(String l) {
        String[] p = l.split("=");
        String v = p.length == 2 && "str".equals(p[0].trim()) ? p[1] : p.length == 1 ? p[0] : null;
        if (v == null) {
            return -1;
        }
        try {
            return Integer.parseInt(v.trim());
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /** "v.1.3.12" / "ver=1.3.12" → "1.3.12". */
    public static String versionOf(String l) {
        StringBuilder out = new StringBuilder();
        StringBuilder num = new StringBuilder();
        List<String> parts = new ArrayList<String>();
        for (int i = 0; i <= l.length(); i++) {
            char c = i < l.length() ? l.charAt(i) : ' ';
            if (c >= '0' && c <= '9') {
                num.append(c);
            } else if (num.length() > 0) {
                parts.add(num.toString());
                num.setLength(0);
            }
        }
        for (int i = Math.max(0, parts.size() - 3); i < parts.size(); i++) {
            out.append(out.length() > 0 ? "." : "").append(parts.get(i));
        }
        return out.toString();
    }

    public static byte[] ascii(String s) {
        byte[] b = new byte[s.length()];
        for (int i = 0; i < b.length; i++) {
            b[i] = (byte) s.charAt(i);
        }
        return b;
    }

    public static String md5(byte[] data) {
        try {
            byte[] d = java.security.MessageDigest.getInstance("MD5").digest(data);
            StringBuilder b = new StringBuilder();
            for (byte x : d) {
                b.append(String.format(Locale.ROOT, "%02X", x & 0xFF));
            }
            return b.toString();
        } catch (Exception e) {
            return "";
        }
    }

    // ------------------------------------------------------------------ named runnables (dx: no anonymous classes)

    static final class Timeout implements Runnable {
        final BluetensShell s;
        final int t;

        Timeout(BluetensShell s, int t) {
            this.s = s;
            this.t = t;
        }

        @Override
        public void run() {
            s.timedOut(t);
        }
    }

    static final class KeepAlive implements Runnable {
        final BluetensShell s;
        final int t;

        KeepAlive(BluetensShell s, int t) {
            this.s = s;
            this.t = t;
        }

        @Override
        public void run() {
            s.keepAlive(t);
        }
    }
}
