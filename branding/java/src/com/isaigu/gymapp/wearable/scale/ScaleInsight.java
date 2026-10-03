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

    /**
     * Muscle per suit channel against the body's own mean (10, mean ≈ 1): the zone's muscle % of normal (WLA25
     * segment standard) mapped like {@link #CH_SEG} — a strong-legged client gets more mass on the thigh channels.
     * The energy model (AiEnergy) and Auto's load / oxygen model (AutoEngine) weigh each channel's muscle with it.
     * null without segments.
     */
    public static double[] channelMuscle(JSONObject m, boolean male, int heightCm) {
        double[] n = ofNormal(m, male, heightCm)[0];
        double trunk = n[ScaleProtocol.TRUNK];
        double arms = (n[ScaleProtocol.LEFT_ARM] + n[ScaleProtocol.RIGHT_ARM]) / 2;
        double legs = (n[ScaleProtocol.LEFT_LEG] + n[ScaleProtocol.RIGHT_LEG]) / 2;
        if (Double.isNaN(trunk) || Double.isNaN(arms) || Double.isNaN(legs)) {
            return null;
        }
        double[] g = {trunk, arms, legs};
        double[] out = new double[CH_SEG.length];
        double sum = 0;
        for (int c = 0; c < out.length; c++) {
            double v = 0;
            for (int i = 0; i < 3; i++) {
                v += CH_SEG[c][i] * g[i];
            }
            out[c] = v;
            sum += v;
        }
        double mean = sum / out.length;
        for (int c = 0; c < out.length; c++) {
            out[c] = Math.max(0.7, Math.min(1.4, out[c] / mean));
        }
        return out;
    }

    /**
     * The focus zone the measurement asks for (client-form keys, AiPersonal / NextPlan.focusChannels): the weakest
     * segment under 90 % of normal — arms → "arms", legs → "legs", trunk → "abs"; null when every zone is normal.
     */
    public static String weakFocus(JSONObject m, boolean male, int heightCm) {
        double[] n = ofNormal(m, male, heightCm)[0];
        int weak = -1;
        double lo = 90;
        for (int i = 0; i < 5; i++) {
            if (!Double.isNaN(n[i]) && n[i] < lo) {
                lo = n[i];
                weak = i;
            }
        }
        if (weak < 0) {
            return null;
        }
        return weak == ScaleProtocol.TRUNK ? "abs"
                : weak == ScaleProtocol.LEFT_ARM || weak == ScaleProtocol.RIGHT_ARM ? "arms" : "legs";
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
     *   <li><b>Physical age</b> — the age whose median appendicular muscle (ALMI) and fat mass (FMI) per height²
     *       match the measured ones, half each, from DXA reference data of 3 327 adults (Imboden 2017). The entered
     *       age is not in it; then half the gap to the passport, at most 8 years (the medians move slowly with
     *       age, so a fit body alone would map decades away).</li>
     *   <li><b>Fat pattern</b> — the legs' share of the limb + trunk fat: gynoid (legs, hips) or android (trunk).</li>
     * </ul>
     */
    public static final class Body {
        public double ffmi = Double.NaN, fmi = Double.NaN, smi = Double.NaN;
        /** Appendicular (arms + legs) muscle per height², kg/m² — Fitdays' "ASMI". */
        public double almi = Double.NaN;
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
        JSONArray sm = m.optJSONArray("segMus");
        double ash = m.optDouble("ash", Double.NaN);
        if (!Double.isNaN(ash) && ash > 0) {
            // the smoothed limbs' share of the smoothed lean (ScaleModel) — one step-on's limbs are too noisy
            b.almi = ash * lean / h2;
        } else if (sm != null) {
            b.almi = (sm.optDouble(ScaleProtocol.LEFT_ARM, 0) + sm.optDouble(ScaleProtocol.RIGHT_ARM, 0)
                    + sm.optDouble(ScaleProtocol.LEFT_LEG, 0) + sm.optDouble(ScaleProtocol.RIGHT_LEG, 0)) / h2;
        }
        if (!Double.isNaN(b.almi)) {
            b.ageFromMuscle = ageOf(b.almi, male ? ALMI_M : ALMI_F, male ? 0.026 : 0.012, false);
        }
        b.ageFromFat = ageOf(b.fmi, male ? FMI_M : FMI_F, male ? 0.07 : 0.16, true);
        double shown = m.optDouble("pag", Double.NaN);
        b.physicalAge = !Double.isNaN(shown) ? shown : physicalAge(b.almi, b.fmi, male, m.optInt("pa", 0));
        JSONArray f = m.optJSONArray("segFat");
        if (f != null) {
            double legs = f.optDouble(ScaleProtocol.LEFT_LEG, 0) + f.optDouble(ScaleProtocol.RIGHT_LEG, 0);
            double all = legs + f.optDouble(ScaleProtocol.TRUNK, 0) + f.optDouble(ScaleProtocol.LEFT_ARM, 0)
                    + f.optDouble(ScaleProtocol.RIGHT_ARM, 0);
            b.legFatShare = all > 0 ? legs / all : Double.NaN;
        }
        return b;
    }

    /**
     * Physical age before it is held (ScaleModel keeps the shown one until a real change): the age whose ALMI and
     * FMI medians match, half each; half the gap to the passport, at most 8 years. NaN without fat.
     */
    public static double physicalAge(double almi, double fmi, boolean male, int passport) {
        double am = ageOf(almi, male ? ALMI_M : ALMI_F, male ? 0.026 : 0.012, false);
        double af = ageOf(fmi, male ? FMI_M : FMI_F, male ? 0.07 : 0.16, true);
        double a = Double.isNaN(am) ? af : Double.isNaN(af) ? am : 0.5 * am + 0.5 * af;
        if (passport >= 18 && !Double.isNaN(a)) {
            // the medians move slowly with age, so a fit body maps decades away: half the gap, at most 8 years
            a = passport + Math.max(-AGE_SPAN, Math.min(AGE_SPAN, (a - passport) / 2));
        }
        return a;
    }

    /**
     * Medians by age, DXA, 3 327 adults (Imboden et al., PLoS One 2017; 10.1371/journal.pone.0175110 and .0176161),
     * at the decade middles 25 … 75. FMI only up to 55 (it falls again after 60 — loss of mass, not youth).
     */
    static final double[] AGES = {25, 35, 45, 55, 65, 75};
    /** Physical age stays within this many years of the passport. */
    static final double AGE_SPAN = 8;
    static final double[] ALMI_M = {9.3, 9.1, 8.7, 8.6, 8.5, 8.0};
    static final double[] ALMI_F = {6.9, 6.8, 6.7, 6.6, 6.5, 6.3};
    static final double[] FMI_M = {5.0, 6.8, 8.0, 8.7};
    static final double[] FMI_F = {6.6, 8.9, 9.7, 11.3};

    /**
     * The age whose median equals v: piecewise-linear inverse over the decades; beyond the youngest / oldest the
     * outer slope per year (rising = the value grows with age).
     */
    static double ageOf(double v, double[] med, double slopeOut, boolean rising) {
        if (Double.isNaN(v)) {
            return Double.NaN;
        }
        int n = med.length;
        double first = med[0], last = med[n - 1];
        if (rising ? v <= first : v >= first) {
            return clampAge(AGES[0] - Math.abs(v - first) / slopeOut);
        }
        if (rising ? v >= last : v <= last) {
            return clampAge(AGES[n - 1] + Math.abs(v - last) / slopeOut);
        }
        for (int i = 1; i < n; i++) {
            double lo = med[i - 1], hi = med[i];
            if (rising ? v <= hi : v >= hi) {
                double t = (v - lo) / (hi - lo);
                return clampAge(AGES[i - 1] + t * (AGES[i] - AGES[i - 1]));
            }
        }
        return clampAge(AGES[n - 1]);
    }

    static double clampAge(double a) {
        return Math.max(18, Math.min(85, a));
    }

    // ================================================================ norms: a 5-sector scale per value

    /**
     * One value on its norm: five sectors — far below · below · the norm in the middle · above · far above —
     * with their edges (6 numbers, the outer two only bound the drawing), the colour of each sector (by what the
     * direction means for this value: more muscle is good, more fat is not) and the client's value.
     */
    public static final class Norm {
        public final double[] edges = new double[6];
        public final int[] colors = new int[5];
        public final String[] names = new String[5];
        public double value = Double.NaN;
        public String unit = "";
        public int decimals = 1;
        /** Where the numbers come from (shown small under the scale). */
        public String source = "";

        public int sector() {
            if (Double.isNaN(value)) {
                return -1;
            }
            for (int i = 1; i < 5; i++) {
                if (value < edges[i]) {
                    return i - 1;
                }
            }
            return 4;
        }
    }

    static final int RED = 0xFFEF4444, ORANGE = 0xFFF97316, AMBER = 0xFFF59E0B, GREEN = 0xFF22C55E,
            TEAL = 0xFF10B981, CYAN = 0xFF06B6D4, BLUE = 0xFF38BDF8;
    /** Too little and too much both matter: red · amber · green · amber · red. */
    static final int[] BOTH = {RED, AMBER, GREEN, AMBER, RED};
    /** More is better (muscle): red · amber · green · teal · cyan. */
    static final int[] MORE = {RED, AMBER, GREEN, TEAL, CYAN};
    /** Less is better down to a floor (fat): blue · green-ish · green · amber · red. */
    static final int[] LESS = {BLUE, TEAL, GREEN, AMBER, RED};

    static Norm norm(double[] e, int[] cols, String[] names, double v, String unit, int dec, String source) {
        Norm n = new Norm();
        System.arraycopy(e, 0, n.edges, 0, 6);
        System.arraycopy(cols, 0, n.colors, 0, 5);
        System.arraycopy(names, 0, n.names, 0, 5);
        n.value = v;
        n.unit = unit;
        n.decimals = dec;
        n.source = source;
        return n;
    }

    /**
     * Body fat % by sex and age: the healthy range (Gallagher et al. 2000, Am J Clin Nutr 72:694 — from DXA and
     * four-compartment models, by BMI 18.5–25 equivalence) in the middle; below it lean down to essential fat
     * (men 5 %, women 12 %); above it "overweight", then "obese".
     */
    public static Norm fatNorm(double fatPct, boolean male, int age, String[] names) {
        double[] e;
        if (male) {
            e = age < 40 ? new double[] {0, 5, 8, 20, 25, 40} : age < 60 ? new double[] {0, 5, 11, 22, 28, 42}
                    : new double[] {0, 5, 13, 25, 30, 44};
        } else {
            e = age < 40 ? new double[] {0, 12, 21, 33, 39, 50} : age < 60 ? new double[] {0, 12, 23, 34, 40, 52}
                    : new double[] {0, 12, 24, 36, 42, 54};
        }
        return norm(e, LESS, names, fatPct, " %", 1, "Gallagher 2000 · AJCN");
    }

    /**
     * Muscle by fat-free mass per height² (FFMI): men 17–20 / women 14–17 is the usual adult range; above it
     * athletic, then very muscular; below 17 / 14 low, below 16 / 13 very low (Schutz et al. 2002, Int J Obes 26:953;
     * Kelly 2009 NHANES DXA).
     */
    public static Norm muscleNorm(double ffmi, boolean male, String[] names) {
        double[] e = male ? new double[] {13, 16, 17, 20, 23, 27} : new double[] {10, 13, 14, 17, 19.5, 23};
        return norm(e, MORE, names, ffmi, "", 1, "FFMI · Schutz 2002 · Kelly 2009 (NHANES)");
    }

    /** Body water % of the weight: men 50–65, women 45–60 (adult reference ranges of BIA / dilution). */
    public static Norm waterNorm(double waterPct, boolean male, String[] names) {
        double[] e = male ? new double[] {35, 45, 50, 65, 70, 80} : new double[] {30, 40, 45, 60, 65, 75};
        return norm(e, BOTH, names, waterPct, " %", 1, "BIA reference ranges");
    }

    /** Physical age against the passport: ±3 years is "as the age", younger is good, older is not. */
    public static Norm ageNorm(double physical, int passport, String[] names) {
        double p = passport;
        double[] e = {p - 25, p - 10, p - 3, p + 3, p + 10, p + 25};
        return norm(e, new int[] {CYAN, TEAL, GREEN, AMBER, RED}, names, physical, "", 0, "Imboden 2017 (DXA, 3 327)");
    }

    /** Visceral fat grade (the scale's 1–20): up to 9 normal, 10–14 high, 15+ very high (vendor scale). */
    public static Norm visceralNorm(double grade, String[] names) {
        double[] e = {0, 2, 4, 10, 15, 21};
        return norm(e, new int[] {TEAL, GREEN, GREEN, AMBER, RED}, names, grade, "", 0, "WLA25 / Fitdays");
    }

    /** BMI (WHO): 18.5–25 normal — weight only: dense muscle moves it up without fat. */
    public static Norm bmiNorm(double bmi, String[] names) {
        double[] e = {12, 16, 18.5, 25, 30, 40};
        return norm(e, BOTH, names, bmi, "", 1, "WHO");
    }

    /** A zone's muscle, % of normal (the segmental standard of the vendor: 90–110 normal). */
    public static Norm zoneNorm(double pct, String[] names) {
        double[] e = {60, 80, 90, 110, 120, 150};
        return norm(e, MORE, names, pct, " %", 0, "WLA25 / Fitdays segment standard");
    }

    /** Readiness 0–100 against the client's own baseline. */
    public static Norm readyNorm(double score, String[] names) {
        double[] e = {0, 40, 60, 80, 90, 100};
        return norm(e, new int[] {RED, ORANGE, AMBER, GREEN, GREEN}, names, score, "", 0, "XEMS");
    }

    // ================================================================ summary: what to do with all this

    public static final int TONE_GOOD = 0, TONE_INFO = 1, TONE_WARN = 2, TONE_ALERT = 3;
    public static final int K_TODAY = 0, K_EMS = 1, K_BODY = 2, K_HABIT = 3;

    /** One recommendation: what, why in one line, how urgent (0 first) and its tone. */
    public static final class Advice {
        public final int prio;
        public final int kind;
        public final int tone;
        public final String titleBg, textBg, titleEn, textEn;

        Advice(int prio, int kind, int tone, String titleBg, String textBg, String titleEn, String textEn) {
            this.prio = prio;
            this.kind = kind;
            this.tone = tone;
            this.titleBg = titleBg;
            this.textBg = textBg;
            this.titleEn = titleEn;
            this.textEn = textEn;
        }
    }

    static final String[] SEG_BG = {"торса", "лявата ръка", "дясната ръка", "левия крак", "десния крак"};
    static final String[] SEG_EN = {"the trunk", "the left arm", "the right arm", "the left leg", "the right leg"};
    static final String[] CH_BG = {"гърдите", "корема", "предното бедро", "прасците", "ръцете", "трапеца", "гърба",
            "кръста", "седалището", "задното бедро"};
    static final String[] CH_EN = {"chest", "abs", "front thigh", "calves", "arms", "traps", "back", "lower back",
            "glutes", "back thigh"};

    static String f1(double v) {
        return String.format(java.util.Locale.US, "%.1f", v);
    }

    /**
     * The recommendations for measurement {@code at}, most urgent first — derived only from what was measured
     * (readiness, norms, zones, the current's reach, the trend), the same every time for the same data. [D] rules.
     */
    public static List<Advice> advice(JSONArray hist, int at, boolean male, int age, int heightCm) {
        List<Advice> out = new ArrayList<Advice>();
        JSONObject m = hist != null ? hist.optJSONObject(at) : null;
        if (m == null || !m.has("fat")) {
            out.add(new Advice(0, K_HABIT, TONE_INFO, "Стъпи на кантара",
                    "Бос, с двете ръце на дръжката — анализът се появява тук.", "Step on the scale",
                    "Barefoot, both hands on the handle — the analysis appears here."));
            return out;
        }
        String[] n5 = {"", "", "", "", ""};
        double w = m.optDouble("w");
        double fat = m.optDouble("fat");
        Body b = body(m, male, heightCm);
        // 1. today
        Readiness r = readiness(hist, at);
        if (!r.known()) {
            out.add(new Advice(3, K_HABIT, TONE_INFO, "Мерене преди всяка тренировка",
                    "След 2–3 мерения кантарът ще казва дали тялото е готово за пълна сила.",
                    "Measure before every session",
                    "After 2–3 measurements the scale tells whether the body is ready for full strength."));
        } else if (r.factor < 1) {
            int pct = (int) Math.round((1 - r.factor) * 100);
            boolean swollen = r.worst >= 0 && r.swell[r.worst] >= SWELL_AMBER;
            out.add(new Advice(0, K_TODAY, r.factor <= 0.7 ? TONE_ALERT : TONE_WARN, "Днес по-леко: −" + pct + " %",
                    swollen ? "Подуване в " + SEG_BG[r.worst] + " (+" + f1(r.swell[r.worst])
                            + " %) — мускулите още се възстановяват. Автоматичният режим вече е намалил силата."
                            : "По-малко вода в тялото — нека пие вода преди тренировката.",
                    "Softer today: −" + pct + " %",
                    swollen ? "Swelling in " + SEG_EN[r.worst] + " (+" + f1(r.swell[r.worst])
                            + " %) — the muscles are still recovering. Auto has already lowered the strength."
                            : "Less body water — have them drink before the session."));
        } else {
            out.add(new Advice(4, K_TODAY, TONE_GOOD, "Готов за пълна сила",
                    "Тъканите са като обичайното — без подуване след последната тренировка.", "Ready for full strength",
                    "The tissues are as usual — no swelling after the last session."));
        }
        // 2. water
        Norm wn = waterNorm(m.optDouble("water", Double.NaN), male, n5);
        if (wn.sector() >= 0 && wn.sector() <= 1) {
            out.add(new Advice(1, K_HABIT, TONE_WARN, "Вода преди тренировката",
                    "Водата е " + f1(wn.value) + " % — под нормата. 0,5 л вода час преди EMS: токът се провежда по-равно "
                            + "и се усеща по-малко по кожата.", "Water before the session",
                    "Water is " + f1(wn.value) + " % — below normal. 0.5 l an hour before EMS: the current flows more "
                            + "evenly and stings the skin less."));
        }
        // 3. fat
        Norm fn = fatNorm(fat, male, age, n5);
        int fs = fn.sector();
        if (fs >= 3) {
            double target = w * fn.edges[3] / 100;
            double over = Math.max(0, m.optDouble("fatKg", w * fat / 100) - target);
            out.add(new Advice(1, K_BODY, fs == 4 ? TONE_ALERT : TONE_WARN,
                    (fs == 4 ? "Затлъстяване" : "Мазнини над нормата") + ": −" + f1(over) + " кг до нормата",
                    "Цел „Отслабване“ в EMS 2× седмично + умерен хранителен дефицит; мускулите да се пазят — "
                            + "следи ги тук.", (fs == 4 ? "Obese" : "Fat above normal") + ": −" + f1(over)
                            + " kg to normal", "The EMS \"Fat loss\" goal twice a week + a moderate calorie deficit; "
                            + "keep the muscle — watch it here."));
        } else if (fs == 0) {
            out.add(new Advice(1, K_BODY, TONE_WARN, "Много ниски мазнини",
                    "Под жизнено нужните — без хранителен дефицит; повече възстановяване между тренировките.",
                    "Very low fat", "Below the essential level — no calorie deficit; more recovery between sessions."));
        }
        // 4. muscle
        Norm mn = muscleNorm(b.ffmi, male, n5);
        int ms = mn.sector();
        if (ms >= 0 && ms <= 1) {
            out.add(new Advice(1, K_BODY, TONE_WARN, "Малко мускули за ръста",
                    "Цел „Тонус“ (силова EMS) 2× седмично и белтък около 1,6 г на кг тегло дневно ("
                            + Math.round(w * 1.6) + " г).", "Little muscle for the height",
                    "The \"Tone\" goal (strength EMS) twice a week and about 1.6 g protein per kg a day ("
                            + Math.round(w * 1.6) + " g)."));
        } else if (ms >= 3 && fs <= 2) {
            out.add(new Advice(4, K_BODY, TONE_GOOD, "Атлетично тяло",
                    "Теглото е от мускули" + (m.optDouble("bmi", 0) >= 25 ? " — ИТМ " + f1(m.optDouble("bmi"))
                            + " заблуждава, не е наднормено." : ".") + " Поддържай със силова програма.",
                    "Athletic body", "The weight is muscle" + (m.optDouble("bmi", 0) >= 25 ? " — BMI "
                            + f1(m.optDouble("bmi")) + " misleads, it is not overweight." : ".")
                            + " Keep it with a strength program."));
        }
        // 5. visceral
        int visc = m.optInt("visc", 0);
        if (visc >= 10) {
            out.add(new Advice(1, K_BODY, visc >= 15 ? TONE_ALERT : TONE_WARN, "Висцерални мазнини: " + visc,
                    "Мазнините около органите са високи — кардио + EMS за отслабване; при 15+ — консултация с лекар.",
                    "Visceral fat: " + visc, "Fat around the organs is high — cardio + fat-loss EMS; at 15+ see a "
                            + "doctor."));
        }
        // 6. the weakest zone and the balance
        double[][] nrm = ofNormal(m, male, heightCm);
        int weak = -1;
        double lo = Double.MAX_VALUE;
        for (int i = 0; i < 5; i++) {
            if (!Double.isNaN(nrm[0][i]) && nrm[0][i] < lo) {
                lo = nrm[0][i];
                weak = i;
            }
        }
        if (weak >= 0 && lo < 90) {
            out.add(new Advice(2, K_EMS, TONE_WARN, "Наблегни на " + SEG_BG[weak],
                    "Мускулите там са " + Math.round(lo) + " % от нормата — фокус-зона в програмата, упражнения за нея.",
                    "Focus on " + SEG_EN[weak], "The muscle there is " + Math.round(lo)
                            + " % of normal — a focus zone in the program, exercises for it."));
        }
        JSONArray k = m.optJSONArray("segMus");
        double armA = asymmetry(k, ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM);
        double legA = asymmetry(k, ScaleProtocol.LEFT_LEG, ScaleProtocol.RIGHT_LEG);
        double worstA = Math.abs(armA) >= Math.abs(legA) ? armA : legA;
        if (!Double.isNaN(worstA) && Math.abs(worstA) >= 6) {
            boolean arms = Math.abs(armA) >= Math.abs(legA);
            boolean leftMore = worstA > 0;
            out.add(new Advice(2, K_EMS, TONE_INFO, "Разлика ляво/дясно " + Math.round(Math.abs(worstA)) + " %",
                    (arms ? (leftMore ? "Дясната ръка" : "Лявата ръка") : (leftMore ? "Десният крак" : "Левият крак"))
                            + " е по-слаб(а) — упражнения с една ръка / крак; костюмът дава еднакъв ток и на двете.",
                    "Left / right difference " + Math.round(Math.abs(worstA)) + " %",
                    (arms ? (leftMore ? "The right arm" : "The left arm") : (leftMore ? "The right leg" : "The left leg"))
                            + " is weaker — one-sided exercises; the suit gives both sides the same current."));
        }
        // 7. the current's reach
        double[] cf = channelFat(m);
        if (cf != null) {
            double mean = 0;
            for (double v : cf) {
                mean += reachFactor(v);
            }
            mean /= cf.length;
            int low = -1;
            double lr = 1;
            for (int c = 0; c < cf.length; c++) {
                double rel = reachFactor(cf[c]) / mean;
                if (rel < lr) {
                    lr = rel;
                    low = c;
                }
            }
            if (low >= 0 && lr < 0.95) {
                int pct = (int) Math.round((1 - lr) * 100);
                out.add(new Advice(2, K_EMS, TONE_INFO, "Повече сила на " + CH_BG[low] + " (+" + pct + " %)",
                        "Мазнините там изолират — токът стига " + pct + " % по-малко от средното. Или по-широк импулс.",
                        "More strength on the " + CH_EN[low] + " (+" + pct + " %)",
                        "The fat there insulates — the current reaches " + pct + " % less than the mean. Or a wider "
                                + "pulse."));
            }
        }
        // 8. the trend (since the first measurement)
        JSONObject first = at > 0 ? hist.optJSONObject(0) : null;
        if (first != null && first.has("muscle") && first.has("fatKg")) {
            double dm = m.optDouble("muscle") - first.optDouble("muscle");
            double df = m.optDouble("fatKg") - first.optDouble("fatKg");
            if (dm >= 0.2 && df <= -0.2) {
                out.add(new Advice(4, K_BODY, TONE_GOOD, "Тялото се преобразява ✓",
                        "+" + f1(dm) + " кг мускули и −" + f1(-df) + " кг мазнини от първото мерене.",
                        "The body is recomposing ✓", "+" + f1(dm) + " kg muscle and −" + f1(-df)
                                + " kg fat since the first measurement."));
            } else if (df >= 1.0) {
                out.add(new Advice(1, K_BODY, TONE_WARN, "Мазнините растат: +" + f1(df) + " кг",
                        "От първото мерене — провери храненето и честотата на тренировките.",
                        "Fat is growing: +" + f1(df) + " kg", "Since the first measurement — check the food and how "
                                + "often they train."));
            } else if (dm <= -0.8) {
                out.add(new Advice(1, K_BODY, TONE_WARN, "Мускулите намаляват: −" + f1(-dm) + " кг",
                        "Повече белтък и силова EMS; при отслабване — по-малък дефицит.",
                        "Muscle is going down: −" + f1(-dm) + " kg", "More protein and strength EMS; when losing "
                                + "weight — a smaller deficit."));
            }
        }
        Collections.sort(out, new ByPrio());
        return out;
    }

    static double reachFactor(double fatPct) {
        return Math.max(0.6, Math.min(1.3, Math.exp(-(fatPct - 25.0) / 35.0)));
    }

    static final class ByPrio implements java.util.Comparator<Advice> {
        @Override
        public int compare(Advice a, Advice b) {
            return a.prio != b.prio ? a.prio - b.prio : b.tone - a.tone;
        }
    }
}
