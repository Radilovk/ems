package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * XEMS Smart Session data model (docs/xems-smart-session-spec.md §1, §3, §4).
 * Pure Java — no Android dependencies, so the engine runs in JVM tests.
 */
public final class AiModel {
    private AiModel() {}

    public enum Goal { TONE, FAT, MASSAGE, DRAIN, CELLULITE }

    public enum Mode { ACTIVE, PASSIVE }

    public enum Sex { MALE, FEMALE }

    public enum Fitness { LOW, MID, HIGH }

    public enum Operator { TRAINER, SELF }

    public enum PhaseId { WARMUP, MAIN, METABOLIC, COOLDOWN }

    public enum BlockMode { FATIGUE_DRIVEN, CONTINUOUS }

    /** §1.2 — answered before every session. */
    public static final class Screening {
        /** R15 contraindication key → answer (true = present → REJECT). */
        public final Map<String, Boolean> contraindications = new LinkedHashMap<String, Boolean>();
        public boolean feverOrIllness;
        public boolean alcoholOrStress48h;
        public boolean ateLast2h = true;
        public boolean hydrated = true;
        public boolean hrLoweringMedication;
        public boolean knownArrhythmia;
        public boolean restedLast10min = true;
    }

    /** §1 */
    public static final class SessionInput {
        public Goal goal = Goal.TONE;
        public Mode mode = Mode.ACTIVE;
        public Sex sex = Sex.MALE;
        public int age = 35;
        /** For the energy model only (kcal). */
        public double weightKg = 75;
        public Fitness fitness = Fitness.MID;
        /** null → template default. */
        public Integer totalSeconds;
        public Operator operator = Operator.TRAINER;
        public Screening screening = new Screening();
        /** Optional HR ceiling; for SELF it may only lower the derived cap. */
        public Integer hrCapOverride;

        public boolean isTraining() {
            return mode == Mode.ACTIVE;
        }
    }

    /** §1.1 — allowed goal × mode combinations. */
    public static boolean isAllowed(Goal goal, Mode mode) {
        if (goal == Goal.TONE || goal == Goal.FAT) {
            return true;
        }
        return mode == Mode.PASSIVE;
    }

    /** Derived physiology and corridors (§2, §3). */
    public static final class Profile {
        public int hrRest;
        public double sigmaRest;
        public long dtHrMs;
        public boolean hrAvailable;
        public int hrMax;
        public int hrr;
        public double xLo = Double.NaN;
        public double xHi;
        public double xCap;
        public double xRec;
        public int hrCap;
        /** c_rate from the measured sample interval (§2.1). */
        public double cRate;
        public double cMed = 1.0;
        /** true → HR only feeds G7 (§2.1, §8 passive programs). */
        public boolean safetyOnly;
        public final List<String> flags = new ArrayList<String>();

        public int hrAt(double x) {
            return (int) Math.round(hrRest + x * hrr);
        }

        public double xOf(double hr) {
            return hrr > 0 ? (hr - hrRest) / hrr : 0.0;
        }
    }

    /** One stimulation cycle definition (§4.1). */
    public static final class CycleSpec {
        public int hz;
        public int pwUs;
        public int onS;
        /** 0 = continuous; the device needs ≥1 s, the driver maps 0 → 1 s. */
        public int offS;
        /** Segment strength factor vs calibrated ceiling (σ). */
        public double sigma = 1.0;

        public CycleSpec() {}

        public CycleSpec(int hz, int pwUs, int onS, int offS, double sigma) {
            this.hz = hz;
            this.pwUs = pwUs;
            this.onS = onS;
            this.offS = offS;
            this.sigma = sigma;
        }

        public CycleSpec copy() {
            return new CycleSpec(hz, pwUs, onS, offS, sigma);
        }

        public boolean isTetanic() {
            return hz >= 20;
        }
    }

    /** §4.1 Phase. */
    public static final class Phase {
        public PhaseId id;
        public int durationS;
        public double phiStart;
        public double phiEnd;
        public BlockMode blockMode = BlockMode.CONTINUOUS;
        public CycleSpec a;
        /** Optional alternating segment B (A↔B every cycle). */
        public CycleSpec b;
        public String exerciseClass = "FULL";

        public double phiAt(double progress) {
            double p = Math.max(0.0, Math.min(1.0, progress));
            return phiStart + (phiEnd - phiStart) * p;
        }
    }

    public static final class Plan {
        public final List<Phase> phases = new ArrayList<Phase>();
        public int totalS;
        /** Relative dose units (ρ·µs·Hz·s), see §6.2. */
        public double qPlan;
        public double qBudget;
        public double phiMax = 1.0;
        /** CR10 target band for calibration (§9 CALIB). */
        public int cr10Lo;
        public int cr10Hi;
        /** Fatigue parameters by fitness (§6.3). */
        public double fMax;
        public double fRec;
        public double tauR;
    }
}
