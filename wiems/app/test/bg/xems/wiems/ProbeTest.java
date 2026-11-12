package bg.xems.wiems;

import com.isaigu.gymapp.bodytech.WiProto;

/**
 * v1.27 — the quota probe's state machine, offline (no Android). A fake unit refuses every start ("02") until one
 * secret (characteristic, value) write has reached it; from then it runs ("01"). The probe must walk its candidate
 * list, arm each at zero current, read the run notify, and stop at the first candidate that opens the gate.
 */
public class ProbeTest {
    static int checks, fails;

    static void ok(String name, boolean cond, String detail) {
        checks++;
        if (!cond) {
            fails++;
            System.out.println("FAIL: " + name + "  " + detail);
        }
    }

    /** A unit that needs one write to let a start run; it also enforces the one-op-in-flight / count-down timing. */
    static final class FakeUnit implements Probe.Io {
        final String magicUuid;
        final String magicHex;       // null = nothing opens it (every start refuses)
        boolean open;
        int arms, lastRun = -1;      // the last currents were zero?
        byte[] lastCurrents;
        Probe probe;
        long t;
        // a queue of (what the unit answers) delivered on the next ack / tick
        boolean pendingAck;
        boolean counting;            // after "25": the unit will answer at countEnd
        long countEnd;
        Probe.Cand found;
        String summary;

        FakeUnit(String magicUuid, byte[] magicVal) {
            this.magicUuid = magicUuid;
            this.magicHex = magicVal == null ? null : Probe.hex(magicVal);
        }

        @Override
        public void probeWrite(String uuid, byte[] val) {
            if (magicHex != null && uuid.equals(magicUuid) && Probe.hex(val).equals(magicHex)) open = true;
            pendingAck = true;
        }

        @Override
        public void probeOp(byte[] op) {
            int sel = op[0] & 0xFF;
            if (sel == WiProto.OP_CURRENTS) lastCurrents = WiProto.value(op);
            if (sel == WiProto.OP_RUN) {
                int v = WiProto.value(op)[0] & 0xFF;
                if (v == WiProto.RUN_START) {
                    arms++;
                    counting = true;
                    countEnd = t + 200;      // answers shortly after "25"
                } else {
                    counting = false;
                }
            }
            pendingAck = true;
        }

        @Override
        public void probeLog(String s) {
        }

        @Override
        public void probeDone(Probe.Cand winner, String sum) {
            found = winner;
            summary = sum;
        }

        /** Drive the probe like MainActivity: deliver acks, then the unit's run answer, then tick the timeout. */
        void run(long ms) {
            long end = t + ms;
            while (t < end && probe.running()) {
                t += 50;
                if (pendingAck) {
                    pendingAck = false;
                    probe.onAck(t);
                    continue;
                }
                if (counting && t >= countEnd) {
                    counting = false;
                    probe.onRun(new byte[] {(byte) (open ? 1 : 2)}, t);
                    continue;
                }
                probe.tick(t);
            }
        }
    }

    public static void main(String[] args) {
        // 1. the secret is the 3rd candidate (77645cb2 = 000000): the probe finds it, arms at zero current
        Probe.Cand[] cs = Probe.candidates();
        Probe.Cand target = cs[2];
        FakeUnit u = new FakeUnit(target.uuid, target.val);
        u.probe = new Probe(u);
        u.probe.start(u.t);
        u.run(300000);
        ok("found the winning candidate", u.found != null && u.found.uuid.equals(target.uuid)
                && Probe.hex(u.found.val).equals(Probe.hex(target.val)), String.valueOf(u.found == null ? "null" : u.found.label));
        ok("stopped at the 3rd candidate (3 arms)", u.arms == 3, "arms " + u.arms);
        ok("every arm was at zero current", u.lastCurrents != null && allZero(u.lastCurrents), "");
        ok("not running after done", !u.probe.running(), "");

        // 2. a winning candidate is saved and loaded back intact
        String saved = Probe.save(u.found);
        Probe.Cand back = Probe.load(saved);
        ok("saved / loaded the reset", back != null && back.uuid.equals(target.uuid)
                && Probe.hex(back.val).equals(Probe.hex(target.val)), saved);

        // 3. nothing opens the gate: the probe tries every candidate, then reports none
        FakeUnit n = new FakeUnit(null, null);
        n.probe = new Probe(n);
        n.probe.start(n.t);
        n.run(300000);
        ok("no winner when nothing opens it", n.found == null, "");
        ok("tried every candidate", n.arms == Probe.candidates().length, "arms " + n.arms);
        ok("a summary is given either way", n.summary != null && n.summary.length() > 0, "");

        // 4. the first candidate wins: a single arm
        FakeUnit f = new FakeUnit(cs[0].uuid, cs[0].val);
        f.probe = new Probe(f);
        f.probe.start(f.t);
        f.run(300000);
        ok("first candidate → one arm", f.arms == 1 && f.found != null, "arms " + f.arms);

        // 5. cancel mid-probe (a training started) leaves it stopped
        FakeUnit c = new FakeUnit(cs[4].uuid, cs[4].val);
        c.probe = new Probe(c);
        c.probe.start(c.t);
        c.run(500);                    // part-way
        boolean wasRunning = c.probe.running();
        c.probe.cancel("training started");
        ok("cancel stops the probe", wasRunning && !c.probe.running() && c.found == null, "");

        System.out.println(fails == 0 ? "ProbeTest: ALL OK (" + checks + " checks)" : "ProbeTest: " + fails + " FAILED");
        if (fails != 0) System.exit(1);
    }

    static boolean allZero(byte[] v) {
        for (byte b : v) if (b != 0) return false;
        return true;
    }
}
