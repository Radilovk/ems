package com.isaigu.gymapp.wearable.scale;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * One measuring session: the scale takes one impedance sweep per step-on (~8–10 s after the weight settles), so
 * "several measurements" means several step-ons. The session decides by itself whether one more is worth it and
 * then merges them — the bad ones out, the rest averaged (median of three). Pure Java.
 *
 * <p>Another step is asked when: the contact was poor (hands or feet — an arm or leg far off its pair, a segment
 * out of the body's range, no dispersion between 20 and 100 kHz); it is the client's first full measurement (two
 * steps set the baseline); the reading is far (3 σ) from what this body was days ago; two steps disagree (whole-body
 * resistance > 3 % or fat > 2 points apart). At most {@link #MAX} steps; then the best ones count.
 */
public final class ScaleSession {
    public static final int MAX = 3;
    /** Why one more step: nothing (done), contact, first time, far from the history, two steps disagree. */
    public static final int NEED_NONE = 0, NEED_CONTACT = 1, NEED_BASELINE = 2, NEED_CONFIRM = 3, NEED_DISAGREE = 4;

    /** What one step-on's contact looks like. */
    public static final class Quality {
        public boolean arms = true, legs = true, trunk = true, full;
        /** Left / right difference of the 20 kHz impedance, % (arms, legs). */
        public double armGap = Double.NaN, legGap = Double.NaN;

        public boolean ok() {
            return full && arms && legs;
        }
    }

    static double gap(double a, double b) {
        return Math.abs(a - b) / Math.max(1e-9, (a + b) / 2) * 100;
    }

    static boolean seg(double z20, double z100) {
        return z20 >= 120 && z20 <= 1200 && z100 >= 100 && z100 < z20 && z100 / z20 >= 0.7 && z100 / z20 <= 0.98;
    }

    /** The contact of one reading: limbs in the body's range, with dispersion, left close to right (≤ 15 %). */
    public static Quality quality(ScaleProtocol.Reading r) {
        Quality q = new Quality();
        if (r == null || !r.result) {
            q.full = false;
            return q;
        }
        double[] z = r.z20, y = r.z100;
        q.full = !Double.isNaN(ScaleModel.r50(z, y));
        if (!q.full) {
            return q;
        }
        q.armGap = gap(z[ScaleProtocol.LEFT_ARM], z[ScaleProtocol.RIGHT_ARM]);
        q.legGap = gap(z[ScaleProtocol.LEFT_LEG], z[ScaleProtocol.RIGHT_LEG]);
        q.arms = seg(z[1], y[1]) && seg(z[2], y[2]) && q.armGap <= 15;
        q.legs = seg(z[3], y[3]) && seg(z[4], y[4]) && q.legGap <= 15;
        q.trunk = !r.hasTrunk() || (z[0] >= 5 && z[0] <= 100);
        return q;
    }

    final boolean male;
    final int age;
    final int heightCm;
    final JSONArray hist;
    final List<ScaleProtocol.Reading> steps = new ArrayList<ScaleProtocol.Reading>();
    final List<Quality> quals = new ArrayList<Quality>();
    /** Why the last step asked for another (NEED_*). */
    public int need = NEED_NONE;

    public ScaleSession(JSONArray hist, boolean male, int age, int heightCm) {
        this.hist = hist != null ? hist : new JSONArray();
        this.male = male;
        this.age = age;
        this.heightCm = heightCm;
    }

    public int count() {
        return steps.size();
    }

    public Quality lastQuality() {
        return quals.isEmpty() ? null : quals.get(quals.size() - 1);
    }

    boolean hasHistory() {
        for (int i = 0; i < hist.length(); i++) {
            JSONObject m = hist.optJSONObject(i);
            if (m != null && m.has("fat")) {
                return true;
            }
        }
        return false;
    }

    int good() {
        int n = 0;
        for (Quality q : quals) {
            if (q.ok()) {
                n++;
            }
        }
        return n;
    }

    /** One step-on's reading in; returns what is needed next (NEED_NONE = done, save {@link #merged()}). */
    public int add(ScaleProtocol.Reading r) {
        steps.add(r);
        Quality q = quality(r);
        quals.add(q);
        need = decide();
        return need;
    }

    int decide() {
        int n = steps.size();
        if (n >= MAX) {
            return NEED_NONE;
        }
        Quality q = quals.get(n - 1);
        if (!q.ok()) {
            return NEED_CONTACT;
        }
        List<ScaleProtocol.Reading> g = goodSteps();
        if (g.size() == 1) {
            if (!hasHistory()) {
                return NEED_BASELINE;
            }
            return far(g.get(0)) ? NEED_CONFIRM : NEED_NONE;
        }
        // two or more good: do the last two agree?
        ScaleProtocol.Reading a = g.get(g.size() - 2), b = g.get(g.size() - 1);
        return agree(a, b) ? NEED_NONE : NEED_DISAGREE;
    }

    List<ScaleProtocol.Reading> goodSteps() {
        List<ScaleProtocol.Reading> g = new ArrayList<ScaleProtocol.Reading>();
        for (int i = 0; i < steps.size(); i++) {
            if (quals.get(i).ok()) {
                g.add(steps.get(i));
            }
        }
        return g;
    }

    /** Two step-ons agree: whole-body resistance within 3 %, the model's fat within 2 points. */
    boolean agree(ScaleProtocol.Reading a, ScaleProtocol.Reading b) {
        double ra = ScaleModel.r50(a.z20, a.z100), rb = ScaleModel.r50(b.z20, b.z100);
        double fa = ScaleModel.fatPct(a, male, age, heightCm), fb = ScaleModel.fatPct(b, male, age, heightCm);
        return gap(ra, rb) <= 3 && Math.abs(fa - fb) <= 2;
    }

    /** This reading's lean is more than 3 σ from where the client's filter expects it. */
    boolean far(ScaleProtocol.Reading r) {
        ScaleModel.State s = ScaleModel.stateOf(hist);
        if (!s.on()) {
            return false;
        }
        double fr = ScaleModel.fatPct(r, male, age, heightCm);
        if (Double.isNaN(fr)) {
            return false;
        }
        double days = Math.max(0, (System.currentTimeMillis() - s.t) / 86400000.0);
        if (days > 60 || Math.abs(r.weightKg - s.w) > ScaleModel.jump(r.weightKg)) {
            return false;
        }
        double x = s.lean + (0.3 + 0.45 * Math.exp(-days / 3)) * (r.weightKg - s.w);
        double sd = Math.sqrt(Math.min(4 * ScaleModel.R, s.var + ScaleModel.Q * days) + ScaleModel.R);
        return Math.abs(r.weightKg * (1 - fr / 100) - x) > 3 * sd;
    }

    /**
     * The merged reading: the good steps (all, if none was good), per segment and frequency the mean of two or the
     * median of three; weight the mean; the scale's own fat the mean of those that sent one.
     */
    public ScaleProtocol.Reading merged() {
        List<ScaleProtocol.Reading> g = goodSteps();
        if (g.isEmpty()) {
            g = new ArrayList<ScaleProtocol.Reading>(steps);
        }
        if (g.isEmpty()) {
            return null;
        }
        if (g.size() == 1) {
            return g.get(0);
        }
        ScaleProtocol.Reading m = new ScaleProtocol.Reading();
        m.result = true;
        m.stable = true;
        double w = 0, sf = 0;
        int nsf = 0;
        for (ScaleProtocol.Reading r : g) {
            w += r.weightKg;
            if (!Double.isNaN(r.scaleFatPct)) {
                sf += r.scaleFatPct;
                nsf++;
            }
        }
        m.weightKg = Math.round(w / g.size() * 100) / 100.0;
        m.scaleFatPct = nsf > 0 ? sf / nsf : Double.NaN;
        for (int i = 0; i < 5; i++) {
            m.z20[i] = mid(g, i, true);
            m.z100[i] = mid(g, i, false);
        }
        return m;
    }

    static double mid(List<ScaleProtocol.Reading> g, int i, boolean low) {
        double[] v = new double[g.size()];
        int n = 0;
        for (ScaleProtocol.Reading r : g) {
            double x = low ? r.z20[i] : r.z100[i];
            if (!Double.isNaN(x)) {
                v[n++] = x;
            }
        }
        if (n == 0) {
            return Double.NaN;
        }
        v = Arrays.copyOf(v, n);
        Arrays.sort(v);
        return n % 2 == 1 ? v[n / 2] : (v[n / 2 - 1] + v[n / 2]) / 2;
    }

    /** How many step-ons are planned now (for "1 от 2"). */
    public int planned() {
        return need == NEED_NONE ? steps.size() : Math.min(MAX, steps.size() + 1);
    }
}
