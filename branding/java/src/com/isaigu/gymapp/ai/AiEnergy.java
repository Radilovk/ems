package com.isaigu.gymapp.ai;

/**
 * Energy estimate (kcal) from heart rate plus the stimulation work — no weight, age or sex needed.
 * <p>
 * Every second: MET = MET_HR + MET_EMS, kcal/min = MET · 3.5 · W / 200 (ACSM).
 * <ul>
 *   <li>MET_HR = 1 + (MET_PEAK − 1) · %HRR, %HRR = (HR − HR_rest) / (HR_max − HR_rest) — whole-body
 *       metabolic cost follows the heart-rate reserve;</li>
 *   <li>MET_EMS = EMS_MET_FULL · ρ · √(f/85) during an impulse — the part of the muscle work the
 *       heart rate shows only with a delay (ρ = output as a fraction of full scale).</li>
 * </ul>
 * Defaults [D]: W = 75 kg, HR_max = 180, MET_PEAK = 10, EMS_MET_FULL = 2. When age/sex are known
 * (AI session) HR_max comes from the profile. It is an estimate, not a measurement.
 */
public final class AiEnergy {
    public static final double DEFAULT_WEIGHT_KG = 75.0;
    public static final int DEFAULT_HR_MAX = 180;
    public static final int DEFAULT_HR_REST = 70;
    public static final double MET_PEAK = 10.0;
    public static final double EMS_MET_FULL = 2.0;

    private final double weightKg;
    private int hrRest;
    private int hrMax;
    private double kcal;
    private double kcalEms;
    private long lastMs = -1L;

    public AiEnergy() {
        this(DEFAULT_HR_REST, DEFAULT_HR_MAX);
    }

    public AiEnergy(int hrRest, int hrMax) {
        this.weightKg = DEFAULT_WEIGHT_KG;
        setHeart(hrRest, hrMax);
    }

    public void setHeart(int rest, int max) {
        hrRest = rest > 30 ? rest : DEFAULT_HR_REST;
        hrMax = max > hrRest + 20 ? max : DEFAULT_HR_MAX;
    }

    public void reset() {
        kcal = 0;
        kcalEms = 0;
        lastMs = -1L;
    }

    /**
     * Integrate up to {@code nowMs}.
     *
     * @param hr   current (smoothed) HR, ≤ 0 when unknown (then only the resting cost counts)
     * @param stimFrac output 0..1 while an impulse is on, else 0
     * @param hz   stimulation frequency
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
        double metHr = 1.0 + (MET_PEAK - 1.0) * hrr;
        double metEms = stimFrac > 0 && hz > 0
                ? EMS_MET_FULL * Math.min(1, stimFrac) * Math.sqrt(Math.min(1.5, hz / 85.0)) : 0;
        double perS = 3.5 * weightKg / 200.0 / 60.0;
        kcal += (metHr + metEms) * perS * dtS;
        kcalEms += metEms * perS * dtS;
    }

    public double getKcal() {
        return kcal;
    }

    /** Share that came from the stimulation term. */
    public double getKcalEms() {
        return kcalEms;
    }
}
