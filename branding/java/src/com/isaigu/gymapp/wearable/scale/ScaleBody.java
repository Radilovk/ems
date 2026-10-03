package com.isaigu.gymapp.wearable.scale;

/**
 * Body composition from one scale measurement — iCOMON's WLA25, the algorithm Fitdays uses for these scales, so
 * the numbers match the Fitdays app. Ported from sacoma-lib (MIT, ynsgnr/sacoma-lib, {@code wla25.py}: the
 * binary's float32 steps and half-up rounding) and Fitman (MIT, DaveNijhuis/Fitman, {@code formulas.py}: the
 * chain from the scale's own body fat when the trunk impedance is not usable). Pure Java.
 *
 * <p>Body fat: the scale's own value when it sent one (generation A), else WLA25's regression over the ten
 * impedances (generation B, needs the trunk). Everything else follows from fat-free mass.
 */
public final class ScaleBody {
    /** Whole body. */
    public double weightKg, bmi, fatPct, fatKg, leanKg, waterPct, musclePct, muscleKg, skeletalPct, proteinPct,
            boneKg, subcutPct;
    public int visceral, bmr, bodyAge;
    /** By segment index (ScaleProtocol.TRUNK…RIGHT_LEG), kg. */
    public final double[] segFatKg = new double[5];
    public final double[] segMuscleKg = new double[5];
    /** The fat % came from the scale itself (A) rather than this regression (B). */
    public boolean fatFromScale;

    private ScaleBody() {}

    static float f32(double x) {
        return (float) x;
    }

    /** ICAlgCommon::ceil — one decimal, half up, in float32. */
    static double ceil1(double x) {
        long ip = (long) x;
        float fr = f32(f32(x) % 1.0f);
        fr = f32(fr * 10.0f);
        float fr2 = f32(fr % 1.0f);
        float up = f32(fr + 1.0f);
        if (fr2 <= 0.5f) {
            up = fr;
        }
        up = f32(f32((long) up) / 10.0f);
        if (up == 0.0f && (x - ip) > 0.99) {
            up = 1.0f;
        }
        return f32(up + f32(ip));
    }

    static float stdWeight(int height, boolean male) {
        float bmi = male ? 22.0f : 21.0f;      // adults; the under-18 height tree is not ported (score only)
        float h = f32(f32(height) / 100.0f);
        return f32(f32(h * h) * bmi);
    }

    static double r2(double x) {
        return Math.round(x * 100) / 100.0;
    }

    static final double[] IMP_MIN = {1, 100, 100, 100, 100, 1, 100, 100, 100, 100};

    /**
     * The body for this measurement and client; null when WLA25's own gates refuse it (height 100–220 cm,
     * weight 20–200 kg, an impedance out of range) or there is neither the scale's fat % nor a trunk.
     */
    public static ScaleBody of(ScaleProtocol.Reading r, boolean male, int age, int heightCm) {
        if (r == null || !r.result || heightCm < 100 || heightCm > 220 || r.weightKg < 20 || r.weightKg > 200) {
            return null;
        }
        double w = r.weightKg;
        double h = heightCm;
        double[] z = r.z20, y = r.z100;
        for (int i = 1; i < 5; i++) {
            if (!(z[i] >= 100) || !(y[i] >= 100)) {
                return null;
            }
        }
        ScaleBody b = new ScaleBody();
        b.weightKg = w;
        b.bmi = ceil1(w * 10000.0 / (heightCm * heightCm));
        double trunk20 = Double.NaN, trunk100 = Double.NaN;
        if (r.hasTrunk() && z[0] >= 1 && y[0] >= 1) {
            trunk20 = z[0] * 0.826;
            trunk100 = y[0] <= z[0] ? y[0] * 0.826 : trunk20 - 3.0;
            if (trunk20 < 0 || trunk100 < 0) {
                trunk20 = trunk100 = Double.NaN;
            }
        }
        double fatKg;
        double fatPct;
        if (!Double.isNaN(r.scaleFatPct) && r.scaleFatPct > 0) {
            b.fatFromScale = true;
            fatPct = ceil1(r.scaleFatPct);
            fatKg = ceil1(w * fatPct / 100.0);
        } else if (!Double.isNaN(trunk20)) {
            // the core WLA25 body-fat regression: imps 0..9 = trunk, LA, RA, LL, RL at 20 kHz, then 100 kHz
            double fat = y[3] * 0.07 + y[4] * 0.153 + trunk100 * 0.439 + y[1] * 0.019 + y[2] * 0.07 + h * 0.164
                    + w * -0.138 + b.bmi * 2.657 + z[2] * -0.053 + z[1] * -0.000491 + trunk20 * -0.03
                    + z[4] * -0.127 + z[3] * -0.052 + -88.052;
            double pct = fat / w * 100.0;
            if (pct < 3.0) {
                fat = w * 0.03;
                pct = 3.0;
            } else if (pct > 60.0) {
                fat = w * 0.6;
                pct = 60.0;
            }
            fatKg = ceil1(fat);
            fatPct = ceil1(pct);
        } else {
            return null;
        }
        return chain(b, z, y, h, fatKg, fatPct, trunk20, trunk100, age, male);
    }

    /**
     * The same body with another fat % (our sex-aware model or its smoothed value): segments, water, muscle and the
     * rest follow from that fat exactly as WLA25 does; null when {@link #of} refuses the reading.
     */
    public static ScaleBody withFat(ScaleProtocol.Reading r, boolean male, int age, int heightCm, double fatPct) {
        ScaleBody v = of(r, male, age, heightCm);
        if (v == null || Double.isNaN(fatPct)) {
            return v;
        }
        double[] z = r.z20, y = r.z100;
        double trunk20 = Double.NaN, trunk100 = Double.NaN;
        if (r.hasTrunk() && z[0] >= 1 && y[0] >= 1) {
            trunk20 = z[0] * 0.826;
            trunk100 = y[0] <= z[0] ? y[0] * 0.826 : trunk20 - 3.0;
            if (trunk20 < 0 || trunk100 < 0) {
                trunk20 = trunk100 = Double.NaN;
            }
        }
        double pct = ceil1(Math.max(3, Math.min(60, fatPct)));
        return chain(v, z, y, heightCm, ceil1(v.weightKg * pct / 100.0), pct, trunk20, trunk100, age, male);
    }

    static ScaleBody chain(ScaleBody b, double[] z, double[] y, double h, double fatKg, double fatPct,
            double trunk20, double trunk100, int age, boolean male) {
        double w = b.weightKg;
        double lean = w - fatKg;
        b.fatPct = fatPct;
        b.fatKg = fatKg;
        b.leanKg = r2(lean);

        // limbs: each from its own 20 / 100 kHz readings, then the vendor's left/right reconciliation and floors
        double la = y[1] * 0.007476 + (fatKg * 0.081201 - z[1] * 0.005752) - 0.662152;
        double ra = y[2] * 0.007476 + (fatKg * 0.081201 - z[2] * 0.005752) - 0.662152;
        double ll = y[3] * 0.008645 + (fatKg * 0.135438 - z[3] * 0.00801) + 0.492479;
        double rl = y[4] * 0.008645 + (fatKg * 0.135438 - z[4] * 0.00801) + 0.492479;
        if (Math.abs(ra - la) > 0.3) {
            if (ra <= la) {
                double t = (z[2] + y[2]) / 20213.0;
                ra = (z[2] <= z[1] ? t : -t) + la;
            } else {
                double t = (z[1] + y[1]) / 20213.0;
                la = (z[1] <= z[2] ? t : -t) + ra;
            }
        }
        if (Math.abs(rl - ll) > 0.5) {
            if (rl <= ll) {
                double t = (z[4] + y[4]) / 20213.0;
                rl = (z[4] <= z[3] ? t : -t) + ll;
            } else {
                double t = (z[3] + y[3]) / 20213.0;
                ll = (z[3] <= z[4] ? t : -t) + rl;
            }
        }
        if (ra < 0.1) ra = (z[2] + y[2]) / 20213.0 + 0.1;
        if (la < 0.1) la = (z[1] + y[1]) / 20113.0 + 0.1;
        if (rl < 0.1) rl = (z[4] + y[4]) / 20213.0 + 0.1;
        if (ll < 0.1) ll = (z[3] + y[3]) / 20113.0 + 0.1;
        double mra = z[2] * 0.002847 + lean * 0.058707 - y[2] * 0.005857 + 0.561911;
        double mla = z[1] * 0.002847 + lean * 0.058707 - y[1] * 0.005857 + 0.561911;
        double mrl = y[4] * 0.008157 + (lean * 0.176554 - z[4] * 0.007381) - 0.688932;
        double mll = y[3] * 0.008157 + (lean * 0.176554 - z[3] * 0.007381) - 0.688932;
        if (mra < 0.2) mra = (z[2] + y[2]) / 20213.0 + 0.2;
        if (mla < 0.2) mla = (z[1] + y[1]) / 20113.0 + 0.2;
        if (mrl < 0.2) mrl = (z[4] + y[4]) / 20213.0 + 0.2;
        if (mll < 0.2) mll = (z[3] + y[3]) / 20113.0 + 0.2;
        double tf, tm;
        if (!Double.isNaN(trunk20)) {
            tf = trunk20 * 0.068621 + fatKg * 0.552545 + trunk100 * -0.131612 + 0.322704;
            if (tf < 0.1) tf = (trunk100 + trunk20) / 20203.0 + 0.1;
            tm = trunk20 * 0.005246 + lean * 0.440922 + trunk100 * -0.010469 - 0.275461;
            if (tm < 0.7) tm = (trunk100 + trunk20) / 20203.0 + 0.7;
        } else {
            // the scale's trunk bytes are not an impedance (A): the regression without its trunk terms
            tf = Math.max(0.1, Math.min(fatKg, fatKg * 0.552545 + 0.322704));
            tm = Math.max(0.7, Math.min(lean, lean * 0.440922 - 0.275461));
        }
        b.segFatKg[ScaleProtocol.TRUNK] = tf;
        b.segFatKg[ScaleProtocol.LEFT_ARM] = la;
        b.segFatKg[ScaleProtocol.RIGHT_ARM] = ra;
        b.segFatKg[ScaleProtocol.LEFT_LEG] = ll;
        b.segFatKg[ScaleProtocol.RIGHT_LEG] = rl;
        b.segMuscleKg[ScaleProtocol.TRUNK] = tm;
        b.segMuscleKg[ScaleProtocol.LEFT_ARM] = mla;
        b.segMuscleKg[ScaleProtocol.RIGHT_ARM] = mra;
        b.segMuscleKg[ScaleProtocol.LEFT_LEG] = mll;
        b.segMuscleKg[ScaleProtocol.RIGHT_LEG] = mrl;

        // whole body, from fat-free mass
        int vis = (int) (fatKg * 0.502 + lean * -0.029 + -0.477);
        b.visceral = Math.max(1, Math.min(20, vis));
        double water = lean * 0.733;
        b.subcutPct = ceil1((fatPct * -0.0002 + 0.72) * fatPct);
        b.musclePct = ceil1((water + lean * 0.2) / w * 100.0);
        b.muscleKg = ceil1(lean * 0.933);
        b.boneKg = ceil1(lean * 0.067);
        b.waterPct = ceil1(water / w * 100.0);
        b.proteinPct = ceil1(lean * 0.2 / w * 100.0);
        b.skeletalPct = ceil1((water * 0.834 - 2.627) / w * 100.0);
        b.bmr = (int) (lean * 21.6 + 370.0);
        b.bodyAge = bodyAge(age, fatPct, male);
        return b;
    }

    static int bodyAge(int age, double bf, boolean male) {
        if (age < 10) {
            return age;
        }
        int d;
        if (male) {
            d = bf < 14 ? -3 : bf < 19 ? -2 : bf < 24 ? -1 : bf < 27 ? 1 : bf < 30 ? 2 : bf < 33 ? 3 : bf < 36 ? 4 : 5;
        } else {
            d = bf < 24 ? -3 : bf < 28 ? -2 : bf < 32 ? -1 : bf < 35 ? 1 : bf < 38 ? 2 : bf < 42 ? 3
                    : bf < 45 ? 4 : bf < 46 ? 0 : 5;
        }
        return age + d;
    }

    /** Skeletal muscle in kg. */
    public double skeletalKg() {
        return weightKg * skeletalPct / 100.0;
    }
}
