package com.isaigu.gymapp.wearable.mastogo;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * The conversation with one MASTOGO H-024B (DOMAS "Candy TENS 3S", board ZX-571C, SYD8811) — pure Java, no Android:
 * the BLE link only moves bytes, the offline test drives this class against a simulated unit
 * (docs/xems-mastogo.md). ASCII AT lines ending in CRLF; one command in flight, the next one 100 ms after the reply
 * (the vendor app's pace). The unit's own programs fix the impulse (Hz, width, shape); from outside only the
 * program, the strength 0–25, run / pause and the timer move. So the shell adds two things of its own:
 * <ul>
 * <li>modulation — an envelope of the strength drawn from here (wave, impulses, ramp, …), refreshed every
 * {@link Mod#stepMs} ms, rises limited to {@link #MAX_RISE} levels per update;</li>
 * <li>exploration — a sweep of read-only queries ({@code ?} / {@code =?}) for commands the vendor app never sends,
 * with the strength at 0 and the output paused before and after every answer.</li>
 * </ul>
 */
public final class MastogoShell {
    public interface Io {
        void send(byte[] data);

        void later(Runnable r, long delayMs);

        long now();
    }

    public interface Events {
        /** Any state changed (strength, program, time, battery, contact, run). */
        void onChanged(MastogoShell sh);

        /** A line went out ({@code out}) or came in — the console. */
        void onLine(MastogoShell sh, boolean out, String line);

        /** Exploration progress; {@code hit} = a command that answered (null otherwise). */
        void onProbe(MastogoShell sh, int done, int total, String[] hit);
    }

    public static final int MAX_LEVEL = 25;
    public static final int MODES = 25;
    /** Vendor: TENS 0–11, EMS 12–20, FEMALE 21–24. */
    public static final int EMS_FIRST = 12, FEMALE_FIRST = 21;
    static final long GAP_MS = 100;
    static final long REPLY_MS = 800;
    /** Exploration: an unknown "?" query gets no answer at all (seen 2026-10-27), known ones answer in < 100 ms. */
    static final long PROBE_REPLY_MS = 350;
    /** A query answered by its +TAG line waits this long for the unit's trailing OK. */
    static final long GRACE_MS = 200;
    static final long POLL_MS = 20000;
    /** The envelope never climbs more than this per update (falls are free). */
    public static final int MAX_RISE = 3;

    final Io io;
    final Events ev;

    // ------------------------------------------------------------------ what the unit told us (or we set)
    public int mode = -1;
    public int level = -1;
    public boolean running;
    /** Time left as the unit last said, and when it said it. */
    public int secLeft = -1;
    long secAt;
    /** Battery %, estimated from the cell voltage the unit reports ({@code +CBC:0,3.73} = 3.73 V); -1 unknown. */
    public int battery = -1;
    /** The cell voltage, V (0 = not reported). */
    public double batteryV;
    /** 1 = pads on skin, 0 = contact lost (+CLOAD:0 / ERROR 102), -1 = not known yet. */
    public int contact = -1;
    /** Last +QPOWD reason: 0 idle, 1 continuous output, 2 low battery, 3 long press; -1 none. */
    public int offReason = -1;
    public long heartMs;
    long heartAt;
    /** Every tag the unit ever reported: tag → last value (the full feedback, shown and copied). */
    public final Map<String, String> tags = new LinkedHashMap<String, String>();
    /** Round trip of a command (sent → OK / ERROR / +answer), ms. */
    public long rttMin = Long.MAX_VALUE, rttMax, rttSum;
    public int rttCount;
    public int sentCount, recvCount;

    // ------------------------------------------------------------------ queue
    static final int K_PLAIN = 0, K_LEVEL = 1, K_PROBE = 2, K_PAUSE = 3;

    static final class Cmd {
        String text;
        final int kind;
        long sentAt;
        final StringBuilder reply = new StringBuilder();

        Cmd(String text, int kind) {
            this.text = text;
            this.kind = kind;
        }
    }

    final List<Cmd> queue = new ArrayList<Cmd>();
    Cmd inFlight;
    int token;
    boolean pumpPosted;
    long nextAt;
    final StringBuilder rx = new StringBuilder();
    boolean closed;
    boolean polling;

    public MastogoShell(Io io, Events ev) {
        this.io = io;
        this.ev = ev;
    }

    // ================================================================== public commands

    /** Linked: ask everything once, then the battery every 20 s. */
    public void hello() {
        plain("AT+CMODE?");
        plain("AT+CSTR?");
        plain("AT+CDCLK?");
        plain("AT+QPOWP?");
        plain("AT+CBC?");
        plain("AT+WSDT?");
        if (!polling) {
            polling = true;
            io.later(new Poll(this), POLL_MS);
        }
        if (!suspended.isEmpty()) {
            probing = true;
            level = 0;
            queue.add(new Cmd("AT+CSTR=0,0", K_LEVEL));
            queue.add(new Cmd("AT+QPOWP", K_PAUSE));
            for (String t : suspended) {
                queue.add(new Cmd(t, K_PROBE));
            }
            suspended.clear();
            pump();
            ev.onProbe(this, probeDone, probeTotal, null);
        }
    }

    /** ▶ — the vendor's sequence: run, strength 1, run, timer. Strength always starts at 1. */
    public void start(int seconds) {
        offReason = -1;
        plain("AT+QPOWS");
        level = 1;
        plain("AT+CSTR=0,1");
        plain("AT+QPOWS");
        setTimer(seconds);
        running = true;
        ev.onChanged(this);
    }

    /** ■ — pause the output (the modulation stops too). */
    public void stop() {
        mod = null;
        queue.add(new Cmd("AT+QPOWP", K_PAUSE));
        running = false;
        pump();
        ev.onChanged(this);
    }

    /** Strength 0–25; a change not yet sent is replaced, never queued twice. */
    public void setLevel(int n) {
        n = Math.max(0, Math.min(MAX_LEVEL, n));
        level = n;
        String t = "AT+CSTR=0," + n;
        for (Cmd c : queue) {
            if (c.kind == K_LEVEL) {
                c.text = t;
                ev.onChanged(this);
                return;
            }
        }
        queue.add(new Cmd(t, K_LEVEL));
        pump();
        ev.onChanged(this);
    }

    /** A program change pauses the unit and zeroes the strength (the unit does it; the vendor app follows). */
    public void setMode(int id) {
        id = Math.max(0, Math.min(MODES - 1, id));
        mod = null;
        mode = id;
        plain("AT+CMODE=0," + id);
        queue.add(new Cmd("AT+QPOWP", K_PAUSE));
        running = false;
        level = 0;
        pump();
        ev.onChanged(this);
    }

    /** The unit's own countdown, 1 s – 60 min. */
    public void setTimer(int seconds) {
        seconds = Math.max(1, Math.min(3600, seconds));
        plain("AT+CDCLK=" + hhmmss(seconds));
        secLeft = seconds;
        secAt = io.now();
    }

    /** Any line, as typed in the console. */
    public void raw(String line) {
        if (line != null && line.trim().length() > 0) {
            plain(line.trim());
        }
    }

    /** Time left now (counted down here between the unit's reports). */
    public int secondsLeft() {
        if (secLeft < 0) {
            return -1;
        }
        if (!running) {
            return secLeft;
        }
        return Math.max(0, secLeft - (int) ((io.now() - secAt) / 1000));
    }

    public void close() {
        closed = true;
        mod = null;
        probing = false;
        queue.clear();
    }

    /**
     * The link dropped: nothing runs any more as far as we know. An exploration in progress is kept: the unit switches
     * itself off after a few minutes without output ({@code +QPOWD:0}, seen 2026-10-27), and once it is on and linked
     * again {@link #hello} goes on from the command it stopped at.
     */
    public void setStopped() {
        if (probing) {
            suspended.clear();
            if (inFlight != null && inFlight.kind == K_PROBE) {
                suspended.add(inFlight.text);
            }
            for (Cmd c : queue) {
                if (c.kind == K_PROBE) {
                    suspended.add(c.text);
                }
            }
            probing = false;
        }
        queue.clear();
        inFlight = null;
        running = false;
        mod = null;
        ev.onChanged(this);
    }

    /** True while an exploration waits for the unit to come back. */
    public boolean probeSuspended() {
        return !suspended.isEmpty();
    }

    public static String hhmmss(int s) {
        int h = s / 3600, m = (s / 60) % 60, x = s % 60;
        return two(h) + two(m) + two(x);
    }

    static String two(int v) {
        return v < 10 ? "0" + v : String.valueOf(v);
    }

    void plain(String t) {
        queue.add(new Cmd(t, K_PLAIN));
        pump();
    }

    // ================================================================== the wire

    void pump() {
        if (closed || inFlight != null || queue.isEmpty()) {
            return;
        }
        long now = io.now();
        if (now < nextAt) {
            if (!pumpPosted) {
                pumpPosted = true;
                io.later(new Pump(this), nextAt - now);
            }
            return;
        }
        Cmd c = queue.remove(0);
        c.sentAt = now;
        inFlight = c;
        sentCount++;
        ev.onLine(this, true, c.text);
        io.send((c.text + "\r\n").getBytes());
        io.later(new Timeout(this, ++token), c.kind == K_PROBE ? PROBE_REPLY_MS : REPLY_MS);
    }

    /** Bytes from the notify characteristic: lines end in CR and/or LF. */
    public void onBytes(byte[] data) {
        if (data == null || closed) {
            return;
        }
        for (byte b : data) {
            char ch = (char) (b & 0xFF);
            if (ch == '\r' || ch == '\n') {
                if (rx.length() > 0) {
                    String line = rx.toString().trim();
                    rx.setLength(0);
                    if (line.length() > 0) {
                        onLineIn(line);
                    }
                }
            } else if (rx.length() < 512) {
                rx.append(ch);
            }
        }
    }

    void onLineIn(String line) {
        recvCount++;
        ev.onLine(this, false, line);
        boolean end = false;
        boolean answered = false;
        String up = line.toUpperCase();
        if (up.contains("ERROR")) {
            // "ERROR:104", "+CLOAD ERROR:104", "+CSTR ERROR:102" (102 = no load: pads off)
            if (line.indexOf("102") >= 0) {
                lostContact();
            }
            end = true;
        } else if (up.equals("OK")) {
            end = true;
        } else if (line.startsWith("+")) {
            int i = line.indexOf(':');
            String tag = (i > 0 ? line.substring(1, i) : line.substring(1)).trim().toUpperCase();
            String val = i > 0 ? line.substring(i + 1).trim() : "";
            if (val.equalsIgnoreCase("OK")) {
                end = true;                 // a set is confirmed as "+CSTR:OK"
            } else {
                apply(tag, val);
                answered = true;
            }
        } else if (line.equals("102")) {
            lostContact();
        }
        Cmd c = inFlight;
        // a "+TAG…" line about another command is the unit talking by itself (+CHEART every ~31 s, +CLOAD,
        // +QPOWD) — never the answer to what is in flight
        if (c != null && (!line.startsWith("+") || answers(c.text, line))) {
            if (c.reply.length() > 0) {
                c.reply.append(" | ");
            }
            c.reply.append(line);
            if (end) {
                finish(c, false);
            } else if (answered && c.text.endsWith("?")) {
                io.later(new Grace(this, c), GRACE_MS);   // its OK normally follows within ms
            }
        }
        ev.onChanged(this);
    }

    /** The name a command is about: "AT+CSTR=0,5" / "AT+CSTR?" / "AT+CSTR=?" → "CSTR". */
    static String nameOf(String cmd) {
        int p = cmd.indexOf('+');
        if (p < 0) {
            return "";
        }
        int e = p + 1;
        while (e < cmd.length() && cmd.charAt(e) != '=' && cmd.charAt(e) != '?') {
            e++;
        }
        return cmd.substring(p + 1, e).toUpperCase();
    }

    /** "AT+CSTR?" / "AT+CSTR=0,5" are answered by "+CSTR:…" / "+CSTR ERROR:…", nothing else. */
    static boolean answers(String cmd, String line) {
        String name = nameOf(cmd);
        if (name.length() == 0 || !line.toUpperCase().startsWith("+" + name)) {
            return false;
        }
        int after = name.length() + 1;
        return line.length() == after || line.charAt(after) == ':' || line.charAt(after) == ' ';
    }

    void finish(Cmd c, boolean timedOut) {
        if (c != inFlight) {
            return;
        }
        inFlight = null;
        token++;
        long rtt = io.now() - c.sentAt;
        if (!timedOut) {
            rttCount++;
            rttSum += rtt;
            rttMin = Math.min(rttMin, rtt);
            rttMax = Math.max(rttMax, rtt);
        }
        if (c.kind == K_PROBE) {
            probeAnswered(c, timedOut);
        }
        nextAt = io.now() + GAP_MS;
        pump();
    }

    void apply(String tag, String v) {
        tags.put(tag, v);
        long now = io.now();
        if (tag.equals("CSTR")) {
            int n = lastInt(v);
            if (n >= 0 && !queuedLevel()) {
                level = n;
            }
        } else if (tag.equals("CMODE")) {
            int n = lastInt(v);
            if (n >= 0) {
                mode = n;
            }
        } else if (tag.equals("CDCLK")) {
            int s = clock(v);
            if (s >= 0) {
                secLeft = s;
                secAt = now;
            }
        } else if (tag.equals("CBC")) {
            double volts = volts(v);
            if (volts > 0) {
                batteryV = volts;
                battery = (int) Math.round(Math.max(0, Math.min(100, (volts - 3.3) / (4.15 - 3.3) * 100)));
            } else if (lastInt(v) >= 0) {
                battery = lastInt(v);
            }
        } else if (tag.equals("CLOAD")) {
            if (lastInt(v) == 0) {
                lostContact();
            } else {
                contact = 1;
            }
        } else if (tag.equals("CLKEND")) {
            running = false;
            mod = null;
            secLeft = 0;
            secAt = now;
        } else if (tag.equals("QPOWD")) {
            offReason = lastInt(v);
            running = false;
            mod = null;
        } else if (tag.equals("CHEART")) {
            if (heartAt > 0) {
                heartMs = now - heartAt;
            }
            heartAt = now;
        }
    }

    void lostContact() {
        contact = 0;
        level = 0;
        mod = null;
    }

    boolean queuedLevel() {
        for (Cmd c : queue) {
            if (c.kind == K_LEVEL) {
                return true;
            }
        }
        return inFlight != null && inFlight.kind == K_LEVEL;
    }

    static int lastInt(String v) {
        if (v == null) {
            return -1;
        }
        int end = v.length();
        while (end > 0 && !Character.isDigit(v.charAt(end - 1))) {
            end--;
        }
        int start = end;
        while (start > 0 && Character.isDigit(v.charAt(start - 1))) {
            start--;
        }
        if (start == end) {
            return -1;
        }
        try {
            return Integer.parseInt(v.substring(start, end));
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /** The last "d.dd" in a value ("0,3.73" → 3.73); 0 if there is none. */
    static double volts(String v) {
        int dot = v.lastIndexOf('.');
        if (dot <= 0) {
            return 0;
        }
        int a = dot, b = dot + 1;
        while (a > 0 && Character.isDigit(v.charAt(a - 1))) {
            a--;
        }
        while (b < v.length() && Character.isDigit(v.charAt(b))) {
            b++;
        }
        try {
            return Double.parseDouble(v.substring(a, b));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /** "HHMMSS" (or "HH:MM:SS") → seconds. */
    static int clock(String v) {
        StringBuilder d = new StringBuilder();
        for (int i = 0; i < v.length(); i++) {
            if (Character.isDigit(v.charAt(i))) {
                d.append(v.charAt(i));
            }
        }
        if (d.length() < 6) {
            return lastInt(v);
        }
        String s = d.substring(d.length() - 6);
        return Integer.parseInt(s.substring(0, 2)) * 3600 + Integer.parseInt(s.substring(2, 4)) * 60
                + Integer.parseInt(s.substring(4, 6));
    }

    // ================================================================== modulation

    /** The strength drawn over time between {@link #lo} and {@link #hi}. */
    public static final class Mod {
        public static final int WAVE = 0, PULSE = 1, RAMP = 2, TRIANGLE = 3, RANDOM = 4;
        public int shape = WAVE;
        public int lo = 2, hi = 8;
        /** One cycle, ms. */
        public int periodMs = 4000;
        /** PULSE: share of the cycle at {@code hi}, %. */
        public int duty = 50;
        /** How often the strength is refreshed, ms (≥ 100: the unit's pace). */
        public int stepMs = 200;

        public Mod copy() {
            Mod m = new Mod();
            m.shape = shape;
            m.lo = lo;
            m.hi = hi;
            m.periodMs = periodMs;
            m.duty = duty;
            m.stepMs = stepMs;
            return m;
        }

        public void safe() {
            lo = Math.max(0, Math.min(MAX_LEVEL, lo));
            hi = Math.max(lo, Math.min(MAX_LEVEL, hi));
            periodMs = Math.max(200, Math.min(120000, periodMs));
            duty = Math.max(5, Math.min(95, duty));
            stepMs = Math.max(100, Math.min(2000, stepMs));
        }

        public String encode() {
            return shape + "," + lo + "," + hi + "," + periodMs + "," + duty + "," + stepMs;
        }

        public static Mod decode(String s) {
            Mod m = new Mod();
            try {
                String[] p = s.split(",");
                m.shape = Integer.parseInt(p[0]);
                m.lo = Integer.parseInt(p[1]);
                m.hi = Integer.parseInt(p[2]);
                m.periodMs = Integer.parseInt(p[3]);
                m.duty = Integer.parseInt(p[4]);
                m.stepMs = Integer.parseInt(p[5]);
            } catch (Throwable ignored) {
                m = new Mod();
            }
            m.safe();
            return m;
        }
    }

    /** The envelope at {@code t} ms from its start — also drawn on the page. */
    public static int envelope(Mod m, long t) {
        int span = m.hi - m.lo;
        double ph = (t % m.periodMs) / (double) m.periodMs;
        double f;
        switch (m.shape) {
            case Mod.PULSE:
                f = ph * 100 < m.duty ? 1 : 0;
                break;
            case Mod.RAMP:
                f = ph;
                break;
            case Mod.TRIANGLE:
                f = ph < 0.5 ? ph * 2 : 2 - ph * 2;
                break;
            case Mod.RANDOM: {
                long beat = t / Math.max(1, m.periodMs / 4);
                long x = (beat + 1) * 0x9E3779B97F4A7C15L;
                x ^= (x >>> 31);
                x *= 0xBF58476D1CE4E5B9L;
                x ^= (x >>> 29);
                f = ((x >>> 11) & 0xFFFF) / 65535.0;
                break;
            }
            default:
                f = 0.5 - 0.5 * Math.cos(2 * Math.PI * ph);
                break;
        }
        return m.lo + (int) Math.round(span * f);
    }

    Mod mod;
    long modStart;
    int modToken;

    public Mod mod() {
        return mod;
    }

    /** Starts (or replaces) the modulation; it only drives the strength while the unit runs and the pads touch. */
    public void modulate(Mod m) {
        if (m == null) {
            mod = null;
            ev.onChanged(this);
            return;
        }
        m.safe();
        boolean fresh = mod == null;
        mod = m;
        if (fresh) {
            modStart = io.now();
        }
        int t = ++modToken;
        io.later(new ModTick(this, t), 0);
        ev.onChanged(this);
    }

    /** ms into the current modulation (for the moving dot on the page); -1 = none. */
    public long modElapsed() {
        return mod == null ? -1 : io.now() - modStart;
    }

    void modTick(int t) {
        Mod m = mod;
        if (closed || m == null || t != modToken) {
            return;
        }
        if (running && contact != 0) {
            int target = envelope(m, io.now() - modStart);
            int cur = Math.max(0, level);
            if (target > cur + MAX_RISE) {
                target = cur + MAX_RISE;
            }
            if (target != level) {
                setLevel(target);
            }
        }
        io.later(new ModTick(this, t), m.stepMs);
    }

    // ================================================================== exploration

    public boolean probing;
    /** The sweep in progress (or the last one) wrote "=0,v" instead of asking "?". */
    public boolean probeWrites;
    public int probeDone, probeTotal;
    /** {command, answer} of every command that did not say ERROR. */
    public final List<String[]> hits = new ArrayList<String[]>();
    /** Commands that stayed silent (no answer within {@link #PROBE_REPLY_MS}). */
    public final List<String> silent = new ArrayList<String>();
    /** Commands the unit refused (ERROR:104 and the like). */
    public final List<String> refused = new ArrayList<String>();
    /** What an exploration still had to send when the link dropped. */
    final List<String> suspended = new ArrayList<String>();

    /** Parameter names to try, each behind the prefixes C, Q, W, S, G, R and none. */
    static final String[] STEMS = {"FRQ", "FREQ", "FRE", "HZ", "PW", "PWM", "PWD", "WID", "WIDTH", "WAV", "WAVE",
        "PLS", "PULSE", "AMP", "VOL", "CUR", "CURR", "VOLT", "IMP", "RES", "TMP", "TEMP", "RAMP", "RISE", "FALL", "ON",
        "OFF", "ONT", "OFFT", "DUTY", "TIM", "TIME", "SDT", "SET", "CFG", "PARA", "PAR", "PRM", "LEV", "LEVL",
        "MAX", "MIN", "BAT", "VER", "SN", "ID", "DBG", "DEBUG", "TEST", "CAL", "ADC", "DAC", "BST", "BOOST", "HV",
        "GEAR", "PRG", "PROG", "MOD", "MODE", "CH", "CHN", "STR", "POW", "POWP", "POWS", "POWD", "LOAD", "HEART",
        "DCLK", "CLK", "BC", "SLP", "SLEEP", "LED", "KEY", "BEEP", "MOT", "VIB", "OTA", "RST", "STA", "STAT",
        "STATE", "ERR"};

    /** The candidates: what the vendor app sends (with "=?" for its ranges), then the usual AT names. */
    public static List<String> candidates() {
        List<String> out = new ArrayList<String>();
        String[] basic = {"AT", "ATI", "AT+GMR", "AT+GMM", "AT+GMI", "AT+CGMR", "AT+CGMM", "AT+HELP", "AT+HELP?",
            "AT+?", "AT+VER?", "AT+VERSION?", "AT+NAME?", "AT+ADDR?", "AT+MAC?", "AT+LADDR?", "AT+SN?", "AT+ID?",
            "AT+TYPE?", "AT+MODEL?", "AT+BAUD?", "AT+INFO?", "AT+FW?", "AT+HW?"};
        for (String s : basic) {
            out.add(s);
        }
        String[] known = {"CSTR", "CMODE", "CDCLK", "QPOWP", "QPOWS", "QPOWD", "CBC", "WSDT", "CHANNEL", "CLOAD",
            "CHEART", "CLKEND"};
        for (String k : known) {
            add(out, "AT+" + k + "?");
            add(out, "AT+" + k + "=?");
        }

        String[] pre = {"C", "Q", "W", "S", "G", "R", ""};
        for (String p : pre) {
            for (String s : STEMS) {
                add(out, "AT+" + p + s + "?");
            }
        }
        return out;
    }

    static void add(List<String> out, String s) {
        if (!out.contains(s)) {
            out.add(s);
        }
    }

    /**
     * Names a write sweep never sends: the ones that start, set or switch off the output, and the firmware matches by
     * prefix ("AT+QPOWS?" started the output), so anything beginning with them too; and reset / OTA / calibration.
     */
    static final String[] NO_WRITE = {"CSTR", "CMODE", "CDCLK", "QPOWS", "QPOWP", "QPOWD", "CBC", "CLOAD", "CHEART",
        "CLKEND"};
    static final String[] NO_WRITE_STEM = {"RST", "OTA", "CAL"};

    /**
     * The write sweep: "AT+&lt;name&gt;=0,&lt;v&gt;" for every name the read sweep tried. The unit answers an unknown
     * write with ERROR:104 at once (seen 2026-10-27) — so anything else (+X:OK, another error, silence) is a name it
     * knows. Values: 50 for a frequency, 200 for a width, 1 otherwise.
     */
    public static List<String> writeCandidates() {
        List<String> out = new ArrayList<String>();
        add(out, "AT+WSDT=0,10");
        add(out, "AT+CHANNEL=0,1");
        String[] pre = {"C", "Q", "W", "S", "G", "R", ""};
        for (String p : pre) {
            for (String s : STEMS) {
                String name = p + s;
                if (blocked(name)) {
                    continue;
                }
                String v = s.startsWith("FR") || s.equals("HZ") ? "50"
                        : s.startsWith("PW") || s.startsWith("WID") ? "200" : "1";
                add(out, "AT+" + name + "=0," + v);
            }
        }
        return out;
    }

    static boolean blocked(String name) {
        for (String k : NO_WRITE) {
            if (name.startsWith(k)) {
                return true;
            }
        }
        for (String k : NO_WRITE_STEM) {
            if (name.contains(k)) {           // "RSTA" might reach RST on a prefix-matching firmware
                return true;
            }
        }
        return false;
    }

    /** Read sweep ("?", "=?"). */
    public void probe() {
        probe(false);
    }

    /**
     * Sweep the candidates ({@code writes}: the write sweep): strength 0 and output paused first, paused (and
     * strength 0 for writes) again after every command that answered.
     */
    public void probe(boolean writes) {
        if (probing) {
            return;
        }
        probeWrites = writes;
        mod = null;
        hits.clear();
        silent.clear();
        refused.clear();
        suspended.clear();
        List<String> c = writes ? writeCandidates() : candidates();
        probing = true;
        probeDone = 0;
        probeTotal = c.size();
        running = false;
        level = 0;
        queue.add(new Cmd("AT+CSTR=0,0", K_LEVEL));
        queue.add(new Cmd("AT+QPOWP", K_PAUSE));
        for (String s : c) {
            queue.add(new Cmd(s, K_PROBE));
        }
        pump();
        ev.onProbe(this, 0, probeTotal, null);
    }

    public void probeStop() {
        suspended.clear();
        List<Cmd> keep = new ArrayList<Cmd>();
        for (Cmd c : queue) {
            if (c.kind != K_PROBE) {
                keep.add(c);
            }
        }
        queue.clear();
        queue.addAll(keep);
        endProbe();
    }

    void probeAnswered(Cmd c, boolean timedOut) {
        if (!probing) {
            return;
        }
        probeDone++;
        String r = c.reply.toString();
        String[] hit = null;
        boolean unknown = probeWrites ? r.indexOf("104") >= 0 && r.toUpperCase().contains("ERROR")
                : r.toUpperCase().contains("ERROR");
        if (timedOut && r.length() == 0) {
            silent.add(c.text);
        } else if (unknown) {
            refused.add(c.text + " " + r);
        } else {
            // a write the unit took (+X:OK) or knew but refused (another error) — either way the name exists
            hit = new String[] {c.text, r.length() > 0 ? r : "(—)"};
            hits.add(hit);
            if (probeWrites) {
                queue.add(0, new Cmd("AT+CSTR=0,0", K_LEVEL));
                level = 0;
            }
            queue.add(0, new Cmd("AT+QPOWP", K_PAUSE));   // whatever it did, nothing runs
        }
        ev.onProbe(this, probeDone, probeTotal, hit);
        boolean more = false;
        for (Cmd q : queue) {
            if (q.kind == K_PROBE) {
                more = true;
                break;
            }
        }
        if (!more) {
            endProbe();
        }
    }

    void endProbe() {
        if (!probing) {
            return;
        }
        probing = false;
        queue.add(new Cmd("AT+QPOWP", K_PAUSE));
        queue.add(new Cmd("AT+CSTR=0,0", K_LEVEL));
        level = 0;
        pump();
        ev.onProbe(this, probeDone, probeTotal, null);
    }

    /** Everything known, as plain text (copied to the clipboard for analysis). */
    public String report() {
        StringBuilder b = new StringBuilder();
        b.append("MASTOGO H-024B · XEMS\n");
        b.append("mode ").append(mode).append(" · level ").append(level).append(" · running ").append(running)
                .append(" · left ").append(secondsLeft()).append(" s · battery ").append(battery).append("% ")
                .append(batteryV).append(" V")
                .append(" · contact ").append(contact).append(" · off ").append(offReason).append('\n');
        b.append("sent ").append(sentCount).append(" · received ").append(recvCount);
        if (rttCount > 0) {
            b.append(" · reply ").append(rttMin).append('–').append(rttMax).append(" ms (avg ")
                    .append(rttSum / rttCount).append(')');
        }
        if (heartMs > 0) {
            b.append(" · heartbeat ").append(heartMs).append(" ms");
        }
        b.append("\n\nfeedback:\n");
        for (Map.Entry<String, String> e : tags.entrySet()) {
            b.append("  +").append(e.getKey()).append(": ").append(e.getValue()).append('\n');
        }
        b.append(probeWrites ? "\nwrite exploration " : "\nexploration ").append(probeDone).append('/')
                .append(probeTotal).append(probeWrites ? ", not ERROR:104:\n" : ", answered:\n");
        for (String[] h : hits) {
            b.append("  ").append(h[0]).append(" → ").append(h[1]).append('\n');
        }
        if (probeWrites) {
            b.append("ERROR:104 (unknown): ").append(refused.size()).append('\n');
        } else if (!refused.isEmpty()) {
            b.append("refused: ").append(refused).append('\n');
        }
        if (!silent.isEmpty()) {
            b.append("silent: ").append(silent.size()).append(" (no answer)");
            if (probeWrites) {
                b.append(' ').append(silent);   // a write normally gets 104 at once: each of these is suspicious
            }
            b.append('\n');
        }
        return b.toString();
    }

    // ================================================================== named runnables (dx: no anonymous classes)

    static final class Pump implements Runnable {
        final MastogoShell sh;

        Pump(MastogoShell sh) {
            this.sh = sh;
        }

        @Override
        public void run() {
            sh.pumpPosted = false;
            sh.pump();
        }
    }

    static final class Timeout implements Runnable {
        final MastogoShell sh;
        final int token;

        Timeout(MastogoShell sh, int token) {
            this.sh = sh;
            this.token = token;
        }

        @Override
        public void run() {
            if (sh.inFlight != null && sh.token == token) {
                sh.finish(sh.inFlight, true);
            }
        }
    }

    static final class Grace implements Runnable {
        final MastogoShell sh;
        final Cmd c;

        Grace(MastogoShell sh, Cmd c) {
            this.sh = sh;
            this.c = c;
        }

        @Override
        public void run() {
            sh.finish(c, false);
        }
    }

    static final class Poll implements Runnable {
        final MastogoShell sh;

        Poll(MastogoShell sh) {
            this.sh = sh;
        }

        @Override
        public void run() {
            if (sh.closed) {
                return;
            }
            if (!sh.probing) {
                sh.plain("AT+CBC?");
                if (sh.running) {
                    sh.plain("AT+CDCLK?");
                }
            }
            sh.io.later(this, POLL_MS);
        }
    }

    static final class ModTick implements Runnable {
        final MastogoShell sh;
        final int token;

        ModTick(MastogoShell sh, int token) {
            this.sh = sh;
            this.token = token;
        }

        @Override
        public void run() {
            sh.modTick(token);
        }
    }
}
