package com.isaigu.gymapp.train.utils;
import com.isaigu.gymapp.bean.*;
import java.util.Arrays;
/**
 * Owner's scenario (1.1.449): a training starts, every muscle is marked (1st tap), Интензитет 1 goes up with the
 * double impulse on, then Интензитет 2. Every marked muscle's second impulse must follow — no channel left at 0 while
 * its ring shows a strength.
 */
public class AllMarked {
    static int fails = 0;
    public static void main(String[] a) {
        for (int pause0 : new int[] {0, 10, 30}) {
            for (int start : new int[] {0, 15}) {
                ProgramDataBean b = new ProgramDataBean(); b.strenthBean = new PartStrenthBean();
                b.strenthBean.buwei = new int[] {100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
                b.strenth = start; b.activePause = true; b.pauseStrenthPercent = pause0;
                TrainProgram tp = new TrainProgram(); tp.programDataBean = b; PartSim.Item it = new PartSim.Item(tp);
                PartSim.Mgr mg = new PartSim.Mgr(); mg.list.add(it); PartSim.Frag fr = new PartSim.Frag(mg);
                for (int i = 0; i < 10; i++) PartSim.taps(fr, mg, it.partsControl, i, 1);
                for (int u = 0; u < 30; u++) PartStrength.boardSelected(it, 1, false);
                int[] m = PartSim.mainReal(b), s = PartSim.secondReal(it, b);
                String tag = "start=" + start + " pause0=" + pause0;
                System.out.println(tag + " ring1+30: I1=" + b.strenth + " I2=" + b.pauseStrenthPercent + " main=" + Arrays.toString(m) + " second=" + Arrays.toString(s));
                for (int i = 0; i < 10; i++) if (s[i] == 0 && m[i] > 0) { fails++; System.out.println("  FAIL ch" + i + " second stays 0"); break; }
                if (b.pauseStrenthPercent == 0) { fails++; System.out.println("  FAIL Интензитет 2 stays 0"); }
                for (int u = 0; u < 10; u++) PartStrength.boardSelected(it, 1, true);
                int[] s2 = PartSim.secondReal(it, b);
                System.out.println(tag + " ring2+10: I2=" + b.pauseStrenthPercent + " second=" + Arrays.toString(s2));
                for (int i = 0; i < 10; i++) if (s2[i] <= s[i]) { fails++; System.out.println("  FAIL ch" + i + " second did not follow ring 2"); break; }
            }
        }
        System.out.println(fails == 0 ? "AllMarked: OK" : "AllMarked: FAIL " + fails);
        if (fails > 0) System.exit(1);
    }
}
