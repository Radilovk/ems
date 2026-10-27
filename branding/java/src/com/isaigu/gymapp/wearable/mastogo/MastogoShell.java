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
 * with the strength at 0 and the output paused before and after every answer;</li>
 * <li>write exploration — the same for set-only commands ({@code AT+CFRQ=0,50}): the unit answers a name it does
 * not know with a bare {@code ERROR:104} at once, so anything else (OK, a tagged error, silence) is a name it
 * knows.</li>
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
    /** Programs 0–25: DOMAS ("Hawk TENS 1S") sends all 26; PNrelief listed only 25. See {@link MastogoModes}. */
    public static final int MODES = MastogoModes.COUNT;
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

    /**
     * ▶ straight at a preset strength (owner, 2026-10-27: "with a preset strength it must start sharply"): the
     * strength first, then run, then the same strength again in case the unit ignored it while paused — at worst
     * one step ~0.1 s after the start, never a crawl from 1.
     */
    public void start(int seconds, int at) {
        hitArmed = -1;
        if (at <= 1) {
            start(seconds);
            return;
        }
        at = Math.min(MAX_LEVEL, at);
        offReason = -1;
        outOff = false;
        plain("AT+CSTR=0," + at);
        plain("AT+QPOWS");
        plain("AT+CSTR=0," + at);
        level = at;
        setTimer(seconds);
        running = true;
        ev.onChanged(this);
    }

    // ================================================================== a hit (owner, 2026-10-27: "a sharp hit, as
    // sharp as possible — the idea is VR, a hit in the game")

    /**
     * Ways to make a hit, to be felt and compared on the unit (which one the firmware does not soften is unknown):
     * GATE = output paused with the strength preset, hit = run … pause; LEVEL = output running at 0, hit = strength
     * … 0; SINGLE = GATE on DOMAS "Toning" (1.6 Hz) for 150 ms — exactly one of its pulses.
     */
    public static final int HIT_GATE = 0, HIT_LEVEL = 1, HIT_SINGLE = 2;
    public static final int SINGLE_MS = 150;
    /** The way the unit is armed for, -1 = not armed. */
    public int hitArmed = -1;
    public int hitLevel;
    /**
     * LEVEL way: the strength the output idles at and returns to after a hit (the panel's pause strength). The unit
     * glides every strength change, so a hit from a higher base reaches its top sooner and feels stronger (owner,
     * 2026-10-27: the strength way on "Butterfly" at 40 ms feels most like a hit, "but it must be stronger").
     */
    public int hitBase;
    public int hitCount;

    /** Gets the unit ready for hits (through the queue): the carrier, the timer, run / pause, the strength. */
    public void armHit(int way, int carrier, int lvl, int seconds) {
        armHit(way, carrier, lvl, 0, seconds);
    }

    public void armHit(int way, int carrier, int lvl, int base, int seconds) {
        base = Math.max(0, Math.min(lvl - 1, base));
        mod = null;
        lvl = Math.max(1, Math.min(MAX_LEVEL, lvl));
        if (mode != carrier) {
            plain("AT+CMODE=0," + carrier);        // pauses and zeroes the strength
            mode = carrier;
        }
        plain("AT+QPOWS");
        int idle = way == HIT_LEVEL ? base : 0;
        queue.add(new Cmd("AT+CSTR=0," + idle, K_LEVEL));
        level = idle;
        hitBase = idle;
        outOff = false;
        if (way != HIT_LEVEL) {
            queue.add(new Cmd("AT+QPOWP", K_PAUSE));
            queue.add(new Cmd("AT+CSTR=0," + lvl, K_LEVEL));
            level = lvl;
            outOff = true;
        }
        if (!running || secondsLeft() <= 0) {
            setTimer(seconds);
        }
        running = true;
        hitArmed = way;
        hitLevel = lvl;
        hitAt = io.now();
        pressing = false;
        pressSent = false;
        pump();
        ev.onChanged(this);
    }

    /** LEVEL way: a new idle strength, set at once. */
    public void setHitBase(int base) {
        if (hitArmed == HIT_LEVEL) {
            hitBase = Math.max(0, Math.min(hitLevel - 1, base));
            setLevel(hitBase);
        }
    }

    /** A new strength for the next hits (preset while paused, or kept for the LEVEL way). */
    public void setHitLevel(int lvl) {
        hitLevel = Math.max(1, Math.min(MAX_LEVEL, lvl));
        if (hitArmed == HIT_GATE || hitArmed == HIT_SINGLE) {
            setLevel(hitLevel);
        }
    }

    /**
     * One hit of {@code ms}: written straight to the link, past the command queue (no 100 ms gap, no waiting for a
     * reply) — the only way to get a start and an end ~1 BLE interval apart. Waits while the arming is still queued.
     */
    public void hit(int ms) {
        if (hitArmed < 0 || closed) {
            return;
        }
        if (inFlight != null || !queue.isEmpty()) {
            io.later(new HitLater(this, ms), 150);
            return;
        }
        hitCount++;
        hitAt = io.now();
        if (hitArmed == HIT_LEVEL) {
            direct("AT+CSTR=0," + hitLevel);
            io.later(new Direct(this, "AT+CSTR=0," + hitBase), Math.max(10, ms));
        } else {
            direct("AT+QPOWS");
            direct("AT+CSTR=0," + hitLevel);       // in case a strength set while paused is not kept
            io.later(new Direct(this, "AT+QPOWP"), hitArmed == HIT_SINGLE ? SINGLE_MS : Math.max(10, ms));
        }
        ev.onChanged(this);
    }

    /** When the last hit / press went out (the keep-alive leaves an active user alone). */
    long hitAt;
    /** A held press (squeeze): wanted, and its strength sent. */
    boolean pressing, pressSent;

    /**
     * A hit that lasts as long as the finger is down (owner: "squeeze — the length of the event"): down = the hit
     * strength straight to the link, up = back to the base. Waits while the arming is still queued; a release
     * before that cancels it.
     */
    public void press(boolean down) {
        if (hitArmed != HIT_LEVEL || closed) {
            return;
        }
        if (down) {
            pressing = true;
            if (inFlight != null || !queue.isEmpty()) {
                io.later(new PressLater(this), 100);
                return;
            }
            pressSent = true;
            hitCount++;
            hitAt = io.now();
            direct("AT+CSTR=0," + hitLevel);
        } else {
            pressing = false;
            if (pressSent) {
                pressSent = false;
                hitAt = io.now();
                direct("AT+CSTR=0," + hitBase);
            }
        }
        ev.onChanged(this);
    }

    static final class PressLater implements Runnable {
        final MastogoShell sh;

        PressLater(MastogoShell sh) {
            this.sh = sh;
        }

        @Override
        public void run() {
            if (sh.pressing && !sh.pressSent) {
                sh.press(true);
            }
        }
    }

    /** No output for a few minutes and the unit switches itself off (+QPOWD:0, seen 2026-10-27). */
    static final long KEEP_ALIVE_MS = 60000;

    /**
     * While armed for hits: the unit's own timer kept far from its end, and — when the output idles at strength 0 —
     * one barely felt level-1 blip a minute with no hit, so the unit never counts itself idle (owner, 2026-10-27:
     * "it switches itself off — that is a problem!"). Commands alone do not keep it on (the paused exploration still
     * powered off).
     */
    void keepAlive() {
        if (!running && hitArmed < 0 || probing || closed) {
            return;
        }
        // no auto stop (owner, 2026-10-27: "I don't want it to stop by itself"): ■ is the only end
        int left = secondsLeft();
        if (left >= 0 && left < 600) {
            setTimer(3600);
        }
        long now = io.now();
        if (!outOff && !pressing && now - Math.max(hitAt, aliveAt) >= KEEP_ALIVE_MS) {
            hitAt = now;
            direct("AT+CSTR=0,1");
            io.later(new Direct(this, "AT+CSTR=0," + Math.max(0, level)), 150);
        }
    }

    /** When a strength above 0 last went out (the unit counts no output as idle). */
    long aliveAt;

    void direct(String t) {
        if (closed) {
            return;
        }
        sentCount++;
        ev.onLine(this, true, t + " ⚡");
        io.send((t + "\r\n").getBytes());
    }

    static final class Direct implements Runnable {
        final MastogoShell sh;
        final String t;

        Direct(MastogoShell sh, String t) {
            this.sh = sh;
            this.t = t;
        }

        @Override
        public void run() {
            sh.direct(t);
        }
    }

    static final class HitLater implements Runnable {
        final MastogoShell sh;
        final int ms;

        HitLater(MastogoShell sh, int ms) {
            this.sh = sh;
            this.ms = ms;
        }

        @Override
        public void run() {
            sh.hit(ms);
        }
    }

    /** ▶ — the vendor's sequence: run, strength 1, run, timer. Strength always starts at 1. */
    public void start(int seconds) {
        hitArmed = -1;
        offReason = -1;
        outOff = false;
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
        hitArmed = -1;
        outOff = false;
        queue.add(new Cmd("AT+QPOWP", K_PAUSE));
        running = false;
        pump();
        ev.onChanged(this);
    }

    /**
     * Strength 0–25; a change not yet sent is replaced, never queued twice. Only the last queued command is replaced:
     * a strength waiting before a pause / run must keep its place (a gated pause presets the next impulse's strength
     * after its {@code AT+QPOWP} — merged into an earlier one it would spike the impulse's end).
     */
    public void setLevel(int n) {
        n = Math.max(0, Math.min(MAX_LEVEL, n));
        level = n;
        if (n > 0) {
            aliveAt = io.now();
        }
        String t = "AT+CSTR=0," + n;
        if (!queue.isEmpty() && queue.get(queue.size() - 1).kind == K_LEVEL) {
            queue.get(queue.size() - 1).text = t;
            ev.onChanged(this);
            return;
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

    /**
     * Another module while running (the modulation's frequency change): the unit pauses and zeroes the strength on
     * a program change, so run again at once and keep the time left; the modulation climbs back from 0.
     */
    void switchMode(int id) {
        switchMode(id, true);
    }

    /** {@code run}: start the output again after the change (false = a gated pause: it stays off). */
    void switchMode(int id, boolean run) {
        int left = secondsLeft();
        for (int i = queue.size() - 1; i >= 0; i--) {
            if (queue.get(i).kind == K_LEVEL) {
                queue.remove(i);                // a strength sent before the change would be zeroed by it
            }
        }
        mode = id;
        level = 0;
        plain("AT+CMODE=0," + id);
        if (run) {
            plain("AT+QPOWS");
        }
        outOff = !run;
        if (left > 0) {
            setTimer(left);
        }
        switches++;
    }

    /** Module changes made by the modulation (shown, and checked by the offline test). */
    public int switches;

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

    /**
     * The strength drawn over time between {@link #lo} and {@link #hi}. {@link #WORK} is the EMS impulse the owner
     * times himself (owner, 2026-10-27): rise, work, fall, pause. {@link #rotate} changes the module (= the frequency,
     * built into each program) at the start of every pause — the only moment a program change costs nothing.
     */
    public static final class Mod {
        public static final int WAVE = 0, PULSE = 1, RAMP = 2, TRIANGLE = 3, RANDOM = 4, WORK = 5, STEPS = 6;
        /** Most steps a cycle holds. */
        public static final int MAX_STEPS = 12;
        public int shape = WORK;
        public int lo = 2, hi = 8;
        /** One cycle, ms. */
        public int periodMs = 4000;
        /** PULSE: share of the cycle at {@code hi}, %. */
        public int duty = 50;
        /** How often the strength is refreshed, ms (≥ 100: the unit's pace). */
        public int stepMs = 200;
        /** WORK: rise, work, fall, pause, ms. */
        public int upMs = 1000, onMs = 4000, downMs = 500, offMs = 4000;
        /** Modules taken in turn (program ids); fewer than 2 = the module stays. */
        public int[] rotate = new int[0];
        /** Cycles on one module before the next. */
        public int every = 1;
        /** WORK: the carrier (module) to run; changed live, it comes in at the next pause. -1 = leave it. */
        public int carrier = -1;
        /**
         * The pause switches the output off ({@code AT+QPOWP}) and the impulse on ({@code AT+QPOWS}) when the pause
         * strength is 0: a sharp start and stop instead of the unit gliding its strength (owner, 2026-10-27: "the ramps
         * must be ours"). The next impulse's strength is preset during the pause.
         */
        public boolean gate;
        /**
         * Beats a second ×10 (0 = off): a simulated low frequency — inside the impulse the output is let through
         * for {@link #BEAT_GATE_MS} once per beat, so one pulse of a slow carrier (DOMAS "Toning", 1.6 Hz) passes.
         */
        public int beatTenths;
        public static final int BEAT_GATE_MS = 200;
        /** STEPS: the owner's own cycle, step after step, then from the start (owner, 2026-10-27). */
        public final List<Step> steps = new ArrayList<Step>();

        public Mod copy() {
            Mod m = new Mod();
            m.shape = shape;
            m.lo = lo;
            m.hi = hi;
            m.periodMs = periodMs;
            m.duty = duty;
            m.stepMs = stepMs;
            m.upMs = upMs;
            m.onMs = onMs;
            m.downMs = downMs;
            m.offMs = offMs;
            m.rotate = rotate.clone();
            m.every = every;
            m.carrier = carrier;
            m.gate = gate;
            m.beatTenths = beatTenths;
            for (Step st : steps) {
                m.steps.add(st.copy());
            }
            return m;
        }

        public void safe() {
            lo = Math.max(0, Math.min(MAX_LEVEL, lo));
            hi = Math.max(lo, Math.min(MAX_LEVEL, hi));
            periodMs = Math.max(200, Math.min(120000, periodMs));
            duty = Math.max(5, Math.min(95, duty));
            stepMs = Math.max(100, Math.min(2000, stepMs));
            upMs = Math.max(0, Math.min(10000, upMs));
            downMs = Math.max(0, Math.min(10000, downMs));
            onMs = Math.max(500, Math.min(60000, onMs));
            offMs = Math.max(0, Math.min(60000, offMs));
            every = Math.max(1, Math.min(20, every));
            beatTenths = Math.max(0, Math.min(40, beatTenths));
            if (shape == WORK) {
                periodMs = Math.max(200, upMs + onMs + downMs + offMs);
            }
            while (steps.size() > MAX_STEPS) {
                steps.remove(steps.size() - 1);
            }
            if (steps.isEmpty()) {
                steps.add(new Step());
            }
            int n = steps.size();
            long total = 0;
            for (int i = 0; i < n; i++) {
                Step st = steps.get(i);
                st.safe();
                // the next step's carrier comes in during this pause: the unit needs ~0.3–0.5 s for it
                if (steps.get((i + 1) % n).mode != st.mode && st.offMs < Step.SWITCH_MS) {
                    st.offMs = Step.SWITCH_MS;
                }
                total += (long) st.cycleMs() * st.reps;
            }
            if (shape == STEPS) {
                periodMs = (int) Math.max(200, Math.min(Integer.MAX_VALUE, total));
            }
        }

        /** STEPS: {step index, ms into its cycle, repetition} at {@code t}. */
        int[] stepAt(long t) {
            long c = t % Math.max(1, periodMs);
            for (int i = 0; i < steps.size(); i++) {
                Step st = steps.get(i);
                long len = (long) st.cycleMs() * st.reps;
                if (c < len) {
                    return new int[] {i, (int) (c % st.cycleMs()), (int) (c / st.cycleMs())};
                }
                c -= len;
            }
            return new int[] {steps.size() - 1, 0, 0};
        }

        /**
         * The module that should run at {@code t}, -1 = leave it. STEPS: the step's carrier, and in the pause of its
         * last repetition already the next step's. Otherwise the rotation ({@link #rotate}).
         */
        public int moduleFor(long t) {
            if (shape == STEPS) {
                int[] at = stepAt(t);
                Step st = steps.get(at[0]);
                if (at[2] == st.reps - 1 && at[1] >= st.upMs + st.onMs + st.downMs) {
                    return steps.get((at[0] + 1) % steps.size()).mode;
                }
                return st.mode;
            }
            if (shape == WORK && rotate.length < 2 && carrier >= 0) {
                boolean pause = t % periodMs >= upMs + onMs + downMs;
                return pause || offMs < Step.SWITCH_MS ? carrier : -1;
            }
            return moduleAt(segmentAt(t));
        }

        /** ms into a cycle where the module changes: the start of the pause (WORK), the cycle's start otherwise. */
        public int switchAt() {
            return shape == WORK ? upMs + onMs + downMs : 0;
        }

        /** The module for cycle-segment {@code seg} (0 = from the start to the first switch); -1 = no rotation. */
        public int moduleAt(long seg) {
            if (rotate.length < 2) {
                return -1;
            }
            return rotate[(int) ((seg / every) % rotate.length)];
        }

        /** The segment at {@code t} ms: it moves on at every {@link #switchAt}. */
        public long segmentAt(long t) {
            int sw = switchAt();
            if (sw <= 0) {
                return t / periodMs;
            }
            return t < sw ? 0 : 1 + (t - sw) / periodMs;
        }

        public String encode() {
            StringBuilder r = new StringBuilder();
            for (int id : rotate) {
                if (r.length() > 0) {
                    r.append(';');
                }
                r.append(id);
            }
            StringBuilder q = new StringBuilder();
            for (Step st : steps) {
                if (q.length() > 0) {
                    q.append(';');
                }
                q.append(st.encode());
            }
            return shape + "," + lo + "," + hi + "," + periodMs + "," + duty + "," + stepMs + "," + upMs + ","
                    + onMs + "," + downMs + "," + offMs + "," + every + "," + r + "," + q + "," + carrier + ","
                    + (gate ? 1 : 0) + "," + beatTenths;
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
                if (p.length > 10) {
                    m.upMs = Integer.parseInt(p[6]);
                    m.onMs = Integer.parseInt(p[7]);
                    m.downMs = Integer.parseInt(p[8]);
                    m.offMs = Integer.parseInt(p[9]);
                    m.every = Integer.parseInt(p[10]);
                }
                if (p.length > 11 && p[11].length() > 0) {
                    String[] ids = p[11].split(";");
                    m.rotate = new int[ids.length];
                    for (int i = 0; i < ids.length; i++) {
                        m.rotate[i] = Math.max(0, Math.min(MODES - 1, Integer.parseInt(ids[i])));
                    }
                }
                if (p.length > 12 && p[12].length() > 0) {
                    for (String one : p[12].split(";")) {
                        m.steps.add(Step.decode(one));
                    }
                }
                if (p.length > 13) {
                    m.carrier = Math.max(-1, Math.min(MODES - 1, Integer.parseInt(p[13])));
                }
                if (p.length > 15) {
                    m.gate = Integer.parseInt(p[14]) == 1;
                    m.beatTenths = Integer.parseInt(p[15]);
                }
            } catch (Throwable ignored) {
                m = new Mod();
            }
            m.safe();
            return m;
        }
    }

    /** One step of the owner's cycle: a carrier (module), the strength in work and pause, the times, how often. */
    public static final class Step {
        /** The shortest pause before another carrier: CMODE + run take ~0.3–0.5 s. */
        public static final int SWITCH_MS = 500;
        /** Steady carrier (DOMAS "Continuous", 77 Hz) by default. */
        public int mode = 18;
        public int lo = 0, hi = 8;
        public int upMs = 500, onMs = 3000, downMs = 300, offMs = 2000;
        public int reps = 3;

        public Step copy() {
            Step s = new Step();
            s.mode = mode;
            s.lo = lo;
            s.hi = hi;
            s.upMs = upMs;
            s.onMs = onMs;
            s.downMs = downMs;
            s.offMs = offMs;
            s.reps = reps;
            return s;
        }

        public void safe() {
            mode = Math.max(0, Math.min(MODES - 1, mode));
            lo = Math.max(0, Math.min(MAX_LEVEL, lo));
            hi = Math.max(lo, Math.min(MAX_LEVEL, hi));
            upMs = Math.max(0, Math.min(10000, upMs));
            onMs = Math.max(200, Math.min(60000, onMs));
            downMs = Math.max(0, Math.min(10000, downMs));
            offMs = Math.max(0, Math.min(60000, offMs));
            reps = Math.max(1, Math.min(99, reps));
        }

        public int cycleMs() {
            return Math.max(200, upMs + onMs + downMs + offMs);
        }

        String encode() {
            return mode + ":" + lo + ":" + hi + ":" + upMs + ":" + onMs + ":" + downMs + ":" + offMs + ":" + reps;
        }

        static Step decode(String s) {
            Step st = new Step();
            String[] p = s.split(":");
            st.mode = Integer.parseInt(p[0]);
            st.lo = Integer.parseInt(p[1]);
            st.hi = Integer.parseInt(p[2]);
            st.upMs = Integer.parseInt(p[3]);
            st.onMs = Integer.parseInt(p[4]);
            st.downMs = Integer.parseInt(p[5]);
            st.offMs = Integer.parseInt(p[6]);
            st.reps = Integer.parseInt(p[7]);
            st.safe();
            return st;
        }
    }

    public static final int RISE = 0, IMPULSE = 1, FALL = 2, PAUSE = 3;

    /**
     * Where a WORK or STEPS envelope is at {@code t}: {phase ({@link #RISE}…{@link #PAUSE}), ms into it, its length};
     * null for the other shapes (the live panel's phase box).
     */
    public static int[] phaseOf(Mod m, long t) {
        int up, on, down, off, c;
        if (m.shape == Mod.STEPS) {
            int[] at = m.stepAt(t);
            Step st = m.steps.get(at[0]);
            up = st.upMs;
            on = st.onMs;
            down = st.downMs;
            off = st.offMs;
            c = at[1];
        } else if (m.shape == Mod.WORK) {
            up = m.upMs;
            on = m.onMs;
            down = m.downMs;
            off = m.offMs;
            c = (int) (t % m.periodMs);
        } else {
            return null;
        }
        if (c < up) {
            return new int[] {RISE, c, up};
        } else if (c < up + on) {
            return new int[] {IMPULSE, c - up, on};
        } else if (c < up + on + down) {
            return new int[] {FALL, c - up - on, down};
        }
        return new int[] {PAUSE, c - up - on - down, off};
    }

    /** Rise / work / fall / pause at {@code c} ms into one cycle → 0…1. */
    static double trapezoid(long c, int up, int on, int down) {
        if (c < up) {
            return c / (double) up;
        } else if (c < up + on) {
            return 1;
        } else if (c < up + on + down) {
            return 1 - (c - up - on) / (double) Math.max(1, down);
        }
        return 0;
    }

    /** The envelope at {@code t} ms from its start — also drawn on the page. */
    public static int envelope(Mod m, long t) {
        int span = m.hi - m.lo;
        double ph = (t % m.periodMs) / (double) m.periodMs;
        double f;
        switch (m.shape) {
            case Mod.STEPS: {
                int[] at = m.stepAt(t);
                Step st = m.steps.get(at[0]);
                return st.lo + (int) Math.round((st.hi - st.lo) * trapezoid(at[1], st.upMs, st.onMs, st.downMs));
            }
            case Mod.WORK:
                f = trapezoid(t % m.periodMs, m.upMs, m.onMs, m.downMs);
                break;
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
        if (m != null) {
            hitArmed = -1;
        }
        if (m == null) {
            mod = null;
            if (outOff && running) {
                plain("AT+QPOWS");          // a gated pause must not outlive its modulation
            }
            outOff = false;
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

    /** The output is switched off by a gated pause (the session still runs). */
    public boolean outOff;

    static Step stepOf(Mod m, long t) {
        return m.shape == Mod.STEPS ? m.steps.get(m.stepAt(t)[0]) : null;
    }

    static int pauseLevel(Mod m, long t) {
        Step st = stepOf(m, t);
        return st != null ? st.lo : m.lo;
    }

    static int riseOf(Mod m, long t) {
        Step st = stepOf(m, t);
        return st != null ? st.upMs : m.upMs;
    }

    static int impulseOf(Mod m, long t) {
        Step st = stepOf(m, t);
        return st != null ? st.onMs : m.onMs;
    }

    /** The strength to hold ready in a gated pause: the next impulse's full one, or its rise's first step. */
    static int presetLevel(Mod m, long t) {
        long next = t + 1;
        int[] ph = phaseOf(m, t);
        if (ph != null) {
            next = t + (ph[2] - ph[1]) + 1;           // the first ms after this pause
        }
        Step st = stepOf(m, next);
        int up = st != null ? st.upMs : m.upMs;
        int lo = st != null ? st.lo : m.lo;
        int hi = st != null ? st.hi : m.hi;
        return up == 0 ? hi : Math.max(1, Math.min(hi, lo + 1));
    }

    void modTick(int t) {
        Mod m = mod;
        if (closed || m == null || t != modToken) {
            return;
        }
        if (running && contact != 0) {
            long el = io.now() - modStart;
            int target = envelope(m, el);
            boolean on = true;
            int[] ph = m.gate ? phaseOf(m, el) : null;
            if (ph != null) {
                if (ph[0] == PAUSE) {
                    if (pauseLevel(m, el) == 0) {
                        on = false;
                        target = presetLevel(m, el);    // the next impulse starts here, sharp
                    }
                } else if (m.beatTenths > 0) {
                    long beat = 10000L / m.beatTenths;
                    long into = ph[0] == RISE ? ph[1] : ph[0] == IMPULSE ? ph[1] + riseOf(m, el)
                            : ph[1] + riseOf(m, el) + impulseOf(m, el);
                    on = into % beat < Math.min(Mod.BEAT_GATE_MS, beat / 2);
                }
            }
            int want = m.moduleFor(el);
            if (want >= 0 && want != mode) {
                switchMode(want, on);
            }
            if (on && outOff) {
                plain("AT+QPOWS");
                outOff = false;
            } else if (!on && !outOff) {
                queue.add(new Cmd("AT+QPOWP", K_PAUSE));
                outOff = true;
                pump();
            }
            if (on) {
                int cur = Math.max(0, level);
                if (target > cur + MAX_RISE) {
                    target = cur + MAX_RISE;
                }
            }
            if (target != level) {
                setLevel(target);
            }
        }
        io.later(new ModTick(this, t), m.stepMs);
    }

    // ================================================================== exploration

    public boolean probing;
    /** The sweep running (or last run) sends values ({@link #writeCandidates}), not queries. */
    public boolean probeWrite;
    public int probeDone, probeTotal;
    /** {command, answer} of every command that did not say ERROR. */
    public final List<String[]> hits = new ArrayList<String[]>();
    /** Commands that stayed silent (no answer within {@link #PROBE_REPLY_MS}). */
    public final List<String> silent = new ArrayList<String>();
    /** Commands the unit refused (ERROR:104 and the like). */
    public final List<String> refused = new ArrayList<String>();
    /** What an exploration still had to send when the link dropped. */
    final List<String> suspended = new ArrayList<String>();

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
        String[] stems = {"FRQ", "FREQ", "FRE", "HZ", "PW", "PWM", "PWD", "WID", "WIDTH", "WAV", "WAVE", "PLS",
            "PULSE", "AMP", "VOL", "CUR", "CURR", "VOLT", "IMP", "RES", "TMP", "TEMP", "RAMP", "RISE", "FALL", "ON",
            "OFF", "ONT", "OFFT", "DUTY", "TIM", "TIME", "SDT", "SET", "CFG", "PARA", "PAR", "PRM", "LEV", "LEVL",
            "MAX", "MIN", "BAT", "VER", "SN", "ID", "DBG", "DEBUG", "TEST", "CAL", "ADC", "DAC", "BST", "BOOST", "HV",
            "GEAR", "PRG", "PROG", "MOD", "MODE", "CH", "CHN", "STR", "POW", "POWP", "POWS", "POWD", "LOAD", "HEART",
            "DCLK", "CLK", "BC", "SLP", "SLEEP", "LED", "KEY", "BEEP", "MOT", "VIB", "OTA", "RST", "STA", "STAT",
            "STATE", "ERR"};
        String[] pre = {"C", "Q", "W", "S", "G", "R", ""};
        for (String p : pre) {
            for (String s : stems) {
                add(out, "AT+" + p + s + "?");
            }
        }
        return out;
    }

    /**
     * Set-only candidates: one write per name with a harmless value (frequency 50 Hz, width 200 µs, everything else
     * 0), in the vendor's "channel,value" form. First two controls: a known name and one that cannot exist. Names that
     * could reset, erase, update or switch the unit off are left out.
     */
    public static List<String> writeCandidates() {
        List<String> out = new ArrayList<String>();
        out.add("AT+CSTR=0,0");
        out.add("AT+XZQJ=0,1");
        String[] stems = {"FRQ", "FREQ", "FRE", "FQ", "HZ", "PW", "PWM", "PWD", "PWID", "WID", "WIDTH", "PLS", "PULSE",
            "WAV", "WAVE", "SHAPE", "AMP", "VOL", "CUR", "CURR", "VOLT", "IMP", "RAMP", "RISE", "FALL", "ONT", "OFFT",
            "DUTY", "SDT", "SET", "CFG", "PARA", "PAR", "PRM", "LEV", "LEVL", "MAX", "MIN", "GEAR", "PRG", "PROG", "MOD",
            "CH", "CHN", "CHANNEL", "STR", "DCLK", "TIM", "TIME", "BST", "BOOST", "HV", "DAC", "TEST", "DBG", "LED",
            "BEEP", "KEY", "SLP", "USR", "USER", "DIY", "CUST"};
        String[] pre = {"C", "W", "S", "Q", ""};
        for (String p : pre) {
            for (String st : stems) {
                String name = p + st;
                if (name.equals("CSTR")) {
                    continue;
                }
                String v = st.startsWith("FR") || st.equals("FQ") || st.equals("HZ") ? "50"
                        : st.startsWith("PW") || st.startsWith("WID") || st.startsWith("PL") ? "200" : "0";
                add(out, "AT+" + name + "=0," + v);
            }
        }
        add(out, "AT+WSDT=10");
        add(out, "AT+WSDT=0,10");
        return out;
    }

    /** A write refused as unknown: the bare "ERROR:104" (a known name answers with its tag, "+CLOAD ERROR:104"). */
    static boolean unknownName(String reply) {
        for (String part : reply.split(" \\| ")) {
            if (part.trim().toUpperCase().startsWith("ERROR")) {
                return part.indexOf("104") >= 0;
            }
        }
        return false;
    }

    static void add(List<String> out, String s) {
        if (!out.contains(s)) {
            out.add(s);
        }
    }

    /** Sweep the candidates: strength 0 and output paused first, paused again after every command that answered. */
    public void probe() {
        sweep(false);
    }

    /** Sweep the set-only candidates (pads off: a name that exists may act on the value). */
    public void probeWrites() {
        sweep(true);
    }

    void sweep(boolean write) {
        if (probing) {
            return;
        }
        probeWrite = write;
        mod = null;
        hits.clear();
        silent.clear();
        refused.clear();
        suspended.clear();
        List<String> c = write ? writeCandidates() : candidates();
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
        if (probeWrite) {
            if (!timedOut && unknownName(r)) {
                refused.add(c.text);
            } else {
                // an unknown name says ERROR:104 at once, so even silence means the name exists
                hit = new String[] {c.text, r.length() > 0 ? r : "(—)"};
                hits.add(hit);
                queue.add(0, new Cmd("AT+CSTR=0,0", K_LEVEL));
                queue.add(0, new Cmd("AT+QPOWP", K_PAUSE));
            }
        } else if (timedOut && r.length() == 0) {
            silent.add(c.text);
        } else if (r.toUpperCase().contains("ERROR")) {
            refused.add(c.text + " " + r);
        } else {
            hit = new String[] {c.text, r.length() > 0 ? r : "(—)"};
            hits.add(hit);
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
        b.append(probeWrite ? "\nwrite exploration " : "\nexploration ").append(probeDone).append('/').append(probeTotal).append(", answered:\n");
        for (String[] h : hits) {
            b.append("  ").append(h[0]).append(" → ").append(h[1]).append('\n');
        }
        if (probeWrite) {
            b.append("unknown (ERROR:104): ").append(refused.size()).append('\n');
        } else if (!refused.isEmpty()) {
            b.append("refused: ").append(refused).append('\n');
        }
        if (!silent.isEmpty()) {
            b.append("silent: ").append(silent.size()).append(" (no answer)\n");
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
            sh.keepAlive();
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
