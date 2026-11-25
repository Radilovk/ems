import com.isaigu.gymapp.ai.*;

/**
 * The AI training never stops by itself (owner, 1.1.548): every program, random people, the heart sometimes at its
 * ceiling — the engine in continuous mode must never REST or HR_PAUSE, the impulse is never zero in the active part,
 * the whole plan runs to DONE in its time. And Auto (not continuous) still rests as before.
 * 1.1.561–562 (owner): the strength is never cut (not after a pause either), the pause between impulses never
 * extended; the only safety step is the frequency, −5 Hz, at most one a minute (30 s with the heart at its ceiling),
 * never under 20 Hz, by the critical-intensity model (ai/Endurance); after a pause the frequency comes back.
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
                        int lastCut = 0;
                        double lastStepS = -1e9;
                        double runS = 0;
                        boolean paused = false;
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
                            check(e.getAdaptOff() == 0 && e.getAdaptHzPct() == 0, tag + ": no set-wise pause / Hz adaptation");
                            check(e.getReentry() == 1.0, tag + ": the strength is never cut (" + e.getReentry() + ")");
                            int cut = e.getSafeHzCut();
                            check(cut >= 0 && cut % 5 == 0, tag + ": the cut in 5 Hz steps (" + cut + ")");
                            check(cut <= lastCut + Endurance.STEP_HZ, tag + ": one step at a time");
                            if (cut > lastCut) {
                                check(runS - lastStepS >= (hot ? Endurance.HR_DWELL_S : Endurance.DWELL_S) - 12,
                                        tag + ": steps apart (" + Math.round(runS - lastStepS) + " s)");
                                lastStepS = runS;
                            }
                            check(c.hz >= 1 && (c.base == null || !c.base.isTetanic() || ph == null || ph.isCooldown()
                                    || c.hz >= Endurance.FLOOR_HZ), tag + ": never under 20 Hz (" + c.hz + ")");
                            sawAdapt |= cut > 0;
                            lastCut = cut;
                            runS += c.durationMs() / 1000.0;
                            // a pause the trainer makes, once, in some sessions: the Hz comes back by the recovery
                            if (!paused && cut > 0 && rnd.nextInt(3) == 0) {
                                paused = true;
                                int before = cut;
                                e.userPause(t);
                                long pauseMs = rnd.nextBoolean() ? 240000L : 20000L;
                                t += pauseMs;
                                e.resume(t);
                                check(e.getReentry() == 1.0, tag + ": the strength stays after a pause");
                                check(e.getSafeHzCut() <= before, tag + ": the Hz never lower after a pause");
                                if (pauseMs >= 240000L) {
                                    check(e.getSafeHzCut() == 0, tag + ": a long pause → the full Hz (" + e.getSafeHzCut() + ")");
                                }
                                lastCut = e.getSafeHzCut();
                                c = e.getCurrent();
                                if (c == null || e.getState() != AutoEngine.State.RUN) {
                                    break;
                                }
                            }
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
        check(adapted > 0, "the safety step is used somewhere (" + adapted + " of " + sessions + ")");
        System.out.println((fails == 0 ? "OK" : "FAILED") + " — AI continuous: " + sessions + " sessions, " + adapted
                + " adapted, " + checks + " checks, " + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }
}
