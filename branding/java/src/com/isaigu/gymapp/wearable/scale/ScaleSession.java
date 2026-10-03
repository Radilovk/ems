package com.isaigu.gymapp.wearable.scale;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * One measuring session = one time on the scale. The client steps on once and stays; every sweep the scale sends
 * while they stand (or a re-measure the tablet hears) is added, and the session's reading is the merge of the good
 * ones — the bad ones out, the rest averaged (mean of two, median of three or more). Nobody is asked to step off
 * (owner, 1.1.301-ai: "why does it make me step off?"). A sweep the scale sends again unchanged (same impedances —
 * some scales repeat the last result) is not a new reading. Pure Java.
 *
 * <p>Contact quality per sweep (hands · feet · trunk) is only shown: an arm or leg far off its pair, a segment out of
 * the body's range, no dispersion between 20 and 100 kHz.
 */
public final class ScaleSession {
    /** More sweeps than this in one standing are not kept (the merge is steady long before). */
    public static final int MAX = 6;
    /** {@link #add}: a new sweep (the reading changed) / the same sweep again (nothing new). */
    public static final int NEW = 1, REPEAT = 0;

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
    final List<ScaleProtocol.Reading> steps = new ArrayList<ScaleProtocol.Reading>();
    final List<Quality> quals = new ArrayList<Quality>();

    public ScaleSession(boolean male, int age, int heightCm) {
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

    int good() {
        int n = 0;
        for (Quality q : quals) {
            if (q.ok()) {
                n++;
            }
        }
        return n;
    }

    /** One sweep in: {@link #NEW} when it changes the reading, {@link #REPEAT} for the same sweep sent again. */
    public int add(ScaleProtocol.Reading r) {
        if (r == null) {
            return REPEAT;
        }
        for (ScaleProtocol.Reading o : steps) {
            if (same(o, r)) {
                return REPEAT;
            }
        }
        if (steps.size() >= MAX) {
            return REPEAT;
        }
        steps.add(r);
        quals.add(quality(r));
        return NEW;
    }

    /** The same sweep: every impedance equal (both missing counts as equal). Weight alone does not make it new. */
    public static boolean same(ScaleProtocol.Reading a, ScaleProtocol.Reading b) {
        boolean any = false;
        for (int i = 0; i < 5; i++) {
            if (!eq(a.z20[i], b.z20[i]) || !eq(a.z100[i], b.z100[i])) {
                return false;
            }
            any |= !Double.isNaN(a.z20[i]);
        }
        return any || Math.abs(a.weightKg - b.weightKg) < 0.05;
    }

    static boolean eq(double x, double y) {
        return Double.isNaN(x) ? Double.isNaN(y) : !Double.isNaN(y) && Math.abs(x - y) < 0.05;
    }

    /** The full sweeps in it (hands and feet on). */
    public int full() {
        return good();
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

    /** The last two good sweeps differ more than the body does (resistance > 3 % or fat > 2 points): say so. */
    public boolean spread() {
        List<ScaleProtocol.Reading> g = goodSteps();
        if (g.size() < 2) {
            return false;
        }
        ScaleProtocol.Reading a = g.get(g.size() - 2), b = g.get(g.size() - 1);
        double ra = ScaleModel.r50(a.z20, a.z100), rb = ScaleModel.r50(b.z20, b.z100);
        double fa = ScaleModel.fatPct(a, male, age, heightCm), fb = ScaleModel.fatPct(b, male, age, heightCm);
        return gap(ra, rb) > 3 || Math.abs(fa - fb) > 1.5;
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
        m.single = g.get(0).single;
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
}
