package com.isaigu.gymapp.ai;

/**
 * Energy expenditure (kcal) — oxygen uptake, personalised with the user's data and the stimulation
 * actually delivered to each channel.
 * <p>
 * Every second VO2 (L/min) = max(VO2_HR, VO2_rest + VO2_EMS):
 * <ol>
 *   <li><b>Rest:</b> RMR by Schofield (1985) from sex, age band and weight (no height needed),
 *       as VO2 at 4.83 kcal/L (RER 0.82).</li>
 *   <li><b>Heart rate:</b> %HRR ≈ %VO2R (Swain &amp; Leutholtz, ACSM): VO2 = VO2rest + %HRR·(VO2max − VO2rest).
 *       VO2max = mean of 15.3·HR_max/HR_rest (Uth 2004, measured resting HR) and a population value
 *       from sex, age and fitness; with HR-lowering medication only the population value.</li>
 *   <li><b>Stimulation, channel by channel</b> ({@link #evokedVo2}): the evoked contraction costs
 *       oxygen in the muscle that is actually activated —
 *       Σ m_ch · d_ch · r_ch · k(f) · R_max · (share of time with impulses), where
 *       m_ch = muscle mass under the channel (both sides; scaled to the person's skeletal-muscle mass
 *       0.38·W men / 0.31·W women, Janssen 2000), d_ch = share of that muscle reached by surface
 *       electrodes (superficial ≈ 0.5, bulky / deep ≈ 0.35), r_ch = recruited share from the charge
 *       per pulse (channel % × strength × pulse width) relative to the tolerated level, k(f) = frequency
 *       factor f/(f+25) normalised to 85 Hz (ATP turnover per second rises with the firing rate and
 *       levels off above fusion), R_max = 250 ml O2/min per kg of fully activated muscle (peak knee-
 *       extensor uptake ~300–350, Andersen &amp; Saltin 1985; lower for occluding isometric work).
 *       Active pause adds its own part (pause strength and frequency). Disabled channels count 0;
 *       the arms channel is sent at 5 % (ChannelStrengthScale) and counted so.</li>
 *   <li><b>Why max, not sum:</b> once the heart rate reflects the load, the evoked work is already in
 *       it; before that (HR lags 20–40 s) or in passive programs (HR hardly moves) the channel model
 *       carries it. Nothing is counted twice.</li>
 *   <li><b>Fuel:</b> RER rises with intensity → 4.69…5.05 kcal per litre O2 (Lusk).</li>
 *   <li><b>After the session:</b> 60 s of recovery are integrated; the rest of the fast O2 debt is
 *       added as (VO2_end − VO2_rest)·τ, τ = 40 s ({@link #closeEpoc}).</li>
 * </ol>
 * Known bias: tetanic (isometric) contractions raise HR through the pressor reflex more than VO2,
 * so at high strength the HR branch tends to over-read. [D] marks tunable estimates. Estimate, not
 * a measurement.
 */
public final class AiEnergy {
    public static final double DEFAULT_WEIGHT_KG = 75.0;
    public static final int DEFAULT_HR_MAX = 180;
    public static final int DEFAULT_HR_REST = 70;
    /** ml O2/min per kg of fully activated muscle. [D] */
    public static final double R_MAX = 250.0;
    /** Reference skeletal-muscle mass the table below is for (75 kg man ≈ 0.38 · 75). */
    public static final double SM_REF_KG = 28.5;
    /** Recruited share at the tolerated (calibrated / session-peak) level. [D] */
    public static final double R_AT_TOLERATED = 0.70;

    /**
     * PartStrenthBean.buwei index → muscle mass (kg, both sides, 75 kg man) and share reached by
     * surface electrodes. 0 chest, 1 abs, 2 front thigh, 3 calf, 4 arms, 5 traps, 6 back,
     * 7 lower back, 8 glutes, 9 back thigh.
     */
    public static final double[] CH_MASS = {1.0, 1.6, 4.8, 2.2, 2.0, 0.9, 2.2, 1.0, 2.6, 2.4};
    public static final double[] CH_DEPTH = {0.5, 0.5, 0.35, 0.45, 0.5, 0.5, 0.45, 0.4, 0.35, 0.4};
    public static final int ARMS = 4;
    public static final double ARMS_SENT = 0.05;

    /** What is delivered now (or averaged over the cycle). */
    public static final class Stim {
        /** Per-channel % (PartStrenthBean.buwei), may be null → all channels at 100 %. */
        public int[] channels;
        public boolean[] disabled;
        /** Strength % sent (master). */
        public double strengthPct;
        public int hz;
        public int pwUs;
        /** Share of this interval with main impulses (1 during ON, ON/(ON+OFF) when averaged). */
        public double onShare;
        /** Active pause (impulse ↔ impulse): its strength % (absolute) and frequency, and its share. */
        public double pauseStrengthPct;
        public int pauseHz;
        public double pauseShare;
        /**
         * Tolerated level per channel as charge (0..1 · µs/350): calibration in the AI, the
         * session peak in the pulse module. ≤ 0 → use the current charge (r = R_AT_TOLERATED).
         */
        public double[] toleratedCharge;
    }

    private double muscleScale = 1.0;
    private double kcalEmsModel;

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
        this.muscleScale = 0.345 * this.weightKg / SM_REF_KG;
        setHeart(hrRest, hrMax);
    }

    /** Personal model for an AI session: sex, age, weight, fitness, medication, measured resting HR. */
    public static AiEnergy forSession(AiModel.SessionInput in, AiModel.Profile p) {
        double w = in.weightKg >= 30 && in.weightKg <= 250 ? in.weightKg : DEFAULT_WEIGHT_KG;
        boolean med = in.screening != null && in.screening.hrLoweringMedication;
        int rest = p != null && p.hrAvailable ? p.hrRest : -1;
        int max = p != null && p.hrMax > 0 ? p.hrMax : AiPlanner.hrMax(in.sex, in.age);
        AiEnergy e = new AiEnergy(rest, max, w, restingVo2(in.sex, in.age, w),
                fitnessVo2max(in.fitness, in.sex, in.age), !med);
        e.muscleScale = (in.sex == AiModel.Sex.FEMALE ? 0.31 : 0.38) * w / SM_REF_KG;
        return e;
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
        kcalEmsModel = 0;
        lastVo2 = -1;
        lastMs = -1L;
    }

    /** Heart rate only (no stimulation data). */
    public void tick(long nowMs, double hr) {
        tick(nowMs, hr, null);
    }

    /**
     * Integrate up to {@code nowMs}.
     *
     * @param hr   current (smoothed) HR, ≤ 0 when unknown
     * @param stim what the channels receive now, or null
     */
    public void tick(long nowMs, double hr, Stim stim) {
        if (lastMs < 0) {
            lastMs = nowMs;
            return;
        }
        double dtS = Math.max(0, Math.min(5000, nowMs - lastMs)) / 1000.0;
        lastMs = nowMs;
        double hrr = hr > 0 ? (hr - hrRest) / (double) (hrMax - hrRest) : 0;
        hrr = Math.max(0, Math.min(1, hrr));
        double restL = vo2rest * weightKg / 1000.0;
        double hrL = (vo2rest + hrr * (vo2max - vo2rest)) * weightKg / 1000.0;
        double emsL = stim != null ? evokedVo2(stim, muscleScale) : 0;
        double totalL = Math.max(hrL, restL + emsL);
        // RER from the effective intensity (either branch).
        double intensity = Math.max(hrr, (totalL - restL) / Math.max(1e-6, (vo2max - vo2rest) * weightKg / 1000.0));
        double perL = kcalPerLitre(Math.max(0, Math.min(1, intensity))) / 60.0;
        lastVo2 = totalL * 1000.0 / weightKg;
        kcal += totalL * perL * dtS;
        kcalRest += restL * 4.83 / 60.0 * dtS;
        kcalEmsModel += emsL * perL * dtS;
        if (restL + emsL > hrL) {
            kcalEms += (restL + emsL - hrL) * perL * dtS;
        }
    }

    /**
     * Oxygen cost of the evoked contractions (L/min) — see the class comment.
     *
     * @param muscleScale person's skeletal-muscle mass / 28.5 kg
     */
    public static double evokedVo2(Stim s, double muscleScale) {
        if (s == null) {
            return 0;
        }
        double ml = 0;
        for (int ch = 0; ch < CH_MASS.length; ch++) {
            if (s.disabled != null && ch < s.disabled.length && s.disabled[ch]) {
                continue;
            }
            double chPct = s.channels != null ? (ch < s.channels.length ? s.channels[ch] : 0) : 100;
            double sent = (chPct / 100.0) * (ch == ARMS ? ARMS_SENT : 1.0);
            double tol = s.toleratedCharge != null && ch < s.toleratedCharge.length ? s.toleratedCharge[ch] : 0;
            double part = 0;
            if (s.onShare > 0 && s.hz > 0) {
                double q = sent * (s.strengthPct / 100.0) * (s.pwUs / 350.0);
                part += s.onShare * recruited(q, tol) * freqFactor(s.hz);
            }
            if (s.pauseShare > 0 && s.pauseHz > 0) {
                double q = sent * (s.pauseStrengthPct / 100.0) * (s.pwUs / 350.0);
                part += s.pauseShare * recruited(q, tol) * freqFactor(s.pauseHz);
            }
            ml += CH_MASS[ch] * muscleScale * CH_DEPTH[ch] * part * R_MAX;
        }
        return ml / 1000.0;
    }

    /**
     * Recruited share from the charge per pulse: linear above a motor threshold (5 % of the
     * tolerated charge), R_AT_TOLERATED at the tolerated level, capped at 1. [D]
     */
    static double recruited(double q, double tolerated) {
        if (q <= 0) {
            return 0;
        }
        double ref = tolerated > 0 ? tolerated : q;
        double th = 0.05 * ref;
        double r = R_AT_TOLERATED * (q - th) / Math.max(1e-9, ref - th);
        return Math.max(0, Math.min(1, r));
    }

    /** k(f) = f/(f+25) normalised to 85 Hz. */
    static double freqFactor(int hz) {
        return (hz / (hz + 25.0)) / (85.0 / 110.0);
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

    /** kcal the channel model added above the heart-rate branch (HR lag, passive work). */
    public double getKcalEms() {
        return kcalEms;
    }

    /** kcal of the evoked contractions by the channel model alone (for the report). */
    public double getKcalEmsModel() {
        return kcalEmsModel;
    }

    public double getMuscleScale() {
        return muscleScale;
    }

    public double getVo2max() {
        return vo2max;
    }

    public double getWeightKg() {
        return weightKg;
    }
}
