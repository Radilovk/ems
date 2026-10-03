package com.isaigu.gymapp.wearable.scale;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * What the scale's measurements mean for EMS — pure Java (docs/xems-scale.md "EMS use", docs/xems-ems-physiology.md
 * §6):
 *
 * <ul>
 *   <li><b>Readiness.</b> Per segment the ratio ρ = Z100 / Z20. Extracellular fluid conducts at both frequencies,
 *       cells only at the high one, so swelling (the oedema of muscle damage after a hard session, CK day 2–4)
 *       raises ρ, and less body water raises Z20. Both against the client's own baseline (the median of the
 *       earlier measurements) — never against a population norm. [D] thresholds, to validate.</li>
 *   <li><b>Segments against normal.</b> WLA25's own standards for each segment's muscle and fat (the "% of
 *       normal" of segmental analysers): 100 = the standard for this height, weight and sex.</li>
 *   <li><b>Fat per suit channel.</b> The whole-body fat % redistributed by each segment's fat share, so the
 *       current's reach (AutoEngine.reach) knows that glutes and thighs insulate more than the arms.</li>
 * </ul>
 */
public final class ScaleInsight {
    private ScaleInsight() {}

    /** [D] swelling of the most swollen segment (Δρ, %) for −15 % / −30 %. */
    static final double SWELL_AMBER = 1.2;
    static final double SWELL_RED = 2.5;
    /** [D] legs' Z20 above the baseline (%) = less water: from here a −15 %. */
    static final double DRY_AMBER = 5.0;
    /** A readiness counts for today's session when the measurement is at most this old. */
    public static final long TODAY_MS = 12L * 3600 * 1000;
    /** Baseline: up to this many earlier measurements, at least 6 h before the current one. */
    static final int BASE_MAX = 8;
    static final long BASE_GAP_MS = 6L * 3600 * 1000;

    public static final class Readiness {
        /** 0–100. */
        public int score = 100;
        /** Strength factor for today: 1, 0.85 or 0.7. */
        public double factor = 1.0;
        /** Δρ (%) by segment index; NaN = no data. */
        public final double[] swell = new double[] {Double.NaN, Double.NaN, Double.NaN, Double.NaN, Double.NaN};
        /** Legs' Z20 change against the baseline (%): + = drier. NaN = no data. */
        public double dry = Double.NaN;
        /** Segment that drives the verdict (or -1). */
        public int worst = -1;
        /** How many earlier measurements the baseline stands on (0 = none yet: no verdict). */
        public int base;

        public boolean known() {
            return base > 0;
        }
    }

    static double ratio(JSONArray z20, JSONArray z100, int i) {
        if (z20 == null || z100 == null || z20.isNull(i) || z100.isNull(i)) {
            return Double.NaN;
        }
        double a = z20.optDouble(i, Double.NaN);
        double b = z100.optDouble(i, Double.NaN);
        return a > 1 && b > 1 ? b / a : Double.NaN;
    }

    static double median(List<Double> v) {
        if (v.isEmpty()) {
            return Double.NaN;
        }
        List<Double> s = new ArrayList<Double>(v);
        Collections.sort(s);
        int n = s.size();
        return n % 2 == 1 ? s.get(n / 2) : (s.get(n / 2 - 1) + s.get(n / 2)) / 2;
    }

    static double legsZ20(JSONObject m) {
        JSONArray z = m.optJSONArray("z20");
        if (z == null || z.isNull(ScaleProtocol.LEFT_LEG) || z.isNull(ScaleProtocol.RIGHT_LEG)) {
            return Double.NaN;
        }
        return (z.optDouble(ScaleProtocol.LEFT_LEG) + z.optDouble(ScaleProtocol.RIGHT_LEG)) / 2;
    }

    /** Readiness of measurement {@code at} of the history (oldest first). */
    public static Readiness readiness(JSONArray hist, int at) {
        Readiness r = new Readiness();
        JSONObject m = hist != null ? hist.optJSONObject(at) : null;
        if (m == null) {
            return r;
        }
        long t = m.optLong("t");
        List<JSONObject> base = new ArrayList<JSONObject>();
        for (int i = at - 1; i >= 0 && base.size() < BASE_MAX; i--) {
            JSONObject o = hist.optJSONObject(i);
            if (o != null && t - o.optLong("t") >= BASE_GAP_MS && o.optJSONArray("z20") != null) {
                base.add(o);
            }
        }
        r.base = base.size();
        if (base.isEmpty()) {
            return r;
        }
        double worstV = 0;
        for (int s = 0; s < 5; s++) {
            double now = ratio(m.optJSONArray("z20"), m.optJSONArray("z100"), s);
            List<Double> b = new ArrayList<Double>();
            for (JSONObject o : base) {
                double v = ratio(o.optJSONArray("z20"), o.optJSONArray("z100"), s);
                if (!Double.isNaN(v)) {
                    b.add(v);
                }
            }
            double med = median(b);
            if (!Double.isNaN(now) && !Double.isNaN(med)) {
                r.swell[s] = (now / med - 1) * 100;
                // the arms get a fraction of the current (AiEnergy.ARMS_SENT): their swelling weighs less
                double w = s == ScaleProtocol.LEFT_ARM || s == ScaleProtocol.RIGHT_ARM ? 0.7 : 1.0;
                if (r.swell[s] * w > worstV) {
                    worstV = r.swell[s] * w;
                    r.worst = s;
                }
            }
        }
        List<Double> bz = new ArrayList<Double>();
        for (JSONObject o : base) {
            double v = legsZ20(o);
            if (!Double.isNaN(v)) {
                bz.add(v);
            }
        }
        double nz = legsZ20(m);
        double mz = median(bz);
        if (!Double.isNaN(nz) && !Double.isNaN(mz) && mz > 0) {
            r.dry = (nz / mz - 1) * 100;
        }
        double dry = Double.isNaN(r.dry) ? 0 : Math.max(0, r.dry);
        r.score = (int) Math.round(Math.max(0, Math.min(100,
                100 - 22 * Math.max(0, worstV - 0.4) - 5 * Math.max(0, dry - 2))));
        if (worstV >= SWELL_RED) {
            r.factor = 0.7;
        } else if (worstV >= SWELL_AMBER || dry >= DRY_AMBER) {
            r.factor = 0.85;
        }
        return r;
    }

    // ================================================================ segments against normal (WLA25 standards)

    /** % of normal by segment index: [0] muscle, [1] fat. NaN where the measurement has no segments. */
    public static double[][] ofNormal(JSONObject m, boolean male, int heightCm) {
        double[][] out = new double[2][5];
        for (int i = 0; i < 5; i++) {
            out[0][i] = Double.NaN;
            out[1][i] = Double.NaN;
        }
        JSONArray f = m != null ? m.optJSONArray("segFat") : null;
        JSONArray k = m != null ? m.optJSONArray("segMus") : null;
        double w = m != null ? m.optDouble("w", Double.NaN) : Double.NaN;
        if (f == null || k == null || Double.isNaN(w) || heightCm < 100) {
            return out;
        }
        double h = heightCm;
        float sw = ScaleBody.stdWeight(heightCm, male);
        double ffm = ScaleBody.ceil1((male ? 0.85f : 0.77f) * sw);
        double armMus = w * 0.02 + ffm * 0.102 + h * -0.045 + 3.752;
        double legMus = w * 0.059 + ffm * 0.168 + h * -0.056 + 4.775;
        double trunkMus = w * 0.166 + ffm * 0.485 + h * -0.16 + 13.595;
        for (int i = 0; i < 5; i++) {
            boolean arm = i == ScaleProtocol.LEFT_ARM || i == ScaleProtocol.RIGHT_ARM;
            boolean trunk = i == ScaleProtocol.TRUNK;
            double sm = trunk ? trunkMus : arm ? armMus : legMus;
            if (!k.isNull(i) && sm > 0) {
                out[0][i] = k.optDouble(i) / sm * 100;
            }
            // fat: the zone's own fat share (fat / (fat + muscle)) against the healthy middle for the sex
            double fz = f.optDouble(i, Double.NaN), mz = k.optDouble(i, Double.NaN);
            if (!Double.isNaN(fz) && !Double.isNaN(mz) && fz + mz > 0) {
                out[1][i] = fz / (fz + mz) * 100 / fatMid(male) * 100;
            }
        }
        return out;
    }

    /** The healthy middle of body fat (%) — the 100 of the fat layer: men 15, women 25. */
    public static double fatMid(boolean male) {
        return male ? 15 : 25;
    }

    // ================================================================ fat per suit channel

    /**
     * PartStrenthBean.buwei order (AiEnergy.CH_MASS): 0 chest, 1 abs, 2 front thigh, 3 calf, 4 arms, 5 traps,
     * 6 back, 7 lower back, 8 glutes, 9 back thigh → segment weights {trunk, arms, legs}.
     */
    static final double[][] CH_SEG = {
            {1, 0, 0}, {1, 0, 0}, {0, 0, 1}, {0, 0, 1}, {0, 1, 0},
            {1, 0, 0}, {1, 0, 0}, {1, 0, 0}, {0.5, 0, 0.5}, {0, 0, 1}};

    /** Body fat % per suit channel (10), averaging at the whole-body value; null without segments. */
    public static double[] channelFat(JSONObject m) {
        JSONArray f = m != null ? m.optJSONArray("segFat") : null;
        JSONArray k = m != null ? m.optJSONArray("segMus") : null;
        double whole = m != null ? m.optDouble("fat", Double.NaN) : Double.NaN;
        if (f == null || k == null || Double.isNaN(whole)) {
            return null;
        }
        double[] share = new double[3];   // trunk, arms, legs: fat / (fat + muscle)
        double fs = 0, ts = 0;
        int[][] segs = {{ScaleProtocol.TRUNK}, {ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM},
                {ScaleProtocol.LEFT_LEG, ScaleProtocol.RIGHT_LEG}};
        for (int g = 0; g < 3; g++) {
            double fa = 0, mu = 0;
            for (int s : segs[g]) {
                fa += f.optDouble(s, 0);
                mu += k.optDouble(s, 0);
            }
            if (fa + mu <= 0) {
                return null;
            }
            share[g] = fa / (fa + mu);
            fs += fa;
            ts += fa + mu;
        }
        double mean = fs / ts;
        double[] out = new double[CH_SEG.length];
        for (int c = 0; c < out.length; c++) {
            double s = 0;
            for (int g = 0; g < 3; g++) {
                s += CH_SEG[c][g] * share[g];
            }
            out[c] = Math.max(3, Math.min(60, whole * s / mean));
        }
        return out;
    }

    /** Left / right difference of a segment pair (%, + = left more); NaN without data. */
    public static double asymmetry(JSONArray v, int left, int right) {
        if (v == null || v.isNull(left) || v.isNull(right)) {
            return Double.NaN;
        }
        double l = v.optDouble(left), r = v.optDouble(right);
        return l + r > 0 ? (l - r) / ((l + r) / 2) * 100 : Double.NaN;
    }

    // ================================================================ body type — not against the population

    /**
     * What the body is made of, said without the two biases of the fitness apps: weight counted as fat (BMI terms)
     * and the entered age echoed back as "body age".
     *
     * <ul>
     *   <li><b>FFMI / FMI</b> — fat-free and fat mass per height² (kg/m²). Dense muscle raises FFMI, not FMI, so a
     *       muscular man is "athletic", not "overweight", whatever his BMI.</li>
     *   <li><b>Physiological thresholds</b> — "very low" only below essential fat (men 6 %, women 14 %), not below a
     *       population percentile, so a lean woman is lean, not "in deficit"; "excess" / "obese" by FMI (men 6 / 9,
     *       women 9 / 13 kg/m²), so a heavy woman is not "normal" by a wide %-range.</li>
     *   <li><b>Physical age</b> — the age whose typical skeletal-muscle index and fat % match the measured ones, on
     *       WLA25's own muscle scale (an average 30-year-old: men SMI 11.4 kg/m², −0.04 / year; women 9.0, −0.03;
     *       fat men 17 % at 20, +0.225 / year; women 27 %, +0.25). The entered age is not in it. [D] reference curves,
     *       to validate.</li>
     *   <li><b>Fat pattern</b> — the legs' share of the limb + trunk fat: gynoid (legs, hips) or android (trunk).</li>
     * </ul>
     */
    public static final class Body {
        public double ffmi = Double.NaN, fmi = Double.NaN, smi = Double.NaN;
        /** 0 low, 1 normal, 2 athletic, 3 very muscular. */
        public int muscleCls = -1;
        /** 0 very low (essential), 1 normal, 2 excess, 3 obese. */
        public int fatCls = -1;
        public int type = -1;
        public double physicalAge = Double.NaN;
        public double ageFromMuscle = Double.NaN, ageFromFat = Double.NaN;
        /** Legs' share of the segment fat (0–1); NaN without segments. */
        public double legFatShare = Double.NaN;

        public boolean known() {
            return type >= 0;
        }
    }

    public static final int T_ATHLETIC = 0, T_BALANCED = 1, T_STRONG_FAT = 2, T_FAT = 3, T_FAT_LOW_MUSCLE = 4,
            T_LEAN_LOW_MUSCLE = 5, T_VERY_LEAN = 6;

    public static Body body(JSONObject m, boolean male, int heightCm) {
        Body b = new Body();
        if (m == null || !m.has("fat") || heightCm < 100) {
            return b;
        }
        double h2 = Math.pow(heightCm / 100.0, 2);
        double w = m.optDouble("w");
        double fatPct = m.optDouble("fat");
        double fatKg = m.optDouble("fatKg", w * fatPct / 100);
        double lean = m.optDouble("lean", w - fatKg);
        b.ffmi = lean / h2;
        b.fmi = fatKg / h2;
        double skel = m.optDouble("skel", Double.NaN);
        b.smi = Double.isNaN(skel) ? Double.NaN : w * skel / 100 / h2;
        if (male) {
            b.muscleCls = b.ffmi < 17 ? 0 : b.ffmi < 20 ? 1 : b.ffmi < 23 ? 2 : 3;
            b.fatCls = fatPct < 6 ? 0 : b.fmi <= 6 ? 1 : b.fmi <= 9 ? 2 : 3;
        } else {
            b.muscleCls = b.ffmi < 14 ? 0 : b.ffmi < 17 ? 1 : b.ffmi < 19.5 ? 2 : 3;
            b.fatCls = fatPct < 14 ? 0 : b.fmi <= 9 ? 1 : b.fmi <= 13 ? 2 : 3;
        }
        if (b.fatCls == 0) {
            b.type = T_VERY_LEAN;
        } else if (b.fatCls == 1) {
            b.type = b.muscleCls >= 2 ? T_ATHLETIC : b.muscleCls == 0 ? T_LEAN_LOW_MUSCLE : T_BALANCED;
        } else {
            b.type = b.muscleCls >= 2 ? T_STRONG_FAT : b.muscleCls == 0 ? T_FAT_LOW_MUSCLE : T_FAT;
        }
        if (!Double.isNaN(b.smi)) {
            b.ageFromMuscle = clampAge(30 + ((male ? 11.4 : 9.0) - b.smi) / (male ? 0.04 : 0.03));
        }
        b.ageFromFat = clampAge(20 + (fatPct - (male ? 17 : 27)) / (male ? 0.225 : 0.25));
        b.physicalAge = Double.isNaN(b.ageFromMuscle) ? b.ageFromFat
                : 0.55 * b.ageFromMuscle + 0.45 * b.ageFromFat;
        JSONArray f = m.optJSONArray("segFat");
        if (f != null) {
            double legs = f.optDouble(ScaleProtocol.LEFT_LEG, 0) + f.optDouble(ScaleProtocol.RIGHT_LEG, 0);
            double all = legs + f.optDouble(ScaleProtocol.TRUNK, 0) + f.optDouble(ScaleProtocol.LEFT_ARM, 0)
                    + f.optDouble(ScaleProtocol.RIGHT_ARM, 0);
            b.legFatShare = all > 0 ? legs / all : Double.NaN;
        }
        return b;
    }

    static double clampAge(double a) {
        return Math.max(18, Math.min(85, a));
    }
}
