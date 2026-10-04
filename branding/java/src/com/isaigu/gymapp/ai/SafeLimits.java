package com.isaigu.gymapp.ai;

/**
 * Absolute limits of the impulse — every mode, every path to the suit (owner, 1.1.323; docs/xems-safety-limits.md).
 * Pure Java. Not an adaptation: the same rules for everybody, only age 60+ has its own frequency ceiling.
 * <ul>
 *   <li>Frequency 1–120 Hz; 60+ at most 85 Hz.</li>
 *   <li>Depth 50–400 µs; from 100 Hz at most 300 µs.</li>
 *   <li>Fused contraction (≥ 20 Hz): impulse at most 6 s from 50 Hz, 10 s below; soft rise ≥ 0.3 s.</li>
 *   <li>Second impulse: at most 10 Hz, under the main frequency, never stronger than the main impulse — the pause
 *       must let the muscle relax; a fused contraction in the pause is no rest.</li>
 *   <li>Pause from ≥ 20 Hz: the shortest one whose steady fatigue peak at the calibrated strength stays within the
 *       limit of a <b>trained</b> person (docs/xems-ems-physiology.md §3, HIGH: τ 30 s, F_max 1.15·…) — the second
 *       impulse counts. Shorter → raised.</li>
 * </ul>
 */
public final class SafeLimits {
    public static final int HZ_MAX = 120;
    public static final int HZ_MAX_60 = 85;
    public static final int PW_MIN = 50;
    public static final int PW_MAX = 400;
    public static final int PW_MAX_100HZ = 300;
    public static final int TETANIC_HZ = 20;
    public static final int ON_MAX_50HZ = 6;
    public static final int ON_MAX_TETANIC = 10;
    public static final int RAMP_MIN_MS = 300;
    public static final int PAUSE_HZ_MAX = 10;
    public static final int PAUSE_PCT_MAX = 100;
    public static final int OFF_MAX_SEARCH = 30;

    public static final int HZ = 0, PW = 1, ON = 2, OFF = 3, AP = 4, PHZ = 5, PS = 6, RAMP = 7, N = 8;

    private SafeLimits() {}

    /** Highest frequency for the client's age (−1 / null = unknown → 120). */
    public static int hzMax(int age) {
        return age >= 60 ? HZ_MAX_60 : HZ_MAX;
    }

    /**
     * The values brought into the limits: {hz, µs, on s, off s, 2nd impulse 0/1, its Hz, its strength as % of the
     * main one, rise ms}.
     * Returns a new array; {@code why} (may be null) gets one short Bulgarian / English line per correction.
     */
    public static int[] apply(int[] in, int age, StringBuilder whyBg, StringBuilder whyEn) {
        int[] v = in.clone();
        int hzMax = hzMax(age);
        if (v[HZ] > hzMax) {
            note(whyBg, whyEn, "Честота " + v[HZ] + " → " + hzMax + " Hz" + (age >= 60 ? " (60+)" : ""),
                    "Frequency " + v[HZ] + " → " + hzMax + " Hz" + (age >= 60 ? " (60+)" : ""));
            v[HZ] = hzMax;
        }
        v[HZ] = Math.max(1, v[HZ]);
        int pwMax = v[HZ] >= 100 ? PW_MAX_100HZ : PW_MAX;
        if (v[PW] > pwMax) {
            note(whyBg, whyEn, "Дълбочина " + v[PW] + " → " + pwMax + " µs при " + v[HZ] + " Hz",
                    "Depth " + v[PW] + " → " + pwMax + " µs at " + v[HZ] + " Hz");
            v[PW] = pwMax;
        }
        v[PW] = Math.max(PW_MIN, v[PW]);
        v[ON] = Math.max(1, v[ON]);
        v[OFF] = Math.max(1, v[OFF]);
        boolean tet = v[HZ] >= TETANIC_HZ;
        if (tet) {
            int onMax = v[HZ] >= 50 ? ON_MAX_50HZ : ON_MAX_TETANIC;
            if (v[ON] > onMax) {
                note(whyBg, whyEn, "Импулс " + v[ON] + " → " + onMax + " s при " + v[HZ] + " Hz",
                        "Impulse " + v[ON] + " → " + onMax + " s at " + v[HZ] + " Hz");
                v[ON] = onMax;
            }
            if (v[RAMP] < RAMP_MIN_MS) {
                v[RAMP] = RAMP_MIN_MS;                          // silent: a soft rise is never felt as a change
            }
        }
        if (v[AP] == 1) {
            int phzMax = Math.min(PAUSE_HZ_MAX, v[HZ] - 1);
            if (phzMax < 1) {
                note(whyBg, whyEn, "Втори импулс изключен: основната честота е твърде ниска",
                        "Second impulse off: the main frequency is too low");
                v[AP] = 0;
            } else {
                if (v[PHZ] > phzMax) {
                    note(whyBg, whyEn, "Втори импулс " + v[PHZ] + " → " + phzMax + " Hz (паузата е за отпускане)",
                            "Second impulse " + v[PHZ] + " → " + phzMax + " Hz (the pause is for relaxing)");
                    v[PHZ] = phzMax;
                }
                v[PHZ] = Math.max(1, v[PHZ]);
                if (v[PS] > PAUSE_PCT_MAX) {
                    note(whyBg, whyEn, "Вторият импулс не може да е по-силен от основния",
                            "The second impulse cannot be stronger than the main one");
                    v[PS] = PAUSE_PCT_MAX;
                }
            }
        }
        if (tet) {
            int min = minOff(v[HZ], v[ON], v[AP] == 1 ? v[PHZ] : 0, v[AP] == 1 ? v[PS] / 100.0 : 0);
            if (v[OFF] < min) {
                note(whyBg, whyEn, "Пауза " + v[OFF] + " → " + min + " s: при " + v[HZ] + " Hz · " + v[ON]
                                + " s по-кратка не е безопасна",
                        "Pause " + v[OFF] + " → " + min + " s: at " + v[HZ] + " Hz · " + v[ON] + " s a shorter one is "
                                + "not safe");
                v[OFF] = min;
            }
        }
        return v;
    }

    /**
     * One engine cycle (Auto, AI) into the limits before it is written to the rows — the rows then already hold what
     * the suit gets, so the engines never read the guard's correction as a trainer's change. The second impulse's
     * strength is a share of the main one here ({@code pauseSigma}).
     */
    public static int[] cycle(int hz, int pw, int on, int off, int pauseHz, double pauseSigma, int rampMs, int age) {
        boolean ap = pauseHz > 0 && pauseSigma > 0;
        return apply(new int[] {hz, pw, on, off, ap ? 1 : 0, pauseHz, (int) Math.round(pauseSigma * 100), rampMs},
                age, null, null);
    }

    /** Shortest pause (s) for a fused impulse within a trained person's fatigue limit. */
    public static int minOff(int hz, int on, int pauseHz, double pauseSigma) {
        if (hz < TETANIC_HZ) {
            return 1;
        }
        double[] fp = AiPlanner.fatigueParams(AiModel.Fitness.HIGH);
        int off = 1;
        while (off < OFF_MAX_SEARCH && peak(hz, on, off, pauseHz, pauseSigma, fp[2]) > fp[0] + 1e-6) {
            off++;
        }
        return off;
    }

    /** Steady-state fatigue peak of one cycle at the calibrated strength (physiology §3.1). */
    public static double peak(int hz, int on, int off, int pauseHz, double pauseSigma, double tau) {
        double e1 = Math.exp(-on / tau);
        double e2 = Math.exp(-Math.max(1, off) / tau);
        double g = AiPlanner.fatigueWeight(hz) * tau;
        double p = pauseHz > 0 ? AiPlanner.fatigueWeight(pauseHz) * pauseSigma * tau : 0;
        double f0 = (g * (1 - e1) * e2 + p * (1 - e2)) / Math.max(1e-9, 1 - e1 * e2);
        return Math.max(f0 * e1 + g * (1 - e1), f0);
    }

    private static void note(StringBuilder bg, StringBuilder en, String b, String e) {
        if (bg != null) {
            bg.append(bg.length() > 0 ? "\n" : "").append(b);
        }
        if (en != null) {
            en.append(en.length() > 0 ? "\n" : "").append(e);
        }
    }
}
