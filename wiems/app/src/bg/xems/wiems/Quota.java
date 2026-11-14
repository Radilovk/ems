package bg.xems.wiems;

/**
 * v1.26 — the WiEMS unit's own minutes quota (docs/xems-wiems-app.md "v1.26"): what this app learnt about one unit,
 * kept per unit (MainActivity, prefs "quota_<mac>").
 *
 * The unit counts minutes used (7764d000, ASCII) and answers "25" with "02" (never runs) near its quota — the owner's
 * unit at 73160 of the 73200 the vendor sold, the vendor's Dur byte 41. Not known yet: what the counter counts. So
 * the bypass is layered, and each layer is checked against the counter itself:
 *  - Dur: the program's first byte, lowered step by step on "02" (41 → the session's minutes → 1 → 0); the one that
 *    ran is kept for the next starts.
 *  - segments: on a unit that is "tight" (it said "02" once) every unit run is kept under a minute — the unit is
 *    armed again in a pause every ~50 s. If the counter counts whole minutes of one run, it never moves.
 *  - the verdict: the counter is read after every stop / re-arm. It moved although every run since the last read was
 *    < 60 s → segments do not help (off for this unit). ≥ 3 min of segmented runs and it did not move → they work.
 * No Android here (the tests use it as it is).
 */
final class Quota {
    static final int DUR_VENDOR = 41;
    static final int VERDICT_UNKNOWN = 0, VERDICT_WORKS = 1, VERDICT_USELESS = -1;
    /** A unit run shorter than this is a "segment" (the counter's minute). */
    static final long MINUTE_MS = 60000;
    /** Segmented runs with the counter still → segments work. */
    static final long PROOF_MS = 180000;

    /** The unit said "02" once: its quota is near — segments on (unless proved useless), the learnt Dur first. */
    boolean tight;
    /** The Dur that last ran on this unit. */
    int dur = DUR_VENDOR;
    int verdict = VERDICT_UNKNOWN;
    /** The counter's last value (−1: not read since the link). */
    long counter = -1;
    /** Unit run time since that read, and the longest single run in it. */
    long runMs, longestMs;
    /** Something worth saving changed. */
    boolean dirty;

    /**
     * v1.29: the segments are OFF by default — no real log has shown a per-minute counter yet, and they are the only
     * layer that re-arms a live training. Kept for an explicit experiment (the tests switch them on).
     */
    static boolean segmentsOn = false;
    /**
     * v1.29: a verified quota key is active on this link (MainActivity) — the limit is gone, so none of the 1.26
     * cycles run: no segments, no auto re-arm on "00", the vendor's Dur. Not saved: proved again at every link.
     */
    boolean keyed;
    /** Set when "02" came although {@link #keyed}: the key went stale (MainActivity takes it, drops the key). */
    boolean keyStale;

    /** The 1.26 workarounds apply: tight and no working key. */
    boolean relaxed() {
        return tight && !keyed;
    }

    boolean segments() {
        return segmentsOn && relaxed() && verdict != VERDICT_USELESS;
    }

    /** Taken once by the screen: the key failed on a real start. */
    boolean takeKeyStale() {
        boolean b = keyStale;
        keyStale = false;
        return b;
    }

    void addRun(long ms) {
        if (ms <= 0) return;
        runMs += ms;
        if (ms > longestMs) longestMs = ms;
    }

    void ran(int d) {
        if (d != dur) {
            dur = d;
            dirty = true;
        }
    }

    void setTight() {
        if (!tight) {
            tight = true;
            dirty = true;
        }
    }

    /** A counter value read from the unit; returns what it says (for the trace), "" when nothing new. */
    String counter(long v) {
        if (v < 0) return "";
        String s = "";
        if (counter >= 0 && v > counter) {
            s = "minutes counter +" + (v - counter) + " after " + runMs / 1000 + " s of unit run (longest " + longestMs / 1000
                    + " s, Dur " + dur + ")";
            if (segments() && runMs > 0 && longestMs < MINUTE_MS && verdict != VERDICT_USELESS) {
                verdict = VERDICT_USELESS;
                dirty = true;
                s += " → segments do not stop it: off for this unit";
            }
        } else if (counter >= 0 && v == counter && runMs > 0) {
            s = "minutes counter still " + v + " after " + runMs / 1000 + " s of unit run (longest " + longestMs / 1000 + " s)";
            if (segments() && runMs >= PROOF_MS && longestMs < MINUTE_MS && verdict == VERDICT_UNKNOWN) {
                verdict = VERDICT_WORKS;
                dirty = true;
                s += " → segments work";
            }
            if (runMs < PROOF_MS) return s;          // keep adding up until the proof
        } else if (counter < 0) {
            s = "minutes counter " + v;
        }
        counter = v;
        runMs = 0;
        longestMs = 0;
        return s;
    }

    /** Parse the counter's ASCII digits ("073160"); −1 if not digits. */
    static long parse(byte[] v) {
        if (v == null || v.length == 0) return -1;
        long n = 0;
        for (byte b : v) {
            if (b < '0' || b > '9') return -1;
            n = n * 10 + (b - '0');
        }
        return n;
    }

    String save() {
        dirty = false;
        return (tight ? 1 : 0) + " " + dur + " " + verdict;
    }

    void load(String s) {
        if (s == null) return;
        String[] p = s.trim().split(" ");
        try {
            if (p.length >= 3) {
                tight = p[0].equals("1");
                dur = Math.max(0, Math.min(DUR_VENDOR, Integer.parseInt(p[1])));
                verdict = Integer.parseInt(p[2]);
            }
        } catch (NumberFormatException e) {
            // keep the defaults
        }
    }

    @Override
    public String toString() {
        return "quota " + (tight ? "tight" : "ok") + " · Dur " + dur + " · segments "
                + (verdict == VERDICT_WORKS ? "work" : verdict == VERDICT_USELESS ? "useless" : "?")
                + (counter >= 0 ? " · counter " + counter : "");
    }
}
