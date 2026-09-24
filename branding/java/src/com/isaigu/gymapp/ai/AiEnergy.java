package com.isaigu.gymapp.ai;

/**
 * Energy expenditure (kcal) — oxygen-uptake model from heart rate, personalised with the user's data.
 * <p>
 * Every second:
 * <ol>
 *   <li><b>Rest:</b> RMR by Schofield (1985) from sex, age band and weight (no height needed),
 *       converted to VO2rest in ml/kg/min (4.83 kcal/L at RER 0.82).</li>
 *   <li><b>Capacity:</b> VO2max = mean of (a) 15.3 · HR_max / HR_rest (Uth 2004; measured resting HR,
 *       HR_max from age and sex) and (b) a population value from sex, age and fitness. With HR-lowering
 *       medication the HR ratio is not valid → (b) only.</li>
 *   <li><b>Load:</b> %HRR = (HR − HR_rest) / (HR_max − HR_rest) ≈ %VO2R (Swain &amp; Leutholtz, ACSM):
 *       VO2 = VO2rest + %HRR · (VO2max − VO2rest).</li>
 *   <li><b>Evoked work not yet in the HR</b> (HR and VO2 lag the load; passive programs move HR little):
 *       + EMS_VO2_FULL · ρ · √(f/85) · (1 − %HRR) during an impulse [D]. It fades as HR rises, so the
 *       same work is not counted twice.</li>
 *   <li><b>Fuel:</b> RER = 0.75 + 0.25 · %HRR → 4.69…5.05 kcal per litre O2 (Lusk).</li>
 *   <li><b>After the session:</b> the AI keeps integrating 60 s of recovery; the rest of the fast
 *       post-exercise O2 debt is added analytically: (VO2_end − VO2rest) · τ, τ = 40 s ({@link #closeEpoc}).</li>
 * </ol>
 * Known bias: tetanic (isometric) contractions raise HR through the pressor reflex more than VO2,
 * so at high strength the HR term tends to over-read. The pulse module has no personal data: 75 kg,
 * HR_max 180, sex-neutral, resting HR from its calibration. Estimate, not a measurement.
 */
public final class AiEnergy {
    public static final double DEFAULT_WEIGHT_KG = 75.0;
    public static final int DEFAULT_HR_MAX = 180;
    public static final int DEFAULT_HR_REST = 70;
    /** ≈ 2 MET of evoked muscle work at full output, 85 Hz. [D] */
    public static final double EMS_VO2_FULL = 7.0;

    public static final double EPOC_TAU_S = 40.0;

    private final double weightKg;
    private final double vo2rest;
    private final double vo2maxPopulation;
    private final boolean hrRatioValid;
    private int hrRest;
    private int hrMax;
    private double vo2max;
    private double kcal;
    private double kcalRest;
    private double kcalEms;
    private double lastVo2 = -1;
    private long lastMs = -1L;

    /** Generic (pulse module): no personal data. */
    public AiEnergy() {
        this(DEFAULT_HR_REST, DEFAULT_HR_MAX, DEFAULT_WEIGHT_KG, 3.5, 38.0, true);
    }

    public AiEnergy(int hrRest, int hrMax) {
        this(hrRest, hrMax, DEFAULT_WEIGHT_KG, 3.5, 38.0, true);
    }

    private AiEnergy(int hrRest, int hrMax, double weightKg, double vo2rest, double vo2maxPopulation,
            boolean hrRatioValid) {
        this.weightKg = weightKg >= 30 && weightKg <= 250 ? weightKg : DEFAULT_WEIGHT_KG;
        this.vo2rest = vo2rest;
        this.vo2maxPopulation = vo2maxPopulation;
        this.hrRatioValid = hrRatioValid;
        setHeart(hrRest, hrMax);
    }

    /** Personal model for an AI session: sex, age, weight, fitness, medication, measured resting HR. */
    public static AiEnergy forSession(AiModel.SessionInput in, AiModel.Profile p) {
        double w = in.weightKg >= 30 && in.weightKg <= 250 ? in.weightKg : DEFAULT_WEIGHT_KG;
        boolean med = in.screening != null && in.screening.hrLoweringMedication;
        int rest = p != null && p.hrAvailable ? p.hrRest : -1;
        int max = p != null && p.hrMax > 0 ? p.hrMax : AiPlanner.hrMax(in.sex, in.age);
        return new AiEnergy(rest, max, w, restingVo2(in.sex, in.age, w),
                fitnessVo2max(in.fitness, in.sex, in.age), !med);
    }

    /** Schofield (1985) RMR (kcal/day) → VO2 at rest in ml/kg/min. */
    public static double restingVo2(AiModel.Sex sex, int age, double w) {
        double rmr;
        if (sex == AiModel.Sex.FEMALE) {
            rmr = age < 30 ? 14.818 * w + 486.6 : age < 60 ? 8.126 * w + 845.6 : 9.082 * w + 658.5;
        } else {
            rmr = age < 30 ? 15.057 * w + 692.2 : age < 60 ? 11.472 * w + 873.1 : 11.711 * w + 587.7;
        }
        double litresPerMin = rmr / 1440.0 / 4.83;
        return Math.max(2.3, Math.min(4.5, litresPerMin * 1000.0 / w));
    }

    /** Population VO2max by fitness, sex and age (ml/kg/min): ~0.3 %/year decline after 25. [D] */
    public static double fitnessVo2max(AiModel.Fitness f, AiModel.Sex sex, int age) {
        double base = f == AiModel.Fitness.LOW ? 34 : f == AiModel.Fitness.HIGH ? 52 : 42;
        if (sex == AiModel.Sex.FEMALE) {
            base *= 0.83;
        }
        base *= 1.0 - 0.009 * Math.max(0, age - 25);
        return Math.max(16, base);
    }

    public void setHeart(int rest, int max) {
        boolean measured = rest >= 35 && rest <= 120;
        hrRest = measured ? rest : DEFAULT_HR_REST;
        hrMax = max > hrRest + 20 ? max : DEFAULT_HR_MAX;
        if (measured && hrRatioValid) {
            double uth = Math.max(18, Math.min(75, 15.3 * hrMax / hrRest));
            vo2max = 0.5 * uth + 0.5 * vo2maxPopulation;
        } else {
            vo2max = vo2maxPopulation;
        }
        vo2max = Math.max(vo2max, vo2rest + 10);
    }

    public void reset() {
        kcal = 0;
        kcalRest = 0;
        kcalEms = 0;
        lastVo2 = -1;
        lastMs = -1L;
    }

    /**
     * Integrate up to {@code nowMs}.
     *
     * @param hr       current (smoothed) HR, ≤ 0 when unknown (then only rest + stimulation count)
     * @param stimFrac output 0..1 while an impulse is on (or averaged over the cycle), else 0
     * @param hz       stimulation frequency
     */
    public void tick(long nowMs, double hr, double stimFrac, int hz) {
        if (lastMs < 0) {
            lastMs = nowMs;
            return;
        }
        double dtS = Math.max(0, Math.min(5000, nowMs - lastMs)) / 1000.0;
        lastMs = nowMs;
        double hrr = hr > 0 ? (hr - hrRest) / (double) (hrMax - hrRest) : 0;
        hrr = Math.max(0, Math.min(1, hrr));
        double vo2Hr = vo2rest + hrr * (vo2max - vo2rest);
        double vo2Ems = stimFrac > 0 && hz > 0
                ? EMS_VO2_FULL * Math.min(1, stimFrac) * Math.sqrt(Math.min(1.5, hz / 85.0)) * (1 - hrr)
                : 0;
        double perS = weightKg / 1000.0 * kcalPerLitre(hrr) / 60.0;
        lastVo2 = vo2Hr + vo2Ems;
        kcal += lastVo2 * perS * dtS;
        kcalRest += vo2rest * weightKg / 1000.0 * 4.83 / 60.0 * dtS;
        kcalEms += vo2Ems * perS * dtS;
    }

    /** Lusk: RER 0.70 → 4.686, 1.00 → 5.047 kcal/L; RER rises with intensity. */
    private static double kcalPerLitre(double hrr) {
        double rer = 0.75 + 0.25 * hrr;
        return 4.686 + (rer - 0.70) / 0.30 * 0.361;
    }

    /**
     * Rest of the fast post-exercise O2 debt after the observed recovery: (VO2_end − VO2rest) · τ.
     * Call once when the recovery window ends.
     */
    public void closeEpoc() {
        if (lastVo2 > vo2rest) {
            kcal += (lastVo2 - vo2rest) * weightKg / 1000.0 * 4.83 / 60.0 * EPOC_TAU_S;
        }
        lastVo2 = -1;
    }

    /** Above resting metabolism (what the training added). */
    public double getActiveKcal() {
        return Math.max(0, kcal - kcalRest);
    }

    public double getVo2rest() {
        return vo2rest;
    }

    public double getKcal() {
        return kcal;
    }

    /** Share that came from the stimulation term. */
    public double getKcalEms() {
        return kcalEms;
    }

    public double getVo2max() {
        return vo2max;
    }

    public double getWeightKg() {
        return weightKg;
    }
}
