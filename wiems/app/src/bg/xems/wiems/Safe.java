package bg.xems.wiems;

/**
 * Absolute limits of the impulse — the same rules as the tablet (ai/SafeLimits) and the XBody panel (safe.cpp),
 * docs/xems-safety-limits.md: Hz 1–120 (60+ ≤ 85), fused impulse ≤ 6 s from 50 Hz / ≤ 10 s at 20–49 Hz, soft rise
 * ≥ 0.3 s, and the shortest pause a trained person's fatigue allows.
 */
final class Safe {
    private Safe() {}

    static final int HZ_MAX = 120, HZ_MAX_60 = 85, TETANIC_HZ = 20, ON_MAX_50HZ = 6, ON_MAX_TETANIC = 10,
            RAMP_MIN_MS = 300, OFF_MAX_SEARCH = 30, STRENGTH_MAX = 100, PAUSE_HZ_MAX = 10, PAUSE_PCT_MAX = 150;
    private static final double TAU = 30.0;

    private static double fMax() {
        return 1.15 * TAU / (1 + Math.exp(-4.0 / TAU));
    }

    private static double forceShare(int hz) {
        double x = Math.pow(Math.max(0, hz), 2.5);
        return x / (x + Math.pow(15.0, 2.5));
    }

    static double fatigueWeight(int hz) {
        return forceShare(hz) * (0.7 + 0.3 * Math.max(0, hz) / 85.0) / forceShare(85);
    }

    /** p corrected in place; returns the corrections in Bulgarian (one per line), "" when none. */
    static String apply(Session.Program p, boolean age60) {
        StringBuilder why = new StringBuilder();
        int hm = age60 ? HZ_MAX_60 : HZ_MAX;
        if (p.hz > hm) {
            line(why, "Честота " + p.hz + " → " + hm + " Hz" + (age60 ? " (60+)" : ""));
            p.hz = hm;
        }
        if (p.hz < 1) p.hz = 1;
        if (p.onS < 1) p.onS = 1;
        if (p.offS < 1) p.offS = 1;
        if (p.dbl) {
            int phzMax = Math.min(p.hz - 1, PAUSE_HZ_MAX);
            if (phzMax < 1) {
                line(why, "Втори импулс изключен: основната честота е твърде ниска");
                p.dbl = false;
            } else {
                if (p.dblHz > phzMax) {
                    line(why, "Втори импулс " + p.dblHz + " → " + phzMax + " Hz (паузата е за отпускане)");
                    p.dblHz = phzMax;
                }
                if (p.dblHz < 1) p.dblHz = 1;
                if (p.dblPct > PAUSE_PCT_MAX) {
                    line(why, "Вторият импулс е най-много 1,5 пъти по-силен от основния");
                    p.dblPct = PAUSE_PCT_MAX;
                }
                if (p.dblPct < 10) p.dblPct = 10;
            }
        }
        if (p.hz >= TETANIC_HZ) {
            int onMax = p.hz >= 50 ? ON_MAX_50HZ : ON_MAX_TETANIC;
            if (p.onS > onMax) {
                line(why, "Импулс " + p.onS + " → " + onMax + " s при " + p.hz + " Hz");
                p.onS = onMax;
            }
            if (p.rampMs < RAMP_MIN_MS) p.rampMs = RAMP_MIN_MS;
            int min = minOff(p.hz, p.onS, p.dbl ? p.dblHz : 0, p.dbl ? p.dblPct / 100.0 : 0);
            if (p.offS < min) {
                line(why, "Пауза " + p.offS + " → " + min + " s: при " + p.hz + " Hz · " + p.onS + " s по-кратка не е безопасна");
                p.offS = min;
            }
        }
        if (p.totalS < 60) p.totalS = 60;
        if (p.totalS > 3600) p.totalS = 3600;
        return why.toString();
    }

    private static void line(StringBuilder b, String s) {
        if (b.length() > 0) b.append('\n');
        b.append(s);
    }

    static int minOff(int hz, int on, int pauseHz, double pauseSigma) {
        if (hz < TETANIC_HZ) return 1;
        double fm = fMax();
        int off = 1;
        while (off < OFF_MAX_SEARCH && peak(hz, on, off, pauseHz, pauseSigma) > fm + 1e-6) off++;
        return off;
    }

    static double peak(int hz, int on, int off, int pauseHz, double pauseSigma) {
        double e1 = Math.exp(-on / TAU), e2 = Math.exp(-Math.max(off, 1) / TAU);
        double g = fatigueWeight(hz) * TAU;
        double pz = pauseHz > 0 ? fatigueWeight(pauseHz) * pauseSigma * TAU : 0;
        double den = 1 - e1 * e2;
        double f0 = (g * (1 - e1) * e2 + pz * (1 - e2)) / (den > 1e-9 ? den : 1e-9);
        double a = f0 * e1 + g * (1 - e1);
        return Math.max(a, f0);
    }
}
