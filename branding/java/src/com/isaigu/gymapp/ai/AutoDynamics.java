package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Plan;
import com.isaigu.gymapp.ai.AutoModel.Step;

/**
 * The impulse of the automatic mode changes while it runs (owner, 1.1.322 — docs/xems-auto-mode-spec.md §13,
 * docs/xems-ems-physiology.md §3.5). Pure Java.
 * <ul>
 *   <li><b>Approach per exercise (set).</b> Every set of a one-step exercise phase gets its own approach — its
 *       frequency, impulse : pause, second impulse — picked from what is happening: how fresh the muscle is
 *       (the fatigue model), the heart rate (ceiling, corridor), the dose against the plan, the approaches
 *       already used (this session and the training count — never the same order twice).</li>
 *   <li><b>Glide inside the set.</b> The frequency falls with the muscle's fatigue (a fresh muscle after a long
 *       rest starts high; the tired one fuses at a lower rate — "muscle wisdom"), the pause grows, the impulse
 *       gives way to the second impulse when the approach has one, and the depth rises a little at the end to
 *       recruit fibres that have not worked yet. Never the depth down: it is what decides how many fibres work.</li>
 *   <li><b>Ramp.</b> A frequency jump or a new approach starts with a longer soft rise.</li>
 *   <li><b>Sectors of the passive recovery.</b> The recovery is split into sectors with their own impulse (the
 *       program's massage, pump, tone-massage, drainage), softly joined.</li>
 * </ul>
 * Programs keep their identity: power keeps OFF ≥ 2·ON and no second impulse, the gentle programs (back,
 * 50+) never go to 100 Hz, the first trainings no 100 Hz either; the hard limits (AutoLimits) apply after.
 */
public final class AutoDynamics {
    private AutoDynamics() {}

    /** One way to do a set. hz → floor = the glide; class: 0 endurance … 3 maximal force. */
    public static final class Approach {
        public final String id;
        public final String bg;
        public final String en;
        public final int hz;
        public final int floor;
        public final int on;
        public final int off;
        public final int pauseHz;
        public final double pauseSigma;
        public final int cls;

        Approach(String id, String bg, String en, int hz, int floor, int on, int off, int pauseHz, double pauseSigma,
                int cls) {
            this.id = id;
            this.bg = bg;
            this.en = en;
            this.hz = hz;
            this.floor = floor;
            this.on = on;
            this.off = off;
            this.pauseHz = pauseHz;
            this.pauseSigma = pauseSigma;
            this.cls = cls;
        }

        public String name() {
            return AiText.t(bg, en);
        }
    }

    /** The program's own step, gliding. */
    static final String BASE = "base";
    public static final Approach STRENGTH_PAUSE = new Approach("strength_pause", "Сила + активна почивка",
            "Strength + active rest", 100, 70, 4, 4, 7, 0.40, 3);
    static final Approach PURE = new Approach("pure", "Чиста сила", "Pure strength", 100, 80, 3, 6, 0, 0, 3);
    static final Approach VOLUME = new Approach("volume", "Обем", "Volume", 85, 60, 6, 4, 0, 0, 2);
    static final Approach METABOLIC = new Approach("metabolic", "Метаболитна", "Metabolic", 50, 35, 6, 4, 6, 0.45, 1);
    static final Approach TONE = new Approach("tone", "Издръжлив тонус", "Endurance tone", 20, 20, 6, 4, 0, 0, 0);
    static final Approach POWER_BURST = new Approach("burst", "Взрив", "Burst", 100, 85, 3, 9, 0, 0, 3);
    static final Approach POWER_SHORT = new Approach("burst_short", "Къс взрив", "Short burst", 100, 80, 2, 6, 0, 0, 3);
    static final Approach POWER_HOLD = new Approach("power_hold", "Сила в задържане", "Strength hold", 85, 70, 4, 8,
            0, 0, 2);
    static final Approach LIGHT_VOLUME = new Approach("light_volume", "Лек обем", "Light volume", 70, 55, 5, 5, 0, 0,
            1);

    /** The impulse class of a program (AutoCatalog.Program.impulse, owner 1.1.326); unset = gentle. */
    public static final String STRENGTH = "strength";
    public static final String POWER = "power";
    public static final String CARDIO = "cardio";
    public static final String GENTLE = "gentle";

    /**
     * The program's approaches; null = no approaches (a designed multi-step phase keeps its steps). By the program's
     * impulse class, never by its id — a new program without a class is gentle until someone says otherwise.
     */
    public static Approach[] approaches(Plan plan, Phase ph) {
        if (plan == null || ph == null || plan.program == null || !plan.program.isActive() || ph.wave
                || ph.isCooldown() || "WARMUP".equals(ph.id) || ph.steps.size() != 1 || !ph.steps.get(0).isTetanic()) {
            return null;
        }
        Approach base = baseOf(ph.steps.get(0));
        String cls = impulseClass(plan.program);
        boolean no100 = plan.input != null && (plan.input.sessions < 3 || plan.input.age >= 60);
        Approach[] l;
        if (POWER.equals(cls)) {
            l = new Approach[] {base, POWER_SHORT, POWER_HOLD};
        } else if (STRENGTH.equals(cls)) {
            l = new Approach[] {base, STRENGTH_PAUSE, PURE, VOLUME, METABOLIC, TONE};
        } else if (CARDIO.equals(cls)) {
            l = new Approach[] {base, METABOLIC, TONE, VOLUME};
        } else {
            l = new Approach[] {base, LIGHT_VOLUME, TONE};
        }
        return no100 && !POWER.equals(cls) ? without100(l) : l;
    }

    /** The program's impulse class (unset or unknown → gentle). */
    public static String impulseClass(AutoCatalog.Program p) {
        String c = p != null ? p.impulse : null;
        return STRENGTH.equals(c) || POWER.equals(c) || CARDIO.equals(c) ? c : GENTLE;
    }

    /** The list without the 100 Hz approaches (the drawn / program step stays). */
    static Approach[] without100(Approach[] l) {
        int n = 0;
        for (Approach a : l) {
            if (a.hz < 95 || BASE.equals(a.id)) {
                n++;
            }
        }
        Approach[] out = new Approach[n];
        int k = 0;
        for (Approach a : l) {
            if (a.hz < 95 || BASE.equals(a.id)) {
                out[k++] = a;
            }
        }
        return out;
    }

    // ------------------------------------------------------------------ the movement of a map block

    public static final int MOVE_STRENGTH = 0, MOVE_SMALL = 1, MOVE_HOLD = 2, MOVE_CARDIO = 3, MOVE_STRETCH = 4,
            MOVE_UNKNOWN = 5;

    /** The movement from the exercise's library pattern (owner, 1.1.326) — not from the drawn frequency. */
    public static int move(String pat, boolean hold) {
        String p = pat != null ? pat : "";
        if (hold || "core_static".equals(p) || "carry".equals(p)) {
            return MOVE_HOLD;
        }
        if ("cardio".equals(p) || "plyo".equals(p)) {
            return MOVE_CARDIO;
        }
        if ("stretch".equals(p) || "mobility".equals(p)) {
            return MOVE_STRETCH;
        }
        if (isSmall(p)) {
            return MOVE_SMALL;
        }
        for (String x : STRENGTH_PATS) {
            if (x.equals(p)) {
                return MOVE_STRENGTH;
            }
        }
        return MOVE_UNKNOWN;                                   // a new pattern: light until it is classified
    }

    /** The big compound movements of the library (multi-joint, big muscles): every strength approach. */
    static final String[] STRENGTH_PATS = {"squat", "lunge", "hinge", "glute", "push_h", "push_v", "pull_h", "pull_v",
        "dip", "olympic"};

    /** Small muscles and core flexion (the library patterns Workout.forExercise starts at 85 Hz / 300 µs). */
    public static boolean isSmall(String p) {
        return "biceps".equals(p) || "triceps".equals(p) || "lat_raise".equals(p) || "rear_delt".equals(p)
                || "front_raise".equals(p) || "fly".equals(p) || "shrug".equals(p) || "forearm".equals(p)
                || "calf".equals(p) || "abductor".equals(p) || "adductor".equals(p) || "knee_flex".equals(p)
                || "knee_ext".equals(p) || "pullover".equals(p) || "core_flex".equals(p) || "core_rot".equals(p)
                || "core_hip".equals(p) || "back_ext".equals(p);
    }

    /**
     * The approaches of one block of a drawn map (Програми, owner 1.1.324 / 1.1.326) by the exercise's movement:
     * stretching stays as drawn; cardio / jumps only metabolic / tone; holds light volume / tone; small muscles no
     * pure 100 Hz strength; an exercise of unknown movement is treated like a light strength one (no 100 Hz).
     * 60+ and the first trainings no 100 Hz. The drawn impulse is always one of them (index 0). Plain stimulation
     * (no exercise): {@code move} = MOVE_UNKNOWN.
     */
    public static Approach[] forMap(Step drawn, int move, int sessions, int age) {
        if (drawn == null || !drawn.isTetanic() || move == MOVE_STRETCH) {
            return null;
        }
        Approach base = baseOf(drawn);
        Approach[] l;
        boolean strength = move == MOVE_STRENGTH || move == MOVE_SMALL || (move == MOVE_UNKNOWN && drawn.hz >= 50);
        if (age >= 60 && strength) {
            l = new Approach[] {base, LIGHT_VOLUME, TONE};    // 60+: the gentle strength set, cardio / holds keep theirs
        } else if (move == MOVE_CARDIO) {
            l = new Approach[] {base, METABOLIC, TONE};
        } else if (move == MOVE_HOLD) {
            l = new Approach[] {base, LIGHT_VOLUME, TONE};
        } else if (move == MOVE_SMALL) {
            l = new Approach[] {base, STRENGTH_PAUSE, VOLUME, METABOLIC, TONE};
        } else if (move == MOVE_STRENGTH) {
            l = new Approach[] {base, STRENGTH_PAUSE, PURE, VOLUME, METABOLIC, TONE};
        } else {
            l = drawn.hz < 50 ? new Approach[] {base, METABOLIC, TONE} : new Approach[] {base, VOLUME, METABOLIC, TONE};
        }
        return sessions < 3 ? without100(l) : l;
    }

    /** The program's own step as an approach: it glides down to 70 % (never under fusion, 50 Hz) when ≥ 50 Hz. */
    static Approach baseOf(Step s) {
        int floor = s.hz >= 50 ? Math.max(50, (int) Math.round(s.hz * 0.7)) : s.hz;
        int cls = s.hz >= 95 ? 3 : s.hz >= 70 ? 2 : s.hz >= 40 ? 1 : 0;
        return new Approach(BASE, "Програмата", "The program", s.hz, floor, s.onS, s.offS, s.pauseHz, s.pauseSigma,
                cls);
    }

    /** What the engine knows when a set starts. */
    public static final class Ctx {
        /** 1 − F/F_max of the most tired zone now (1 = fresh). */
        public double fresh = 1;
        /** HR near the ceiling, above / below the corridor. */
        public boolean hrHigh;
        public boolean hrLow;
        /** Dose used / planned (1 = on plan). */
        public double dose = 1;
        /** Trainings before this one (the order differs every training). */
        public int sessions;
        /** Set number in this phase. */
        public int set;
        /** Share of the active part done (0 start … 1 end): hard work early, lighter towards the end. */
        public double progress;
        /** How many sets each approach already had in this phase (null = none). */
        public int[] used;
        /** Index of the last two approaches (−1 = none). */
        public int prev = -1;
        public int prev2 = -1;
    }

    /** The approach for the next set (index into {@code list}): deterministic, so forecasts match the run. */
    public static int pick(Approach[] list, Ctx x) {
        int best = 0;
        double bestScore = -1e9;
        int n = list.length;
        for (int i = 0; i < n; i++) {
            Approach a = list[i];
            double s = 0;
            // the order differs every training and every set: a rotation that only breaks ties
            int pos = ((i - x.sessions - x.set) % n + n) % n;
            s -= 0.35 * pos / n;
            // a fresh muscle takes the hard work, a tired one the light (a rest at its minimum leaves ≈ 0.67)
            s += (a.cls / 3.0 - 0.5) * (x.fresh - 0.6) * 4.0;
            // the stages of the training: force while the body is fresh, metabolic / endurance towards the end
            s += (a.cls / 3.0 - 0.5) * (0.45 - x.progress) * 2.0;
            // spread: an approach used often in this phase steps back
            if (x.used != null && i < x.used.length) {
                s -= 0.45 * x.used[i];
            }
            // the heart: high force raises it (pressor reflex) → lighter; under the corridor → metabolic work
            if (x.hrHigh) {
                s -= 1.2 * a.cls;
            }
            if (x.hrLow && a.pauseHz > 0) {
                s += 0.8;
            }
            // the dose: behind → denser work, ahead → lighter
            if (x.dose < 0.9 && a.cls >= 2) {
                s += 0.5;
            } else if (x.dose > 1.1 && a.cls >= 2) {
                s -= 0.5;
            }
            // variety
            if (i == x.prev) {
                s -= 2.0;
            } else if (i == x.prev2) {
                s -= 0.7;
            }
            if (s > bestScore + 1e-9) {
                bestScore = s;
                best = i;
            }
        }
        return best;
    }

    /** How far the set has gone in fatigue: 0 = fresh (F ≤ 25 % of F_max), 1 = at 90 %. */
    public static double glide(double fRatio) {
        return Math.max(0, Math.min(1, (fRatio - 0.25) / 0.65));
    }

    /**
     * The step of one cycle: the approach, then the glide g (0…1). Trainer's window values (> 0) win over the
     * glide of their parameter. The ramp is set by {@link #ramp}.
     */
    public static Step apply(Step program, Approach a, double g, boolean pauseOk) {
        Step s = program.copy();
        if (a != null) {
            s.hz = (int) Math.round(a.hz - (a.hz - a.floor) * g);
            s.onS = a.on;
            s.offS = a.off;
            s.pauseHz = pauseOk ? a.pauseHz : 0;
            s.pauseSigma = pauseOk ? a.pauseSigma : 0;
            if (a.pauseHz > 0 && pauseOk && g > 0.7 && s.onS > 3) {
                s.onS -= 1;                         // impulse : impulse — the second impulse takes over
                s.offS += 1;
            }
        }
        if (s.isTetanic()) {
            s.offS += (int) Math.round(2 * g);      // the pause grows with the fatigue
            s.pwUs += (int) Math.round(20 * Math.max(0, Math.min(1, (g - 0.6) / 0.4)));  // fresh fibres at the end
        }
        return s;
    }

    /** Soft rise for a jump: a new approach / sector or ≥ 10 Hz change → longer ramp. */
    public static int ramp(int rampUpMs, int prevHz, int hz, boolean newApproach) {
        int r = rampUpMs;
        if (newApproach) {
            r = Math.max(r, 800);
        } else if (prevHz > 0 && Math.abs(hz - prevHz) >= 10) {
            r = Math.max(r, 600);
        }
        return r;
    }

    // ------------------------------------------------------------------ the passive recovery in sectors

    /** One sector: {hz, on, off, pauseHz, pauseSigma×100}; hz 0 = the program's own step. */
    static final int[][] SECTORS = {
        {0, 0, 0, 0, 0},                           // the program's massage
        {2, 4, 1, 0, 0},                           // pump: the vessels empty and refill
        {8, 6, 2, 3, 50},                          // tone-massage with a slow second impulse
        {1, 10, 1, 0, 0},                          // drainage twitches
    };
    static final String[] SECTOR_BG = {"Масаж", "Помпа", "Тонус-масаж", "Дренаж"};
    static final String[] SECTOR_EN = {"Massage", "Pump", "Tone massage", "Drainage"};
    /** A recovery shorter than this keeps one impulse. */
    public static final int SECTOR_FROM_S = 240;

    /** The recovery's sector for {@code elapsed} s of a phase of {@code durS}; −1 = no sectors here. */
    public static int sector(Plan plan, Phase ph, double elapsed, int durS) {
        if (ph == null || !ph.isCooldown() || ph.wave || ph.steps.size() != 1 || durS < SECTOR_FROM_S) {
            return -1;
        }
        int n = SECTORS.length;
        int len = Math.max(60, durS / n);
        int k = Math.min(n - 1, (int) (elapsed / len));
        if (k == 0) {
            return 0;                               // the program's massage first
        }
        int seed = plan != null && plan.input != null ? plan.input.sessions : 0;
        return 1 + ((k - 1 + seed) % (n - 1));
    }

    /** The sector's step; a low-frequency recovery (relief, ≤ 3 Hz) keeps to the low sectors. */
    public static Step sectorStep(Step program, int k, boolean pauseOk) {
        Step s = program.copy();
        if (k <= 0 || k >= SECTORS.length) {
            return s;
        }
        int[] v = SECTORS[k];
        if (program.hz <= 3 && v[0] > 4) {
            return s;                               // relief / pain programs: no tone-massage
        }
        s.hz = v[0];
        s.onS = v[1];
        s.offS = v[2];
        s.pauseHz = pauseOk && v[3] < v[0] ? v[3] : 0;
        s.pauseSigma = s.pauseHz > 0 ? v[4] / 100.0 : 0;
        return s;
    }

    public static String sectorName(int k) {
        return k >= 0 && k < SECTORS.length ? AiText.t(SECTOR_BG[k], SECTOR_EN[k]) : "";
    }
}
