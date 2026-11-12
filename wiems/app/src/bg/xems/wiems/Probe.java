package bg.xems.wiems;

import com.isaigu.gymapp.bodytech.WiProto;

/**
 * v1.27 — the quota probe (docs/xems-wiems-app.md "v1.27"): find, on the unit itself and offline, the one write that
 * makes the unit's minutes gate let a start through, so the app sends it at every link and nothing — no relaxed
 * cycle, no lowered Dur — ever gets in the way of a real training again.
 *
 * <p>The unit refuses "25" with "02" when used + Dur &gt; bought (used = 7764d000, read; bought is written by the
 * vendor's purchase sync, never seen in our capture). Two writes would open it: zero the used counter, or raise the
 * bought one. We do not know which characteristic, so the probe tries a short, ordered list of candidate writes to
 * the unit's write-only / counter characteristics and, after each, really arms the unit <b>with every channel at
 * zero</b> (no output on the body) to ask the only question that settles both theories: did it run ("01") or refuse
 * ("02")? The first candidate that lets it run is the answer — stored per unit ({@code reset_<mac>}), sent once at
 * every later link; the probe never runs again for that unit.
 *
 * <p>Pure Java (no Android): the driver is a small state machine the screen ticks, over two primitives the host
 * gives it — a generic write by UUID and a vendor op ({@link WiProto}) write — plus the run notifications. It only
 * runs when the unit is idle and linked; a real training, a pause or a lost link stops it at once ({@link #cancel}).
 */
final class Probe {
    /** The unit's counter / write-only characteristics the quota likely lives behind. */
    static final String COUNTER = "7764d000-c6a9-11e4-8731-1681e6b88ec1";
    static final String WO1 = "7764a25c-c6a9-11e4-8731-1681e6b88ec1";
    static final String WO2 = "77645cb2-c6a9-11e4-8731-1681e6b88ec1";

    static final class Cand {
        final String uuid;
        final byte[] val;
        final String label;

        Cand(String uuid, byte[] val, String label) {
            this.uuid = uuid;
            this.val = val;
            this.label = label;
        }
    }

    /** ASCII digits, as the counter reads them ("000000"). */
    static byte[] digits(String s) {
        return s.getBytes();
    }

    static byte[] bytes(int... b) {
        byte[] v = new byte[b.length];
        for (int i = 0; i < b.length; i++) v[i] = (byte) b[i];
        return v;
    }

    /**
     * The ordered candidate list — cheapest / most likely first: zero the used counter (directly, then through each
     * write-only characteristic), then load a large bought value, then the plain clears. Six-digit ASCII matches the
     * counter's own format; the short byte forms cover a binary counter.
     */
    static Cand[] candidates() {
        return new Cand[] {
            new Cand(COUNTER, digits("000000"), "used counter 7764d000 = 000000"),
            new Cand(WO1, digits("000000"), "7764a25c = 000000 (zero used)"),
            new Cand(WO2, digits("000000"), "77645cb2 = 000000 (zero used)"),
            new Cand(WO1, digits("999999"), "7764a25c = 999999 (raise bought)"),
            new Cand(WO2, digits("999999"), "77645cb2 = 999999 (raise bought)"),
            new Cand(COUNTER, bytes(0, 0, 0, 0, 0, 0), "7764d000 = 00 x6"),
            new Cand(WO1, bytes(0), "7764a25c = 00"),
            new Cand(WO2, bytes(0), "77645cb2 = 00"),
            new Cand(WO1, bytes(0xFF, 0xFF, 0xFF, 0xFF), "7764a25c = ff x4 (raise bought)"),
            new Cand(WO2, bytes(0xFF, 0xFF, 0xFF, 0xFF), "77645cb2 = ff x4 (raise bought)"),
        };
    }

    interface Io {
        /** Write a value to any characteristic by UUID (the candidate). */
        void probeWrite(String uuid, byte[] val);
        /** Write a vendor op ({@link WiProto}) — program / rest / widths / currents / run. */
        void probeOp(byte[] op);
        void probeLog(String s);
        /** Done: the winner (null if none found), its value, and a one-line summary for the screen. */
        void probeDone(Cand winner, String summary);
    }

    private static final int IDLE = 0, W_CAND = 1, ARMING = 2, WAIT_RUN = 3, STOPPING = 4, DONE = 5;
    /** The arm after a candidate: the vendor's five writes, every channel 0 (no output). */
    private static final int ARM_OPS = 5;
    /** How long to wait for "01" / "02" after "25" (the unit's count-down ~4 s; its "02" is immediate). */
    static final long WAIT_MS = 9000;

    private final Io io;
    private Cand[] cands;
    private int idx;
    private int state = IDLE;
    private int armStep;
    private long waitStart;
    private int lastCode = -1;
    private Cand winner;
    private int tested;
    private boolean verifying;
    private long refusedAt = -1;
    /** Candidate keys the host has already tried and seen fail (skipped), and the ones this run adds. */
    private java.util.List<String> skip;
    private final java.util.List<String> tried = new java.util.ArrayList<String>();
    /** After a definite refusal ("02") wait only this long before the next candidate; {@link #WAIT_MS} if silent. */
    static final long REFUSE_GRACE_MS = 1500;

    Probe(Io io) {
        this.io = io;
    }

    boolean running() {
        return state != IDLE && state != DONE;
    }

    /** True while checking one stored reset (vs. searching the whole list). */
    boolean verifying() {
        return verifying;
    }

    /** The candidate keys this run tried and saw fail — the host adds them to {@code tried_<mac>}. */
    java.util.List<String> tried() {
        return tried;
    }

    static String key(Cand c) {
        return c.uuid + " " + hex(c.val);
    }

    /**
     * Discovery: walk the candidate list, skipping any key in {@code alreadyTried}, arming each at zero current.
     * (The host has checked: linked, idle, this unit is tight, no verified reset.)
     */
    void start(long now, java.util.List<String> alreadyTried) {
        verifying = false;
        skip = alreadyTried;
        cands = candidates();
        idx = 0;
        winner = null;
        tested = 0;
        tried.clear();
        io.probeLog("quota probe: " + cands.length + " candidates (skip " + (skip == null ? 0 : skip.size())
                + " tried), arming each at zero current (no output on the body)");
        writeCand(now);
    }

    /** Verification: check one stored reset silently (apply it, then one zero-current arm) before any training. */
    void verify(long now, Cand reset) {
        verifying = true;
        skip = null;
        cands = new Cand[] {reset};
        idx = 0;
        winner = null;
        tested = 0;
        tried.clear();
        io.probeLog("quota verify: re-check the stored reset (" + reset.label + ") at zero current");
        writeCand(now);
    }

    /** A training / pause / stop / lost link: drop the probe, leave the unit stopped. */
    void cancel(String why) {
        if (!running()) {
            state = IDLE;
            return;
        }
        state = IDLE;                                 // set first: a failed stop-op must not re-enter cancel
        io.probeLog("quota probe cancelled (" + why + ")");
        io.probeOp(WiProto.run(false));
    }

    private void writeCand(long now) {
        while (idx < cands.length && skip != null && skip.contains(key(cands[idx]))) idx++;   // already failed: skip
        if (idx >= cands.length) {
            finish();
            return;
        }
        Cand c = cands[idx];
        tested++;
        refusedAt = -1;
        io.probeLog("try " + (idx + 1) + "/" + cands.length + ": " + c.label);
        state = W_CAND;
        io.probeWrite(c.uuid, c.val);
    }

    /** A write was acknowledged (one op in flight; the host calls this on every {@code written}). */
    void onAck(long now) {
        switch (state) {
            case W_CAND:
                state = ARMING;
                armStep = 0;
                sendArm();
                break;
            case ARMING:
                armStep++;
                if (armStep < ARM_OPS) {
                    sendArm();
                } else {
                    state = WAIT_RUN;
                    waitStart = now;
                    lastCode = -1;
                    refusedAt = -1;
                }
                break;
            case STOPPING:
                idx++;
                writeCand(now);
                break;
            default:
                break;
        }
    }

    private void sendArm() {
        switch (armStep) {
            case 0:
                io.probeOp(WiProto.program(50, 4, 4, 0, 0, WiProto.PHASE_ARM));
                break;
            case 1:
                io.probeOp(WiProto.rest(5, 0));
                break;
            case 2:
                io.probeOp(WiProto.widths());
                break;
            case 3:
                io.probeOp(WiProto.zero());
                break;
            default:
                io.probeOp(WiProto.run(true));      // "25": now the unit answers "01" (ran) or "02" (refused)
                break;
        }
    }

    /** The run characteristic notified during the wait. */
    void onRun(byte[] v, long now) {
        if (state != WAIT_RUN || v == null || v.length == 0) return;
        int b = v[0] & 0xFF;
        if (b == 1) {                                // it ran: this candidate opened the gate
            winner = cands[idx];
            io.probeLog("WIN: \"" + winner.label + "\" let the unit run");
            stopAndFinish();
        } else if (b != 0) {
            lastCode = b;                            // "02" (or another refusal): a definite no — move on shortly
            if (refusedAt < 0) refusedAt = now;
        }
    }

    /** Ticked by the host: a definite refusal moves on after a short grace; a silent unit after the full wait. */
    void tick(long now) {
        if (state != WAIT_RUN) return;
        boolean refused = refusedAt >= 0 && now - refusedAt >= REFUSE_GRACE_MS;
        if (refused || now - waitStart >= WAIT_MS) {
            io.probeLog("try " + (idx + 1) + ": no run (" + (lastCode >= 0 ? "code " + Integer.toHexString(lastCode) : "silent")
                    + ") — stop, next");
            if (idx < cands.length) tried.add(key(cands[idx]));   // this candidate failed
            state = STOPPING;
            io.probeOp(WiProto.run(false));          // back to idle before the next candidate
        }
    }

    private void stopAndFinish() {
        state = DONE;
        io.probeOp(WiProto.run(false));
        finish();
    }

    private void finish() {
        state = DONE;
        String summary;
        if (verifying) {
            summary = winner != null ? "" /* silent: nothing changed, the key still works */
                    : "Запазеният ключ срещу лимита вече не върши работа — търся нов автоматично.";
        } else {
            summary = winner != null
                    ? "Намерен е ключ срещу лимита (" + winner.label + ") — ще се подава сам при всяко свързване."
                    : (skip != null && tried.isEmpty() ? "" /* nothing new tried this round */
                            : "Нито един кандидат не отвори лимита — остава по-краткото Dur и късите цикли.");
        }
        io.probeLog("quota " + (verifying ? "verify" : "probe") + " done: "
                + (winner != null ? "winner = " + winner.label : "no winner (tried " + tested + " this run)"));
        io.probeDone(winner, summary);
    }

    /** Store / read a found reset as "uuid hexvalue" (prefs {@code reset_<mac>}). */
    static String save(Cand c) {
        return c.uuid + " " + hex(c.val);
    }

    static Cand load(String s) {
        if (s == null) return null;
        String[] p = s.trim().split(" ");
        if (p.length < 2) return null;
        byte[] v = unhex(p[1]);
        return v != null ? new Cand(p[0], v, "stored reset") : null;
    }

    static String hex(byte[] v) {
        StringBuilder b = new StringBuilder();
        for (byte x : v) b.append(Character.forDigit((x >> 4) & 0xF, 16)).append(Character.forDigit(x & 0xF, 16));
        return b.toString();
    }

    static byte[] unhex(String s) {
        if (s == null || (s.length() & 1) != 0) return null;
        byte[] v = new byte[s.length() / 2];
        for (int i = 0; i < v.length; i++) {
            int hi = Character.digit(s.charAt(2 * i), 16), lo = Character.digit(s.charAt(2 * i + 1), 16);
            if (hi < 0 || lo < 0) return null;
            v[i] = (byte) ((hi << 4) | lo);
        }
        return v;
    }
}
