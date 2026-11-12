package bg.xems.wiems;

import com.isaigu.gymapp.bodytech.WiProto;

import java.util.ArrayList;
import java.util.List;

/**
 * Real-use scenarios against a simulated WiEMS unit (wiems/PROTOCOL.md + the vendor's own writes in the capture):
 * the unit counts down ~4 s after "25", notifies "01" every second while it runs and "00" ~1.5 s after a stop, runs
 * its own work / rest. The driver is MainActivity's loop (50 ms tick, one write in flight, ack ~40 ms later, the
 * link dropping and coming back as MainActivity does it). Every scenario checks what the vendor never does — the
 * likely reasons a unit locks up — and that a training always ends with the unit stopped at 0.
 */
public class UnitSim {
    static int fails, checks;

    static void ok(String what, boolean cond, String detail) {
        checks++;
        if (!cond) {
            fails++;
            System.out.println("FAIL " + what + (detail.length() > 0 ? ": " + detail : ""));
        }
    }

    /** The simulated unit. */
    static final class Unit {
        static final int IDLE = 0, COUNT = 1, RUN = 2;
        int state = IDLE;
        long countEnd, nextNotify, stopNotifyAt = -1, lateOneAt = -1;
        int starts;
        int[] cur = new int[10];
        int hz, work, rest, ru;
        final List<String> faults = new ArrayList<String>();
        final List<Long> levelWrites = new ArrayList<Long>();
        final List<byte[]> notify = new ArrayList<byte[]>();
        int writes;
        boolean silent;             // stops notifying (a half-dead link)
        boolean refuses;            // takes "25" but never runs (its minutes are used up?) — owner, v1.19
        int quotaLeft = -1;         // v1.25: minutes left of its quota; "25" with Dur > that → "02", stays idle
        boolean quotaGone;          // every "25" → "02" (whatever the Dur)
        int dur = 41;
        // v1.26: the minutes counter as one hypothesis — +1 per whole minute of ONE run (a stop resets the minute);
        // a run that reaches the quota stops by itself ("00")
        long counter = 73160, quota = -1, runStart = -1;
        int haltAtQuota;

        void write(byte[] op, long t) {
            writes++;
            byte[] v = WiProto.value(op);
            int sel = op[0];
            if (sel == WiProto.OP_CURRENTS) {
                // the unit's check (decoded from the vendor's capture, owner's traces): the XOR of the ten 7-bit
                // values must be in bit 7 of channels 3..7 — else "86", "00", stopped
                int x = 0, bits = 0;
                for (int i = 0; i < 10; i++) x ^= v[i] & 0x7F;
                for (int k = 0; k < 5; k++) if ((v[3 + k] & 0x80) != 0) bits |= 0x10 >> k;
                boolean badCheck = (x & 0x1F) != bits;
                for (int i = 0; i < 10; i++) {
                    int b = v[i] & 0x7F;
                    if (b > Session.UNIT_MAX) faults.add("t=" + t + " channel " + i + " byte " + b + " over the vendor's top");
                    cur[i] = b;
                }
                boolean nonzero = false;
                for (int b : cur) nonzero |= b != 0;
                if (nonzero && state != RUN) faults.add("t=" + t + " strengths while the unit does not run");
                if (badCheck) {
                    faults.add("t=" + t + " currents check missing (the unit trips: 86)");
                    if (state == RUN) {
                        notify.add(new byte[] {(byte) 0x86});
                        notify.add(new byte[] {0});
                        state = IDLE;
                        cur = new int[10];
                    }
                }
                levelWrites.add(t);
                int n = 0;
                for (long w : levelWrites) if (t - w < 1000) n++;
                if (n > 4) faults.add("t=" + t + " " + n + " strength writes in 1 s (the vendor: ~1)");
            } else if (sel == WiProto.OP_PROGRAM) {
                int phase = v[8] & 0xFF;
                if (phase == WiProto.PHASE_ARM && state == RUN) faults.add("t=" + t + " arm while running");
                if (phase == WiProto.PHASE_RUN && state != RUN) faults.add("t=" + t + " run-program while not running");
                dur = v[0] & 0xFF;
                hz = v[1] & 0xFF;
                work = v[2] & 0xFF;
                rest = v[3] & 0xFF;
                ru = v[4] & 0xFF;
                if (ru >= work && ru > 0) faults.add("t=" + t + " rise " + ru + " s ≥ impulse " + work + " s");
                int x = 0;
                for (int i = 0; i < 9; i++) x ^= v[i] & 0xFF;
                if (x != (v[9] & 0xFF)) faults.add("t=" + t + " program XOR");
            } else if (sel == WiProto.OP_RUN) {
                if ((v[0] & 0xFF) == WiProto.RUN_START) {
                    starts++;
                    if (state != IDLE) faults.add("t=" + t + " start while not idle");
                    if (quotaGone || (quotaLeft >= 0 && dur > quotaLeft)) {
                        notify.add(new byte[] {2});
                    } else if (!refuses) {
                        state = COUNT;
                        countEnd = t + 4100;
                    }
                } else {
                    runStart = -1;
                    if (state == RUN) lateOneAt = t + 300;   // a "01" already on air arrives after the stop
                    if (state != IDLE) stopNotifyAt = t + 1500;
                    state = IDLE;
                    cur = new int[10];
                }
            }
        }

        void tick(long t) {
            if (state == COUNT && t >= countEnd) {
                state = RUN;
                nextNotify = t;
                runStart = t;
            }
            if (state == RUN && runStart >= 0 && t - runStart >= 60000) {
                counter++;
                runStart += 60000;
                if (quota >= 0 && counter >= quota) {
                    haltAtQuota++;
                    halt(t);
                }
            }
            if (state == RUN && t >= nextNotify) {
                if (!silent) notify.add(new byte[] {1});
                nextNotify += 1000;
            }
            if (lateOneAt >= 0 && t >= lateOneAt) {
                notify.add(new byte[] {1});
                lateOneAt = -1;
            }
            if (stopNotifyAt >= 0 && t >= stopNotifyAt) {
                notify.add(new byte[] {0});
                stopNotifyAt = -1;
            }
        }

        /** Stops by itself (its battery, its button): outputs off, "00". */
        void halt(long t) {
            runStart = -1;
            state = IDLE;
            cur = new int[10];
            notify.add(new byte[] {0});
        }

        boolean outputsOff() {
            for (int b : cur) if (b != 0) return false;
            return true;
        }
    }

    /** MainActivity's loop around one session and one unit. */
    static final class Rig {
        Session s = new Session();
        Unit u = new Unit();
        long t;
        boolean linkUp = true;
        long ackAt = -1;

        Rig() {
            s.setStrength(100);
            s.linked();
        }

        void run(long ms) {
            long end = t + ms;
            while (t < end) {
                t += 50;
                u.tick(t);
                if (linkUp) {
                    for (byte[] n : u.notify) s.runNotify(n, t);
                }
                u.notify.clear();
                s.tick(t);
                s.takeUnitStopped();
                if (s.takeMinutesWanted()) s.minutes(u.counter);   // MainActivity reads it after a stop / re-arm
                if (!linkUp) continue;
                if (ackAt >= 0 && t >= ackAt) {
                    s.ack();
                    ackAt = -1;
                }
                if (s.ackLate(t)) {
                    dropLink();
                    continue;
                }
                byte[] op = s.next(t);
                if (op != null) {
                    u.write(op, t);
                    ackAt = t + 40;
                }
            }
        }

        void dropLink() {
            linkUp = false;
            ackAt = -1;
            s.lost(t);
        }

        void relink() {
            linkUp = true;
            s.linked();
        }

        void allZones(int pct) {
            for (int z = 0; z < Session.ZONES; z++) s.setZone(z, pct);
        }

        String faults() {
            return u.faults.isEmpty() ? "" : u.faults.size() + " — " + u.faults.get(0);
        }
    }

    static Session.Program prog(int hz, int on, int off, int totalS) {
        Session.Program p = new Session.Program();
        p.hz = hz;
        p.onS = on;
        p.offS = off;
        p.totalS = totalS;
        Safe.apply(p, false);
        return p;
    }

    public static void main(String[] args) {
        // 1. A full manual training: zones before START, raised during it one by one, a pause, to the end.
        Rig r = new Rig();
        r.s.setProgram(prog(85, 4, 4, 180));
        r.s.setZone(0, 30);
        r.s.start(r.t);
        r.run(5000);
        ok("1 runs after the count-down", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN, "");
        for (int k = 0; k < 20; k++) {             // a trainer's taps, ~1 s apart, on one zone at a time
            r.s.setZone(k % Session.ZONES, 20 + k * 3);
            r.run(1000);
        }
        r.s.pause(r.t);
        r.run(250);
        ok("1 pause: unit stopped at 0", r.u.state == Unit.IDLE && r.u.outputsOff(), "");
        r.s.start(r.t);                             // ПРОДЪЛЖИ at once: the unit's late "01" and "00" arrive meanwhile
        r.run(6000);
        ok("1 resumes", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN, "state " + r.s.state() + " unit " + r.u.state);
        ok("1 resume restores the strengths", !r.u.outputsOff(), "");
        r.run(200000);
        ok("1 finished: unit stopped at 0", r.u.state == Unit.IDLE && r.u.outputsOff() && r.s.state() == Session.IDLE, "");
        ok("1 no fault", r.u.faults.isEmpty(), r.faults());

        // 2. START, then cancelled in the count-down: nothing starts later.
        r = new Rig();
        r.allZones(20);
        r.s.start(r.t);
        r.run(60);                                 // the first item (the program) is on air
        r.s.pause(r.t);
        r.run(8000);
        ok("2 cancelled count-down: unit idle", r.u.state == Unit.IDLE && r.s.state() == Session.IDLE && !r.s.preparing(),
                "unit " + r.u.state);
        ok("2 the start never went out", r.u.starts == 0, r.u.starts + " starts");
        ok("2 no fault", r.u.faults.isEmpty(), r.faults());

        // 3. A finger on the slider: 60 moves in 3 s on one zone — a few writes, the last value wins.
        r = new Rig();
        r.allZones(10);
        r.s.start(r.t);
        r.run(5000);
        int before = r.u.levelWrites.size();
        for (int k = 0; k < 60; k++) {
            r.s.setZone(3, k);
            r.run(50);
        }
        r.run(500);
        int n = r.u.levelWrites.size() - before;
        ok("3 drag = few writes (the vendor's pace)", n <= 5, n + " writes");
        ok("3 the last value is on the unit", r.u.cur[r.s.unitCh(3)] == Session.unitValue(59), "byte " + r.u.cur[r.s.unitCh(3)]);
        ok("3 no fault", r.u.faults.isEmpty(), r.faults());
        before = r.u.levelWrites.size();
        for (int k = 0; k < 10; k++) {              // "+" pressed at 100 % again and again: one write, then nothing
            r.s.setZone(3, 100);
            r.s.setZone(3, 100);
            r.run(300);
        }
        ok("3 an unchanged value is not written again", r.u.levelWrites.size() - before == 1,
                (r.u.levelWrites.size() - before) + " writes");
        r.s.setZone(3, 40);                          // A → B → A faster than a write: the unit ends on A
        r.s.setZone(3, 100);
        r.run(600);
        ok("3 A → B → A ends on A", r.u.cur[r.s.unitCh(3)] == Session.unitValue(100), "byte " + r.u.cur[r.s.unitCh(3)]);
        r.s.setZone(3, 40);
        r.run(100);
        r.s.setZone(3, 100);
        r.run(600);
        ok("3 A → B (on air) → A ends on A", r.u.cur[r.s.unitCh(3)] == Session.unitValue(100), "byte " + r.u.cur[r.s.unitCh(3)]);

        // 4. The unit stops by itself (battery): the session pauses, ▶ starts it again.
        r = new Rig();
        r.allZones(30);
        r.s.start(r.t);
        r.run(8000);
        r.u.halt(r.t);
        r.run(1000);
        ok("4 unit stop → paused", r.s.state() == Session.PAUSED, "state " + r.s.state());
        r.s.start(r.t);
        r.run(6000);
        ok("4 ▶ again runs", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN && !r.u.outputsOff(), "");
        ok("4 no fault", r.u.faults.isEmpty(), r.faults());

        // 5. The unit goes silent (no "01" any more): the session does not run blind.
        r = new Rig();
        r.allZones(30);
        r.s.start(r.t);
        r.run(8000);
        r.u.silent = true;
        r.run(7000);
        ok("5 silent unit → paused, outputs off", r.s.state() == Session.PAUSED && r.u.outputsOff(), "state " + r.s.state());

        // 5b. The unit takes ▶ but never runs (v1.19, owner: "links, ▶ does nothing, LEDs dark"): no clock running
        // blind — the session says it did not start, the unit gets 0 + stop, the next ▶ arms it again.
        r = new Rig();
        r.allZones(30);
        r.u.refuses = true;
        r.s.start(r.t);
        r.run(5000);
        ok("5b still counting down at 5 s", r.s.preparing() && !r.s.takeNoStart(), "");
        r.run(5000);
        ok("5b no start → said once", r.s.takeNoStart() && !r.s.takeNoStart(), "");
        ok("5b not running, clock untouched", r.s.state() != Session.RUNNING && !r.s.startPending() && !r.s.preparing(),
                "state " + r.s.state());
        ok("5b the unit got 0 + stop", r.u.outputsOff() && r.u.state == Unit.IDLE, "");
        r.u.refuses = false;
        r.s.start(r.t);
        r.run(8000);
        ok("5b ▶ again runs", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN, "state " + r.s.state());
        // without run notifications (no CCCD) the old blind start stays
        r = new Rig();
        r.s.setRunNotifyArmed(false);
        r.allZones(30);
        r.u.silent = true;
        r.s.start(r.t);
        r.run(8000);
        ok("5b no notifications → blind start as before", r.s.state() == Session.RUNNING && !r.s.takeNoStart(), "");

        // 5c. v1.25 — the owner's unit: 73160 of 73200 minutes used, "25" with the vendor's Dur 41 → "02". The
        // session starts again by itself with Dur = its minutes, and runs; a unit with 0 left still says "no start".
        r = new Rig();
        r.allZones(30);
        r.u.quotaLeft = 40;
        r.s.start(r.t);
        r.run(8000);
        ok("5c \"02\" → started again with a smaller Dur and runs", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN
                && r.u.dur <= 40 && !r.s.takeNoStart(), "state " + r.s.state() + " dur " + r.u.dur + " starts " + r.u.starts);
        ok("5c no fault on the wire", r.u.faults.isEmpty(), String.valueOf(r.u.faults));
        r = new Rig();
        r.allZones(30);
        r.u.quotaLeft = 0;
        r.s.start(r.t);
        r.run(20000);
        ok("5c 0 minutes left → Dur 0 still runs", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN && r.u.dur == 0,
                "dur " + r.u.dur + " starts " + r.u.starts);

        // 5d. v1.26 — a tight unit (it said "02") whose counter counts whole minutes of one run: every run stays
        // under a minute (re-armed in a pause), the counter does not move, the session gets its full time.
        r = new Rig();
        r.s.setProgram(prog(85, 4, 4, 600));
        r.allZones(30);
        r.u.quotaLeft = 40;
        r.u.quota = 73200;
        r.s.start(r.t);
        long t0 = r.t;
        r.run(700000);
        ok("5d tight after the \"02\"", r.s.quota.tight && r.s.quota.dur <= 40, String.valueOf(r.s.quota));
        ok("5d 10 min trained, the counter did not move", r.s.finished() && r.u.counter == 73160,
                "finished " + r.s.finished() + " counter " + r.u.counter + " state " + r.s.state());
        ok("5d the segments proved themselves", r.s.quota.verdict == Quota.VERDICT_WORKS, String.valueOf(r.s.quota));
        ok("5d re-armed under a minute each (≥ 10 starts)", r.u.starts >= 11, "starts " + r.u.starts);
        ok("5d no fault on the wire", r.u.faults.isEmpty(), r.faults());
        ok("5d the unit stopped at the end", r.u.state == Unit.IDLE && r.u.outputsOff(), "");
        // the learnt state survives a new link (saved / loaded as MainActivity does)
        String saved = r.s.quota.save();
        Quota q = new Quota();
        q.load(saved);
        ok("5d saved and loaded", q.tight && q.dur == r.s.quota.dur && q.verdict == Quota.VERDICT_WORKS, saved);

        // 5e. a counter that counts anyway (every run, even short): the segments are switched off for the unit
        r = new Rig();
        r.s.setProgram(prog(85, 4, 4, 600));
        r.allZones(30);
        r.s.quota.tight = true;
        r.s.minutes(r.u.counter);
        r.s.start(r.t);
        for (int k = 0; k < 40 && r.s.quota.segments(); k++) {
            r.run(20000);
            if (r.u.state == Unit.RUN) r.u.counter++;   // this unit counts every 20 s of running
        }
        ok("5e counted anyway → segments off", r.s.quota.verdict == Quota.VERDICT_USELESS, String.valueOf(r.s.quota));
        int st = r.u.starts;
        r.run(120000);
        ok("5e then one run, no more re-arms", r.u.starts == st && r.s.state() == Session.RUNNING, "starts " + r.u.starts);

        // 5f. a tight unit that stops by itself at its quota ("00"): armed again (≤ 3), then the pause
        r = new Rig();
        r.s.setProgram(prog(85, 4, 4, 600));
        r.allZones(30);
        r.s.quota.tight = true;
        r.s.quota.verdict = Quota.VERDICT_USELESS;  // one long run: the quota stops it
        r.u.quota = 73161;
        r.s.start(r.t);
        r.run(70000);
        ok("5f stopped by itself at the quota → armed again, still training", r.u.haltAtQuota == 1
                && r.s.state() == Session.RUNNING && r.u.state == Unit.RUN, "halts " + r.u.haltAtQuota + " state " + r.s.state());
        ok("5f no fault", r.u.faults.isEmpty(), r.faults());

        // 5g. the quota is gone for every Dur: 41 → minutes → 1 → 0, then the card, the unit stopped
        r = new Rig();
        r.allZones(30);
        r.u.quotaGone = true;
        r.s.start(r.t);
        r.run(15000);
        ok("5g every Dur refused → no start, code 2", r.s.takeNoStart() && r.s.noStartCode() == 2 && r.u.state == Unit.IDLE,
                "code " + r.s.noStartCode());
        ok("5g tried 41, the minutes, 1, 0", r.u.starts == 4 && r.u.dur == 0, "starts " + r.u.starts + " dur " + r.u.dur);

        // 6. The link drops mid-training and comes back: kept, paused, the time done kept, the unit 0 first.
        r = new Rig();
        r.s.setProgram(prog(85, 4, 4, 600));
        r.allZones(40);
        r.s.setZone(8, 25);
        r.s.start(r.t);
        r.run(65000);
        int left = r.s.secondsLeft(r.t);
        r.dropLink();
        r.run(10000);
        r.relink();
        r.run(500);
        ok("6 kept on pause", r.s.state() == Session.PAUSED && r.s.zone(8) == 25 && r.s.zone(0) == 40, "state " + r.s.state());
        ok("6 time kept", Math.abs(r.s.secondsLeft(r.t) - left) <= 1, left + " → " + r.s.secondsLeft(r.t));
        ok("6 the unit stopped at 0 on reconnect", r.u.state == Unit.IDLE && r.u.outputsOff(), "");
        r.s.start(r.t);
        r.run(6000);
        ok("6 goes on", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN, "");
        ok("6 no fault", r.u.faults.isEmpty(), r.faults());

        // 7. A shorter length on pause: the time done stays done.
        r = new Rig();
        r.s.setProgram(prog(85, 4, 4, 1200));
        r.allZones(20);
        r.s.start(r.t);
        r.run(5000 + 300000);                       // 5 min done
        r.s.pause(r.t);
        r.s.setProgram(prog(85, 4, 4, 900));        // 20 → 15 min
        ok("7 15 min − 5 done = ~10 left", Math.abs(r.s.secondsLeft(r.t) - 600) <= 2, r.s.secondsLeft(r.t) + " s");

        // 8. Every procedure at every length to the end: phases on a running unit, no fault, stopped at 0.
        for (Procs.Proc pr : Procs.ALL)
            for (int m : new int[] {10, 30}) {
                r = new Rig();
                r.s.setPlan(Procs.plan(pr, m), false);
                r.allZones(50);
                r.s.start(r.t);
                r.run(m * 60000L + 20000);
                ok("8 " + pr.id + " " + m + " min: ends stopped at 0", r.u.state == Unit.IDLE && r.u.outputsOff()
                        && r.s.state() == Session.IDLE, "unit " + r.u.state);
                ok("8 " + pr.id + " " + m + " min: no fault", r.u.faults.isEmpty(), r.faults());
            }

        // 9. XBody's modes to the end; Cardio writes nothing at its move / rest changes.
        for (int md : new int[] {Procs.MODE_MUSCLE, Procs.MODE_CARDIO, Procs.MODE_RELAX}) {
            r = new Rig();
            Session.Program p = Procs.mode(md);
            Safe.apply(p, false);
            p.totalS = 120;
            r.s.setProgram(p);
            r.allZones(60);
            r.s.start(r.t);
            r.run(6000);
            int w = r.u.writes;
            r.run(100000);
            ok("9 " + Procs.MODE_NAME[md] + ": nothing written while it runs untouched", r.u.writes == w, (r.u.writes - w) + " writes");
            r.run(30000);
            ok("9 " + Procs.MODE_NAME[md] + ": ends stopped at 0", r.u.state == Unit.IDLE && r.u.outputsOff(), "");
            ok("9 " + Procs.MODE_NAME[md] + ": no fault", r.u.faults.isEmpty(), r.faults());
        }

        // 11. One zone set apart (the owner's failing case): with the check bits the unit takes it and runs on.
        r = new Rig();
        r.allZones(25);
        r.s.start(r.t);
        r.run(6000);
        r.s.setZone(3, 45);                         // Корем alone
        r.run(2000);
        r.s.setZone(0, 80);
        r.s.setZone(7, 10);
        r.run(2000);
        ok("11 unequal zones run (no 86)", r.s.state() == Session.RUNNING && r.u.state == Unit.RUN
                && r.u.cur[r.s.unitCh(3)] == Session.unitValue(45), "state " + r.s.state());
        ok("11 no fault", r.u.faults.isEmpty(), r.faults());
        // … and should the unit trip anyway ("86"): back to what ran, no loop
        r.u.write(new byte[] {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, r.t);   // a frame without the check
        r.u.faults.clear();
        r.run(1500);
        ok("11 a trip → paused, named", r.s.state() == Session.PAUSED && r.s.tripCodeLast() == 0x86, "state " + r.s.state());

        // 10. Strength to 0 and back mid-run; a link drop in the count-down.
        r = new Rig();
        r.allZones(50);
        r.s.start(r.t);
        r.run(6000);
        r.s.setStrength(0);
        r.run(1000);
        ok("10 strength 0 → outputs 0", r.u.outputsOff(), "");
        r.s.setStrength(80);
        r.run(1000);
        ok("10 back up", r.u.cur[0] == Session.unitValue(40), "byte " + r.u.cur[0]);
        r = new Rig();
        r.allZones(50);
        r.s.start(r.t);
        r.run(1000);
        r.dropLink();
        r.run(3000);
        r.relink();
        r.run(8000);
        ok("10 link drop in the count-down: nothing runs by itself", r.u.state == Unit.IDLE && r.s.state() == Session.IDLE
                && !r.s.preparing(), "unit " + r.u.state + " session " + r.s.state());
        ok("10 no fault", r.u.faults.isEmpty(), r.faults());

        System.out.println(fails == 0 ? "UnitSim: ALL OK (" + checks + " checks)" : "UnitSim: " + fails + " FAIL of " + checks);
        if (fails != 0) System.exit(1);
    }
}
