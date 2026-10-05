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

    static final int CMD_SETTING = 1, CMD_RUN = 3, CMD_BATTERY = 5, CMD_START = 0xF1, CMD_STOP = 0xF2;

    private final int[] parts = new int[10];
    private int phase = MAIN;
    private int hz = DEF_HZ, widthUs = DEF_US;
    private boolean on;
    private long deadlineMs;
    private int testCh, testPct;           // the owner holds "test" on one channel (settings sheet); 0 = none
    static final int TEST_MAX_PCT = 30;
    static final long TEST_MS = 1500L;
    /** Test range the suit takes (bodytech/PROTOCOL.md): Hz 1..1000, width 50..511 µs, waveform 0..3 (−1 = the suit's own). */
    public static final int TEST_HZ_MAX = 1000;
    private int waveCh, waveVal;             // channel whose waveform the test changed (0 = none)
    private final boolean[] waveTouched = new boolean[BtSettings.CHANNELS + 1];

    // what the suit holds now (as far as we know)
    private boolean programmed;
    private int devWave = -2;               // waveform in the suit (−1 = its own, −2 = not programmed)
    private boolean unsafe = true;          // state unknown → next command starts with SEL all off
    private int devMask;
    private final int[] devInt = new int[BtSettings.CHANNELS + 1];
    private final int[] devHz = new int[BtSettings.CHANNELS + 1];
    private final int[] devUs = new int[BtSettings.CHANNELS + 1];

    /** Hook: CommandSender.sendDuration (MAIN) / sendActivePause (SECOND) / sendPause (PAUSE) begins. */
    public synchronized void phase(int p) {
        phase = p;
    }

    public synchronized boolean isOn() {
        return on;
    }

    /** Write failed / link dropped: the suit state is unknown. */
    public synchronized void forget() {
        programmed = false;
        waveCh = 0;
        unsafe = true;
        on = false;
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
            for (int i = 0; i < 10; i++) parts[i] = at(pdu, 1 + i);
        } else if (cmd == CMD_RUN) {
            int workLen = (at(pdu, 1) << 8) | at(pdu, 2);
            int h = at(pdu, 3);
            int us = at(pdu, 4) * 50;
            boolean flag = at(pdu, 10) == 1;
            if (!flag || h <= 0) {
                off(out);
            } else {
                hz = h;
                widthUs = us < MIN_US ? MIN_US : (us > MAX_US ? MAX_US : us);
                int sec = phase == SECOND ? at(pdu, 6) : at(pdu, 5);
                if (sec <= 0) sec = workLen;
                if (workLen > 0 && workLen < sec) sec = workLen;
                deadlineMs = nowMs + (sec > 0 ? sec * 1000L : 7000L) + GRACE_MS;
                on = true;
                reconcile(out);
            }
        } else if (cmd == CMD_STOP) {
            off(out);
        } else if (cmd == CMD_BATTERY) {
            out.add(BtProto.batterySync());
        }
        return out;
    }

    /** A real training is running (not just a held test). */
    public synchronized boolean training() {
        return on && testCh == 0;
    }

    /**
     * Strength cap of a held test: 30 % at the default 85 Hz × 360 µs, lower as Hz × width (the charge each second)
     * grows — a test at 1000 Hz and 511 µs is held to 1 %.
     */
    public static int testCap(int hz, int us) {
        long duty = (long) clampHz(hz) * clampUs(us);
        long ref = (long) DEF_HZ * DEF_US;
        long c = duty <= ref ? TEST_MAX_PCT : (TEST_MAX_PCT * ref) / duty;
        return (int) Math.max(1, c);
    }

    static int clampHz(int h) {
        return h < 1 ? 1 : (h > TEST_HZ_MAX ? TEST_HZ_MAX : h);
    }

    static int clampUs(int u) {
        return u < MIN_US ? MIN_US : (u > MAX_US ? MAX_US : u);
    }

    /** {@link #testOn(int, int, int, int, int, long)} with the program's default 85 Hz, 360 µs and the suit's own waveform. */
    public synchronized List<byte[]> testOn(int ch, int pct, long nowMs) {
        return testOn(ch, pct, DEF_HZ, DEF_US, -1, nowMs);
    }

    /**
     * The owner holds "test" on channel ch: only that channel, at hz (1..1000), width us (50..511) and waveform
     * wave (0 square, 1 sine, 2 / 3 trapezoid, −1 the suit's own), strength pct held to {@link #testCap}, until
     * {@link #testOff} or {@link #TEST_MS} without a renewal. Refused (empty) while a training runs. The waveform goes
     * back to the owner's setting when the test ends (square when "the suit's own").
     */
    public synchronized List<byte[]> testOn(int ch, int pct, int h, int us, int wave, long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (training() || ch < 1 || ch > BtSettings.CHANNELS) return out;
        prepare(out);
        if (waveCh != 0 && (waveCh != ch || wave != waveVal)) restoreWave(out);
        if (wave >= 0 && wave <= 3 && waveCh == 0) {
            out.add(BtProto.waveform(ch, wave));
            waveCh = ch;
            waveVal = wave;
            waveTouched[ch] = true;
        }
        testCh = ch;
        hz = clampHz(h);
        widthUs = clampUs(us);
        int cap = testCap(hz, widthUs);
        testPct = pct < 1 ? 1 : (pct > cap ? cap : pct);
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
        if (waveCh == 0) return;
        int w = BtSettings.wave();
        out.add(BtProto.waveform(waveCh, w >= 0 ? w : 0));
        waveTouched[waveCh] = false;
        waveCh = 0;
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
        if (programmed && !on && BtSettings.wave() != devWave) programmed = false;   // the owner changed the waveform
        if (programmed) return;
        out.add(BtProto.batteryInit());
        out.add(BtProto.batteryInit2());
        out.add(BtProto.reset());
        int wave = BtSettings.wave();
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
            if (wave >= 0) out.add(BtProto.waveform(ch, wave));
            else if (waveTouched[ch]) out.add(BtProto.waveform(ch, 0));   // a test changed it
            waveTouched[ch] = false;
            devInt[ch] = 0;
            devHz[ch] = DEF_HZ;
            devUs[ch] = DEF_US;
        }
        out.add(BtProto.allOff());
        devMask = 0;
        devWave = wave;
        programmed = true;
    }

    private void off(List<byte[]> out) {
        on = false;
        testCh = 0;
        if (devMask != 0) out.add(BtProto.allOff());
        devMask = 0;
        restoreWave(out);
    }

    /** The owner's per-channel value may only hold a channel BELOW what the program asks (limits stay upstream). */
    private static int lower(int own, int program) {
        return own > 0 && own < program ? own : program;
    }

    /** Strength (0..99 %) the owner's map gives channel ch in the current phase. */
    private int target(int ch) {
        if (testCh != 0) return ch == testCh ? testPct : 0;
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
        int mask = 0;
        for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
            int t = target(ch);
            if (t > 0) {
                int h = testCh != 0 ? hz : lower(BtSettings.chHz(ch, phase == SECOND), hz);
                int u = testCh != 0 ? widthUs : lower(BtSettings.chWidth(ch), widthUs);
                if (u < MIN_US) u = MIN_US;
                if (devHz[ch] != h) {
                    out.add(BtProto.hz(ch, h));
                    devHz[ch] = h;
                }
                if (devUs[ch] != u) {
                    out.add(BtProto.width(ch, u));
                    devUs[ch] = u;
                }
                mask |= 1 << (ch - 1);
            }
            if (t != devInt[ch]) {
                out.add(BtProto.intensity(ch, t));
                devInt[ch] = t;
            }
        }
        if (mask != devMask) {
            out.add(BtProto.enable(mask));
            devMask = mask;
        }
    }
}
