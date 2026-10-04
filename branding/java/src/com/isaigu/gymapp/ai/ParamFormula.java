package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * The impulse of the manual mode from who the client is (docs/xems-param-formula.md): frequency, depth (pulse
 * width), impulse and pause time and the second impulse (on / off, its frequency and strength) for each of the four
 * modes (Основен, Мускули, Кардио, Масаж). Pure Java — offline test in scripts/fit-sim.
 * <ul>
 *   <li>Depth: 350 µs [E:R2] moved by the fat layer (measured on the scale, else estimated from BMI, age, sex),
 *       the fitness, age and sensitivity.</li>
 *   <li>Frequency and impulse time: the goal's variants, one after the other from training to training
 *       (variety on purpose); the first {@link #ADAPT} trainings are the adaptation (85 Hz, 4 s, lighter).</li>
 *   <li>Pause: the shortest one whose steady fatigue peak stays within the client's limit — the fatigue model
 *       of docs/xems-ems-physiology.md §3 (frequency, impulse time and the second impulse all count).</li>
 *   <li>Second impulse: decided by the goal and the mode (never in Мускули).</li>
 * </ul>
 * The strength is never set here.
 */
public final class ParamFormula {
    public static final int HZ = 0, W = 1, ON = 2, OFF = 3, AP = 4, PHZ = 5, PS = 6, P = 7;
    public static final int MODES = 4;
    /** Trainings of adaptation (lighter, one fixed impulse) [E:R1]. */
    public static final int ADAPT = 3;
    static final String[] MODE_BG = {"Основен", "Мускули", "Кардио", "Масаж"};
    static final String[] MODE_EN = {"Main", "Muscle", "Cardio", "Massage"};

    private ParamFormula() {}

    /** Who the client is. Unknown values stay null / 0. */
    public static final class In {
        public AiModel.Sex sex;
        public Integer age;
        public int heightCm;
        public Double weightKg;
        /** Body fat % of a fresh scale measurement; null = estimated from BMI. */
        public Double fatPct;
        public boolean muscleLow;
        public AiModel.Fitness fitness;
        public AiModel.Goal goal;
        /** Extra pause seconds of the client's state (AiPersonal.Effect.offS). */
        public int offS;
        /** A soft onset asked (sensitive state). */
        public boolean sensitive;
        /** Trainings done so far. */
        public int sessions;
    }

    /** One variant: name and {hz, on s} per mode. */
    static final class Variant {
        final String bg;
        final String en;
        final int[][] v;

        Variant(String bg, String en, int[][] v) {
            this.bg = bg;
            this.en = en;
            this.v = v;
        }
    }

    public static final class Out {
        /** {hz, µs, on s, off s, second impulse 0/1, its Hz, its strength %} per mode. */
        public final int[][] v = new int[MODES][P];
        public String variantBg = "";
        public String variantEn = "";
        /** Which variant of the goal's cycle (−1 = adaptation). */
        public int variant;
        public double fatPct = Double.NaN;
        public boolean fatMeasured;
        public final List<String> whyBg = new ArrayList<String>();
        public final List<String> whyEn = new ArrayList<String>();

        void why(String bg, String en) {
            whyBg.add(bg);
            whyEn.add(en);
        }
    }

    // ------------------------------------------------------------------ the variants (hz, on) per mode

    static final Variant ADAPTATION = new Variant("Адаптация", "Adaptation",
            new int[][] {{85, 4}, {85, 4}, {30, 8}, {5, 10}});

    static Variant[] variants(AiModel.Goal g) {
        if (g == AiModel.Goal.FAT) {
            return new Variant[] {
                new Variant("Метаболитна", "Metabolic", new int[][] {{85, 4}, {85, 5}, {40, 6}, {5, 10}}),
                new Variant("Издръжливост", "Endurance", new int[][] {{50, 8}, {75, 6}, {25, 10}, {3, 10}}),
                new Variant("Интервална", "Interval", new int[][] {{70, 6}, {100, 4}, {50, 5}, {8, 8}}),
                new Variant("Сила", "Strength", new int[][] {{85, 5}, {90, 6}, {30, 8}, {5, 10}}),
            };
        }
        if (g == AiModel.Goal.CELLULITE) {
            return new Variant[] {
                new Variant("Стягане", "Firming", new int[][] {{85, 4}, {85, 5}, {30, 8}, {8, 8}}),
                new Variant("Кръвообращение", "Circulation", new int[][] {{30, 10}, {75, 6}, {20, 10}, {3, 10}}),
                new Variant("Обем", "Volume", new int[][] {{70, 6}, {90, 6}, {40, 6}, {5, 10}}),
                new Variant("Издръжливост", "Endurance", new int[][] {{50, 8}, {100, 4}, {25, 10}, {8, 8}}),
            };
        }
        if (g == AiModel.Goal.MASSAGE || g == AiModel.Goal.DRAIN) {
            return new Variant[] {
                new Variant("Лека сила", "Light strength", new int[][] {{85, 4}, {85, 4}, {30, 8}, {5, 10}}),
                new Variant("Обем", "Volume", new int[][] {{70, 5}, {75, 5}, {25, 10}, {3, 10}}),
                new Variant("Издръжливост", "Endurance", new int[][] {{50, 6}, {85, 5}, {40, 6}, {8, 8}}),
            };
        }
        return new Variant[] {                                 // TONE: strength and shape
            new Variant("Сила", "Strength", new int[][] {{85, 4}, {85, 5}, {30, 8}, {5, 10}}),
            new Variant("Мощност", "Power", new int[][] {{100, 3}, {100, 4}, {50, 5}, {8, 8}}),
            new Variant("Обем", "Volume", new int[][] {{70, 6}, {90, 6}, {40, 6}, {3, 10}}),
            new Variant("Издръжливост", "Endurance", new int[][] {{50, 8}, {75, 6}, {25, 10}, {5, 10}}),
        };
    }

    // ------------------------------------------------------------------ the formula

    public static Out compute(In in) {
        Out o = new Out();
        AiModel.Goal goal = in.goal != null ? in.goal : AiModel.Goal.TONE;
        AiModel.Fitness fit = in.fitness != null ? in.fitness : AiModel.Fitness.MID;
        boolean older = in.age != null && in.age >= 60;
        boolean male = in.sex != AiModel.Sex.FEMALE;

        // 1. the variant: adaptation first, then the goal's cycle — every training another one
        Variant var;
        if (in.sessions < ADAPT) {
            var = ADAPTATION;
            o.variant = -1;
            o.why("Тренировка " + (in.sessions + 1) + " от " + ADAPT + " за адаптация: 85 Hz, 4 s, по-дълга пауза.",
                    "Training " + (in.sessions + 1) + " of " + ADAPT + " of adaptation: 85 Hz, 4 s, longer pause.");
        } else {
            Variant[] vs = variants(goal);
            o.variant = (in.sessions - ADAPT) % vs.length;
            var = vs[o.variant];
            o.why("Вариант „" + var.bg + "“ (" + (o.variant + 1) + " от " + vs.length
                            + ") — всяка тренировка различен стимул.",
                    "Variant \"" + var.en + "\" (" + (o.variant + 1) + " of " + vs.length
                            + ") — a different stimulus every training.");
        }
        o.variantBg = var.bg;
        o.variantEn = var.en;

        // 2. depth: the fat layer under the electrode
        double norm = male ? 18 : 28;
        double fat = Double.NaN;
        if (in.fatPct != null) {
            fat = in.fatPct;
            o.fatMeasured = true;
        } else if (in.weightKg != null && in.heightCm >= 100 && in.age != null) {
            double m = in.heightCm / 100.0;
            double bmi = in.weightKg / (m * m);
            fat = 1.2 * bmi + 0.23 * in.age - 10.8 * (male ? 1 : 0) - 5.4;   // Deurenberg 1991
        }
        o.fatPct = fat;
        int depth = 350;
        if (!Double.isNaN(fat)) {
            double d = fat - norm;
            depth += (int) Math.round(d > 0 ? 4 * d : 2 * d);
            depth = Math.max(300, Math.min(400, depth));
            o.why(String.format(java.util.Locale.US, "Мазнини %.0f %%%s (норма %.0f) → дълбочина %d µs.", fat,
                            o.fatMeasured ? " (кантар)" : " (по тегло и ръст)", norm, depth),
                    String.format(java.util.Locale.US, "Fat %.0f%%%s (norm %.0f) → depth %d µs.", fat,
                            o.fatMeasured ? " (scale)" : " (from weight and height)", norm, depth));
        }
        int less = 0;
        if (fit == AiModel.Fitness.LOW) {
            less += 25;
        }
        if (older) {
            less += 25;
        }
        if (in.sensitive) {
            less += 25;
        }
        if (less > 0) {
            o.why("По-плитко −" + less + " µs: " + join(fit == AiModel.Fitness.LOW ? "слаба форма" : null,
                            older ? "60+" : null, in.sensitive ? "чувствителност" : null) + ".",
                    "Shallower −" + less + " µs: " + join(fit == AiModel.Fitness.LOW ? "low fitness" : null,
                            older ? "60+" : null, in.sensitive ? "sensitivity" : null) + ".");
        }

        // 3. the fatigue limit: fitness (one level lower at 60+ or with low muscle), lighter in adaptation
        AiModel.Fitness tol = fit;
        if ((older || in.muscleLow) && tol != AiModel.Fitness.LOW) {
            tol = tol == AiModel.Fitness.HIGH ? AiModel.Fitness.MID : AiModel.Fitness.LOW;
        }
        double[] fp = AiPlanner.fatigueParams(tol);
        double share = in.sessions < ADAPT ? 0.85 : 1.0;
        if (in.muscleLow) {
            o.why("Малко мускулна маса — по-ниска граница на умората (по-дълга пауза).",
                    "Low muscle mass — a lower fatigue limit (longer pause).");
        }

        for (int k = 0; k < MODES; k++) {
            int[] r = o.v[k];
            r[HZ] = var.v[k][0];
            r[ON] = var.v[k][1];
            boolean massage = k == 3;
            if (!massage && (fit == AiModel.Fitness.LOW || older) && r[ON] > 4 && k != 2) {
                r[ON] = 4;                                      // short impulses until the body is used to it
            }
            if (fit == AiModel.Fitness.HIGH && !older && k == 1 && in.sessions >= ADAPT) {
                r[ON] += 1;                                     // muscle: a longer hold for the trained
            }
            r[W] = massage ? Math.max(200, Math.min(350, 280 + (depth - 350) / 2 - (in.sensitive ? 25 : 0)))
                    : Math.max(250, depth - less);
            // the second impulse
            boolean ap;
            if (k == 1) {
                ap = false;                                     // Мускули: never
            } else if (massage) {
                ap = goal == AiModel.Goal.MASSAGE || goal == AiModel.Goal.CELLULITE;
            } else {
                ap = goal == AiModel.Goal.FAT || goal == AiModel.Goal.CELLULITE;
            }
            if (!AiModel.activePauseAllowed(goal)) {
                ap = false;
            }
            int phz = massage ? Math.max(1, Math.round(r[HZ] / 3f)) : goal == AiModel.Goal.CELLULITE ? 8 : 6;
            if (phz >= r[HZ]) {
                ap = false;
            }
            int ps = massage ? 60 : goal == AiModel.Goal.CELLULITE ? 50 : goal == AiModel.Goal.FAT ? 45 : 40;
            if (fit == AiModel.Fitness.LOW || in.sensitive) {
                ps -= 5;
            }
            // the pause: the shortest one within the fatigue limit
            int min = massage ? 2 : k == 1 ? 3 : 2;
            int off;
            if (massage) {
                off = min;
            } else {
                off = min;
                double limit = share * fp[0];
                while (off < 20 && steadyPeak(r[HZ], r[ON], off, ap ? phz : 0, ap ? ps / 100.0 : 0, fp[2])
                        > limit + 1e-6) {
                    off++;
                }
            }
            off += in.offS + (in.sensitive && massage ? 1 : 0);
            if (ap && off < AiPlanner.ACTIVE_PAUSE_MIN_OFF_S) {
                ap = false;
            }
            r[OFF] = off;
            r[AP] = ap ? 1 : 0;
            r[PHZ] = ap ? phz : 0;
            r[PS] = ap ? ps : 0;
        }
        o.why("Пауза от модела на умората (" + fitBg(tol) + (share < 1 ? ", адаптация" : "") + "): Основен "
                        + o.v[0][ON] + " / " + o.v[0][OFF] + " s.",
                "Pause from the fatigue model (" + tol.name().toLowerCase() + (share < 1 ? ", adaptation" : "")
                        + "): Main " + o.v[0][ON] + " / " + o.v[0][OFF] + " s.");
        if (o.v[0][AP] == 1 || o.v[3][AP] == 1) {
            o.why("Втори импулс в паузата: " + goalBg(goal) + ".", "Second impulse in the pause: goal "
                    + goal.name().toLowerCase() + ".");
        }
        if (in.offS > 0) {
            o.why("Състояние днес: пауза +" + in.offS + " s.", "Today's state: pause +" + in.offS + " s.");
        }
        return o;
    }

    /**
     * Steady-state fatigue peak of one cycle at the calibrated strength (docs/xems-ems-physiology.md §3.1):
     * f0 = (G(1−E1)E2 + P(1−E2)) / (1 − E1E2), peak = f0·E1 + G(1−E1).
     */
    public static double steadyPeak(int hz, int on, int off, int pauseHz, double pauseSigma, double tau) {
        double e1 = Math.exp(-on / tau);
        double e2 = Math.exp(-Math.max(1, off) / tau);
        double g = AiPlanner.fatigueWeight(hz) * tau;
        double p = pauseHz > 0 ? AiPlanner.fatigueWeight(pauseHz) * pauseSigma * tau : 0;
        double f0 = (g * (1 - e1) * e2 + p * (1 - e2)) / Math.max(1e-9, 1 - e1 * e2);
        return Math.max(f0 * e1 + g * (1 - e1), f0);
    }

    /** "85 Hz · 350 µs · 4/4 s · 2-ри 6 Hz 45 %" */
    public static String line(int[] r, boolean bg) {
        StringBuilder b = new StringBuilder();
        b.append(r[HZ]).append(" Hz · ").append(r[W]).append(" µs · ").append(r[ON]).append('/').append(r[OFF])
                .append(" s");
        if (r[AP] == 1) {
            b.append(bg ? " · 2-ри " : " · 2nd ").append(r[PHZ]).append(" Hz ").append(r[PS]).append(" %");
        }
        return b.toString();
    }

    public static String modeName(int k, boolean bg) {
        return bg ? MODE_BG[k] : MODE_EN[k];
    }

    static String fitBg(AiModel.Fitness f) {
        return f == AiModel.Fitness.LOW ? "слаба форма" : f == AiModel.Fitness.HIGH ? "добра форма" : "средна форма";
    }

    static String goalBg(AiModel.Goal g) {
        return g == AiModel.Goal.FAT ? "цел отслабване" : g == AiModel.Goal.CELLULITE ? "цел целулит"
                : g == AiModel.Goal.MASSAGE ? "цел масаж" : g == AiModel.Goal.DRAIN ? "цел дренаж" : "цел стягане";
    }

    private static String join(String... xs) {
        StringBuilder b = new StringBuilder();
        for (String x : xs) {
            if (x != null) {
                b.append(b.length() > 0 ? ", " : "").append(x);
            }
        }
        return b.toString();
    }
}
