package com.isaigu.gymapp.wearable;

import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;

/** Offline checks of ProgramFit: corrections on the saved base, hand changes as reference, save without corrections. */
public final class FitSim {
    static int fails;

    public static void main(String[] a) throws Exception {
        int[][] base = {{85, 350, 4, 4, 1200, 500, 500}, {90, 350, 6, 4, 1200, 500, 500},
                {30, 350, 8, 2, 1200, 500, 500}, {5, 300, 10, 2, 1200, 0, 0}};

        // 1. A low-fitness client on "Test": narrower impulse, longer pause in the tetanic programs.
        AiProfile low = profile(AiModel.Fitness.LOW, 35, AiModel.Goal.FAT);
        int[][] v = ProgramFit.personalize(base, low);
        eq("low: main width", 300, v[0][ProgramFit.W]);
        eq("low: main pause", 5, v[0][ProgramFit.OFF]);
        eq("low: cardio pause", 2, v[2][ProgramFit.OFF]);
        eq("fat: main work", 1500, v[0][ProgramFit.WORK]);
        eq("massage untouched width", 300, v[3][ProgramFit.W]);
        // The corrections are offsets: another base moves the result with it.
        int[][] base2 = copy(base);
        base2[0][ProgramFit.W] = 380;
        eq("low on base 380", 330, ProgramFit.personalize(base2, low)[0][ProgramFit.W]);
        // No profile / personalisation off → exactly the saved program.
        eq("off: main width", 350, ProgramFit.personalize(base, null)[0][ProgramFit.W]);

        // 2. The trainer sets the main width by hand → the offset moves muscle + cardio, not massage.
        TrainProgram row = program(v);
        ProgramFit.Fit f = fit(base, v, row);
        int[] before = ProgramFit.values(row.programDataBean);
        row.programDataBean.pulseWidth = 330;
        boolean[] ch = changed(before, row.programDataBean);
        ProgramFit.handChanged(f, row, 0, before, ch, true);
        eq("hand: main width stays", 330, row.programDataBean.pulseWidth);
        eq("hand: muscle width follows (-20)", 330, row.muscleTrainingProgramDataBean.pulseWidth);
        eq("hand: cardio width follows (-20)", 330, row.aerobicTrainingProgramDataBean.pulseWidth);
        eq("hand: massage width stays", 300, row.massageModeProgramDataBean.pulseWidth);

        // 3. A longer impulse keeps the impulse : pause ratio (pause 5 at 4 s → 8 at 6 s).
        before = ProgramFit.values(row.programDataBean);
        row.programDataBean.pulseContinue = 6;
        ProgramFit.handChanged(f, row, 0, before, changed(before, row.programDataBean), true);
        eq("ratio: pause follows impulse", 8, row.programDataBean.pulsePause);

        // 4. A pause set by hand is the reference: a new impulse no longer moves it.
        before = ProgramFit.values(row.programDataBean);
        row.programDataBean.pulsePause = 3;
        ProgramFit.handChanged(f, row, 0, before, changed(before, row.programDataBean), true);
        before = ProgramFit.values(row.programDataBean);
        row.programDataBean.pulseContinue = 8;
        ProgramFit.handChanged(f, row, 0, before, changed(before, row.programDataBean), true);
        eq("hand pause stays", 3, row.programDataBean.pulsePause);

        // 5. Personalisation off: nothing follows.
        TrainProgram r2 = program(v);
        ProgramFit.Fit f2 = fit(base, v, r2);
        before = ProgramFit.values(r2.programDataBean);
        r2.programDataBean.pulseContinue = 8;
        r2.programDataBean.pulseWidth = 330;
        ProgramFit.handChanged(f2, r2, 0, before, changed(before, r2.programDataBean), false);
        eq("off: pause stays", 5, r2.programDataBean.pulsePause);
        eq("off: muscle width stays", 300, r2.muscleTrainingProgramDataBean.pulseWidth);

        // 6. Saving: corrections out, hand-set values as they are.
        ProgramFit.strip(f, row);
        eq("save: hand main width", 330, row.programDataBean.pulseWidth);
        eq("save: hand main pause", 3, row.programDataBean.pulsePause);
        eq("save: hand main impulse", 8, row.programDataBean.pulseContinue);
        eq("save: main work back to base", 1200, row.programDataBean.workLength);
        eq("save: cardio pause back to base", 2, row.aerobicTrainingProgramDataBean.pulsePause);
        eq("save: muscle pause back to base", 4, row.muscleTrainingProgramDataBean.pulsePause);

        // 4. The formula moves, the trainer's saved difference stays (docs/xems-param-formula.md, owner 1-a).
        int[] at = {85, 350, 4, 4, 0, 0, 0};                // the formula when the trainer saved
        ProgramDataBean sv = new ProgramDataBean();          // the trainer's saved: 70 Hz, 4/5 s, 2nd impulse on
        sv.hz = 70; sv.pulseWidth = 350; sv.pulseContinue = 4; sv.pulsePause = 5;
        sv.activePause = true; sv.pauseHz = 6; sv.pauseStrenthPercent = 40;
        ParamPlan.put(sv, 0, new int[] {100, 370, 3, 4, 0, 0, 0}, at);
        eq("offset: hz 100 − 15", 85, sv.hz);
        eq("offset: width follows", 370, sv.pulseWidth);
        eq("offset: pause +1", 5, sv.pulsePause);
        eq("offset: trainer's 2nd impulse kept", 1, sv.activePause ? 1 : 0);
        eq("offset: its Hz kept", 6, sv.pauseHz);
        ProgramDataBean ex = new ProgramDataBean();
        ParamPlan.put(ex, 1, new int[] {90, 360, 5, 6, 1, 6, 45}, null);
        eq("no saved: exactly the formula", 90, ex.hz);
        eq("muscle: never a 2nd impulse", 0, ex.activePause ? 1 : 0);
        System.out.println(fails == 0 ? "FitSim: all OK" : "FitSim: " + fails + " FAILED");
        if (fails > 0) {
            System.exit(1);
        }
    }

    static AiProfile profile(AiModel.Fitness fit, Integer age, AiModel.Goal goal) throws Exception {
        java.lang.reflect.Constructor<AiProfile> c = AiProfile.class.getDeclaredConstructor();
        c.setAccessible(true);
        AiProfile p = c.newInstance();
        p.fitness = fit;
        p.age = age;
        p.goal = goal;
        return p;
    }

    static int[][] copy(int[][] v) {
        int[][] o = new int[v.length][];
        for (int i = 0; i < v.length; i++) {
            o[i] = v[i].clone();
        }
        return o;
    }

    static TrainProgram program(int[][] v) {
        TrainProgram p = new TrainProgram(1L, "Test");
        p.programDataBean = new ProgramDataBean();
        p.muscleTrainingProgramDataBean = new ProgramDataBean();
        p.aerobicTrainingProgramDataBean = new ProgramDataBean();
        p.massageModeProgramDataBean = new ProgramDataBean();
        for (int k = 0; k < 4; k++) {
            for (int q = 0; q < ProgramFit.N; q++) {
                ProgramFit.set(ProgramFit.bean(p, k), q, v[k][q]);
            }
        }
        return p;
    }

    static ProgramFit.Fit fit(int[][] base, int[][] v, TrainProgram row) {
        ProgramFit.Fit f = new ProgramFit.Fit();
        f.hasBase = true;
        f.ref = row;
        for (int k = 0; k < 4; k++) {
            f.base[k] = base[k].clone();
            f.fit[k] = v[k].clone();
            f.last[k] = v[k].clone();
        }
        return f;
    }

    static boolean[] changed(int[] before, ProgramDataBean b) {
        boolean[] c = new boolean[ProgramFit.N];
        for (int q = 0; q < ProgramFit.N; q++) {
            c[q] = before[q] != ProgramFit.get(b, q);
        }
        return c;
    }

    static void eq(String what, int want, int got) {
        if (want != got) {
            fails++;
            System.out.println("FAIL " + what + ": want " + want + ", got " + got);
        } else {
            System.out.println("ok   " + what + " = " + got);
        }
    }
}
