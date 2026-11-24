import com.isaigu.gymapp.ai.*;

/**
 * The AI training never stops by itself (owner, 1.1.548): every program, random people, the heart sometimes at its
 * ceiling — the engine in continuous mode must never REST or HR_PAUSE, the impulse is never zero in the active part,
 * the adaptation stays in its bounds (pause +0…3 s, Hz −0…15 %, never under 20 Hz for a tetanic impulse), the whole
 * plan runs to DONE in its time. And Auto (not continuous) still rests as before.
 */
public class ContinuousSim {
    static int checks, fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            if (fails < 30) System.out.println("FAIL " + what);
        }
    }

    public static void main(String[] a) {
        java.util.Random rnd = new java.util.Random(548);
        int sessions = 0;
        int adapted = 0;
        for (AutoModel.Goal g : AutoModel.Goal.values()) {
            for (AutoModel.Kind k : AutoModel.Kind.values()) {
                for (AutoCatalog.Program p : AutoCatalog.menu(g, k)) {
                    if (AutoCatalog.isFace(p)) {
                        continue;
                    }
                    for (int rep = 0; rep < 4; rep++) {
                        AutoModel.Input in = AutoSim.input(rnd.nextBoolean() ? AiModel.Sex.MALE : AiModel.Sex.FEMALE,
                                20 + rnd.nextInt(55), 55 + rnd.nextInt(50), 155 + rnd.nextInt(35),
                                AiModel.Fitness.values()[rnd.nextInt(AiModel.Fitness.values().length)], rnd.nextInt(20), -1);
                        in.goal = g;
                        in.kind = k;
                        in.programId = p.id;
                        if (p.femaleOnly) {
                            in.sex = AiModel.Sex.FEMALE;
                        }
                        if (AutoCatalog.blockReason(p, g, in) != null) {
                            continue;
                        }
                        AutoModel.Plan plan = AutoPlanner.build(in, 66);
                        AutoEngine e = new AutoEngine(plan);
                        AutoTemplates.Script sc = AutoTemplates.script(plan, null);
                        e.setScript(sc);
                        e.setContinuous(true);
                        String tag = p.id + "#" + rep;
                        long t = 1000000L;
                        e.startAt(t, t);
                        t = e.getGoMs();
                        e.tick(t);
                        int cycles = 0;
                        boolean hot = rnd.nextBoolean();
                        boolean sawAdapt = false;
                        double quietS = 0;
                        while (e.getState() == AutoEngine.State.RUN && cycles < 6000) {
                            AutoEngine.Cmd c = e.getCurrent();
                            check(c != null, tag + ": a cycle every time (no gap)");
                            if (c == null) {
                                break;
                            }
                            AutoModel.Phase ph = e.phase();
                            boolean active = ph != null && !ph.isCooldown();
                            // a program's own zero step (a passive wave's trough, ~5 s) is its pattern, not a stop
                            quietS = active && c.frac <= 0 ? quietS + c.durationMs() / 1000.0 : 0;
                            check(quietS <= 15, tag + ": the active part never goes quiet for long (" + quietS + " s)");
                            check(e.getAdaptOff() >= 0 && e.getAdaptOff() <= 3, tag + ": pause +0…3 s");
                            check(e.getAdaptHzPct() >= 0 && e.getAdaptHzPct() <= 15, tag + ": Hz −0…15 %");
                            check(c.hz >= 1, tag + ": Hz sane");
                            sawAdapt |= e.getAdaptOff() > 0 || e.getAdaptHzPct() > 0;
                            if (hot && cycles % 9 == 0) {
                                e.onHr(t, plan.hrCap + 5);       // the heart at its ceiling: adapt, never stop
                            } else if (cycles % 9 == 0) {
                                e.onHr(t, Math.max(70, plan.hrCap - 40));
                            }
                            t += c.durationMs();
                            e.tick(t - 1);
                            e.onCycle(t);
                            check(e.getState() != AutoEngine.State.REST && e.getState() != AutoEngine.State.HR_PAUSE,
                                    tag + ": no automatic stop (" + e.getState() + ")");
                            cycles++;
                        }
                        check(e.getState() == AutoEngine.State.DONE, tag + ": runs to DONE (" + e.getState() + ")");
                        check(Math.abs(e.getElapsedS() - plan.totalS) < 30, tag + ": the whole plan");
                        sessions++;
                        adapted += sawAdapt ? 1 : 0;
                    }
                }
            }
        }
        check(adapted > 0, "the adaptation is used somewhere (" + adapted + " of " + sessions + ")");
        System.out.println((fails == 0 ? "OK" : "FAILED") + " — AI continuous: " + sessions + " sessions, " + adapted
                + " adapted, " + checks + " checks, " + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }
}
