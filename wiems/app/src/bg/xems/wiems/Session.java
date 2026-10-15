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
        int hz = 85, onS = 4, offS = 4, totalS = 20 * 60, rampMs = 1000, downS;
        /** Double impulse: a second, low impulse in the pause (Hz ≤ 10 and under the main; % of the main strength). */
        boolean dbl;
        int dblHz = 5, dblPct = 50;
        /** Continuous (XBody's Cardio): the pause goes on at the same Hz and strength — work / rest only for the client. */
        boolean cont;

        Program copy() {
            Program p = new Program();
            p.hz = hz;
            p.onS = onS;
            p.offS = offS;
            p.totalS = totalS;
            p.rampMs = rampMs;
            p.dbl = dbl;
            p.dblHz = dblHz;
            p.dblPct = dblPct;
            p.downS = downS;
            p.cont = cont;
            return p;
        }

        /** The unit's own rise (Ru) in whole seconds. */
        int rampS() {
            return (rampMs + 500) / 1000;
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
    /** The rhythm the unit has now: the program, or the procedure's phase (its Hz of this cycle). */
    private Program cur = prog;
    /** A ready procedure (null: one rhythm, prog) — its phases play by the clock. */
    private Procs.Plan plan;
    private int seg = -1, cycle;
    /** Per unit channel, % of the trainer's level the procedure gives now (its envelope, zone weights or wave). */
    private final int[] share = new int[WiProto.CHANNELS];
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
        for (int i = 0; i < ch.length; i++) {
            ch[i] = 100;
            share[i] = 100;
        }
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

    /** One rhythm (manual, or one of XBody's modes); drops a procedure. Not while running. */
    void setProgram(Program p) {
        prog = p.copy();
        plan = null;
        if (state != RUNNING) cur = prog;
    }

    /** A ready procedure at its length: the session's time is the plan's. Not while running. */
    void setPlan(Procs.Plan p, boolean age60) {
        plan = p;
        prog = segProgram(0, 0, age60);
        prog.totalS = p.totalMs() / 1000;
        this.age60 = age60;
        if (state != RUNNING) cur = prog;
    }

    Procs.Plan plan() {
        return plan;
    }

    /** The procedure's phase now (−1: none). */
    int seg() {
        return plan == null || state == IDLE ? -1 : seg;
    }

    private boolean age60;

    private Program segProgram(int i, int k, boolean a60) {
        Procs.Seg g = plan.segs[i];
        Program p = g.program(Procs.hzOf(g, k));
        p.totalS = prog.totalS;
        Safe.apply(p, a60);
        return p;
    }

    int strength() {
        return strength;
    }

    void setStrength(int s) {
        strength = Math.max(0, Math.min(Safe.STRENGTH_MAX, s));
        if (impulse()) levels(rampStep);
        else if (second() || continuous()) pauseLevels();
    }

    int zone(int z) {
        return ch[ZONE_CH[z]];
    }

    void setZone(int z, int pct) {
        ch[ZONE_CH[z]] = Math.max(0, Math.min(100, pct));
        if (impulse()) levels(rampStep);
        else if (second() || continuous()) pauseLevels();
    }

    void start(long now) {
        if (state == RUNNING) return;
        if (state == IDLE && plan != null) {         // a procedure starts at its first phase
            seg = 0;
            cycle = 0;
            cur = segProgram(0, 0, age60);
            setShare(0, 0);
        } else if (plan == null) {
            cur = prog;
            for (int i = 0; i < share.length; i++) share[i] = 100;
        }
        if (wi == WI_IDLE) {
            // the unit gets the program and starts its count-down now; the clock runs when the unit does (tick)
            push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_ARM), T_PROG);
            push(rest(cur), T_PROG);
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
        phaseEndMs = now + cur.onS * 1000L;
        rampStartMs = now;
        rampStep = cur.rampS() > 0 ? RAMP_STEPS : 1;   // the unit rises by itself (Ru)
        levels(rampStep);
    }

    /** The unit's rest: continuous = the same Hz at full; the double impulse's Hz and %; else 0 % (nothing). */
    private static byte[] rest(Program p) {
        if (p.cont) return WiProto.rest(p.hz, 100);
        return WiProto.rest(p.dbl ? p.dblHz : 5, p.dbl ? Math.min(100, p.dblPct) : 0);
    }

    /** What every channel gives on cycle k of phase i (the procedure's envelope × zone weight, or its wave). */
    private void setShare(int i, long ts) {
        Procs.Seg g = plan.segs[i];
        for (int c = 0; c < share.length; c++) share[c] = Procs.share(g, cycle, ts, c);
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
            push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_RUN), T_PLAIN);
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
        if (plan != null) {                             // a procedure: its next phase by the clock
            long el = prog.totalS * 1000L - remainMs;
            int i = plan.segAt(el);
            if (i >= 0 && i != seg) {
                // the unit takes the phase's rhythm while it runs (as the vendor's program write after the count-down)
                seg = i;
                cycle = 0;
                cur = segProgram(i, 0, age60);
                setShare(i, 0);
                dropLevels();
                push(WiProto.zero(), T_PLAIN);         // outputs 0 while the rhythm changes (kept: not a level)
                push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_RUN), T_PLAIN);
                push(rest(cur), T_PLAIN);
                on = true;
                phaseEndMs = now + cur.onS * 1000L;
                rampStartMs = now;
                rampStep = cur.rampS() > 0 ? RAMP_STEPS : 1;
                levels(rampStep);
                return;
            }
        }
        if (now >= phaseEndMs) {
            on = !on;
            phaseEndMs += (on ? cur.onS : cur.offS) * 1000L;
            if (now >= phaseEndMs) phaseEndMs = now + (on ? cur.onS : cur.offS) * 1000L;
            if (on) {
                if (plan != null && seg >= 0) nextCycle(now);
                rampStartMs = now;
                rampStep = cur.rampS() > 0 ? RAMP_STEPS : 1;   // the unit rises by itself (Ru)
                levels(rampStep);
            } else if (cur.dbl || cur.cont) {
                pauseLevels();
            } else {
                outputsOff(false);
            }
            return;
        }
        if (on && rampStep < RAMP_STEPS) {
            int want = 1 + (int) ((now - rampStartMs) * RAMP_STEPS / Math.max(1, cur.rampMs));
            if (want > RAMP_STEPS) want = RAMP_STEPS;
            if (want > rampStep) {
                rampStep = want;
                levels(rampStep);
            }
        }
    }

    /** A procedure's next impulse: the wave's next group, the envelope now, and 3 ↔ 8 Hz by cycle. */
    private void nextCycle(long now) {
        cycle++;
        Procs.Seg g = plan.segs[seg];
        setShare(seg, prog.totalS * 1000L - remainMs - plan.segStart(seg));
        if (g.hz2 > 0) {
            Program p = segProgram(seg, cycle, age60);
            if (p.hz != cur.hz) {
                cur = p;
                push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_RUN), T_PLAIN);
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

    /** The pause with the double impulse on: the unit gives its second impulse (rest Hz × rest %). */
    boolean second() {
        return state == RUNNING && !on && cur.dbl && !cur.cont;
    }

    /** Continuous (Cardio): the pause is the client's rest, the impulse goes on. */
    boolean continuous() {
        return state == RUNNING && !on && cur.cont;
    }

    /** The rhythm the unit has now (the procedure's phase, or the program). */
    Program live() {
        return cur;
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

    /** What unit channel c gives out now (0..100): its level in the impulse (with the rise), 0 in the pause. */
    int liveLevel(int c) {
        if (wi != WI_RUN) return 0;
        if (second()) return Math.min(100, level(c, RAMP_STEPS) * cur.dblPct / 100);
        if (continuous()) return level(c, RAMP_STEPS);
        return impulse() ? level(c, rampStep) : 0;
    }

    int level(int c, int k) {
        int s = strength * k / RAMP_STEPS;
        return Math.min(WiProto.MAX_CURRENT, ch[c] * s / 100 * share[c] / 100);
    }

    private void levels(int k) {
        dropLevels();
        if (wi != WI_RUN) return;                    // counting down: the strengths go when it runs
        int[] c = new int[WiProto.CHANNELS];
        for (int i = 0; i < c.length; i++) c[i] = level(i, k);
        push(WiProto.currents(c), T_LEVELS);
    }

    /** The second impulse is the unit's own (its rest at the program's start): the strengths stay as in the impulse. */
    private void pauseLevels() {
        dropLevels();
        if (wi != WI_RUN) return;
        int[] c = new int[WiProto.CHANNELS];
        for (int i = 0; i < c.length; i++) c[i] = level(i, RAMP_STEPS);
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
