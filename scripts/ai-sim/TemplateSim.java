import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AutoCatalog;
import com.isaigu.gymapp.ai.AutoModel;
import com.isaigu.gymapp.ai.AutoPlanner;
import com.isaigu.gymapp.ai.AutoTemplates;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Offline test of the exercise templates (AutoTemplates) over every active program × profile × history. */
public final class TemplateSim {
    private static int checks;
    private static int fails;
    private static boolean verbose;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            if (fails <= 30) {
                System.out.println("FAIL " + what);
            }
        }
    }

    static final String[][] AVOID = {
            {"knees", "jumping-jack", "forward-lunge", "reverse-lunge", "jump-squat", "bulgarian-split-squat"},
            {"diastasis", "crunch", "bicycle-crunch", "reverse-crunch", "lying-leg-raise", "plank-shoulder-tap", "plank"},
            {"senior", "jump-squat", "burpee", "jumping-jack", "kettlebell-swing"},
    };

    public static void main(String[] args) {
        verbose = args.length > 0 && args[0].equals("-v");
        String[] conds = {null, "knees", "back", "neck", "osteo", "desk", "stress", "diastasis", "postpartum"};
        String[][] focuses = {{}, {"glutes"}, {"abs", "arms"}, {"chest", "back", "legs"}};
        int[] sessions = {0, 2, 5, 12, 30};
        AiModel.Fitness[] fits = AiModel.Fitness.values();
        int scripts = 0;
        for (AutoCatalog.Program p : AutoCatalog.all()) {
            if (!p.isActive()) {
                continue;
            }
            check(AutoTemplates.has(p.id), p.id + ": has a template");
            for (String cond : conds) {
                for (String[] fo : focuses) {
                    for (int ses : sessions) {
                        for (AiModel.Fitness f : fits) {
                            for (AiModel.Sex sex : AiModel.Sex.values()) {
                                for (int hist = 0; hist < 4; hist++) {
                                    AutoModel.Input in = new AutoModel.Input();
                                    in.kind = p.kind;
                                    in.programId = p.id;
                                    in.sex = sex;
                                    in.fitness = f;
                                    in.sessions = ses;
                                    in.hoursSinceActive = ses == 0 ? -1 : 72;
                                    in.heightCm = 170;
                                    if (cond != null) {
                                        if ("postpartum".equals(cond)) {
                                            if (sex != AiModel.Sex.FEMALE) {
                                                continue;
                                            }
                                            in.extra.weeksSinceBirth = 14;
                                        } else if ("diastasis".equals(cond)) {
                                            in.extra.diastasis = true;
                                        } else {
                                            in.cond.add(cond);
                                        }
                                    }
                                    in.focus.addAll(Arrays.asList(fo));
                                    AutoModel.Plan plan;
                                    try {
                                        plan = AutoPlanner.build(in, 68);
                                    } catch (RuntimeException ex) {
                                        continue;          // the planner refuses this profile (gates) — not ours
                                    }
                                    if (plan == null || plan.program == null || !plan.program.id.equals(p.id)) {
                                        continue;
                                    }
                                    List<AutoTemplates.Outcome> past = history(hist, ses);
                                    AutoTemplates.Script sc = AutoTemplates.script(plan, past);
                                    String tag = p.id + " " + sex + " " + f + " s" + ses + " " + cond + " " + Arrays.toString(fo) + " h" + hist;
                                    check(sc != null, tag + ": script");
                                    if (sc == null) {
                                        continue;
                                    }
                                    scripts++;
                                    verify(tag, in, plan, sc, cond, hist, past);
                                }
                            }
                        }
                    }
                }
            }
        }
        // passive programs have no exercises
        for (AutoCatalog.Program p : AutoCatalog.all()) {
            if (!p.isActive()) {
                check(!AutoTemplates.has(p.id), p.id + ": passive, no template");
            }
        }
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — templates: " + scripts + " scripts, " + checks + " checks, " + fails + " failures");
        if (fails > 0) {
            System.exit(1);
        }
    }

    static List<AutoTemplates.Outcome> history(int kind, int ses) {
        List<AutoTemplates.Outcome> l = new ArrayList<AutoTemplates.Outcome>();
        if (kind == 1) {                // three good at level 2
            for (int i = 0; i < 3; i++) {
                l.add(new AutoTemplates.Outcome(2, 1.0, 0.0, false));
            }
        } else if (kind == 2) {         // a bad one at level 3
            l.add(new AutoTemplates.Outcome(3, 0.5, 0.2, false));
        } else if (kind == 3) {         // mixed at level 2
            l.add(new AutoTemplates.Outcome(2, 1.0, 0.0, false));
            l.add(new AutoTemplates.Outcome(2, 0.8, 0.12, false));
        }
        return l;
    }

    static void verify(String tag, AutoModel.Input in, AutoModel.Plan plan, AutoTemplates.Script sc, String cond,
                       int hist, List<AutoTemplates.Outcome> past) {
        check(sc.level >= 1 && sc.level <= 3, tag + ": level 1–3");
        if (in.sessions < 3) {
            check(sc.level == 1 || AutoCatalog.POWER.equals(plan.program.id), tag + ": first sessions level 1, got " + sc.level);
        }
        if (in.sessions >= 3 && hist == 2 && !AutoCatalog.POWER.equals(plan.program.id)) {
            check(sc.level <= 2, tag + ": a bad session drops the level");
        }
        if (in.sessions >= 3 && hist == 1 && cond == null) {
            check(sc.level == 3 || AutoCatalog.SENIOR.equals(plan.program.id), tag + ": three good sessions raise the level, got " + sc.level);
        }
        if ("osteo".equals(cond) || "postpartum".equals(cond) || AutoCatalog.SENIOR.equals(plan.program.id)) {
            check(sc.level <= 2 || AutoCatalog.POWER.equals(plan.program.id), tag + ": capped at 2");
        }
        boolean warm = false;
        for (int i = 0; i < sc.phase.length; i++) {
            AutoModel.Phase ph = plan.phases.get(i);
            String[] list = sc.phase[i];
            if ("WARMUP".equals(ph.id)) {
                warm = true;
                check(list != null && list.length >= 1, tag + ": warm-up has moves");
            }
            if (list == null) {
                continue;
            }
            Set<String> seen = new HashSet<String>();
            for (String x : list) {
                check(!AutoTemplates.name(x).isEmpty(), tag + ": known exercise " + x);
                check(seen.add(x), tag + ": " + ph.id + " repeats " + x);
                for (String[] a : AVOID) {
                    if (a[0].equals(cond) || ("diastasis".equals(a[0]) && "postpartum".equals(cond))
                            || a[0].equals(plan.program.id)) {
                        for (int k = 1; k < a.length; k++) {
                            check(!a[k].equals(x), tag + ": " + cond + " forbids " + x);
                        }
                    }
                }
            }
            // stations change on a cycle boundary and each holds for several cycles
            int cyc = 0;
            for (AutoModel.Step s : ph.steps) {
                cyc = Math.max(cyc, s.onS + s.offS);
            }
            if (cyc > 0 && "MAIN".equals(ph.id)) {
                double per = ph.durationS / (double) list.length;
                check(per >= 3 * cyc, tag + ": " + ph.id + " station " + (int) per + " s ≥ 3 cycles of " + cyc + " s");
            }
            // at() walks every station in order and ends on the last one
            int last = -1;
            for (int t = 0; t < ph.durationS; t += 2) {
                AutoTemplates.At at = sc.at(i, t, ph.durationS);
                check(at != null && at.index >= last && at.index <= last + 1, tag + ": at() order");
                last = at == null ? last : at.index;
            }
            check(last == list.length - 1, tag + ": reaches the last station");
        }
        check(warm || plan.phases.isEmpty() || !"WARMUP".equals(plan.phases.get(0).id), tag + ": warm-up");
        if (verbose && hist == 0 && in.fitness == AiModel.Fitness.MID && in.sessions == 12) {
            StringBuilder b = new StringBuilder(tag + " L" + sc.level + ":");
            for (String[] l : sc.phase) {
                b.append(" | ").append(l == null ? "-" : String.join(", ", l));
            }
            System.out.println(b);
        }
    }
}
