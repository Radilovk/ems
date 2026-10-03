package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * Automatic mode data model (docs/xems-auto-mode-spec.md): the wizard's answers, one device cycle
 * (step), a phase with its envelope and edit window, and the plan with its hard limits.
 * Pure Java — shared by the planner, the engine, the session and the JVM simulation.
 */
public final class AutoModel {
    private AutoModel() {}

    public enum Goal { TONE, SLIM, HEALTH }

    public enum Kind { ACTIVE, PASSIVE }

    public enum Intensity { SOFT, STANDARD, INTENSE }

    /** What the heart rate does in a program: nothing, only the ceiling (L11), or a corridor. */
    public enum HrUse { NONE, CAP, CORRIDOR }

    // Channels: index = buwei number − 1 (PartStrenthBean.buwei).
    public static final int CHEST = 0;
    public static final int ABS = 1;
    public static final int FRONT_THIGH = 2;
    public static final int CALF = 3;
    public static final int ARMS = 4;
    public static final int TRAPS = 5;
    public static final int BACK = 6;
    public static final int LOWER_BACK = 7;
    public static final int GLUTES = 8;
    public static final int BACK_THIGH = 9;
    public static final int CHANNELS = 10;

    /** Order of the zones on screen: legs up to the arms (same as the train row). */
    public static final int[] DISPLAY_ORDER = {
            CALF, FRONT_THIGH, BACK_THIGH, GLUTES, ABS, LOWER_BACK, BACK, TRAPS, CHEST, ARMS};

    /** Zones in {@link #DISPLAY_ORDER} order → channel array. */
    public static int[] zones(int calf, int frontThigh, int backThigh, int glutes, int abs,
                              int lowerBack, int back, int traps, int chest, int arms) {
        int[] z = new int[CHANNELS];
        z[CALF] = calf;
        z[FRONT_THIGH] = frontThigh;
        z[BACK_THIGH] = backThigh;
        z[GLUTES] = glutes;
        z[ABS] = abs;
        z[LOWER_BACK] = lowerBack;
        z[BACK] = back;
        z[TRAPS] = traps;
        z[CHEST] = chest;
        z[ARMS] = arms;
        return z;
    }

    /** Program-specific answers of step 4 (only the ones the program asks). */
    public static final class Extra {
        // postpartum
        public int weeksSinceBirth = 0;
        public boolean cesarean;
        public boolean breastfeeding;
        public boolean diastasis;
        // back: red flags — any true blocks the back programs
        public boolean backAcute;
        public boolean backRadiating;
        public boolean backTrauma;
        public boolean backSurgery;
        public boolean backNightPainFever;
        public boolean backBladder;

        public boolean anyBackRedFlag() {
            return backAcute || backRadiating || backTrauma || backSurgery || backNightPainFever
                    || backBladder;
        }
    }

    public static final class Input {
        public Goal goal = Goal.TONE;
        public Kind kind = Kind.ACTIVE;
        public String programId;
        public AiModel.Sex sex = AiModel.Sex.FEMALE;
        public int age = 35;
        public double weightKg = 70;
        /** 0 = not entered (the wizard does not go on without it). */
        public int heightCm = 0;
        /** Body fat % measured by the scale; &lt; 0 = not measured (then estimated from the BMI). */
        public double fatPct = -1;
        /** Body fat % per suit channel from the scale's segments; null = the whole-body value everywhere. */
        public double[] channelFat;
        /** Today's scale readiness (1 / 0.85 / 0.7): swelling or less water against the client's own baseline. */
        public double readiness = 1.0;
        /** Scale (fresh measurement), &lt; 0 = not measured: lean mass and skeletal muscle (kg). */
        public double leanKg = -1;
        public double skeletalKg = -1;
        /** Muscle per suit channel against the body's mean (mean ≈ 1); null = the standard distribution. */
        public double[] chMuscle;
        /** Measured classes: little muscle for the height / obese by fat mass (not by BMI). */
        public boolean muscleLow;
        public boolean fatObese;
        /** Measured at all (then the classes above replace the BMI rules). */
        public boolean measured;
        /** Focus zone the scale asks for (weakest zone under 90 % of normal), client-form key; null = none. */
        public String scaleFocus;
        public AiModel.Fitness fitness = AiModel.Fitness.MID;
        /** Finished sessions of this client (history + automatic sessions). */
        public int sessions = 0;
        /** Hours since the last active (tetanic) session; < 0 = none known. */
        public double hoursSinceActive = -1;
        public AiModel.Operator operator = AiModel.Operator.TRAINER;
        public Intensity intensity = Intensity.STANDARD;
        /** Program variant: DRAIN 1 = sensitive (8 Hz steps). */
        public int variant = 0;
        public boolean doublePulse = true;
        /** Minutes chosen in the plan step; null = the program's value. */
        public Integer totalSeconds;
        public AiModel.Screening screening = new AiModel.Screening();
        public Extra extra = new Extra();
        /** Focus zones and state from the client form (AiPersonal). */
        public java.util.Set<String> focus = new java.util.HashSet<String>();
        public java.util.Set<String> cond = new java.util.HashSet<String>();
        /** How the client is today (AiPersonal.TODAY): never blocks, quietly softens the session. */
        public java.util.Set<String> today = new java.util.HashSet<String>();

        public double bmi() {
            if (heightCm <= 0) {
                return 0;
            }
            double m = heightCm / 100.0;
            return weightKg / (m * m);
        }

        public boolean solo() {
            return operator == AiModel.Operator.SELF;
        }
    }

    /** Which parameters a person may move in a phase, and how far (spec §4.2). */
    public static final class Window {
        public boolean hz;
        public boolean on;
        public boolean off;
        public boolean pw;
        public double hzShare = 0.10;
        public int onMinus = 1;
        public int onPlus = 1;
        public int offMinus = 1;
        public int offPlus = 2;
        public int pwDelta = 50;

        public static Window fixed() {
            return new Window();
        }

        public static Window main() {
            Window w = new Window();
            w.hz = true;
            w.on = true;
            w.off = true;
            w.pw = true;
            return w;
        }
    }

    /** One device cycle: ON at hz / pw for onS, then OFF (or double impulse) for offS. */
    public static final class Step {
        public int hz;
        public int pwUs;
        public int onS;
        public int offS;
        /** Strength factor of this step against the phase φ (0 = silent step). */
        public double sigma = 1.0;
        /** Channel % for this step, or null = the plan's zones (with the person's offsets). */
        public int[] zones;
        public int pauseHz;
        public double pauseSigma;
        public int rampUpMs;
        public int rampDownMs;

        public Step() {}

        public Step(int hz, int pwUs, int onS, int offS) {
            this.hz = hz;
            this.pwUs = pwUs;
            this.onS = onS;
            this.offS = offS;
        }

        public Step copy() {
            Step s = new Step(hz, pwUs, onS, offS);
            s.sigma = sigma;
            s.zones = zones != null ? zones.clone() : null;
            s.pauseHz = pauseHz;
            s.pauseSigma = pauseSigma;
            s.rampUpMs = rampUpMs;
            s.rampDownMs = rampDownMs;
            return s;
        }

        public boolean isTetanic() {
            return hz >= 20;
        }

        public int durationS() {
            return onS + Math.max(1, offS);
        }
    }

    public static final class Phase {
        public String id;
        public String nameBg;
        public String nameEn;
        public int durationS;
        /** Planned strength factor against the calibration, linear over the phase. */
        public double phiStart = 1.0;
        public double phiEnd = 1.0;
        /** Envelope E(t): how far a person may go against the calibration, linear. */
        public double envStart = 1.0;
        public double envEnd = 1.0;
        /** Played in order, then again. */
        public final List<Step> steps = new ArrayList<Step>();
        public Window window = Window.fixed();
        /** Exercise hint for the live screen (active programs). */
        public String hintBg = "";
        public String hintEn = "";
        /** DRAIN channel waves: the person's zone offsets do not apply. */
        public boolean wave;

        public double phiAt(double p) {
            p = Math.max(0, Math.min(1, p));
            return phiStart + (phiEnd - phiStart) * p;
        }

        public double envAt(double p) {
            p = Math.max(0, Math.min(1, p));
            return envStart + (envEnd - envStart) * p;
        }

        public boolean isCooldown() {
            return "COOLDOWN".equals(id);
        }

        public boolean hasTetanic() {
            for (Step s : steps) {
                if (s.isTetanic() && s.sigma > 0) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class Plan {
        public AutoCatalog.Program program;
        public Input input;
        public final List<Phase> phases = new ArrayList<Phase>();
        /** Whole session: the active part + the passive recovery (cool-down). */
        public int totalS;
        /** The active part (everything before the cool-down), ≤ 20 min of impulses (owner, 1.1.270). */
        public int activeS;
        /** The passive recovery at the end (10 min), 0 = the program has none. */
        public int recoveryS;
        /** Hard ceiling of the planned strength factor (adaptation, age, SOLO …). */
        public double phiMax = 1.0;
        /** Ceiling of the envelope (how far above the calibration a person may go). */
        public double envMax = 1.0;
        public int[] zones = new int[CHANNELS];
        public final boolean[] zoneLocked = new boolean[CHANNELS];
        /** Upper bound per zone (e.g. abs 40 with diastasis); 100 = none. */
        public final int[] zoneMax = new int[CHANNELS];
        public int zoneDelta = 20;
        public int cr10Lo;
        public int cr10Hi;
        public HrUse hrUse = HrUse.CAP;
        public int hrMax;
        public int hrRest = 70;
        public boolean hrRestMeasured;
        public double xLo = Double.NaN;
        public double xHi = Double.NaN;
        public double xCap;
        public int hrCap;
        public boolean doublePulseAllowed;
        /** Dose of the plan (relative units) and the hard budget (spec §3.4). */
        public double qPlan;
        public double qBudget;
        /** Why the numbers are what they are — shown on the plan step. */
        public final List<String> notesBg = new ArrayList<String>();
        public final List<String> notesEn = new ArrayList<String>();

        public int hrAt(double x) {
            return (int) Math.round(hrRest + x * (hrMax - hrRest));
        }

        public int corridorHiHr() {
            return Double.isNaN(xHi) ? -1 : hrAt(xHi);
        }

        public int corridorLoHr() {
            return Double.isNaN(xLo) ? -1 : hrAt(xLo);
        }

        public void note(String bg, String en) {
            notesBg.add(bg);
            notesEn.add(en);
        }
    }
}
