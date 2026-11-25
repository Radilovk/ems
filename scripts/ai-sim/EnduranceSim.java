import com.isaigu.gymapp.ai.*;

/**
 * How long a mode holds (ai/Endurance, physiology §3.6 — owner, 1.1.562: "minutes at 80 Hz with a 4 s pause are no
 * problem; lower step by step, never crash it"). The modes the owner named, worked without a pause for 20 minutes.
 */
public class EnduranceSim {
    static int checks, fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            System.out.println("FAIL " + what);
        }
    }

    /** Works the mode continuously; returns the minute of the first step (−1 = none) and checks the steps. */
    static double run(AiModel.Fitness f, int hz0, int on, int off, String tag) {
        Endurance e = new Endurance(f);
        int crit = e.criticalHz(hz0, on, off, 0, 0, 350);
        double t = 0;
        double first = -1;
        double lastStep = -1e9;
        StringBuilder steps = new StringBuilder();
        while (t < 20 * 60) {
            int hz = hz0 - e.cut();
            boolean st = e.work(hz, on, off, 0, 0, 350, on + off, false);
            t += on + off;
            if (st) {
                check(t - lastStep >= Endurance.DWELL_S, tag + ": a minute between steps");
                lastStep = t;
                if (first < 0) {
                    first = t / 60;
                }
                if (steps.length() < 60) {
                    steps.append(String.format(java.util.Locale.ROOT, " %.1f′→%d", t / 60, hz0 - e.cut()));
                }
            }
            check(hz0 - e.cut() >= Math.max(crit, Endurance.FLOOR_HZ), tag + ": never under the critical frequency");
        }
        System.out.println(String.format(java.util.Locale.ROOT, "%-24s critical %3d Hz · first step %s ·%s", tag, crit,
                first < 0 ? "none" : String.format(java.util.Locale.ROOT, "%.1f min", first), steps));
        return first;
    }

    public static void main(String[] a) {
        // the standard WB-EMS protocol and the 4 / 4 one: an average client
        check(run(AiModel.Fitness.MID, 85, 4, 4, "MID 85 Hz 4/4") < 0, "MID 4/4 holds the whole session");
        double std = run(AiModel.Fitness.MID, 85, 6, 4, "MID 85 Hz 6/4");
        check(std >= 12, "MID 6/4 (the standard) holds over 12 min before a step (" + std + ")");
        check(run(AiModel.Fitness.MID, 80, 6, 4, "MID 80 Hz 6/4") >= 12, "MID 80 Hz 6/4 too");
        check(run(AiModel.Fitness.HIGH, 85, 6, 4, "HIGH 85 Hz 6/4") < 0, "a trained client holds 6/4");
        double shortPause = run(AiModel.Fitness.MID, 85, 6, 2, "MID 85 Hz 6/2");
        check(shortPause >= 3 && shortPause < std, "a short pause holds less, still minutes (" + shortPause + ")");
        double low = run(AiModel.Fitness.LOW, 85, 6, 2, "LOW 85 Hz 6/2");
        check(low >= 1.5, "even the hardest case: minutes, not seconds (" + low + ")");
        // a pause refills the reserve: back to the planned frequency after a long one, not after a short one
        Endurance e = new Endurance(AiModel.Fitness.MID);
        for (int i = 0; i < 120; i++) {
            e.work(85 - e.cut(), 6, 2, 0, 0, 350, 8, false);
        }
        int cut = e.cut();
        check(cut > 0, "16 min of 6/2: stepped (" + cut + ")");
        e.rest(15);
        e.restart(85 - cut, 6, 2, 0, 0, 350);
        check(e.cut() <= cut && e.cut() > 0, "a 15 s pause: a little back at most (" + e.cut() + ")");
        e.rest(300);
        e.restart(85 - e.cut(), 6, 2, 0, 0, 350);
        check(e.cut() == 0, "a 5 min pause: the planned 85 Hz again (" + e.cut() + ")");
        // depth: a wider impulse is more intense
        check(e.intensity(85, 6, 4, 0, 0, 400) > e.intensity(85, 6, 4, 0, 0, 300), "deeper = more intense");
        System.out.println((fails == 0 ? "OK" : "FAILED") + " — endurance: " + checks + " checks, " + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }
}
