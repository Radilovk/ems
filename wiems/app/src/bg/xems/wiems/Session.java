package bg.xems.wiems;

import com.isaigu.gymapp.bodytech.WiProto;

import java.util.ArrayDeque;
import java.util.Iterator;

/**
 * One WiEMS unit's training — the XBody panel's Suit (xbody/panel/core/suit.cpp, kind WIEMS) in Java: program,
 * strength, zones, the impulse / pause clock with a soft rise, and the unit operations (WiProto) queued one at a time
 * (next() → write → ack()). The unit runs its own work / rest once started; ▶ starts it (its ~4 s count-down) and the
 * clock runs when the unit does, so the two stay in step. Pure Java, no Android.
 */
final class Session {
    static final class Program {
        int hz = 85, onS = 4, offS = 4, totalS = 20 * 60, rampMs = 500;

        Program copy() {
            Program p = new Program();
            p.hz = hz;
            p.onS = onS;
            p.offS = offS;
            p.totalS = totalS;
            p.rampMs = rampMs;
            return p;
        }
    }

    /** A screen zone and the unit channel behind it — XBody's order (owner: a WiEMS suit is an XBody-standard suit). */
    static final String[] ZONE = {"Предно бедро", "Задно бедро", "Седалище", "Корем", "Кръст",
            "Гръб", "Трапец", "Гърди", "Ръце", "Прасец"};
    static final int[] ZONE_CH = {7, 8, 5, 6, 3, 1, 0, 2, 4, 9};
    static final int ZONES = 10, ZONES_LEFT = 5;

    static final int IDLE = 0, RUNNING = 1, PAUSED = 2;
    static final int RAMP_STEPS = 4, ACK_TIMEOUT_MS = 1500;
    private static final int WI_IDLE = 0, WI_COUNT = 1, WI_RUN = 2;
    private static final int T_PLAIN = 0, T_LEVELS = 1, T_PROG = 2;

    private static final class Item {
        final byte[] op;
        final int tag;

        Item(byte[] op, int tag) {
            this.op = op;
            this.tag = tag;
        }
    }

    private Program prog = new Program();
    private int strength;
    private final int[] ch = new int[WiProto.CHANNELS];
    private int state = IDLE;
    private boolean on, finished, startWanted;
    private long endMs, phaseEndMs, rampStartMs, remainMs;
    private int rampStep;
    private int wi = WI_IDLE;
    private boolean wiGo;
    private long wiAt;
    private int battery = -1;
    private final ArrayDeque<Item> out = new ArrayDeque<Item>();
    private boolean inflight;
    private long sentMs;

    Session() {
        for (int i = 0; i < ch.length; i++) ch[i] = 100;
    }

    // ---------------------------------------------------------------- control (the screen)

    /** Just connected: the unit may still run from before — strengths 0 and stopped (as the vendor at connect). */
    void linked() {
        out.clear();
        inflight = false;
        push(WiProto.zero(), T_PLAIN);
        push(WiProto.run(false), T_PLAIN);
        wi = WI_IDLE;
        wiGo = false;
    }

    Program program() {
        return prog;
    }

    void setProgram(Program p) {
        prog = p.copy();
    }

    int strength() {
        return strength;
    }

    void setStrength(int s) {
        strength = Math.max(0, Math.min(Safe.STRENGTH_MAX, s));
        if (impulse()) levels(rampStep);
    }

    int zone(int z) {
        return ch[ZONE_CH[z]];
    }

    void setZone(int z, int pct) {
        ch[ZONE_CH[z]] = Math.max(0, Math.min(100, pct));
        if (impulse()) levels(rampStep);
    }

    void start(long now) {
        if (state == RUNNING) return;
        if (wi == WI_IDLE) {
            // the unit gets the program and starts its count-down now; the clock runs when the unit does (tick)
            push(WiProto.program(prog.hz, prog.onS, prog.offS, 0, 0, WiProto.PHASE_ARM), T_PROG);
            push(WiProto.rest(5, 100), T_PROG);
            push(WiProto.widths(), T_PROG);
            push(WiProto.zero(), T_PROG);
            push(WiProto.run(true), T_PROG);
            wi = WI_COUNT;
            wiGo = false;
            wiAt = now;
        }
        if (preparing()) {
            startWanted = true;
            return;
        }
        startWanted = false;
        if (state == IDLE) remainMs = prog.totalS * 1000L;
        finished = false;
        state = RUNNING;
        endMs = now + remainMs;
        on = true;
        phaseEndMs = now + prog.onS * 1000L;
        rampStartMs = now;
        rampStep = 1;
        levels(rampStep);
    }

    void pause(long now) {
        startWanted = false;
        if (wi == WI_COUNT && state != RUNNING) {
            push(WiProto.zero(), T_PLAIN);
            stopUnit();
        }
        if (state != RUNNING) return;
        remainMs = Math.max(0, endMs - now);
        state = PAUSED;
        on = false;
        outputsOff(true);
    }

    void stop() {
        startWanted = false;
        boolean was = state != IDLE;
        state = IDLE;
        on = false;
        remainMs = 0;
        if (was) outputsOff(true);
        else if (wi != WI_IDLE) {
            push(WiProto.zero(), T_PLAIN);
            stopUnit();
        }
    }

    /** Call often (≥ 10 Hz). */
    void tick(long now) {
        // the count-down is over at the unit's first "01" (the vendor waits for it), else after 6 s; then, as the
        // vendor: strengths 0, the program with phase 0 — and start() sends the strengths
        if (wi == WI_COUNT && !progQueued() && (wiGo || now - wiAt >= 6000)) {
            push(WiProto.zero(), T_PLAIN);
            push(WiProto.program(prog.hz, prog.onS, prog.offS, 0, 0, WiProto.PHASE_RUN), T_PLAIN);
            wi = WI_RUN;
            wiGo = false;
        }
        if (startWanted && !preparing()) start(now);
        if (state != RUNNING) return;
        remainMs = Math.max(0, endMs - now);
        if (now >= endMs) {
            stop();
            finished = true;
            return;
        }
        if (now >= phaseEndMs) {
            on = !on;
            phaseEndMs += (on ? prog.onS : prog.offS) * 1000L;
            if (now >= phaseEndMs) phaseEndMs = now + (on ? prog.onS : prog.offS) * 1000L;
            if (on) {
                rampStartMs = now;
                rampStep = 1;
                levels(rampStep);
            } else {
                outputsOff(false);
            }
            return;
        }
        if (on && rampStep < RAMP_STEPS) {
            int want = 1 + (int) ((now - rampStartMs) * RAMP_STEPS / Math.max(1, prog.rampMs));
            if (want > RAMP_STEPS) want = RAMP_STEPS;
            if (want > rampStep) {
                rampStep = want;
                levels(rampStep);
            }
        }
    }

    /** The unit's run characteristic notified ("01" each second while it runs). */
    void runNotify(byte[] v) {
        if (v != null && v.length > 0 && v[0] == 1 && wi == WI_COUNT) wiGo = true;
    }

    void setBattery(int pct) {
        if (pct >= 0 && pct <= 100) battery = pct;
    }

    // ---------------------------------------------------------------- state for the screen

    int state() {
        return state;
    }

    boolean impulse() {
        return state == RUNNING && on;
    }

    boolean finished() {
        return finished;
    }

    void clearFinished() {
        finished = false;
    }

    boolean startPending() {
        return startWanted;
    }

    boolean preparing() {
        return wi == WI_COUNT || progQueued();
    }

    int battery() {
        return battery;
    }

    int secondsLeft(long now) {
        if (state == RUNNING) return (int) ((Math.max(0, endMs - now) + 999) / 1000);
        if (state == PAUSED) return (int) ((remainMs + 999) / 1000);
        return prog.totalS;
    }

    int phaseMsLeft(long now) {
        return state == RUNNING ? (int) Math.max(0, phaseEndMs - now) : 0;
    }

    /** The unit's "outputs off" — written straight out when the app closes or the screen leaves. */
    static byte[] safeOp() {
        return WiProto.run(false);
    }

    // ---------------------------------------------------------------- link (one write in flight)

    byte[] next(long now) {
        if (inflight || out.isEmpty()) return null;
        inflight = true;
        sentMs = now;
        return out.peekFirst().op;
    }

    void ack() {
        if (inflight && !out.isEmpty()) out.pollFirst();
        inflight = false;
    }

    boolean ackLate(long now) {
        return inflight && now - sentMs > ACK_TIMEOUT_MS;
    }

    // ---------------------------------------------------------------- internals

    private void push(byte[] op, int tag) {
        out.addLast(new Item(op, tag));
    }

    /** A newer output step makes the queued, not yet sent ones useless (a quick ± run). */
    private void dropLevels() {
        Iterator<Item> it = out.iterator();
        boolean first = true;
        while (it.hasNext()) {
            Item x = it.next();
            if (first && inflight) {
                first = false;
                continue;
            }
            first = false;
            if (x.tag == T_LEVELS) it.remove();
        }
    }

    private boolean progQueued() {
        for (Item x : out) if (x.tag == T_PROG) return true;
        return false;
    }

    int level(int c, int k) {
        int s = strength * k / RAMP_STEPS;
        return Math.min(WiProto.MAX_CURRENT, ch[c] * s / 100);
    }

    private void levels(int k) {
        dropLevels();
        if (wi != WI_RUN) return;                    // counting down: the strengths go when it runs
        int[] c = new int[WiProto.CHANNELS];
        for (int i = 0; i < c.length; i++) c[i] = level(i, k);
        push(WiProto.currents(c), T_LEVELS);
    }

    private void outputsOff(boolean stopUnit) {
        dropLevels();
        push(WiProto.zero(), T_LEVELS);
        if (stopUnit) stopUnit();
    }

    private void stopUnit() {
        push(WiProto.run(false), T_PLAIN);
        wi = WI_IDLE;
        wiGo = false;
    }
}
