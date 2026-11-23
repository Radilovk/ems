import com.isaigu.gymapp.ai.*;
import java.util.*;

/**
 * The AI brief (ai/AiBrief, docs/xems-ai-brief.md) on the JVM: the local reader, the server answer's parsing, and
 * 20 000 random "model answers" applied to random clients — every plan must stay inside the planner's limits.
 */
public class BriefSim {
    static int checks, fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            if (fails < 30) System.out.println("FAIL " + what);
        }
    }

    public static void main(String[] a) {
        localReader();
        parsing();
        fuzz();
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — brief: " + checks + " checks, " + fails + " failures");
        if (fails > 0) System.exit(1);
    }

    static void localReader() {
        AiBrief.Patch p = AiBrief.local("Жена на 52, болки в кръста и коляното, иска седалище, днес е недоспала, 20 мин", false);
        check(p.condAdd.contains("back") && p.condAdd.contains("knees"), "local: back + knees " + p.condAdd);
        check(p.focusAdd.contains("glutes") && !p.focusAdd.contains("back"), "local: glutes, back is pain not focus " + p.focusAdd);
        check(p.todayAdd.contains("t_sleep"), "local: slept little");
        check(p.age != null && p.age == 52 && p.minutes != null && p.minutes == 20, "local: age 52, 20 min");
        check("FEMALE".equals(p.sex) && "HEALTH".equals(p.goal), "local: woman, pain → health " + p.goal);
        p = AiBrief.local("иска да отслабне, 85 кг, първи път", false);
        check("SLIM".equals(p.goal) && "SOFT".equals(p.intensity) && p.weightKg == 85, "local: slim, soft, 85 kg");
        p = AiBrief.local("по-леко", true);
        check(p.live.contains(AiBrief.LIVE_SOFTER) && p.intensity == null, "local live: softer");
        p = AiBrief.local("пауза", true);
        check(p.live.contains(AiBrief.LIVE_PAUSE), "local live: pause");
        p = AiBrief.local("не може да се движи, иска релакс", false);
        check("PASSIVE".equals(p.kind) && "HEALTH".equals(p.goal), "local: passive relax");
        AutoModel.Input in = new AutoModel.Input();
        in.programId = AutoCatalog.menu(in.goal, in.kind).get(0).id;
        List<String> ch = AiBrief.apply(AiBrief.local("бременна", false), in);
        check(Boolean.TRUE.equals(in.screening.contraindications.get("pregnancy")) && !ch.isEmpty(), "local: pregnancy flag");
    }

    static void parsing() {
        String r = "{\"ok\":true,\"model\":\"gemini-x\",\"patch\":{\"goal\":\"SLIM\",\"kind\":\"BAD\",\"program\":\"nope\","
                + "\"age\":61,\"focus_add\":[\"glutes\",\"x\"],\"zones_off\":[\"lower_back\"],\"note\":\"Ясно \\u2014 кръстът.\","
                + "\"question\":{\"text\":\"Остра?\",\"options\":[\"Остра\",\"Хронична\"]}}}";
        AiBrief.Patch p = AiBrief.parse(r);
        check(p != null && "SLIM".equals(p.goal) && p.kind == null && p.program == null && p.age == 61, "parse: enums");
        check(p.focusAdd.equals(Arrays.asList("glutes")) && p.zonesOff.equals(Arrays.asList("lower_back")), "parse: lists");
        check(p.note.equals("Ясно — кръстът.") && p.hasQuestion() && p.options.size() == 2, "parse: note + question");
        check(AiBrief.parse("{\"ok\":false}") == null && AiBrief.parse("garbage") == null && AiBrief.parse(null) == null,
                "parse: errors → null");
        AutoModel.Input in = new AutoModel.Input();
        in.programId = AutoCatalog.menu(in.goal, in.kind).get(0).id;
        AiBrief.apply(p, in);
        AutoModel.Plan plan = AutoPlanner.build(in, 68);
        check(plan.zones[AiBrief.channel("lower_back")] == 0, "zones_off → channel 0 in the plan");
        check(in.goal == AutoModel.Goal.SLIM, "goal applied");
        String req = AiBrief.requestFields(in, AiBrief.menu(), "текст \"с кавички\"", null, null, false, true);
        check(req.startsWith("\"text\":\"текст \\\"с кавички\\\"\"") && req.contains("\"menu\":[{\"id\":"), "request JSON");
        check(new AiBrief.Json("{" + req + "}").value() instanceof Map, "request is valid JSON");
    }

    static final String[] GOALS = {null, "TONE", "SLIM", "HEALTH"};
    static final String[] KINDS = {null, "ACTIVE", "PASSIVE"};
    static final String[] INT = {null, "SOFT", "STANDARD", "INTENSE"};

    static void fuzz() {
        Random rnd = new Random(534);
        List<AutoCatalog.Program> menu = AiBrief.menu();
        for (int n = 0; n < 20000; n++) {
            AutoModel.Input in = new AutoModel.Input();
            in.sex = rnd.nextBoolean() ? AiModel.Sex.FEMALE : AiModel.Sex.MALE;
            in.age = 18 + rnd.nextInt(70);
            in.weightKg = 50 + rnd.nextInt(70);
            in.heightCm = 150 + rnd.nextInt(45);
            in.sessions = rnd.nextInt(20);
            in.goal = AutoModel.Goal.values()[rnd.nextInt(3)];
            in.kind = AutoCatalog.menu(in.goal, AutoModel.Kind.ACTIVE).isEmpty() ? AutoModel.Kind.PASSIVE : AutoModel.Kind.ACTIVE;
            in.programId = AutoCatalog.recommended(in.goal, in.kind, in).id;
            AiBrief.Patch p = new AiBrief.Patch();
            p.goal = GOALS[rnd.nextInt(GOALS.length)];
            p.kind = KINDS[rnd.nextInt(KINDS.length)];
            p.program = rnd.nextInt(3) == 0 ? menu.get(rnd.nextInt(menu.size())).id : null;
            p.intensity = INT[rnd.nextInt(INT.length)];
            p.minutes = rnd.nextInt(3) == 0 ? 5 + rnd.nextInt(56) : null;
            p.age = rnd.nextInt(4) == 0 ? 14 + rnd.nextInt(82) : null;
            p.exercises = rnd.nextInt(4) == 0 ? Boolean.FALSE : null;
            p.doublePulse = rnd.nextInt(4) == 0 ? rnd.nextBoolean() : null;
            for (String z : AiBrief.ZONES) {
                int k = rnd.nextInt(8);
                if (k == 0) p.zonesOff.add(z);
                else if (k == 1) p.zonesOn.add(z);
            }
            for (String c : AiBrief.COND) if (rnd.nextInt(8) == 0) p.condAdd.add(c);
            for (String f : AiBrief.FOCUS) if (rnd.nextInt(5) == 0) p.focusAdd.add(f);
            for (String t : AiBrief.TODAY_BG_KEYS) if (rnd.nextInt(6) == 0) p.todayAdd.add(t);
            if (rnd.nextInt(10) == 0) p.extraOn.add("breastfeeding");
            if (rnd.nextInt(10) == 0) p.extraOn.add("diastasis");
            List<String> ch;
            try {
                ch = AiBrief.apply(p, in);
            } catch (RuntimeException e) {
                check(false, "apply threw " + e);
                continue;
            }
            check(ch != null, "changes");
            AutoCatalog.Program prog = AutoCatalog.get(in.programId);
            check(prog != null && AutoCatalog.menu(in.goal, in.kind).contains(prog), "program in its goal × kind menu " + in.programId);
            if (prog == null || AutoCatalog.blockReason(prog, in.goal, in) != null) {
                continue;                                    // the planner refuses it (as ever): nothing to run
            }
            // as AutoSession.buildPlan does
            in.intensity = in.aiIntensity != null ? in.aiIntensity : AutoModel.Intensity.STANDARD;
            in.totalSeconds = in.aiSeconds;
            AutoModel.Plan plan = AutoPlanner.build(in, 68);
            int maxHz = SafeLimits.hzMax(in.age);
            check(plan.activeS + AutoPlanner.stretchS(plan) <= 1500 && plan.activeS + AutoPlanner.stretchS(plan) + plan.recoveryS <= 2100,
                    "≤ 25 min active, ≤ 35 in all: " + plan.activeS);
            check(plan.activeS <= AutoPlanner.maxSeconds(prog, in.goal, in), "minutes capped by the program");
            for (AutoModel.Phase ph : plan.phases) {
                for (AutoModel.Step s : ph.steps) {
                    check(s.hz >= 1 && s.hz <= maxHz, "Hz ≤ " + maxHz + " (" + s.hz + ", age " + in.age + ")");
                    check(s.pwUs >= SafeLimits.PW_MIN && s.pwUs <= SafeLimits.PW_MAX, "µs in range " + s.pwUs);
                    check(s.onS >= 1 && s.offS >= 0, "ON / OFF");
                }
            }
            for (int i = 0; i < AutoModel.CHANNELS; i++) {
                check(plan.zones[i] >= 0 && plan.zones[i] <= plan.zoneMax[i] && plan.zoneMax[i] <= 100, "zone " + i);
            }
            if (in.extra.breastfeeding) {
                check(plan.zones[0] == 0, "breastfeeding → chest 0, whatever the text");
            }
        }
    }
}
