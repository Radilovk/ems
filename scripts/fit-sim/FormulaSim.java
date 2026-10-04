package com.isaigu.gymapp.ai;

/** Offline checks of ParamFormula: depth from fat, variety by training, pause from the fatigue model, 2nd impulse. */
public final class FormulaSim {
    static int fails;

    public static void main(String[] a) {
        boolean show = a.length > 0;
        // 1. standard: a man, MID, tone, after adaptation, variant "Strength" = the classic 85 Hz 4 / 4
        ParamFormula.In m = in(AiModel.Sex.MALE, 35, 180, 80.0, 18.0, AiModel.Fitness.MID, AiModel.Goal.TONE, 3);
        ParamFormula.Out o = ParamFormula.compute(m);
        dump("man mid tone #4", o, show);
        eq("classic hz", 85, o.v[0][ParamFormula.HZ]);
        eq("classic on", 4, o.v[0][ParamFormula.ON]);
        eq("classic off (model)", 4, o.v[0][ParamFormula.OFF]);
        eq("norm fat → 350 µs", 350, o.v[0][ParamFormula.W]);
        eq("tone: no 2nd impulse", 0, o.v[0][ParamFormula.AP]);
        // 2. variety: the next training is another variant
        m.sessions = 4;
        ParamFormula.Out o2 = ParamFormula.compute(m);
        dump("man mid tone #5", o2, show);
        ok("next training differs", o2.v[0][ParamFormula.HZ] != o.v[0][ParamFormula.HZ]);
        // 3. more fat → deeper; scale wins over BMI
        m.fatPct = 30.0;
        eq("fat 30 → 398 µs", 398, ParamFormula.compute(m).v[0][ParamFormula.W]);
        m.fatPct = null;
        ok("BMI estimate used", !Double.isNaN(ParamFormula.compute(m).fatPct));
        // 4. adaptation: lighter → longer pause than the classic
        ParamFormula.In n = in(AiModel.Sex.FEMALE, 40, 165, 70.0, null, AiModel.Fitness.MID, AiModel.Goal.FAT, 0);
        ParamFormula.Out ad = ParamFormula.compute(n);
        dump("woman fat #1", ad, show);
        eq("adaptation variant", -1, ad.variant);
        ok("adaptation pause > 4", ad.v[0][ParamFormula.OFF] > 4);
        eq("fat: 2nd impulse in main", 1, ad.v[0][ParamFormula.AP]);
        eq("muscle never 2nd impulse", 0, ad.v[1][ParamFormula.AP]);
        // 5. low fitness, 65: short impulses, shallower, longer pause
        ParamFormula.In l = in(AiModel.Sex.MALE, 65, 175, 90.0, null, AiModel.Fitness.LOW, AiModel.Goal.TONE, 9);
        ParamFormula.Out lo = ParamFormula.compute(l);
        dump("man 65 low #10", lo, show);
        ok("low: on ≤ 4", lo.v[0][ParamFormula.ON] <= 4);
        ok("low: pause ≥ on", lo.v[0][ParamFormula.OFF] >= lo.v[0][ParamFormula.ON]);
        // 6. drain: never a 2nd impulse
        ParamFormula.In d = in(AiModel.Sex.FEMALE, 50, 160, 75.0, null, AiModel.Fitness.MID, AiModel.Goal.DRAIN, 5);
        ParamFormula.Out dr = ParamFormula.compute(d);
        for (int k = 0; k < 4; k++) {
            eq("drain: no 2nd impulse " + k, 0, dr.v[k][ParamFormula.AP]);
        }
        // 7. every profile × training: within the device limits, the fatigue limit respected
        for (AiModel.Goal g : AiModel.Goal.values()) {
            for (AiModel.Fitness f : AiModel.Fitness.values()) {
                for (int s = 0; s < 12; s++) {
                    ParamFormula.Out x = ParamFormula.compute(in(AiModel.Sex.FEMALE, 30, 170, 95.0, null, f, g, s));
                    for (int k = 0; k < 4; k++) {
                        int[] r = x.v[k];
                        ok(g + " " + f + " " + s + " mode " + k + " ranges", r[0] >= 1 && r[0] <= 120 && r[1] >= 50
                                && r[1] <= 400 && r[2] > 0 && r[3] >= 1 && r[3] <= 25 && (r[4] == 0 || r[6] > 0));
                    }
                }
            }
        }
        System.out.println(fails == 0 ? "FormulaSim: OK" : "FormulaSim: " + fails + " FAILED");
        if (fails > 0) {
            System.exit(1);
        }
    }

    static ParamFormula.In in(AiModel.Sex sex, int age, int h, Double kg, Double fat, AiModel.Fitness f,
            AiModel.Goal g, int sessions) {
        ParamFormula.In i = new ParamFormula.In();
        i.sex = sex;
        i.age = age;
        i.heightCm = h;
        i.weightKg = kg;
        i.fatPct = fat;
        i.fitness = f;
        i.goal = g;
        i.sessions = sessions;
        return i;
    }

    static void dump(String name, ParamFormula.Out o, boolean show) {
        if (!show) {
            return;
        }
        System.out.println("== " + name + " · " + o.variantBg);
        for (int k = 0; k < 4; k++) {
            System.out.println("   " + ParamFormula.modeName(k, true) + ": " + ParamFormula.line(o.v[k], true));
        }
        for (String w : o.whyBg) {
            System.out.println("   - " + w);
        }
    }

    static void eq(String what, int want, int got) {
        if (want != got) {
            fails++;
            System.out.println("FAIL " + what + ": want " + want + ", got " + got);
        }
    }

    static void ok(String what, boolean b) {
        if (!b) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }
}
