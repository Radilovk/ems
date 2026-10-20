package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;

/**
 * Recommended impulses for the manual mode's four modes (Основен · Мускули · Кардио · Масаж) from the client's
 * profile and the body-composition scale — pure Java (owner, 1.1.458): frequency, depth (pulse width), impulse /
 * pause and the double impulse, <b>never strength</b>. The main strength, the channels and their spread stay what
 * the person feels at the moment; nothing here reads or writes them. The trainer applies a mode's advice with one
 * tap in ⚙ (dialog/ParamAdvice); nothing changes by itself (1.1.323). Every result is inside ai/SafeLimits.
 *
 * <p>Base values = the owner's "Main" (docs/xems-program-fit.md 1.1.334): Основен 40 Hz 4:4 350 µs + 7 Hz,
 * Мускули 80 Hz 5:4 350 µs, Кардио 7 Hz 15:1 350 µs, Масаж 120 Hz 1:1 150 µs. The profile moves them:
 * fitness → impulse : pause (Auto §3.2: LOW 4:6, MID 4:4, HIGH 6:4); first trainings, &lt; 72 h since the last one,
 * 60+ and the scale's readiness → a longer pause (rest, not less current); fat on the scale → depth (a wider pulse
 * reaches through fat at a tolerable current, physiology §5); little muscle → a lower strength frequency.
 */
public final class PulseAdvice {
    public static final int MAIN = 0, MUSCLE = 1, CARDIO = 2, MASSAGE = 3, MODES = 4;

    private PulseAdvice() {}

    /** What the advice is computed from; unknown values stay at their defaults. */
    public static final class Input {
        public boolean female;
        /** −1 = not known. */
        public int age = -1;
        public double weightKg = -1;
        public int heightCm;
        public AiModel.Fitness fitness;
        public AiModel.Goal goal;
        /** Finished trainings of the client (any mode); −1 = not known. */
        public int sessions = -1;
        /** Hours since the last training; −1 = none / not known. */
        public double hoursSinceLast = -1;
        /** Body fat % of a fresh weigh-in; NaN = none. */
        public double fatPct = Double.NaN;
        public boolean muscleLow;
        public boolean fatObese;
        /** Today's scale readiness (1 / 0.85 / 0.7). */
        public double readiness = 1.0;
        public boolean measured;
        public boolean sensitive;

        double bmi() {
            return weightKg > 0 && heightCm >= 100 ? weightKg / Math.pow(heightCm / 100.0, 2) : -1;
        }
    }

    /** One mode's recommended impulse (no strength). */
    public static final class Rec {
        public final int mode;
        public int hz;
        public int pw;
        public int on;
        public int off;
        /** Double impulse (Основен, Кардио, Масаж; never Мускули) and its frequency. */
        public boolean ap;
        public int phz;
        public final List<String> whyBg = new ArrayList<String>();
        public final List<String> whyEn = new ArrayList<String>();

        Rec(int mode) {
            this.mode = mode;
        }

        void why(String bg, String en) {
            whyBg.add(bg);
            whyEn.add(en);
        }

        /** "85 Hz · 350 µs · 4 : 4 s · 2-ри 7 Hz" */
        public String line(boolean bg) {
            StringBuilder b = new StringBuilder();
            b.append(hz).append(" Hz · ").append(pw).append(" µs · ").append(on).append(" : ").append(off).append(" s");
            if (ap) {
                b.append(bg ? " · 2-ри " : " · 2nd ").append(phz).append(" Hz");
            }
            return b.toString();
        }
    }

    public static Rec[] all(Input in) {
        Rec[] out = new Rec[MODES];
        for (int k = 0; k < MODES; k++) {
            out[k] = of(in, k);
        }
        return out;
    }

    public static Rec of(Input in, int mode) {
        if (in == null) {
            in = new Input();
        }
        Rec r = new Rec(mode);
        switch (mode) {
            case MUSCLE:
                muscle(in, r);
                break;
            case CARDIO:
                cardio(in, r);
                break;
            case MASSAGE:
                massage(in, r);
                break;
            default:
                main(in, r);
                break;
        }
        safe(in, r);
        return r;
    }

    // ------------------------------------------------------------------ the modes

    /** Основен — the everyday WB-EMS work: a moderate fused impulse with a light twitch in the pause. */
    static void main(Input in, Rec r) {
        r.hz = 40;
        r.ap = true;
        r.phz = 7;
        if (in.goal == AiModel.Goal.TONE) {
            r.hz = 50;
            r.why("Цел тонус: 50 Hz — по-плътно свиване", "Goal tone: 50 Hz — a firmer contraction");
        } else if (in.goal == AiModel.Goal.FAT || in.fatObese) {
            r.why("Отслабване: 40 Hz + втори импулс 7 Hz в паузата (кръвоток, разход)",
                    "Fat loss: 40 Hz + a 7 Hz second impulse in the pause (blood flow, burn)");
        } else if (passiveGoal(in.goal)) {
            r.hz = 30;
            r.why("Цел " + goalBg(in.goal) + ": по-меко — 30 Hz", "Goal " + goalEn(in.goal) + ": gentler — 30 Hz");
        }
        rhythm(in, r, 4);
        depth(in, r, 350);
        rest(in, r);
    }

    /** Мускули (тонус / сила) — a strong fused impulse, a plain pause (no second impulse). */
    static void muscle(Input in, Rec r) {
        r.hz = 80;
        r.ap = false;
        if (in.muscleLow) {
            r.hz = 70;
            r.why("Кантарът: малко мускули — 70 Hz, по-малко умора", "Scale: little muscle — 70 Hz, less fatigue");
        } else if (in.fitness == AiModel.Fitness.HIGH && in.age >= 0 && in.age < 50 && in.goal == AiModel.Goal.TONE) {
            r.hz = 85;
            r.why("Добра форма + тонус: 85 Hz", "Fit + tone: 85 Hz");
        } else if (in.fitness == AiModel.Fitness.LOW) {
            r.hz = 70;
            r.why("Начинаещ: 70 Hz", "Beginner: 70 Hz");
        }
        rhythm(in, r, 5);
        depth(in, r, 350);
        rest(in, r);
    }

    /** Кардио — single twitches almost without a pause: work for the heart and the metabolism, little fatigue. */
    static void cardio(Input in, Rec r) {
        r.hz = 7;
        r.on = 15;
        r.off = 1;
        r.ap = false;
        if (in.fitness == AiModel.Fitness.HIGH && !(in.age >= 60)) {
            r.hz = 9;
            r.why("Добра форма: 9 Hz — по-бързо темпо", "Fit: 9 Hz — a faster tempo");
        } else if (in.fitness == AiModel.Fitness.LOW || in.age >= 60) {
            r.hz = 5;
            r.on = 10;
            r.off = 2;
            r.why(in.age >= 60 ? "60+: 5 Hz, 10 : 2 s" : "Начинаещ: 5 Hz, 10 : 2 s",
                    in.age >= 60 ? "60+: 5 Hz, 10 : 2 s" : "Beginner: 5 Hz, 10 : 2 s");
        }
        if (in.readiness < 0.99) {
            r.off += 1;
            r.why("Кантарът: не е възстановен — +1 s пауза", "Scale: not recovered — +1 s pause");
        }
        depth(in, r, 350);
    }

    /** Масаж — the owner's tingling 120 Hz · 1 : 1 · 150 µs; lymph drainage for the drain goal. */
    static void massage(Input in, Rec r) {
        r.ap = false;
        if (in.goal == AiModel.Goal.DRAIN) {
            r.hz = 1;
            r.pw = 300;
            r.on = 3;
            r.off = 5;
            r.why("Цел дренаж: 1 Hz, 3 : 5 s — лимфен дренаж", "Goal drainage: 1 Hz, 3 : 5 s — lymph drainage");
            return;
        }
        r.hz = 120;
        r.pw = 150;
        r.on = 1;
        r.off = 1;
        if (in.age >= 60) {
            r.hz = SafeLimits.HZ_MAX_60;
            r.why("60+: най-много " + SafeLimits.HZ_MAX_60 + " Hz", "60+: at most " + SafeLimits.HZ_MAX_60 + " Hz");
        }
        if (in.sensitive) {
            r.pw = 100;
            r.why("Чувствителен към тока: 100 µs", "Sensitive to current: 100 µs");
        } else if (fatHigh(in)) {
            r.pw = 200;
            r.why("Кантарът: мазнини " + Math.round(in.fatPct) + " % — 200 µs стига по-дълбоко",
                    "Scale: fat " + Math.round(in.fatPct) + " % — 200 µs reaches deeper");
        }
    }

    // ------------------------------------------------------------------ the profile's moves

    /** Impulse : pause of fused work by fitness (Auto §3.2); {@code on} = the mode's base impulse. */
    static void rhythm(Input in, Rec r, int on) {
        r.on = on;
        r.off = 4;
        if (in.fitness == AiModel.Fitness.LOW) {
            r.on = 4;
            r.off = 6;
            r.why("Начинаещ: 4 : 6 s", "Beginner: 4 : 6 s");
        } else if (in.fitness == AiModel.Fitness.HIGH) {
            r.on = 6;
            r.off = 4;
            r.why("Добра форма: 6 : 4 s", "Fit: 6 : 4 s");
        }
    }

    /** Depth from the scale's fat (wider through fat, narrower on a lean body) or the sensitive skin. */
    static void depth(Input in, Rec r, int base) {
        r.pw = base;
        if (in.sensitive) {
            r.pw = 300;
            r.why("Чувствителен към тока: 300 µs", "Sensitive to current: 300 µs");
        } else if (fatHigh(in)) {
            r.pw = 400;
            r.why("Кантарът: мазнини " + Math.round(in.fatPct) + " % — 400 µs стига през мазнината",
                    "Scale: fat " + Math.round(in.fatPct) + " % — 400 µs reaches through the fat");
        } else if (fatLow(in)) {
            r.pw = 300;
            r.why("Кантарът: малко мазнини (" + Math.round(in.fatPct) + " %) — 300 µs стига",
                    "Scale: little fat (" + Math.round(in.fatPct) + " %) — 300 µs is enough");
        }
    }

    /** Rest in the pause, not less current: first trainings, a recent one, 60+, the scale's readiness. */
    static void rest(Input in, Rec r) {
        if (in.sessions >= 0 && in.sessions < 3) {
            r.off += 2;
            r.ap = false;
            r.why("Първи тренировки: +2 s пауза, без втори импулс", "First trainings: +2 s pause, no second impulse");
        } else if (in.hoursSinceLast >= 0 && in.hoursSinceLast < 72) {
            r.off += 1;
            r.why("Под 72 ч от последната: +1 s пауза", "Under 72 h since the last: +1 s pause");
        }
        if (in.age >= 60) {
            r.off += 2;
            r.why("60+: +2 s пауза", "60+: +2 s pause");
        }
        if (in.readiness < 0.99) {
            int add = in.readiness < 0.8 ? 2 : 1;
            r.off += add;
            r.ap = false;
            r.why("Кантарът: не е възстановен — +" + add + " s пауза, без втори импулс",
                    "Scale: not recovered — +" + add + " s pause, no second impulse");
        } else if (in.muscleLow && r.mode == MAIN) {
            r.off += 1;
            r.why("Кантарът: малко мускули — +1 s пауза", "Scale: little muscle — +1 s pause");
        }
    }

    /** The absolute limits (ai/SafeLimits) over the advice; the second impulse counted at the main strength. */
    static void safe(Input in, Rec r) {
        StringBuilder bg = new StringBuilder();
        StringBuilder en = new StringBuilder();
        int[] v = SafeLimits.apply(new int[] {r.hz, r.pw, r.on, r.off, r.ap ? 1 : 0, r.phz, 100, 0}, in.age, bg, en);
        r.hz = v[SafeLimits.HZ];
        r.pw = v[SafeLimits.PW];
        r.on = v[SafeLimits.ON];
        r.off = v[SafeLimits.OFF];
        r.ap = v[SafeLimits.AP] == 1 && r.mode != MUSCLE;
        r.phz = r.ap ? v[SafeLimits.PHZ] : 0;
        if (bg.length() > 0) {
            r.why(bg.toString(), en.toString());
        }
    }

    // ------------------------------------------------------------------ helpers

    /** High fat for its sex (≥ 25 % men, ≥ 33 % women: the upper edge of the healthy range). */
    static boolean fatHigh(Input in) {
        return !Double.isNaN(in.fatPct) && in.fatPct >= (in.female ? 33 : 25);
    }

    /** Lean (≤ 12 % men, ≤ 20 % women). */
    static boolean fatLow(Input in) {
        return !Double.isNaN(in.fatPct) && in.fatPct <= (in.female ? 20 : 12);
    }

    static boolean passiveGoal(AiModel.Goal g) {
        return g == AiModel.Goal.MASSAGE || g == AiModel.Goal.DRAIN || g == AiModel.Goal.CELLULITE;
    }

    static String goalBg(AiModel.Goal g) {
        return g == AiModel.Goal.MASSAGE ? "масаж" : g == AiModel.Goal.DRAIN ? "дренаж" : "антицелулит";
    }

    static String goalEn(AiModel.Goal g) {
        return g == AiModel.Goal.MASSAGE ? "massage" : g == AiModel.Goal.DRAIN ? "drainage" : "anti-cellulite";
    }
}
