package com.isaigu.gymapp.wearable.scale;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * XEMS body model over the scale's impedances: sex-aware, and steady from one weigh-in to the next. Pure Java.
 *
 * <p><b>Why not WLA25 alone.</b> Its body-fat regression has no sex and no age term (only impedances, height,
 * weight and BMI), so a lean woman reads ~10 points too low; its BMI / weight terms count weight as fat. Here:
 * <ul>
 *   <li><b>Fat-free mass</b> — Sun 2003 (NHANES III, 1 829 adults against a multi-component reference), separate
 *       equations for men and women, over the whole-body resistance at 50 kHz. The scale measures arm and leg
 *       by segment at 20 / 100 kHz: R50 = log-frequency interpolation, the two sides averaged, plus the trunk;
 *       {@link #GEO} converts the foot-plate / handle geometry to the classic hand-to-foot one, calibrated once so
 *       that for the owner's report (a man) the model equals WLA25 — the geometry is the same for both sexes.</li>
 *   <li><b>Fat %</b> — the mean of the sex-aware estimates: Sun 2003, and the scale's own value when it sent one
 *       (it computes it with the profile's sex and age); for men without it also WLA25 (calibrated on men).</li>
 *   <li><b>Water</b> — 0.733 of the smoothed fat-free mass (the Wang 1999 hydration WLA25 uses — steadier than a
 *       TBW regression on one reading); <b>skeletal muscle</b> — Janssen 2000 (MRI, 388 adults; sex, age) as a
 *       share of that fat-free mass; the rest of the WLA25 chain (segments, bone, protein, visceral) from the fat
 *       above.</li>
 *   <li><b>Steady</b> — impedance moves with contact, skin and the last drink (±1 kg of lean between two
 *       steps); tissue does not. Fat-free mass goes through a small Kalman filter over the client's weigh-ins:
 *       a weight change is mostly lean the same day (water, food) and mostly fat over weeks, the tissue drifts
 *       ≤ 0.14 kg/√day, one reading counts ±1 kg, a reading 3 σ off counts less. Two steps a minute apart →
 *       their average; a real change shows within days. A weight jump the body cannot make restarts it.</li>
 *   <li><b>Traits are never one step-on</b> (v3) — the limbs' share of the lean (→ ALMI) has its own filter, and
 *       physical age comes from the smoothed values and is held until it moves by 2 years, never within 12 h:
 *       inverting the age medians (women's ALMI falls 0.01 kg/m² a year) turns 0.1 kg/m² of noise into years.</li>
 * </ul>
 */
public final class ScaleModel {
    /** Stored measurements carry "v" = this; older ones are rebuilt from their raw impedances. */
    public static final int VERSION = 5;
    /** Segment sum → hand-to-foot resistance (owner's report: Sun 2003 = WLA25 17.0 % for him). */
    static final double GEO = 0.8736;
    /** Without a usable trunk reading (generation A): the trunk ≈ this share of arm + leg. */
    static final double TRUNK_SHARE = 0.037;
    /** Where 50 kHz lies between 20 and 100 kHz on a log scale. */
    static final double AT50 = Math.log(50.0 / 20.0) / Math.log(100.0 / 20.0);

    /** One reading's lean mass error (kg²), the tissue's drift per day (kg²/day). */
    static final double R = 1.0, Q = 0.02;
    /**
     * The limbs' share of the lean (ALM / FFM): one step-on's spread (σ ≈ 0.012 — limb impedances move ±3 % with
     * food, drink, skin) and its drift (σ 0.001 per √day — training moves it over months, not hours).
     */
    static final double RA = 1.44e-4, QA = 1e-6;
    /**
     * Physical age is held until it moves by this much (years) — the least change the measurement can tell from
     * noise — and never within this many hours of the last change: a body does not age in an afternoon.
     */
    static final double AGE_LSC = 2.0, AGE_HOLD_H = 12;
    /**
     * What the tissue can really change between two weigh-ins (kg of lean = kg of fat the other way, the weight
     * being measured): a hydration / food / contact allowance, plus this many kg a day (≈ 0.8 kg a week — a hard
     * diet or a hard bulk). A reading further off than that is the measurement's noise, not the body: it is cut
     * to the limit before the filter sees it.
     */
    static final double ALLOW = 0.6, TISSUE_DAY = 0.12;
    /** A weight change the body does not make: restart the filter. */
    static double jump(double w) {
        return Math.max(4.0, 0.07 * w);
    }

    private ScaleModel() {}

    // ================================================================ one reading

    /**
     * Typical dispersion ρ = Z100 / Z20 by segment (trunk, arms, legs) — healthy adults' P1 readings (owner and
     * the sim's clients: trunk 0.91, arms 0.85–0.91, legs 0.86–0.90). [D] Only spreads a single-frequency reading.
     */
    static final double[] RHO = {0.91, 0.88, 0.88, 0.88, 0.88};

    /**
     * A single-frequency (50 kHz) reading in the two-frequency form every algorithm reads: per segment
     * z20 = z50 / (1 + (ρ − 1)·AT50), z100 = ρ·z20, so {@link #r50} returns the measured 50 kHz value exactly.
     */
    public static void single(ScaleProtocol.Reading r, double[] z50) {
        r.single = true;
        for (int i = 0; i < 5; i++) {
            double z = z50[i];
            if (z > 0) {
                r.z20[i] = z / (1 + (RHO[i] - 1) * AT50);
                r.z100[i] = RHO[i] * r.z20[i];
            } else {
                r.z20[i] = r.z100[i] = Double.NaN;
            }
        }
    }

    /** Whole-body resistance at 50 kHz in hand-to-foot terms (Ω); NaN when the limbs are not usable. */
    public static double r50(double[] z20, double[] z100) {
        for (int i = 1; i < 5; i++) {
            if (!(z20[i] >= 100) || !(z100[i] >= 100)) {
                return Double.NaN;
            }
        }
        double s20 = (z20[1] + z20[3] + z20[2] + z20[4]) / 2;
        double s100 = (z100[1] + z100[3] + z100[2] + z100[4]) / 2;
        double t20 = z20[0], t100 = z100[0];
        if (t20 >= 5 && t20 <= 100 && t100 >= 3 && t100 <= t20) {
            s20 += t20;
            s100 += t100;
        } else {
            s20 *= 1 + TRUNK_SHARE;
            s100 *= 1 + TRUNK_SHARE;
        }
        return GEO * (s20 + (s100 - s20) * AT50);
    }

    /** Fat-free mass, Sun 2003 (kg). */
    static double ffmSun(boolean male, double h, double w, double r) {
        double hr = h * h / r;
        return male ? -10.678 + 0.652 * hr + 0.262 * w + 0.015 * r : -9.529 + 0.696 * hr + 0.168 * w + 0.016 * r;
    }

    /** Skeletal muscle, Janssen 2000 (kg). */
    static double smmJanssen(boolean male, int age, double h, double r) {
        return h * h / r * 0.401 + (male ? 3.825 : 0) - 0.071 * Math.max(18, Math.min(90, age)) + 5.102;
    }

    static double clamp(double v, double lo, double hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    /** The model's fat % for one reading (before smoothing); NaN when there is nothing to compute it from. */
    public static double fatPct(ScaleProtocol.Reading r, boolean male, int age, int heightCm) {
        ScaleBody v = ScaleBody.of(r, male, age, heightCm);
        if (v == null) {
            return Double.NaN;
        }
        double res = r50(r.z20, r.z100);
        if (Double.isNaN(res)) {
            return v.fatPct;
        }
        double w = r.weightKg;
        double sun = clamp(100 * (w - ffmSun(male, heightCm, w, res)) / w, 3, 60);
        if (r.single) {
            // Sun 2003 is a 50 kHz equation (NHANES III): exactly what a single-frequency scale measures; WLA25's
            // regression needs the real 100 kHz values
            return v.fatFromScale ? (sun + v.fatPct) / 2 : sun;
        }
        if (v.fatFromScale) {
            return (sun + v.fatPct) / 2;
        }
        return male ? (sun + v.fatPct) / 2 : sun;
    }

    /**
     * The body for this reading at the given fat % (the smoothed one): WLA25's chain from that fat, skeletal
     * muscle by Janssen.
     */
    public static ScaleBody body(ScaleProtocol.Reading r, boolean male, int age, int heightCm, double fatPct) {
        ScaleBody b = ScaleBody.withFat(r, male, age, heightCm, fatPct);
        if (b == null) {
            return null;
        }
        double res = r50(r.z20, r.z100);
        double lean = b.leanKg;
        if (!Double.isNaN(res) && lean > 0) {
            double w = b.weightKg;
            // water stays the WLA25 / Wang hydration of the smoothed lean (0.733 — steady; the regressions'
            // own TBW / FFM ratio is noisier than the true one); skeletal muscle by Janssen's share of the lean
            double ffm = Math.max(1, ffmSun(male, heightCm, w, res));
            double skel = lean * clamp(smmJanssen(male, age, heightCm, res) / ffm, 0.38, 0.62);
            b.skeletalPct = ScaleBody.ceil1(skel / w * 100);
        }
        return b;
    }

    // ================================================================ steady over time

    /** The filter's state after a weigh-in. */
    public static final class State {
        public double lean = Double.NaN, var = R, w = Double.NaN;
        public long t;
        /** Appendicular share of the lean, smoothed, and its variance; the shown physical age and when it was set. */
        public double ash = Double.NaN, asv = RA, age = Double.NaN;
        public long ageT;
        /** The last step restarted the filter (first weigh-in, long gap, another body). */
        public boolean restarted;

        public boolean on() {
            return !Double.isNaN(lean);
        }
    }

    /**
     * One weigh-in into the filter: its weight and the reading's own lean; returns the smoothed lean. A weight
     * change carries lean at once by its likely share (same day ~75 % — water, food; over weeks ~30 %).
     */
    public static double step(State s, long t, double w, double leanRaw) {
        double days = s.on() ? Math.max(0, (t - s.t) / 86400000.0) : 0;
        s.restarted = !s.on() || days > 60 || Math.abs(w - s.w) > jump(w);
        if (s.restarted) {
            s.lean = leanRaw;
            s.var = R;
        } else {
            double dw = w - s.w;
            double share = 0.3 + 0.45 * Math.exp(-days / 3);
            double x = s.lean + share * dw;
            double p = Math.min(4 * R, s.var + Q * days + 0.09 * dw * dw);
            double cap = ALLOW + TISSUE_DAY * days;
            double e = clamp(leanRaw - x, -cap, cap);
            double sv = p + R;
            double r = e * e / sv > 9 ? R * e * e / sv / 9 : R;     // 3 σ off → counts less
            double k = p / (p + r);
            s.lean = x + k * e;
            s.var = (1 - k) * p;
        }
        s.lean = clamp(s.lean, 0.4 * w, 0.97 * w);
        s.w = w;
        s.t = t;
        return s.lean;
    }

    /**
     * The slow traits of a weigh-in — what changes over weeks, not hours: the limbs' share of the lean through
     * its own filter (restarted with the lean's), then physical age from the smoothed lean / fat, held until it
     * moves by {@link #AGE_LSC} and at least {@link #AGE_HOLD_H} h after the last change.
     */
    static void trait(State s, ScaleBody b, long t, double days, boolean male, int age, int heightCm,
            double restHr) {
        double lean = b.leanKg;
        double limbs = b.segMuscleKg[ScaleProtocol.LEFT_ARM] + b.segMuscleKg[ScaleProtocol.RIGHT_ARM]
                + b.segMuscleKg[ScaleProtocol.LEFT_LEG] + b.segMuscleKg[ScaleProtocol.RIGHT_LEG];
        double raw = lean > 0 ? limbs / lean : Double.NaN;
        if (!Double.isNaN(raw) && raw > 0.2 && raw < 0.7) {
            if (s.restarted || Double.isNaN(s.ash)) {
                s.ash = raw;
                s.asv = RA;
            } else {
                double p = s.asv + QA * days;
                double k = p / (p + RA);
                s.ash += k * (raw - s.ash);
                s.asv = (1 - k) * p;
            }
        }
        if (s.restarted) {
            s.age = Double.NaN;
        }
        if (heightCm < 100 || Double.isNaN(s.ash)) {
            return;
        }
        double h2 = Math.pow(heightCm / 100.0, 2);
        double now = ScaleInsight.physicalAge(s.ash * lean / h2, b.fatKg / h2, restHr, male, age);
        if (Double.isNaN(now)) {
            return;
        }
        boolean held = !Double.isNaN(s.age) && (Math.abs(now - s.age) < AGE_LSC
                || t - s.ageT < AGE_HOLD_H * 3600000L);
        if (!held) {
            s.age = Math.round(now);
            s.ageT = t;
        }
    }

    // ================================================================ stored measurements

    /** The reading back from a stored measurement (weight, impedances, the scale's fat). */
    public static ScaleProtocol.Reading reading(JSONObject m) {
        ScaleProtocol.Reading r = new ScaleProtocol.Reading();
        r.result = true;
        r.weightKg = m.optDouble("w", Double.NaN);
        JSONArray a = m.optJSONArray("z20"), b = m.optJSONArray("z100");
        for (int i = 0; i < 5; i++) {
            r.z20[i] = a != null && !a.isNull(i) ? a.optDouble(i, Double.NaN) : Double.NaN;
            r.z100[i] = b != null && !b.isNull(i) ? b.optDouble(i, Double.NaN) : Double.NaN;
        }
        r.scaleFatPct = m.optDouble("sfat", Double.NaN);
        r.single = m.optInt("f1") == 1;
        return r;
    }

    /**
     * The stored measurement for a new reading, smoothed against the state (which it advances): the model's
     * values plus "v", the reading's own fat ("fr") and lean ("lr"), the filter's variance and the passport age.
     */
    public static JSONObject entry(ScaleProtocol.Reading r, boolean male, int age, int heightCm, long t, State s)
            throws org.json.JSONException {
        return entry(r, male, age, heightCm, t, s, Double.NaN);
    }

    /** As {@link #entry}, with the client's typical resting HR at the weigh-in (NaN = none) for physical age. */
    public static JSONObject entry(ScaleProtocol.Reading r, boolean male, int age, int heightCm, long t, State s,
            double restHr) throws org.json.JSONException {
        double fr = fatPct(r, male, age, heightCm);
        ScaleBody b = null;
        double lr = Double.NaN;
        if (!Double.isNaN(fr)) {
            lr = r.weightKg * (1 - fr / 100);
            double days = s.on() ? Math.max(0, (t - s.t) / 86400000.0) : 0;
            double lean = step(s, t, r.weightKg, lr);
            b = body(r, male, age, heightCm, 100 * (1 - lean / r.weightKg));
            if (b != null) {
                trait(s, b, t, days, male, age, heightCm, restHr);
            }
        }
        JSONObject o = ScaleStore.toJson(r, b, t);
        o.put("v", VERSION);
        if (b != null) {
            o.put("fr", Math.round(fr * 10) / 10.0);
            o.put("lr", Math.round(lr * 100) / 100.0);
            o.put("var", Math.round(s.var * 1000) / 1000.0);
            if (!Double.isNaN(s.ash)) {
                o.put("ash", Math.round(s.ash * 10000) / 10000.0);
                o.put("asv", s.asv);
            }
            if (!Double.isNaN(s.age)) {
                o.put("pag", s.age);
                o.put("pagT", s.ageT);
            }
        }
        if (age > 0) {
            o.put("pa", age);
        }
        if (!Double.isNaN(restHr)) {
            o.put("rhr", Math.round(restHr * 10) / 10.0);
        }
        return o;
    }

    /** The filter's state at the end of a stored history (from the last smoothed entry). */
    public static State stateOf(JSONArray hist) {
        State s = new State();
        for (int i = hist.length() - 1; i >= 0; i--) {
            JSONObject m = hist.optJSONObject(i);
            if (m != null && m.has("lean") && m.optInt("v") >= VERSION) {
                s.lean = m.optDouble("lean");
                s.var = m.optDouble("var", R);
                s.w = m.optDouble("w");
                s.t = m.optLong("t");
                s.ash = m.optDouble("ash", Double.NaN);
                s.asv = m.optDouble("asv", RA);
                s.age = m.optDouble("pag", Double.NaN);
                s.ageT = m.optLong("pagT", s.t);
                break;
            }
        }
        return s;
    }

    /** True when some measurement is from an older model (or sex / age / height changed): rebuild it. */
    public static boolean stale(JSONArray hist, boolean male, int age, int heightCm) {
        for (int i = 0; i < hist.length(); i++) {
            JSONObject m = hist.optJSONObject(i);
            if (m != null && m.has("z20") && (m.optInt("v") < VERSION || m.optInt("pa", age) != age
                    || m.optInt("hc", heightCm) != heightCm || m.optBoolean("male", male) != male)) {
                return true;
            }
        }
        return false;
    }

    /** Every measurement recomputed from its raw impedances, in order, through one filter. */
    public static JSONArray rebuild(JSONArray hist, boolean male, int age, int heightCm) {
        JSONArray out = new JSONArray();
        State s = new State();
        for (int i = 0; i < hist.length(); i++) {
            JSONObject m = hist.optJSONObject(i);
            if (m == null) {
                continue;
            }
            try {
                JSONObject o = m.has("z20")
                        ? entry(reading(m), male, age, heightCm, m.optLong("t"), s, m.optDouble("rhr", Double.NaN))
                        : m;
                if (o != m && m.has("n")) {
                    o.put("n", m.optInt("n"));
                }
                mark(o, male, heightCm);
                out.put(o);
            } catch (Throwable t) {
                out.put(m);
            }
        }
        return out;
    }

    /** Remembers what the entry was computed for. */
    static void mark(JSONObject o, boolean male, int heightCm) throws org.json.JSONException {
        o.put("male", male);
        o.put("hc", heightCm);
    }
}
