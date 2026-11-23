import com.isaigu.gymapp.ai.*;
import com.isaigu.gymapp.ai.AiModel.*;
import java.util.*;

/**
 * The AI coach (ai/AiCoach, docs/xems-ai-coach.md) on the JVM: the answer's parsing, the input patch, and random
 * replies + live tunes through the real AiEngine — every plan and every cycle stays inside the limits.
 */
public class CoachSim {
    static int checks, fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            if (fails < 30) System.out.println("FAIL " + what);
        }
    }

    public static void main(String[] a) {
        parsing();
        fuzz();
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — coach: " + checks + " checks, " + fails + " failures");
        if (fails > 0) System.exit(1);
    }

    static void parsing() {
        SessionInput in = new SessionInput();
        in.sex = Sex.MALE; in.age = 45; in.heightCm = 185; in.weightKg = 98;
        AiCoach.reset(in);
        check(Math.abs(AiCoach.bmi(in) - 28.6) < 0.05 && AiCoach.bmiClass(AiCoach.bmi(in)).equals("наднормено"), "BMI 28.6");
        String r = "{\"ok\":true,\"coach\":{\"reply\":\"По-леко днес.\",\"question\":{\"text\":\"Инсулин?\",\"options\":[\"Да\",\"Не\"]},"
                + "\"mode\":\"ACTIVE\",\"cond_add\":[\"knees\",\"insulin\",\"x\"],\"today_add\":[\"t_gentle\",\"t_food\"],"
                + "\"on_delta\":5,\"advice\":{\"before\":\"Банан.\",\"after\":\"Белтък.\"}}}";
        AiCoach.Reply p = AiCoach.parse(r);
        check(p != null && p.hasQuestion() && p.condAdd.equals(Arrays.asList("knees", "insulin")), "parse");
        check(p.onDelta == 2 && p.advice != null && p.advice[4].equals("Банан."), "windows + advice");
        List<String> ch = AiCoach.apply(p, in);
        check(in.cond.contains("diabetes") && in.today.contains("t_gentle") && !ch.isEmpty(), "apply " + ch);
        check(AiCoach.learned().containsAll(Arrays.asList("knees", "insulin", "diabetes")), "learned " + AiCoach.learned());
        AiCoach.aiSaid(p);
        check(AiCoach.questionsAsked() == 1 && AiCoach.adviceLines().size() == 2, "chat + advice lines");
        String req = AiCoach.requestFields(in, "днес искам по-леко", "{\"min\":20}", null, false);
        check(new AiBrief.Json("{" + req + "}").value() instanceof Map, "request JSON");
        check(req.contains("\"bmi\":28.6") && req.contains("\"q\":true") && req.contains("\"kind\":\"coach\""), "request content");
        SessionInput g = new SessionInput();
        AiCoach.Reply cell = AiCoach.parse("{\"ok\":true,\"coach\":{\"reply\":\"\",\"goal\":\"CELLULITE\"}}");
        g.sex = Sex.MALE;
        AiCoach.apply(cell, g);
        check(g.goal != Goal.CELLULITE, "no cellulite for a man");
        check(AiCoach.parse("{\"ok\":false}") == null && AiCoach.parse("x") == null, "errors → null");
        AiCoach.Reply bb = AiCoach.parse("{\"ok\":true,\"coach\":{\"reply\":\"\",\"cond_add\":[\"beta_blocker\"]}}");
        AiCoach.apply(bb, g);
        check(g.screening.hrLoweringMedication, "beta-blocker → HR-lowering medication");
    }

    static void fuzz() {
        Random rnd = new Random(535);
        String[] goals = {null, "TONE", "FAT", "MASSAGE", "DRAIN", "CELLULITE"};
        for (int n = 0; n < 1500; n++) {
            SessionInput in = new SessionInput();
            in.sex = rnd.nextBoolean() ? Sex.MALE : Sex.FEMALE;
            in.age = 18 + rnd.nextInt(70);
            in.weightKg = 50 + rnd.nextInt(80);
            in.heightCm = 150 + rnd.nextInt(45);
            in.sessions = rnd.nextInt(4) - 1;
            in.fitness = Fitness.values()[rnd.nextInt(3)];
            AiCoach.reset(in);
            AiCoach.Reply p = new AiCoach.Reply();
            p.goal = goals[rnd.nextInt(goals.length)];
            p.mode = rnd.nextBoolean() ? null : rnd.nextBoolean() ? "ACTIVE" : "PASSIVE";
            p.minutes = rnd.nextInt(3) == 0 ? 10 + rnd.nextInt(16) : null;
            for (String k : new String[] {"knees", "insulin", "beta_blocker", "obesity", "back"}) if (rnd.nextInt(5) == 0) p.condAdd.add(k);
            for (String k : new String[] {"t_gentle", "t_food", "t_sleep", "t_sore"}) if (rnd.nextInt(4) == 0) p.todayAdd.add(k);
            p.doubleImpulse = rnd.nextInt(3) == 0 ? rnd.nextBoolean() : null;
            AiCoach.apply(p, in);
            check(AiModel.isAllowed(in.goal, in.mode), "goal × mode allowed");
            boolean band = n % 3 != 0;                      // every third: without a band (owner, 1.1.536)
            Profile prof = AiPlanner.derive(in, band ? 66 : 0, band ? 1.5 : 0, band ? 3000 : 0);
            check(band || (prof.safetyOnly && !prof.hrAvailable), "no band → fatigue model only");
            Plan plan = AiPlanner.build(in, prof);
            check(plan.totalS <= 1500, "≤ 25 min: " + plan.totalS);
            if (in.sessions == 0) check(plan.totalS <= 900, "first session ≤ 15 min");
            AiEngine e = new AiEngine(in, prof, plan);
            long t = 1_000_000L;
            e.start(t);
            int maxHz = SafeLimits.hzMax(in.age);
            long next = t;
            for (int step = 0; step < 40 * 60 * 4 && e.getState() != AiEngine.State.DONE; step++) {
                t += 250;
                if (step % 600 == 0) {
                    e.setTune(rnd.nextInt(9) - 4, rnd.nextInt(9) - 4, 0.7 + rnd.nextDouble() * 0.6, 0.5 + rnd.nextDouble());
                }
                if (step == 2400 && rnd.nextInt(4) == 0) e.endActiveIn(rnd.nextInt(5), t);
                if (band && step % 12 == 0) e.onHr(t, 90 + rnd.nextInt(40));
                if (e.getState() == AiEngine.State.REST && e.isManualContinue() && e.isRestReady()) e.continueBlock(t);
                if (e.getState() == AiEngine.State.CHECKPOINT) e.answerCheckpoint(5 + rnd.nextInt(3), t);   // the CR-10 question (no band)
                if (t >= next) {
                    AiEngine.CycleCmd c = e.onCycle(t);
                    next = t + Math.max(1, c.onS + c.offS) * 1000L;
                    if (c.frac > 0) {
                        check(c.hz >= 1 && c.hz <= maxHz, "Hz ≤ " + maxHz + " (" + c.hz + ")");
                        if (c.hz >= 20) {
                            check(c.onS >= 1 && c.onS <= SafeLimits.ON_MAX_TETANIC, "ON " + c.onS);
                            if (c.hz >= 50) check(c.onS <= SafeLimits.ON_MAX_50HZ, "ON ≤ 6 at ≥ 50 Hz: " + c.onS);
                            check(c.offS >= Math.ceil(c.onS * (in.mode == Mode.PASSIVE ? 1.0 : 0.66)) - 1e-9 || c.offS >= c.onS,
                                    "rest ≥ ON share: " + c.onS + "/" + c.offS);
                        }
                    }
                }
                e.tick(t);
            }
            check(e.getState() == AiEngine.State.DONE || e.getState() == AiEngine.State.RECOVERY || band, "no band: the session runs to its end (" + e.getState() + ")");
            check(e.getElapsedPlanS() <= plan.totalS + 60, "plan time kept: " + e.getElapsedPlanS() + " / " + plan.totalS);
        }
    }
}
