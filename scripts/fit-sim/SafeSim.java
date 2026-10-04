package com.isaigu.gymapp.ai;

/** Offline checks of SafeLimits: the absolute limits of every mode (docs/xems-safety-limits.md). */
public final class SafeSim {
    static int fails;

    public static void main(String[] a) {
        // the classic 85 Hz 4 / 4 passes untouched
        int[] ok = SafeLimits.apply(new int[] {85, 350, 4, 4, 0, 0, 0, 400}, 35, null, null);
        eq("85/4/4 untouched", 4, ok[SafeLimits.OFF]);
        eq("85 Hz kept", 85, ok[SafeLimits.HZ]);
        // high frequency with a short pause → the pause is raised
        int[] hi = SafeLimits.apply(new int[] {120, 350, 6, 1, 0, 0, 0, 0}, 35, null, null);
        eq("120 Hz · 6 s → pause 7", 7, hi[SafeLimits.OFF]);
        eq("120 Hz → depth ≤ 300", 300, hi[SafeLimits.PW]);
        eq("tetanic → soft rise ≥ 300 ms", 300, hi[SafeLimits.RAMP]);
        // a long fused impulse is cut
        eq("100 Hz · 12 s → 6 s", 6, SafeLimits.apply(new int[] {100, 300, 12, 12, 0, 0, 0, 500}, 35, null, null)[SafeLimits.ON]);
        eq("30 Hz · 15 s → 10 s", 10, SafeLimits.apply(new int[] {30, 300, 15, 2, 0, 0, 0, 500}, 35, null, null)[SafeLimits.ON]);
        // second impulse: never high frequency, never over the main, never stronger
        int[] p = SafeLimits.apply(new int[] {100, 300, 4, 4, 1, 80, 120, 500}, 35, null, null);
        eq("2nd impulse 80 → 10 Hz", 10, p[SafeLimits.PHZ]);
        eq("2nd impulse ≤ main strength", 100, p[SafeLimits.PS]);
        ok("2nd impulse counts in the pause", p[SafeLimits.OFF] >= SafeLimits.minOff(100, 4, 10, 1.0));
        int[] low = SafeLimits.apply(new int[] {5, 250, 10, 2, 1, 8, 50, 0}, 35, null, null);
        eq("massage 5 Hz: 2nd impulse under 5", 4, low[SafeLimits.PHZ]);
        eq("1 Hz: no 2nd impulse", 0, SafeLimits.apply(new int[] {1, 250, 10, 1, 1, 1, 50, 0}, 35, null, null)[SafeLimits.AP]);
        // 60+
        eq("60+ → 85 Hz", 85, SafeLimits.apply(new int[] {100, 300, 3, 9, 0, 0, 0, 500}, 66, null, null)[SafeLimits.HZ]);
        eq("age unknown → 120 allowed", 120, SafeLimits.apply(new int[] {120, 300, 2, 9, 0, 0, 0, 500}, -1, null, null)[SafeLimits.HZ]);
        // massage / twitches: no pause rule
        eq("5 Hz 10/1 untouched", 1, SafeLimits.apply(new int[] {5, 250, 10, 1, 0, 0, 0, 0}, 35, null, null)[SafeLimits.OFF]);
        // every combination ends inside the limits, and applying twice changes nothing
        for (int hz = 1; hz <= 140; hz += 3) {
            for (int on = 1; on <= 15; on += 2) {
                for (int off = 0; off <= 10; off += 3) {
                    for (int phz = 0; phz <= 120; phz += 40) {
                        int[] in = {hz, 450, on, off, phz > 0 ? 1 : 0, phz, 100, 0};
                        int[] v = SafeLimits.apply(in, 70, null, null);
                        String at = hz + "/" + on + "/" + off + "+" + phz;
                        ok(at + " hz", v[0] >= 1 && v[0] <= 85);
                        ok(at + " pw", v[1] <= (v[0] >= 100 ? 300 : 400));
                        ok(at + " pause", v[0] < 20 || v[3] >= SafeLimits.minOff(v[0], v[2], v[4] == 1 ? v[5] : 0,
                                v[4] == 1 ? v[6] / 100.0 : 0));
                        ok(at + " 2nd", v[4] == 0 || (v[5] <= 10 && v[5] < v[0]));
                        ok(at + " idempotent", java.util.Arrays.equals(v, SafeLimits.apply(v, 70, null, null)));
                    }
                }
            }
        }
        StringBuilder bg = new StringBuilder();
        SafeLimits.apply(new int[] {100, 350, 4, 1, 0, 0, 0, 0}, 35, bg, null);
        ok("the trainer is told why", bg.indexOf("Пауза 1 → ") >= 0);
        System.out.println(fails == 0 ? "SafeSim: OK" : "SafeSim: " + fails + " FAILED");
        if (fails > 0) {
            System.exit(1);
        }
    }

    static void eq(String what, int want, int got) {
        if (want != got) {
            fails++;
            System.out.println("FAIL " + what + ": want " + want + ", got " + got);
        }
    }

    static void ok(String what, boolean b) {
        if (!b) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }
}
