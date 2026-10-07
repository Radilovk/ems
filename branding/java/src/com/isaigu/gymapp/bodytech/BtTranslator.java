package com.isaigu.gymapp.bodytech;

import java.util.ArrayList;
import java.util.List;

/**
 * XEMS suit commands → bodytech frames (bodytech/PROTOCOL.md) for ONE suit. Pure logic, no Android: the glue
 * (BtBridge) feeds it what CommandSender writes and sends the frames it returns.
 * <p>
 * XEMS side (train.utils.CommandUtil): cmd 1 = strength of the 10 sliders (pdu[1..10], always followed by a cmd 3); cmd 3 = run: pdu[1..2]
 * seconds left, pdu[3] Hz, pdu[4] width/50 µs, pdu[5] impulse s, pdu[6] pause s, pdu[10] 1 = output on, 0 = off;
 * F2 = stop; 5 = battery. The tablet runs the phases itself (impulse → pause → …), the ramp too (SoftRamp), so the
 * suit is programmed as one continuous burst (T1 = T3 = T4 = 0) and every phase is a SEL / intensity change.
 * <p>
 * Safety: intensity ≤ {@link #MAX_PCT}; a channel is on only when its slider gives it strength; an output that
 * nobody renewed for its phase length + 3 s is switched off by {@link #heartbeat}; after a write failure
 * ({@link #forget}) the next frame is SEL all off and the suit is programmed again.
 */
public final class BtTranslator {
    public static final int PAUSE = 0, MAIN = 1, SECOND = 2;
    public static final int MAX_PCT = 99;
    /** The suit's own cycle: one burst of 100 s (its register is at most ~104 s), no ramps, no pause. */
    static final int CYCLE_ON_MS = 100000;
    static final int DEF_HZ = 85, DEF_US = 360;
    static final int MIN_US = 50, MAX_US = 511;
    static final long GRACE_MS = 3000L;
    /**
     * Pulse slots ({@link BtSettings#slots}): below this Hz the period is so long that pulses hardly ever meet (2nd
     * impulse ≤ 10 Hz) — channels then run as without slots. The slide that spreads the channels lasts SLIDE_MS.
     */
    static final int SLOT_MIN_HZ = 30;
    static final int SLIDE_MS = 2000;

    static final int CMD_SETTING = 1, CMD_RUN = 3, CMD_BATTERY = 5, CMD_START = 0xF1, CMD_STOP = 0xF2;

    private final int[] parts = new int[10];
    /** The last 10 sliders the row sent, per phase (PAUSE / MAIN / SECOND): a change of one slider alone is a hand. */
    private final int[][] seen = new int[3][];
    /**
     * The legs (owner, 1.1.377): until a hand moves one leg, both legs get the same strength — the higher of the two
     * ({@link #legValue}). A hand on one leg sets that leg to what the finger shows and keeps the other where it is;
     * from then on (until the stop) each leg is its row value × its own factor, so a program step or ± moves both in
     * proportion and 0 stays 0.
     */
    private boolean legsOwn;
    private final float[] legK = new float[10];
    {
        for (int i = 0; i < 10; i++) legK[i] = 1f;
    }
    private int phase = MAIN;
    private int hz = DEF_HZ, widthUs = DEF_US;
    private boolean on;
    private long deadlineMs;
    private int testCh, testPct;           // the owner holds "test" on one channel (settings sheet); 0 = none
    private int testOnMs, testOffMs, testStep = 1;   // the test's burst (0 = continuous) and STEP_NOR byte
    /** The suit takes 0..99 % (100 would read as 0, bodytech/PROTOCOL.md). */
    static final int TEST_MAX_PCT = MAX_PCT;
    static final long TEST_MS = 1500L;
    /** Hz the test (and the owner's per-channel values) may send: 1..10000 (register = 1 MHz / Hz). */
    public static final int TEST_HZ_MAX = 10000;
    /** Test width: up to the register's 13 bits (BtProto.widthRaw), past the vendor's 511 µs. */
    public static final int TEST_US_MAX = BtProto.WIDTH_RAW_MAX;
    /** Test burst on / off, ms (T2 / T4 of the suit's own cycle); STEP_NOR byte 1..31. */
    public static final int BURST_MAX_MS = 1000, STEP_MAX = 31;
    private int waveMask, waveVal;           // channels (bit ch−1) whose waveform the test changed (0 = none)
    private final int[] testPcts = new int[BtSettings.CHANNELS + 1];   // strength per channel of a test / Australian program
    private final int[] testHzs = new int[BtSettings.CHANNELS + 1];    // Hz per channel of a test / program
    private final int[] devWaveCh = new int[BtSettings.CHANNELS + 1];   // last waveform sent per channel (−1 = none yet)

    // what the suit holds now (as far as we know)
    private boolean programmed;
    /**
     * The row's run gate: F1 (start) opens it, F2 (pause / stop) closes it. A closed gate lets no output out — a
     * parameter change in pause or after stop (the stock row then re-sends its impulse: TrainItem.onParamsChange →
     * sendPulse, cmd 3 with flag 1) is only remembered. The XEMS suit has this gate in itself; bodytech has not.
     */
    private boolean armed;
    private boolean used;                   // an output was on since the suit was last programmed
    private boolean unsafe = true;          // state unknown → next command starts with SEL all off
    private int devMask;
    private final int[] devInt = new int[BtSettings.CHANNELS + 1];
    private final int[] devHz = new int[BtSettings.CHANNELS + 1];
    private final int[] devUs = new int[BtSettings.CHANNELS + 1];
    private final int[] devOn = new int[BtSettings.CHANNELS + 1];     // T2 ms the suit holds (CYCLE_ON_MS = continuous)
    private final int[] devOff = new int[BtSettings.CHANNELS + 1];    // T4 ms
    private final int[] devStep = new int[BtSettings.CHANNELS + 1];   // STEP_NOR byte
    /**
     * Pulse slots. One SEL from all-off starts the channels in step; then channel k of n runs a little slower
     * (period + d_k µs) for {@link #SLIDE_MS} and so falls k/n of a period behind the first — the bridge sends the
     * frames that bring it back ({@link #slideEnd}). Same period on the suit's one clock keeps the places (probe 0.7:
     * 62 s clean, a strength write does not move them). slideMask = channels still slow; slideGen tells a stale end.
     */
    private int slideMask, slideGen;
    private long slidePending = -1;

    /** Hook: CommandSender.sendDuration (MAIN) / sendActivePause (SECOND) / sendPause (PAUSE) begins. */
    public synchronized void phase(int p) {
        phase = p;
    }

    /** The run gate is open (started, not paused / stopped). */
    public synchronized boolean armed() {
        return armed;
    }

    /** An output was on since the suit was last programmed (so a reset is a real stop). */
    public synchronized boolean ran() {
        return used;
    }

    /** The suit holds the program (false = the next command writes it first, ~3 s). */
    public synchronized boolean programmed() {
        return programmed;
    }

    public synchronized boolean isOn() {
        return on;
    }

    /** Write failed / link dropped: the suit state is unknown. */
    public synchronized void forget() {
        slideMask = 0;
        slideGen++;
        slidePending = -1;
        programmed = false;
        waveMask = 0;
        unsafe = true;
        on = false;
        armed = false;
    }

    /**
     * Stop (TrainItem.reset): everything off and the suit programmed afresh now, as after a new connect — the next
     * start finds a clean suit. Returns the frames (SEL off, strengths 0, the full program).
     */
    public synchronized List<byte[]> reset() {
        List<byte[]> out = new ArrayList<byte[]>();
        armed = false;
        legsOwn = false;                    // a new session: the legs are equal again until a hand moves one
        for (int i = 0; i < 10; i++) legK[i] = 1f;
        seen[0] = seen[1] = seen[2] = null;
        testCh = 0;
        zero(out);
        if (used) programmed = false;       // a suit that never ran since its program (connect) is not done twice
        prepare(out);
        return out;
    }

    /** One XEMS command (the 0x53 frame's cmd and pdu). Returns the bodytech frames, in order; may be empty. */
    public synchronized List<byte[]> command(int cmd, byte[] pdu, long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (testCh != 0 && cmd != CMD_BATTERY) {      // the row speaks: the test is over
            testCh = 0;
            off(out);
        }
        prepare(out);
        if (cmd == CMD_SETTING) {
            // kept; the cmd 3 that always follows it (CommandSender: sendDuration / sendActivePause) applies it, so
            // strength, Hz and width reach the suit as one coherent step
            int[] raw = new int[10];
            for (int i = 0; i < 10; i++) raw[i] = at(pdu, 1 + i);
            int[] legs = BtSettings.legSliders();
            int ph = phase < 0 || phase > 2 ? MAIN : phase;
            int hand = byHand(seen[ph], raw, legs);
            if (hand >= 0) {
                // the other legs stay at what they get now; the moved one at the finger's value
                for (int s : legs) {
                    int want = s == hand ? raw[s] : legValue(seen[ph], s);
                    legK[s] = raw[s] > 0 ? want / (float) raw[s] : 1f;
                }
                legsOwn = true;
            }
            seen[ph] = raw;
            for (int i = 0; i < 10; i++) parts[i] = legValue(raw, i);
        } else if (cmd == CMD_RUN) {
            int workLen = (at(pdu, 1) << 8) | at(pdu, 2);
            int h = at(pdu, 3);
            int us = at(pdu, 4) * 50;
            boolean flag = at(pdu, 10) == 1;
            if (!flag || h <= 0) {
                off(out);
            } else if (!armed) {
                // paused / stopped: the new values are kept for the next start, nothing goes out
                hz = h;
                widthUs = us < MIN_US ? MIN_US : (us > MAX_US ? MAX_US : us);
                zero(out);
            } else {
                hz = h;
                widthUs = us < MIN_US ? MIN_US : (us > MAX_US ? MAX_US : us);
                // the longer of impulse / pause: the second impulse's setup (DoubleImpulse) sends it in the ON phase too,
                // and the pause's length then cut it off mid-phase (1.1.386); the keep-alive only needs an upper bound
                int sec = Math.max(at(pdu, 5), at(pdu, 6));
                if (sec <= 0) sec = workLen;
                if (workLen > 0 && workLen < sec) sec = workLen;
                deadlineMs = nowMs + (sec > 0 ? sec * 1000L : 7000L) + GRACE_MS;
                on = true;
                reconcile(out);
            }
        } else if (cmd == CMD_START) {
            armed = true;
        } else if (cmd == CMD_STOP) {
            armed = false;
            zero(out);
        } else if (cmd == CMD_BATTERY) {
            out.add(BtProto.batterySync());
        }
        return out;
    }

    /** A real training is running (not just a held test). */
    public synchronized boolean training() {
        return on && testCh == 0;
    }

    /** Strength of a held test: no cap (owner, 1.1.360) — the suit's own 99 % at any Hz / width. */
    public static int testCap(int hz, int us) {
        return TEST_MAX_PCT;
    }


    /**
     * What slider i of the row (raw 0..100) gives the suit: not a leg → as is; a leg → the higher of the legs while
     * they are kept equal, else its value × its own factor. PartLook shows the row with this too.
     */
    public synchronized int legValue(int[] raw, int i) {
        if (raw == null || i < 0 || i >= raw.length) return 0;
        int[] legs = BtSettings.legSliders();
        boolean leg = false;
        for (int s : legs) leg |= s == i;
        if (!leg) return raw[i];
        if (!legsOwn) {
            int max = 0;
            for (int s : legs) if (s < raw.length && raw[s] > max) max = raw[s];
            return max;
        }
        int v = Math.round(raw[i] * legK[i]);
        return v < 0 ? 0 : (v > 100 ? 100 : v);
    }

    /** One slider alone changed and it is a leg: that slider (the owner's hand; a program or ± moves several), else −1. */
    static int byHand(int[] prev, int[] now, int[] legs) {
        if (prev == null || legs.length == 0) return -1;
        int changed = -1, n = 0;
        for (int i = 0; i < 10; i++) {
            if (prev[i] != now[i]) {
                changed = i;
                n++;
            }
        }
        if (n != 1) return -1;
        for (int s : legs) if (s == changed) return s;
        return -1;
    }

    /** Widest pulse at hz: half the period (a longer one fills the period — steady current), at most the register's. */
    public static int maxUsAt(int hz) {
        int half = 500000 / clampHz(hz);
        return half < MIN_US ? MIN_US : (half > TEST_US_MAX ? TEST_US_MAX : half);
    }

    static int clampHz(int h) {
        return h < 1 ? 1 : (h > TEST_HZ_MAX ? TEST_HZ_MAX : h);
    }

    static int clampUs(int u) {
        return u < MIN_US ? MIN_US : (u > MAX_US ? MAX_US : u);
    }

    static int clampMs(int ms) {
        return ms < 0 ? 0 : (ms > BURST_MAX_MS ? BURST_MAX_MS : ms);
    }

    /** {@link #testOn(int, int, int, int, int, long)} with the program's default 85 Hz, 360 µs and the suit's own waveform. */
    public synchronized List<byte[]> testOn(int ch, int pct, long nowMs) {
        return testOn(ch, pct, DEF_HZ, DEF_US, -1, nowMs);
    }

    /**
     * The owner holds "test" on channel ch: only that channel, at hz (1..1000), width us (50..511) and waveform
     * wave (0 square, 1 sine, 2 / 3 trapezoid, −1 the suit's own), strength pct held to {@link #testCap} (1..99), until
     * {@link #testOff} or {@link #TEST_MS} without a renewal. Refused (empty) while a training runs. The waveform goes
     * back to the owner's setting when the test ends (square when "the suit's own").
     */
    public synchronized List<byte[]> testOn(int ch, int pct, int h, int us, int wave, long nowMs) {
        return testOn(ch, pct, h, us, wave, false, nowMs);
    }

    /** As above (uncapped is kept for old callers: there is no cap any more). */
    public synchronized List<byte[]> testOn(int ch, int pct, int h, int us, int wave, boolean uncapped, long nowMs) {
        return testOn(ch, pct, h, us, wave, 0, 0, 1, nowMs);
    }

    /**
     * Full test: Hz 1..{@link #TEST_HZ_MAX}, width 50..{@link #maxUsAt} µs, waveform, burst onMs / offMs (the suit's
     * T2 / T4; 0 = continuous — Australian 4 / 16 ms, Russian 10 / 10 ms) and the STEP_NOR byte (1 = the vendor's).
     */
    public synchronized List<byte[]> testOn(int ch, int pct, int h, int us, int wave, int onMs, int offMs, int step,
                                            long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (ch < 1 || ch > BtSettings.CHANNELS) return out;
        int[] pcts = new int[BtSettings.CHANNELS + 1];
        int[] hzs = new int[BtSettings.CHANNELS + 1];
        pcts[ch] = pct;
        hzs[ch] = h;
        return programOn(pcts, hzs, us, wave, onMs, offMs, step, nowMs);
    }

    /**
     * Australian-current program (BtAusRun): several channels at once, each with its own strength pcts[ch] (0 = silent,
     * index 1..8) and its own Hz hzs[ch] (the carrier; two channels may differ by the beat of an interferential
     * program), a common width, waveform, burst and STEP_NOR byte. Held like a test: renewed by the runner, off after
     * {@link #TEST_MS} without a renewal. Refused (empty) while a training runs.
     */
    public synchronized List<byte[]> programOn(int[] pcts, int[] hzs, int us, int wave, int onMs, int offMs, int step,
                                               long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (training() || pcts == null || hzs == null) return out;
        int first = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if (ch < pcts.length && pcts[ch] > 0) {
                first = ch;
                break;
            }
        }
        if (first == 0) {
            if (testCh != 0) off(out);
            return out;
        }
        prepare(out);
        int bits = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) if (ch < pcts.length && pcts[ch] > 0) bits |= 1 << (ch - 1);
        if (waveMask != 0 && (waveMask != bits || wave != waveVal)) restoreWave(out);
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            int v = ch < pcts.length ? pcts[ch] : 0;
            testPcts[ch] = v < 0 ? 0 : (v > TEST_MAX_PCT ? TEST_MAX_PCT : v);
            testHzs[ch] = clampHz(ch < hzs.length && hzs[ch] > 0 ? hzs[ch] : DEF_HZ);
            if (testPcts[ch] > 0) sendWave(out, ch, wave);
        }
        if (wave >= 0 && wave <= 3) {
            waveMask |= bits;
            waveVal = wave;
        }
        testCh = first;
        hz = testHzs[first];
        int wmax = maxUsAt(hz);
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if (testPcts[ch] > 0 && maxUsAt(testHzs[ch]) < wmax) wmax = maxUsAt(testHzs[ch]);
        }
        widthUs = us < MIN_US ? MIN_US : (us > wmax ? wmax : us);
        testOnMs = clampMs(onMs);
        testOffMs = testOnMs > 0 ? clampMs(offMs) : 0;
        testStep = step < 1 ? 1 : (step > STEP_MAX ? STEP_MAX : step);
        testPct = testPcts[first];
        on = true;
        deadlineMs = nowMs + TEST_MS;
        reconcile(out);
        return out;
    }

    public synchronized List<byte[]> testOff() {
        List<byte[]> out = new ArrayList<byte[]>();
        if (testCh != 0) off(out);
        return out;
    }

    /** The waveform the test changed goes back: the owner's, or square when the owner leaves it to the suit. */
    private void restoreWave(List<byte[]> out) {
        if (waveMask == 0) return;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if ((waveMask & (1 << (ch - 1))) != 0) sendWave(out, ch, BtSettings.waveFor(ch, false));
        }
        waveMask = 0;
    }

    /** Once a second: an output nobody renewed in time goes off. */
    public synchronized List<byte[]> heartbeat(long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (on && nowMs > deadlineMs) off(out);
        return out;
    }

    // ------------------------------------------------------------------ internals

    private static int at(byte[] p, int i) {
        return p != null && i < p.length ? p[i] & 0xFF : 0;
    }

    /** First command after (re)connect: SEL all off, then the vendor's program (outputs stay at 0). */
    private void prepare(List<byte[]> out) {
        if (unsafe) {
            out.add(BtProto.allOff());
            devMask = 0;
            unsafe = false;
        }
        if (programmed) return;
        out.add(BtProto.batteryInit());
        out.add(BtProto.batteryInit2());
        out.add(BtProto.reset());
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            out.add(BtProto.hz(ch, DEF_HZ));
            out.add(BtProto.stepNor(ch, BtProto.STEP_NOR_DEFAULT));
            out.add(BtProto.intensity(ch, 0));
            out.add(BtProto.width(ch, DEF_US));
            out.add(BtProto.tPeriod(ch, 0));
            out.add(BtProto.t(ch, 1, 0));
            out.add(BtProto.t(ch, 2, CYCLE_ON_MS));
            out.add(BtProto.t(ch, 3, 0));
            out.add(BtProto.t(ch, 4, 0));
            out.add(BtProto.t1IntStep(ch, 1));
            out.add(BtProto.t1WidthStep(ch, 0));
            out.add(BtProto.t3IntStep(ch, 1));
            out.add(BtProto.t3WidthStep(ch, 0));
            if (devWaveCh[ch] > 0) out.add(BtProto.waveform(ch, 0));   // a test or a training had set one
            devWaveCh[ch] = -1;
            devInt[ch] = 0;
            devHz[ch] = DEF_HZ;
            devUs[ch] = DEF_US;
            devOn[ch] = CYCLE_ON_MS;
            devOff[ch] = 0;
            devStep[ch] = 1;
        }
        out.add(BtProto.allOff());
        devMask = 0;
        programmed = true;
        used = false;
    }

    /** Pause / stop: SEL all off and every channel's strength to 0 (nothing left in the suit to come back). */
    private void zero(List<byte[]> out) {
        off(out);
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if (devInt[ch] != 0) {
                out.add(BtProto.intensity(ch, 0));
                devInt[ch] = 0;
            }
        }
    }

    private void off(List<byte[]> out) {
        stopSlide(out);
        on = false;
        testCh = 0;
        if (devMask != 0) out.add(BtProto.allOff());
        devMask = 0;
        restoreWave(out);
    }

    /** Waveform of a channel: w 0..3 sent when it differs from what the suit holds; −1 (the suit's own) puts back square. */
    private void sendWave(List<byte[]> out, int ch, int w) {
        if (w >= 0 && w <= 3) {
            if (devWaveCh[ch] != w) {
                out.add(BtProto.waveform(ch, w));
                devWaveCh[ch] = w;
            }
        } else if (devWaveCh[ch] > 0) {
            out.add(BtProto.waveform(ch, 0));
            devWaveCh[ch] = 0;
        }
    }

    /** Hz of a channel in the current impulse: the owner's (as it is when unlimited, else only below the program's). */
    private int effHz(int ch, int program) {
        int own = BtSettings.chHz(ch, phase == SECOND);
        if (own <= 0) return program;
        if (BtSettings.unlimited()) return clampHz(own);
        return own < program ? own : program;
    }

    private int effUs(int ch, int program) {
        int own = BtSettings.chWidth(ch, phase == SECOND);
        if (own <= 0) return program;
        if (BtSettings.unlimited()) return clampUs(own);
        return own < program ? own : program;
    }

    /** Strength (0..99 %) the owner's map gives channel ch in the current phase. */
    private int target(int ch) {
        if (testCh != 0) return testPcts[ch];
        int s = BtSettings.slider(ch);
        if (s < 0 || s >= 10) return 0;
        int g = BtSettings.group(ch);
        if (phase == SECOND && g == BtSettings.GROUP_MAIN) return 0;
        if (phase == MAIN && g == BtSettings.GROUP_SECOND) return 0;
        int t = (int) (((long) parts[s] * BtSettings.gain() * BtSettings.chGain(ch) + 5000L) / 10000L);
        return t < 0 ? 0 : (t > MAX_PCT ? MAX_PCT : t);
    }

    /** Bring the suit to the wanted Hz / width / strength; the channel mask (SEL) goes last. */
    private void reconcile(List<byte[]> out) {
        int[] want = new int[BtSettings.CHANNELS + 1];
        int common = 0, n = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            want[ch] = target(ch);
            if (want[ch] > 0) {
                n++;
                int e = testCh != 0 ? testHzs[ch] : effHz(ch, hz);
                if (common == 0 || e < common) common = e;
            }
        }
        // slots: a real training, two channels or more, one Hz for all of them (the lowest any channel is held to)
        boolean slots = testCh == 0 && BtSettings.slots() && n >= 2 && common >= SLOT_MIN_HZ;
        if (!slots) stopSlide(out);
        int mask = 0;
        boolean hzNew = false;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            int t = want[ch];
            if (t > 0) {
                int h = slots ? common : (testCh != 0 ? testHzs[ch] : effHz(ch, hz));
                int u = testCh != 0 ? widthUs : effUs(ch, widthUs);
                if (u < MIN_US) u = MIN_US;
                if (testCh == 0) sendWave(out, ch, BtSettings.waveFor(ch, phase == SECOND));
                if (devHz[ch] != h) {
                    out.add(BtProto.hz(ch, h));
                    devHz[ch] = h;
                    slideMask &= ~(1 << (ch - 1));      // back on the plain period
                    hzNew = true;
                }
                if (devUs[ch] != u) {
                    out.add(u > MAX_US ? BtProto.widthRaw(ch, u) : BtProto.width(ch, u));
                    devUs[ch] = u;
                }
                boolean tc = testCh != 0 && testOnMs > 0;
                int onMs = tc ? testOnMs : CYCLE_ON_MS;
                int offMs = tc ? testOffMs : 0;
                if (devOn[ch] != onMs) {
                    out.add(BtProto.t(ch, 2, onMs));
                    devOn[ch] = onMs;
                }
                if (devOff[ch] != offMs) {
                    out.add(BtProto.t(ch, 4, offMs));
                    devOff[ch] = offMs;
                }
                int st = testCh != 0 ? testStep : 1;
                if (devStep[ch] != st) {
                    out.add(BtProto.stepNorByte(ch, st));
                    devStep[ch] = st;
                }
                mask |= 1 << (ch - 1);
            }
            if (t != devInt[ch]) {
                out.add(BtProto.intensity(ch, t));
                devInt[ch] = t;
            }
        }
        if (mask != 0) used = true;
        if (slots && (mask != devMask || hzNew)) {
            // every impulse start (pause = SEL off), a channel added / dropped or a new Hz: the places are laid again
            stopSlide(out);
            if (devMask != 0) out.add(BtProto.allOff());
            out.add(BtProto.enable(mask));
            devMask = mask;
            startSlide(out, mask, common);
        } else if (mask != devMask) {
            out.add(BtProto.enable(mask));
            devMask = mask;
        }
    }

    /** Channels of mask 2nd..nth slower by d_k µs for SLIDE_MS: channel k falls k/n of the period behind the first. */
    private void startSlide(List<byte[]> out, int mask, int h) {
        int p = 1000000 / h;
        int n = Integer.bitCount(mask);
        double win = SLIDE_MS * 1000.0;
        int k = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            if ((mask & (1 << (ch - 1))) == 0) continue;
            if (k > 0) {
                // slower by d per own period, for win µs: slip = d · win / (p + d) = k·p/n
                double off = (double) k * p / n;
                int d = (int) Math.round(off * p / (win - off));
                if (d < 1) d = 1;
                out.add(BtProto.period(ch, p + d));
                slideMask |= 1 << (ch - 1);
            }
            k++;
        }
        if (slideMask != 0) {
            slideGen++;
            slidePending = SLIDE_MS;
        }
    }

    /** The slide is cut short (pause, stop, new Hz, slots off): the slow channels back on the plain period now. */
    private void stopSlide(List<byte[]> out) {
        if (slideMask == 0) return;
        for (int ch = BtSettings.CHANNELS; ch >= 1; ch--) {
            if ((slideMask & (1 << (ch - 1))) != 0) out.add(BtProto.hz(ch, devHz[ch]));
        }
        slideMask = 0;
        slideGen++;
        slidePending = -1;
    }

    /**
     * Bridge: a slide was laid by the last command → {ms, gen}: after the command's frames are ACKed, wait ms and
     * call {@link #slideEnd}(gen). null = none. Taken once.
     */
    public synchronized long[] takeSlide() {
        if (slidePending < 0) return null;
        long[] r = {slidePending, slideGen};
        slidePending = -1;
        return r;
    }

    /** The slide's time is up: the slow channels back on the plain period (the last channel, the fastest, first). */
    public synchronized List<byte[]> slideEnd(long gen) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (gen != slideGen) return out;
        stopSlide(out);
        return out;
    }
}
