package com.isaigu.gymapp.bodytech;

import java.util.ArrayList;
import java.util.List;

/**
 * XEMS suit commands → WiEMS unit operations ({@link WiProto}) for ONE unit. Pure logic, no Android: {@link WiBridge}
 * feeds it what CommandSender writes and writes what it returns (docs/xems-wiems.md).
 * <p>
 * XEMS side (as BtTranslator): cmd 1 = the 10 sliders (pdu[1..10]), always followed by a cmd 3; cmd 3 = run: pdu[3] Hz,
 * pdu[5] impulse s, pdu[6] pause s, pdu[10] 1 = output on / 0 = off; F1 = start, F2 = pause or stop; 5 = battery.
 * <p>
 * The unit runs its own work / rest cycle once started (it has no "outputs on" without it), so it is given the row's
 * program — Hz, impulse s as work, pause s as rest, the second impulse's Hz as its rest Hz — and started with the
 * vendor's sequence (program with phase 2, rest, widths, strengths 0, run 0x25; after its ~4 s count-down the program
 * again with phase 0 and the strengths). The row keeps its own clock; every phase only sets the strengths: the
 * impulse its sliders, a pause without second impulse 0 — so the unit gives out only where both say "work".
 * <p>
 * Safety: strength ≤ {@link WiProto#MAX_CURRENT}; F2 / stop / reset = strengths 0 + run stop; strengths nobody renewed
 * for the longer phase + 3 s go to 0 ({@link #heartbeat}); after a lost link the next command first stops the unit.
 */
public final class WiTranslator {
    public static final int PAUSE = 0, MAIN = 1, SECOND = 2;
    static final int CMD_SETTING = 1, CMD_RUN = 3, CMD_BATTERY = 5, CMD_START = 0xF1, CMD_STOP = 0xF2;
    static final int IDLE = 0, COUNTDOWN = 1, RUNNING = 2;
    static final int DEF_HZ = 85, DEF_WORK = 4, DEF_REST = 4, DEF_REST_HZ = 5;
    static final long GRACE_MS = 3000L;
    /** The vendor waits for the unit's first "01" after the start (~4.1 s); without it the run goes on after this. */
    static final long COUNTDOWN_MAX_MS = 6000L;
    /** The unit runs but the row never started (▶ given up, a start that failed): stopped after this. */
    static final long IDLE_RUN_MAX_MS = 30000L;

    private final int[] parts = new int[10];
    private int phase = MAIN;
    private boolean armed, on, unsafe = true;
    private int unit = IDLE;
    private long countdownAt, deadlineMs, idleRunAt;
    private int hz = DEF_HZ, workS = DEF_WORK, restS = DEF_REST, restHz = DEF_REST_HZ;
    private int devHz, devWork, devRest, devRestHz;
    private final int[] devCur = new int[WiProto.CHANNELS];
    private boolean devKnown;

    public synchronized void phase(int p) {
        phase = p < PAUSE || p > SECOND ? MAIN : p;
    }

    public synchronized boolean armed() {
        return armed;
    }

    /** The unit runs (or counts down to run). */
    public synchronized boolean running() {
        return unit != IDLE;
    }

    public synchronized boolean counting() {
        return unit == COUNTDOWN;
    }

    /** Link lost / a write failed: nothing about the unit is known; the next command stops it first. */
    public synchronized void forget() {
        unsafe = true;
        unit = IDLE;
        armed = false;
        on = false;
        devKnown = false;
    }

    /** TrainItem.reset (stop, end of time, connect): strengths 0 and the unit stopped. */
    public synchronized List<byte[]> reset() {
        List<byte[]> out = new ArrayList<byte[]>();
        armed = false;
        on = false;
        for (int i = 0; i < 10; i++) parts[i] = 0;
        prepare(out);
        stopUnit(out);
        return out;
    }

    /** One XEMS command (the 0x53 frame's cmd and pdu). Returns the unit operations, in order; may be empty. */
    public synchronized List<byte[]> command(int cmd, byte[] pdu, long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        prepare(out);
        if (cmd == CMD_SETTING) {
            for (int i = 0; i < 10; i++) parts[i] = at(pdu, 1 + i);
        } else if (cmd == CMD_RUN) {
            int h = at(pdu, 3);
            boolean flag = at(pdu, 10) == 1;
            if (!flag || h <= 0) {
                on = false;
                if (unit == RUNNING) setCurrents(out, null);
            } else {
                if (phase == SECOND) {
                    restHz = h;
                } else {
                    hz = h;
                    if (at(pdu, 5) > 0) workS = at(pdu, 5);
                    restS = at(pdu, 6);
                }
                if (armed) {
                    int sec = Math.max(at(pdu, 5), at(pdu, 6));
                    deadlineMs = nowMs + (sec > 0 ? sec * 1000L : 7000L) + GRACE_MS;
                    on = true;
                    if (unit == IDLE) {
                        startUnit(out, nowMs);
                    } else if (unit == RUNNING) {
                        if (restHz != devRestHz) {
                            out.add(WiProto.rest(restHz, 100));
                            devRestHz = restHz;
                        }
                        if (phase != SECOND && (hz != devHz || workS != devWork || restS != devRest)) {
                            // the vendor's change while running: strengths 0, the program (phase 0), strengths
                            setCurrents(out, null);
                            out.add(WiProto.program(hz, workS, restS, 0, 0, WiProto.PHASE_RUN));
                            devHz = hz;
                            devWork = workS;
                            devRest = restS;
                        }
                        setCurrents(out, target());
                    }
                }
            }
        } else if (cmd == CMD_START) {
            armed = true;
        } else if (cmd == CMD_STOP) {
            armed = false;
            on = false;
            stopUnit(out);
        }
        return out;
    }

    /**
     * ▶ on the row (BtLoad.hold): the unit is started now with the program last heard, so its ~4 s count-down is
     * over before the row's clock runs — the unit's work / rest then go in step with the row's impulse / pause.
     * Empty when it already runs or counts down.
     */
    public synchronized List<byte[]> arm(long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        prepare(out);
        if (unit == IDLE) startUnit(out, nowMs);
        return out;
    }

    /** Count-down progress 0..99 (−1: not counting down). */
    public synchronized int countdownPercent(long nowMs) {
        if (unit != COUNTDOWN) return -1;
        long p = (nowMs - countdownAt) * 100L / 4500L;
        return p < 0 ? 0 : (p > 99 ? 99 : (int) p);
    }

    /** The unit's run characteristic notified (01 each second while it runs): the count-down is over. */
    public synchronized List<byte[]> runNotify(byte[] v) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (unit == COUNTDOWN && v != null && v.length > 0 && v[0] == 1) begin(out);
        return out;
    }

    /** Every ~0.5 s: the count-down's fallback and the strengths nobody renewed. */
    public synchronized List<byte[]> heartbeat(long nowMs) {
        List<byte[]> out = new ArrayList<byte[]>();
        if (unit == COUNTDOWN && nowMs - countdownAt > COUNTDOWN_MAX_MS) begin(out);
        if (on && nowMs > deadlineMs) {
            on = false;
            if (unit == RUNNING) setCurrents(out, null);
        }
        if (unit == RUNNING && !armed) {
            if (idleRunAt == 0) idleRunAt = nowMs;
            else if (nowMs - idleRunAt > IDLE_RUN_MAX_MS) stopUnit(out);
        } else {
            idleRunAt = 0;
        }
        return out;
    }

    /**
     * The unit's channels are XBody's (owner, 2026-10-16: a WiEMS suit is an XBody-standard suit): 0 Трапец, 1 Гръб,
     * 2 Гърди, 3 Кръст, 4 Ръце, 5 Седалище, 6 Корем, 7 Предно бедро, 8 Задно бедро, 9 Прасец. XEMS slider i (0 Гърди,
     * 1 Корем, 2 Предно бедро, 3 Прасец, 4 Ръце, 5 Трапец, 6 Гръб, 7 Кръст, 8 Седалище, 9 Задно бедро) → that body
     * part's unit channel.
     */
    static final int[] SLIDER_TO_CH = {2, 6, 7, 9, 4, 0, 1, 3, 5, 8};

    /** What the unit gets now per channel. */
    synchronized int[] target() {
        int[] t = new int[WiProto.CHANNELS];
        if (!on || !armed) return t;
        for (int s = 0; s < 10; s++) t[SLIDER_TO_CH[s]] = WiProto.unit(parts[s]);   // % → the unit's scale
        return t;
    }

    // ------------------------------------------------------------------ internals

    private static int at(byte[] p, int i) {
        return p != null && i < p.length ? p[i] & 0xFF : 0;
    }

    /** First command after a (re)connect: the unit may still run from before — strengths 0 and stop. */
    private void prepare(List<byte[]> out) {
        if (!unsafe) return;
        unsafe = false;
        devKnown = false;
        setCurrents(out, null);
        out.add(WiProto.run(false));
        unit = IDLE;
    }

    private void startUnit(List<byte[]> out, long nowMs) {
        out.add(WiProto.program(hz, workS, restS, 0, 0, WiProto.PHASE_ARM));
        out.add(WiProto.rest(restHz, 100));
        out.add(WiProto.widths());
        setCurrents(out, null);
        out.add(WiProto.run(true));
        devHz = hz;
        devWork = workS;
        devRest = restS;
        devRestHz = restHz;
        unit = COUNTDOWN;
        countdownAt = nowMs;
    }

    /** The count-down is over: the vendor writes strengths 0, the program with phase 0, then the strengths. */
    private void begin(List<byte[]> out) {
        unit = RUNNING;
        setCurrents(out, null);
        out.add(WiProto.program(hz, workS, restS, 0, 0, WiProto.PHASE_RUN));
        devHz = hz;
        devWork = workS;
        devRest = restS;
        setCurrents(out, target());
    }

    private void stopUnit(List<byte[]> out) {
        if (unit == IDLE && devKnown && allZero(devCur)) return;
        setCurrents(out, null);
        out.add(WiProto.run(false));
        unit = IDLE;
    }

    /** Strengths to the unit when they differ from what it holds (null = all 0). */
    private void setCurrents(List<byte[]> out, int[] c) {
        int[] w = c != null ? c : new int[WiProto.CHANNELS];
        boolean same = devKnown;
        for (int i = 0; i < WiProto.CHANNELS && same; i++) same = devCur[i] == w[i];
        if (same) return;
        out.add(WiProto.currents(w));
        System.arraycopy(w, 0, devCur, 0, WiProto.CHANNELS);
        devKnown = true;
    }

    private static boolean allZero(int[] a) {
        for (int v : a) if (v != 0) return false;
        return true;
    }
}
