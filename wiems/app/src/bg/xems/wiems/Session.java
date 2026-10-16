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
        int hz = 85, onS = 4, offS = 4, totalS = 20 * 60, rampMs = 1000, downS;   // ramp: whole s (the unit's Ru)
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
    static final int ACK_TIMEOUT_MS = 1500, LEVELS_GAP_MS = 600;   // the vendor: ≥ 0.8 s between strength writes
    /** The unit's top strength byte (the vendor's 100 %). */
    static final int UNIT_MAX = 20;
    private static final int WI_IDLE = 0, WI_COUNT = 1, WI_RUN = 2;
    private static final int T_PLAIN = 0, T_LEVELS = 1, T_PROG = 2;

    private static final class Item {
        final byte[] op;
        final int tag;
        int[] levels;               // a strengths write: its values (they count as the unit's once it goes)

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
    /** The strengths the unit has — sent or on air (null: unknown / zero); a change is written once, never repeated. */
    private int[] sent;
    private long levelsMs = -100000;
    private int wi = WI_IDLE;
    private boolean wiGo;
    private long wiAt;
    private int battery = -1;
    private final ArrayDeque<Item> out = new ArrayDeque<Item>();
    private boolean inflight;
    private long sentMs;

    /** Where the session tells what it does and why (the trace); null = nowhere. */
    interface Sink {
        void log(String s);
    }

    Sink sink;

    private void log(String s) {
        if (sink != null) sink.log(s);
    }

    private String haltWhy = "";

    /** Why the unit was taken as stopped the last time ("" = never). */
    String haltReason() {
        return haltWhy;
    }

    Session() {
        for (int i = 0; i < ch.length; i++) share[i] = 100;   // every zone starts at 0 (owner): raised one by one
    }

    // ---------------------------------------------------------------- control (the screen)

    /** Just connected: the unit may still run from before — strengths 0 and stopped (as the vendor at connect). */
    void linked() {
        out.clear();
        inflight = false;
        push(WiProto.zero(), T_PLAIN);
        push(WiProto.run(false), T_PLAIN);
        sent = null;
        wi = WI_IDLE;
        wiGo = false;
    }

    Program program() {
        return prog;
    }

    /** One rhythm (manual, or one of XBody's modes); drops a procedure. Not while running. */
    void setProgram(Program p) {
        if (state == PAUSED) {                       // a new length on pause: the time already done stays done
            long done = prog.totalS * 1000L - remainMs;
            remainMs = Math.max(1000, p.totalS * 1000L - done);
        }
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
        s = Math.max(0, Math.min(Safe.STRENGTH_MAX, s));
        if (s != strength) log("strength " + strength + " → " + s + "%");
        strength = s;
        if (state == RUNNING) levels();
    }

    int zone(int z) {
        return ch[ZONE_CH[z]];
    }

    void setZone(int z, int pct) {
        pct = Math.max(0, Math.min(100, pct));
        if (pct != ch[ZONE_CH[z]]) log("zone " + ZONE[z] + " (ch " + ZONE_CH[z] + ") " + ch[ZONE_CH[z]] + " → " + pct + "%");
        ch[ZONE_CH[z]] = pct;
        if (state == RUNNING) levels();
    }

    void start(long now) {
        if (state == RUNNING) return;
        if (!startWanted) log("START (state " + state + ", unit " + wi + ")");
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
        levels();                                       // the unit rises by itself (Ru) — as the vendor
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
        log("PAUSE (state " + state + ", unit " + wi + ")");
        startWanted = false;
        if (wi == WI_COUNT && state != RUNNING) {    // cancelled in the count-down: what was not sent never goes
            dropQueued(T_PROG);
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
        if (state != IDLE || wi != WI_IDLE) log("STOP (state " + state + ", unit " + wi + ")");
        startWanted = false;
        boolean was = state != IDLE;
        state = IDLE;
        on = false;
        remainMs = 0;
        if (was) outputsOff(true);
        else if (wi != WI_IDLE) {
            dropQueued(T_PROG);
            push(WiProto.zero(), T_PLAIN);
            stopUnit();
        }
    }

    /**
     * The link dropped: the session is kept (zones, strength, program, the time done) and waits on pause — a
     * training is not lost to a radio hiccup. Nothing queued goes anywhere.
     */
    void lost(long now) {
        log("link lost (state " + state + ")");
        if (state == RUNNING) remainMs = Math.max(0, endMs - now);
        if (state != IDLE) state = PAUSED;
        startWanted = false;
        on = false;
        out.clear();
        inflight = false;
        wi = WI_IDLE;
        wiGo = false;
        sent = null;
    }

    /** Call often (≥ 10 Hz). */
    void tick(long now) {
        lastTick = now;
        // the count-down is over at the unit's first "01" (the vendor waits for it), else after 6 s; then, as the
        // vendor: strengths 0, the program with phase 0 — and start() sends the strengths
        if (wi == WI_COUNT && !progQueued() && (wiGo || now - wiAt >= 6000)) {
            runSeenMs = now;
            log(wiGo ? "count-down over (unit \"01\")" : "count-down over (6 s, no \"01\")");
            push(WiProto.zero(), T_PLAIN);
            sent = null;
            push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_RUN), T_PLAIN);
            wi = WI_RUN;
            wiGo = false;
        }
        if (startWanted && !preparing()) start(now);
        if (state != RUNNING) return;
        // the unit notifies "01" every second while it runs; silent for 5 s (after it did notify) = it stopped
        if (wi == WI_RUN && runNotifies && now - runSeenMs > 5000) unitHalted("no \"01\" from the unit for 5 s");
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
                sent = null;
                push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_RUN), T_PLAIN);
                push(rest(cur), T_PLAIN);
                on = true;
                phaseEndMs = now + cur.onS * 1000L;
                levels();
                return;
            }
        }
        if (now >= phaseEndMs) {
            on = !on;
            phaseEndMs += (on ? cur.onS : cur.offS) * 1000L;
            if (now >= phaseEndMs) phaseEndMs = now + (on ? cur.onS : cur.offS) * 1000L;
            // The unit runs its own work / rest (and its rise Ru): as the vendor, nothing is written at a phase
            // change — only a procedure's next impulse may carry new shares (its wave, its envelope).
            if (on && plan != null && seg >= 0) {
                nextCycle(now);
                levels();
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
    void runNotify(byte[] v, long now) {
        if (v == null || v.length == 0) return;
        if (now > lastTick) lastTick = now;
        if (v[0] == 1) {
            runNotifies = true;
            runSeenMs = now;
            // a "01" left over from before a stop must not end a new count-down (it lasts ~4 s)
            if (wi == WI_COUNT && now - wiAt >= 2000) wiGo = true;
        }
        // "00" while it should run: the unit stopped by itself — show it and let ▶ arm it again
        if (v[0] == 0 && wi == WI_RUN && state == RUNNING) unitHalted("the unit notified \"00\" (it stopped)");
    }

    private void unitHalted(String why) {
        haltWhy = why;
        log("UNIT HALTED: " + why + " → pause");
        remainMs = Math.max(0, endMs - lastTick);
        state = PAUSED;
        on = false;
        dropLevels();
        push(WiProto.zero(), T_PLAIN);              // whatever it is doing: 0 and stopped, so ▶ starts clean
        push(WiProto.run(false), T_PLAIN);
        wi = WI_IDLE;
        wiGo = false;
        sent = null;
        unitStopped = true;
    }

    /** Something still waits to go to the unit (keep ticking until it went, also behind another app). */
    boolean busy() {
        return inflight || !out.isEmpty();
    }

    /** Every zone back to 0 (a finished training: the next client starts from nothing). */
    void resetZones() {
        for (int i = 0; i < ch.length; i++) ch[i] = 0;
        resets++;
    }

    private int resets;

    /** Counts the zone resets (a new client): the screen selects ВСИЧКИ again. */
    int resets() {
        return resets;
    }

    private long lastTick, runSeenMs;
    private boolean runNotifies;
    private boolean unitStopped;

    /** The unit stopped by itself (once; the screen shows it). */
    boolean takeUnitStopped() {
        boolean b = unitStopped;
        unitStopped = false;
        return b;
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
        // strengths at most every LEVELS_GAP_MS (the vendor: one write per change, ~1 s apart); a newer one that
        // comes meanwhile replaces it, so a finger on the slider is one write, not dozens
        if (out.peekFirst().tag == T_LEVELS && now - levelsMs < LEVELS_GAP_MS) return null;
        if (out.peekFirst().tag == T_LEVELS) {
            levelsMs = now;
            sent = out.peekFirst().levels;           // what the unit has from now on
        }
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

    /** Drop queued, not yet sent items of a tag. */
    private void dropQueued(int tag) {
        Iterator<Item> it = out.iterator();
        boolean first = true;
        while (it.hasNext()) {
            Item x = it.next();
            if (first && inflight) {
                first = false;
                continue;
            }
            first = false;
            if (x.tag == tag) it.remove();
        }
    }

    private boolean progQueued() {
        for (Item x : out) if (x.tag == T_PROG) return true;
        return false;
    }

    /** What unit channel c gives out now (0..100 % of its scale): its level in the impulse, 0 in the pause. */
    int liveLevel(int c) {
        if (wi != WI_RUN) return 0;
        if (second()) return Math.min(100, level(c) * cur.dblPct / 100);
        if (continuous()) return level(c);
        return impulse() ? level(c) : 0;
    }

    /** Channel c in % of the unit's scale: zone % × strength % × the procedure's share. */
    int level(int c) {
        return Math.min(100, ch[c] * strength / 100 * share[c] / 100);
    }

    /**
     * The byte the unit takes for p %: its scale is the vendor's — 100 % on the vendor's slider = ~19 (the capture:
     * 94 % → 18, 80 % → 15, 61 % → 12), never the 0..100 we sent before (5× over the vendor's top).
     */
    static int unitValue(int pct) {
        return (Math.max(0, Math.min(100, pct)) * UNIT_MAX + 50) / 100;
    }

    /** The strengths now, written only when they changed (the unit keeps them through its own work / rest). */
    private void levels() {
        dropLevels();
        if (wi != WI_RUN) return;                    // counting down: the strengths go when it runs
        int[] c = new int[WiProto.CHANNELS];
        for (int i = 0; i < c.length; i++) c[i] = unitValue(level(i));
        // compared with what was really sent (a queued, dropped write never counts — else a quick A → B → A
        // would leave the unit on B)
        if (java.util.Arrays.equals(c, sent)) return;
        Item it = new Item(WiProto.currents(c), T_LEVELS);
        it.levels = c;
        out.addLast(it);
    }

    private void outputsOff(boolean stopUnit) {
        dropLevels();
        push(WiProto.zero(), T_PLAIN);
        sent = null;
        if (stopUnit) stopUnit();
    }

    private void stopUnit() {
        push(WiProto.run(false), T_PLAIN);
        wi = WI_IDLE;
        wiGo = false;
    }
}
