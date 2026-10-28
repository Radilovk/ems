package bg.xems.wiems;

import com.isaigu.gymapp.bodytech.BtProto;
import com.isaigu.gymapp.bodytech.WiProto;

import java.util.ArrayDeque;
import java.util.Iterator;

/**
 * One unit's training — the XBody panel's Suit (xbody/panel/core/suit.cpp) in Java: program, strength, zones, the
 * impulse / pause clock with a soft rise, and the unit's writes queued one at a time (next() → write → ack()).
 * WiEMS ({@link Dev#WIEMS}): the unit runs its own work / rest once started; ▶ starts it (its ~4 s count-down) and the
 * clock runs when the unit does, so the two stay in step; a write is [selector, value…] (WiProto).
 * XEMS suit / bodytech suit: the tablet runs impulse / pause / rise itself (as the stock XEMS row and the panel); a
 * write is the suit's frame (xemsproto.h / BtProto). Pure Java, no Android.
 */
final class Session {
    static final class Program {
        int hz = 85, onS = 4, offS = 4, totalS = 20 * 60, rampMs = 1000, downS;   // ramp: whole s (the unit's Ru)
        /** Pulse width, µs ({@link Safe#US_MIN}..{@link Safe#US_MAX}) — every kind; WiEMS: {@link #wiWidths}. */
        int us = 350;
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
            p.us = us;
            return p;
        }

        /** The unit's own rise (Ru) in whole seconds. */
        int rampS() {
            return (rampMs + 500) / 1000;
        }
    }

    /**
     * A screen zone and the body part behind it, in XBody's measured channel order ({@link Channels}: 5 Корем,
     * 6 Седалище — the old order had these two swapped). Zones, procedure weights and the figures work on parts;
     * the unit channel of a part comes from the suit's map (set in the service mode) only when the strengths go out.
     */
    static final String[] ZONE = {"Предно бедро", "Задно бедро", "Седалище", "Корем", "Кръст",
            "Гръб", "Трапец", "Гърди", "Ръце", "Прасец"};
    static final int[] ZONE_PART = {7, 8, 6, 5, 3, 1, 0, 2, 4, 9};
    static final int ZONES = 10, ZONES_LEFT = 5;
    /** bodytech: no chest / calf channel, its two thighs one zone (owner, the XEMS row 1.1.456) — 4 + 3 zones. */
    private static final String[] BT_ZONE = {"Бедра", "Седалище", "Корем", "Кръст", "Гръб", "Трапец", "Ръце"};
    private static final int[][] BT_PARTS = {{7, 8}, {6}, {5}, {3}, {1}, {0}, {4}};
    private static final int[][] PARTS10 = {{7}, {8}, {6}, {5}, {3}, {1}, {0}, {2}, {4}, {9}};
    /** The ramp's steps for the suits the tablet drives (XEMS / bodytech): the panel's RAMP_STEPS. */
    static final int RAMP_STEPS = 4;

    static final int IDLE = 0, RUNNING = 1, PAUSED = 2;
    /** The vendor's pace: one strength write per change, ≥ 0.8 s apart, after the finger has settled (0.3 s). */
    static final int ACK_TIMEOUT_MS = 1500, LEVELS_GAP_MS = 800, LEVELS_SETTLE_MS = 300;
    /** The unit's top strength byte (the vendor's 100 %). */
    static final int UNIT_MAX = WiProto.UNIT_MAX;
    private static final int WI_IDLE = 0, WI_COUNT = 1, WI_RUN = 2;
    private static final int T_PLAIN = 0, T_LEVELS = 1, T_PROG = 2;

    private static final class Item {
        final byte[] op;
        final int tag;
        int btReg, btCh, btVal;     // bodytech: 1 Hz / 2 intensity of channel btCh (0..7), 3 SEL mask — tracked when sent
        int[] levels;               // a strengths write: its values (they count as the unit's once it goes)
        long at;                    // when it was asked (a newer value replaces it and starts the wait again)
        int[] zones;                // the zones (by unit channel) and strength behind it
        int strength;

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
    /** Per body part, % of the trainer's level the procedure gives now (its envelope, zone weights or wave). */
    private final int[] share = new int[WiProto.CHANNELS];
    private int strength;
    private final int[] ch = new int[WiProto.CHANNELS];                 // zone % per body part
    private final int[] unitOf = new int[Channels.PARTS];   // body part → unit channel
    private int state = IDLE;
    private boolean on, finished, startWanted;
    private long endMs, phaseEndMs, rampStartMs, remainMs;
    /** The strengths the unit has — sent or on air (null: unknown / zero); a change is written once, never repeated. */
    private int[] sent;
    /** Which unit ({@link Dev}): WiEMS, XEMS suit, bodytech suit. */
    final int kind;
    private final String[] zoneName;
    private final int[][] zoneParts;
    private int rampStep;
    private long lastBattMs, lastSyncMs;
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
        this(Dev.WIEMS);
    }

    Session(int kind) {
        this.kind = kind;
        zoneName = kind == Dev.BODYTECH ? BT_ZONE : ZONE;
        zoneParts = kind == Dev.BODYTECH ? BT_PARTS : PARTS10;
        System.arraycopy(Channels.DEFAULT[kind][Channels.XBODY], 0, unitOf, 0, unitOf.length);
        for (int i = 0; i < ch.length; i++) share[i] = 100;   // every zone starts at 0 (owner): raised one by one
        java.util.Arrays.fill(btHz, -1);
        java.util.Arrays.fill(btInt, -1);
    }

    // ---------------------------------------------------------------- the zones of this unit

    int zones() {
        return zoneName.length;
    }

    /** Zones in the left column (XBody's): the rest go right. */
    int zonesLeft() {
        return kind == Dev.BODYTECH ? 4 : ZONES_LEFT;
    }

    String zoneName(int z) {
        return zoneName[z];
    }

    /** The body part of zone z (the first, for bodytech's "Бедра"). */
    int part(int z) {
        return zoneParts[z][0];
    }

    /** The zone that drives body part p (−1: none on this unit — bodytech's chest / calf). */
    int zoneOfPart(int p) {
        for (int z = 0; z < zoneParts.length; z++)
            for (int q : zoneParts[z]) if (q == p) return z;
        return -1;
    }

    /** A part's zone % (also one this unit has no channel for: kept for the next unit). */
    int partLevel(int p) {
        return ch[p];
    }

    // ---------------------------------------------------------------- control (the screen)

    /** Just connected: the unit may still run from before — strengths 0 and stopped (as the vendor at connect). */
    void linked() {
        out.clear();
        inflight = false;
        lastBattMs = lastSyncMs = lastTick;
        if (kind == Dev.XEMS) {
            push(XemsProto.stop(), T_PLAIN);         // the stock row's init: stop first
            push(XemsProto.battery(), T_PLAIN);
            return;
        }
        if (kind == Dev.BODYTECH) {
            java.util.Arrays.fill(btHz, -1);
            java.util.Arrays.fill(btInt, -1);
            btSel = -1;
            push(BtProto.batteryInit(), T_PLAIN);
            push(BtProto.batteryInit2(), T_PLAIN);
            push(BtProto.batterySync(), T_PLAIN);
            push(BtProto.sync(6), T_PLAIN);
            btProgram();
            return;
        }
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
        userChange = true;
        changed();
        userChange = false;
    }

    int zone(int z) {
        return ch[part(z)];
    }

    void setZone(int z, int pct) {
        pct = Math.max(0, Math.min(100, pct));
        int c = part(z);
        if (pct != ch[c]) log("zone " + zoneName[z] + " (ch " + unitCh(z) + ") " + ch[c] + " → " + pct + "%");
        for (int q : zoneParts[z]) ch[q] = pct;
        userChange = true;
        changed();
        userChange = false;
    }

    /** A zone / strength / map change: the output now (WiEMS keeps its strengths through its own work / rest). */
    private void changed() {
        if (kind == Dev.WIEMS) {
            if (state == RUNNING) levels();
        } else if (impulse() || continuous()) levels();
        else if (second()) pauseLevels();
    }

    /** The unit channel of each body part (the suit's map); a running unit gets the new layout at once. */
    void setMap(int[] partToUnit) {
        if (!java.util.Arrays.equals(partToUnit, unitOf)) log("channel map → " + java.util.Arrays.toString(partToUnit));
        System.arraycopy(partToUnit, 0, unitOf, 0, unitOf.length);
        changed();
    }

    /** The unit channel zone z drives now (−1: none). */
    int unitCh(int z) {
        return unitOf[part(z)];
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
        if (kind == Dev.WIEMS && wi == WI_IDLE) {
            // the unit gets the program and starts its count-down now; the clock runs when the unit does (tick)
            push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_ARM), T_PROG);
            push(rest(cur), T_PROG);
            push(wiWidths(cur.us), T_PROG);
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
        if (kind == Dev.XEMS) push(XemsProto.start(), T_PLAIN);
        else if (kind == Dev.BODYTECH && btUs != cur.us) {
            for (int c = 1; c <= BtProto_CH; c++) push(BtProto.width(c, cur.us), T_PLAIN);
            btUs = cur.us;
        }
        rampStartMs = now;
        rampStep = 1;                                   // XEMS / bodytech: the tablet's soft rise
        levels();                                       // WiEMS: the unit rises by itself (Ru) — as the vendor
    }

    /**
     * WiEMS pulse width per body part (0x001c, one byte per unit channel): the vendor's widths (capture 1, every
     * program: 7f 7f 6d 49 7f 7f 64 52 7f 52) read through the measured XBody map — the big muscles at 0x7F, trapezius
     * 0x49, arms / calf 0x52, chest 0x64, lower back 0x6D. Before 1.19 those bytes went out as they were, per unit
     * channel: any other map (an XEMS suit, a service-mode swap) put the narrowest widths on the glutes and the
     * hamstrings, and no program could change them. They stand for {@link #WI_US_REF} µs; the session's width scales
     * them, never over 0x7F (the vendor's top — the unit's own µs scale is not known yet).
     */
    static final int[] WI_PART_WIDTH = {0x49, 0x7F, 0x64, 0x6D, 0x52, 0x7F, 0x7F, 0x7F, 0x7F, 0x52};
    static final int WI_US_REF = 350, WI_WIDTH_MAX = 0x7F;

    /** The unit's width byte for body part c at us µs. */
    static int wiWidth(int c, int us) {
        return Math.max(1, Math.min(WI_WIDTH_MAX, (WI_PART_WIDTH[c] * us + WI_US_REF / 2) / WI_US_REF));
    }

    /** The widths write: each unit channel the width of the body part on it (a channel nobody uses: the narrowest). */
    byte[] wiWidths(int us) {
        byte[] b = new byte[WiProto.CHANNELS + 1];
        b[0] = (byte) WiProto.OP_WIDTHS;
        int[] w = new int[WiProto.CHANNELS];
        java.util.Arrays.fill(w, -1);
        for (int c = 0; c < unitOf.length; c++) {
            int u = unitOf[c];
            if (u >= 0 && u < w.length) w[u] = Math.max(w[u], wiWidth(c, us));   // two parts on one lead: the wider
        }
        for (int u = 0; u < w.length; u++) b[u + 1] = (byte) (w[u] >= 0 ? w[u] : wiWidth(0, us));
        return b;
    }

    /** The unit's rest: continuous = the same Hz at full; the double impulse's Hz and %; else 0 % (nothing). */
    private static byte[] rest(Program p) {
        if (p.cont) return WiProto.rest(p.hz, 100);
        return WiProto.rest(p.dbl ? p.dblHz : 5, p.dbl ? Math.min(100, p.dblPct) : 0);
    }

    /** What every channel gives on cycle k of phase i (the procedure's envelope × zone weight, or its wave). */
    private void setShare(int i, long ts) {
        Procs.Seg g = plan.segs[i];
        for (int c = 0; c < share.length; c++) share[c] = Procs.share(g, cycle, ts, c);   // per body part
    }

    void pause(long now) {
        log("PAUSE (state " + state + ", unit " + wi + ")");
        startWanted = false;
        if (kind == Dev.WIEMS && wi == WI_COUNT && state != RUNNING) {    // cancelled in the count-down: what was not sent never goes
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
        java.util.Arrays.fill(btHz, -1);
        java.util.Arrays.fill(btInt, -1);
        btSel = -1;
        btUs = -1;
    }

    /** Call often (≥ 10 Hz). */
    void tick(long now) {
        lastTick = now;
        if (kind != Dev.WIEMS) {
            suitTick(now);
            return;
        }
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
                if (kind == Dev.WIEMS) push(WiProto.program(cur.hz, cur.onS, cur.offS, cur.rampS(), cur.downS, WiProto.PHASE_RUN), T_PLAIN);
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
        // 0x80 | code: the unit's protection tripped (seen: "86", then "00" ~30 ms later). NOT a channel number — the
        // owner's traces got 86 after raising Корем (ch 6) and after raising Предно бедро (ch 7). It came every time
        // one zone went out different from the others (by even one step) with no suit on, never while all moved
        // together: the unit's current check (the vendor's "Curr_comp": what it sets vs. what it measures, see the
        // status characteristic). The zones and strength go back to what the unit last ran with — else the next ▶
        // sends the same and it trips again — and the screen names what changed.
        int b = v[0] & 0xFF;
        if ((b & 0x80) != 0 && wi == WI_RUN && state == RUNNING) {
            tripCode = b;
            lastTrip = b;
            tripZone = -1;
            int[] okCh = accepted != null ? accepted : null;
            for (int z = 0; z < ZONES && okCh != null; z++) {
                int c = ZONE_PART[z];
                if (onAir != null && onAir[c] != okCh[c] && tripZone < 0) tripZone = z;
            }
            if (okCh != null) {
                for (int z = 0; z < ZONES; z++) {
                    int c = ZONE_PART[z];
                    if (ch[c] != okCh[c]) log("zone " + ZONE[z] + " " + ch[c] + " → " + okCh[c] + "% (as the unit last ran)");
                    ch[c] = okCh[c];
                }
                if (strength != acceptedStrength) log("strength " + strength + " → " + acceptedStrength + "% (as the unit last ran)");
                strength = acceptedStrength;
            }
            unitHalted("the unit reported " + Integer.toHexString(b) + " (its current protection)"
                    + (tripZone >= 0 ? " after " + ZONE[tripZone] + " changed" : ""));
            return;
        }
        // "00" while it should run: the unit stopped by itself — show it and let ▶ arm it again
        if (v[0] == 0 && wi == WI_RUN && state == RUNNING) unitHalted("the unit notified \"00\" (it stopped)");
    }

    private int tripCode, tripZone = -1;
    /** The zones (by body part) and strength the unit ran with before the write now on air / the last one. */
    private int[] accepted, onAir;
    private int acceptedStrength, onAirStrength;

    private int lastTrip;

    /** The unit's protection code of the last trip (0: never). */
    int tripCodeLast() {
        return lastTrip;
    }

    /** Taken once by the screen: the zone whose change tripped the unit (−1: none / unknown); −2: a trip, no zone. */
    int takeTripZone() {
        if (tripCode == 0) return -1;
        int z = tripZone;
        tripCode = 0;
        tripZone = -1;
        return z < 0 ? -2 : z;
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
    byte[] safeOp() {
        return safeOp(kind);
    }

    static byte[] safeOp(int kind) {
        return kind == Dev.XEMS ? XemsProto.stop() : kind == Dev.BODYTECH ? BtProto.allOff() : WiProto.run(false);
    }

    // ---------------------------------------------------------------- link (one write in flight)

    byte[] next(long now) {
        if (inflight || out.isEmpty()) return null;
        if (kind != Dev.WIEMS) {                     // the suits: as fast as they answer (each write's ACK)
            Item f = out.peekFirst();
            if (f.btReg == 1) btHz[f.btCh] = f.btVal;   // what the suit has from now on
            else if (f.btReg == 2) btInt[f.btCh] = f.btVal;
            else if (f.btReg == 3) btSel = f.btVal;
            inflight = true;
            sentMs = now;
            return f.op;
        }
        // strengths at most every LEVELS_GAP_MS (the vendor: one write per change, ~1 s apart); a newer one that
        // comes meanwhile replaces it, so a finger on the slider is one write, not dozens
        if (out.peekFirst().tag == T_LEVELS
                && (now - levelsMs < LEVELS_GAP_MS || now - out.peekFirst().at < LEVELS_SETTLE_MS)) return null;
        if (out.peekFirst().tag == T_LEVELS) {
            levelsMs = now;
            sent = out.peekFirst().levels;           // what the unit has from now on
            if (onAir != null) {                     // the previous one ran: it is the "last good"
                accepted = onAir;
                acceptedStrength = onAirStrength;
            }
            onAir = out.peekFirst().zones;
            onAirStrength = out.peekFirst().strength;
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

    /** What body part c gets now (0..100 % of the unit's scale): its level in the impulse, 0 in the pause. */
    int liveLevel(int c) {
        if (kind != Dev.WIEMS) {
            if (second()) return Math.min(100, level(c) * cur.dblPct / 100);
            if (continuous()) return level(c);
            return impulse() ? level(c) * rampStep / RAMP_STEPS : 0;
        }
        if (wi != WI_RUN) return 0;
        if (second()) return Math.min(100, level(c) * cur.dblPct / 100);
        if (continuous()) return level(c);
        return impulse() ? level(c) : 0;
    }

    /** Body part c in % of the unit's scale: zone % × strength % × the procedure's share. */
    int level(int c) {
        return Math.min(100, ch[c] * strength / 100 * share[c] / 100);
    }

    /**
     * The byte the unit takes for p %: its scale is the vendor's — 100 % on the vendor's slider = ~19 (the capture:
     * 94 % → 18, 80 % → 15, 61 % → 12), never the 0..100 we sent before (5× over the vendor's top).
     */
    static int unitValue(int pct) {
        return WiProto.unit(pct);
    }

    /** The strengths now, written only when they changed (the unit keeps them through its own work / rest). */
    private boolean userChange;

    private void levels() {
        dropLevels();
        if (kind == Dev.XEMS) {
            xemsLevels(strength * rampStep / RAMP_STEPS, cur.hz);
            return;
        }
        if (kind == Dev.BODYTECH) {
            btLevels(rampStep, 100, cur.hz);
            return;
        }
        if (wi != WI_RUN) return;                    // counting down: the strengths go when it runs
        int[] c = new int[WiProto.CHANNELS];
        for (int i = 0; i < c.length; i++) c[unitOf[i]] = unitValue(level(i));   // part i → its unit channel
        // compared with what was really sent (a queued, dropped write never counts — else a quick A → B → A
        // would leave the unit on B)
        if (java.util.Arrays.equals(c, sent)) return;
        Item it = new Item(WiProto.currents(c), T_LEVELS);
        it.levels = c;
        it.zones = ch.clone();
        it.strength = strength;
        it.at = userChange ? lastTick : -100000;   // a start / a phase goes at once; a finger waits to settle
        userChange = false;
        out.addLast(it);
    }

    private void outputsOff(boolean stopUnit) {
        dropLevels();
        if (kind == Dev.XEMS) {
            push(XemsProto.run(remainS(), cur.hz, cur.us, cur.onS, cur.offS, false), stopUnit ? T_PLAIN : T_LEVELS);
            if (stopUnit) push(XemsProto.stop(), T_PLAIN);
            return;
        }
        if (kind == Dev.BODYTECH) {
            if (stopUnit) {                          // pause / stop: every channel off
                pushBt(BtProto.allOff(), T_PLAIN, 3, 0, 0);
                return;
            }
            // the phase's pause: strength 0 with the channels still on (probe 0.4: silent) — switching them off and
            // on at every impulse gave a hard knock at its start (owner, the XEMS row 1.1.450)
            int[] want = new int[BtProto_CH];
            btPush(want, cur.hz);
            return;
        }
        push(WiProto.zero(), T_PLAIN);
        sent = null;
        if (stopUnit) stopUnit();
    }

    private void stopUnit() {
        push(WiProto.run(false), T_PLAIN);
        wi = WI_IDLE;
        wiGo = false;
    }

    // ---------------------------------------------------------------- XEMS / bodytech: the tablet runs the phases

    private static final int BtProto_CH = 8;
    /** bodytech: what the suit has (sent): Hz and intensity per channel, the SEL mask; −1 = unknown. */
    private final int[] btHz = new int[BtProto_CH], btInt = new int[BtProto_CH];
    private int btSel = -1, btUs = -1;

    private long remainMsNow() {
        return state == RUNNING ? Math.max(0, endMs - lastTick) : remainMs;
    }

    private int remainS() {
        return (int) (remainMsNow() / 1000);
    }

    private void suitTick(long now) {
        if (kind == Dev.XEMS) {
            if (now - lastBattMs >= 10000) {
                lastBattMs = now;
                push(XemsProto.battery(), T_PLAIN);
            }
        } else {
            if (now - lastSyncMs >= 4500) {          // the suit's 6 s watchdog
                lastSyncMs = now;
                push(BtProto.sync(6), T_PLAIN);
            }
            if (now - lastBattMs >= 10000) {
                lastBattMs = now;
                push(BtProto.batterySync(), T_PLAIN);
            }
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
            int i = plan.segAt(prog.totalS * 1000L - remainMs);
            if (i >= 0 && i != seg) {
                seg = i;
                cycle = 0;
                cur = segProgram(i, 0, age60);
                setShare(i, 0);
                on = true;
                phaseEndMs = now + cur.onS * 1000L;
                rampStartMs = now;
                rampStep = 1;
                levels();
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
                rampStep = 1;
                levels();
            } else if (cur.cont) {
                // continuous (Cardio): the rest is the client's, the impulse goes on as it is
            } else if (cur.dbl) {
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
                levels();
            }
        }
    }

    /** The double impulse's output in the pause: its Hz, its % of the strength. */
    private void pauseLevels() {
        dropLevels();
        if (kind == Dev.XEMS) xemsLevels(Math.min(100, strength * cur.dblPct / 100), cur.dblHz);
        else if (kind == Dev.BODYTECH) btLevels(RAMP_STEPS, cur.dblPct, cur.dblHz);
    }

    /** XEMS: cmd 1 (every channel's % in the suit's order, the strength) then cmd 3 (the rhythm, output on). */
    private void xemsLevels(int str, int hz) {
        int[] pct = new int[XemsProto.CHANNELS];
        for (int p = 0; p < ch.length; p++) {
            int u = unitOf[p];
            if (u >= 0 && u < pct.length) pct[u] = Math.min(100, ch[p] * share[p] / 100);
        }
        push(XemsProto.strengths(pct, str), T_LEVELS);
        push(XemsProto.run(remainS(), hz, cur.us, cur.onS, cur.offS, true), T_LEVELS);
    }

    /** bodytech: every channel's intensity at k / RAMP_STEPS of the strength × pct %, at hz. */
    private void btLevels(int k, int pct, int hz) {
        int[] want = new int[BtProto_CH];
        for (int p = 0; p < ch.length; p++) {
            int u = unitOf[p];
            if (u >= 0 && u < BtProto_CH) want[u] = Math.min(99, level(p) * pct / 100 * k / RAMP_STEPS);   // 100 reads as 0
        }
        btPush(want, hz);
    }

    /** The mapped channels (switched on once per start and left on). */
    private int btMask() {
        int m = 0;
        for (int u : unitOf) if (u >= 0 && u < BtProto_CH) m |= 1 << u;
        return m;
    }

    /**
     * The writes from what the suit has (sent + still queued) to {@code want} at {@code hz}: Hz, then intensities, then
     * the channels on. A new Hz on running channels restarts them (SEL off → on, the last two frames back to back):
     * the suit takes a new period only later (owner, the XEMS row 1.1.452 / 1.1.453).
     */
    private void btPush(int[] want, int hz) {
        int[] h = btHz.clone(), in = btInt.clone();
        int sl = btSel;
        for (Item x : out) {                         // what is still queued counts as had (the dropped never does)
            if (x.btReg == 1) h[x.btCh] = x.btVal;
            else if (x.btReg == 2) in[x.btCh] = x.btVal;
            else if (x.btReg == 3) sl = x.btVal;
        }
        int mask = btMask();
        boolean newHz = false;
        for (int c = 0; c < BtProto_CH; c++)
            if ((mask >> c & 1) != 0 && h[c] != hz) {
                pushBt(BtProto.hz(c + 1, hz), T_LEVELS, 1, c, hz);
                newHz = true;
            }
        for (int c = 0; c < BtProto_CH; c++)
            if ((mask >> c & 1) != 0 && in[c] != want[c]) pushBt(BtProto.intensity(c + 1, want[c]), T_LEVELS, 2, c, want[c]);
        if (newHz && sl > 0) {
            pushBt(BtProto.allOff(), T_LEVELS, 3, 0, 0);
            sl = 0;
        }
        if (sl != mask) pushBt(BtProto.enable(mask), T_LEVELS, 3, 0, mask);
    }

    private void pushBt(byte[] op, int tag, int reg, int c, int v) {
        Item it = new Item(op, tag);
        it.btReg = reg;
        it.btCh = c;
        it.btVal = v;
        out.addLast(it);
    }

    /** The suit's own cycle as one long burst (T2 100 s, no ramps / pause): the tablet runs the phases. */
    private void btProgram() {
        push(BtProto.reset(), T_PROG);
        for (int c = 1; c <= BtProto_CH; c++) {
            pushBt(BtProto.hz(c, prog.hz), T_PROG, 1, c - 1, prog.hz);
            push(BtProto.stepNor(c, BtProto.STEP_NOR_DEFAULT), T_PROG);
            pushBt(BtProto.intensity(c, 0), T_PROG, 2, c - 1, 0);
            push(BtProto.width(c, prog.us), T_PROG);
            push(BtProto.tPeriod(c, 0), T_PROG);
            push(BtProto.t(c, 1, 0), T_PROG);
            push(BtProto.t(c, 2, 100000), T_PROG);
            push(BtProto.t(c, 3, 0), T_PROG);
            push(BtProto.t(c, 4, 0), T_PROG);
            push(BtProto.t1IntStep(c, 1), T_PROG);
            push(BtProto.t1WidthStep(c, 0), T_PROG);
            push(BtProto.t3IntStep(c, 1), T_PROG);
            push(BtProto.t3WidthStep(c, 0), T_PROG);
        }
        pushBt(BtProto.allOff(), T_PROG, 3, 0, 0);
        btUs = prog.us;
    }

    /** A notification from an XEMS / bodytech suit: its battery. */
    void suitNotify(byte[] v) {
        if (kind == Dev.XEMS) setBattery(XemsProto.batteryPct(v));
        else if (kind == Dev.BODYTECH) {
            int raw = BtProto.batteryRaw(v);
            if (raw >= 0) setBattery(BtProto.percent(raw));
        }
    }
}
