import com.isaigu.gymapp.ai.*;
import java.util.*;

/** The AI's own workout (ai/AiWorkout): parsing and 5 000 random workouts → maps inside every limit. */
public class WorkoutSim {
    static int checks, fails;

    static void check(boolean ok, String what) {
        checks++;
        if (!ok) {
            fails++;
            if (fails < 30) System.out.println("FAIL " + what);
        }
    }

    public static void main(String[] a) {
        String r = "{\"ok\":true,\"coach\":{\"reply\":\"x\",\"title\":\"Гири и постелка\",\"blocks\":["
                + "{\"name\":\"Загрявка\",\"kind\":\"warmup\",\"sets\":1,\"work_s\":40,\"rest_s\":15},"
                + "{\"name\":\"Румънска тяга\",\"how\":\"Бавно, гръб прав.\",\"kind\":\"strength\",\"equipment\":\"dumbbells\",\"sets\":3,\"work_s\":30,\"rest_s\":40},"
                + "{\"name\":\"\",\"kind\":\"core\",\"sets\":1,\"work_s\":30,\"rest_s\":30},"
                + "{\"name\":\"Бомба\",\"kind\":\"nuke\",\"sets\":1,\"work_s\":30,\"rest_s\":30}]}}";
        AiWorkout.Plan p = AiWorkout.parse(r);
        check(p != null && p.items.size() == 2 && p.title.equals("Гири и постелка"), "parse");
        check(AiWorkout.lines(p).get(1).equals("Румънска тяга · 3 × 30 s · сила · дъмбели"), "line " + AiWorkout.lines(p));
        check(AiWorkout.parse("{\"ok\":true,\"coach\":{\"blocks\":[]}}") == null && AiWorkout.parse("x") == null, "empty → null");
        Random rnd = new Random(538);
        for (int n = 0; n < 5000; n++) {
            AutoModel.Input in = new AutoModel.Input();
            in.age = 18 + rnd.nextInt(70);
            AiWorkout.Plan w = new AiWorkout.Plan();
            int k = 1 + rnd.nextInt(12);
            for (int i = 0; i < k; i++) {
                AiWorkout.Item it = new AiWorkout.Item();
                it.name = "Ex" + i;
                it.kind = AiWorkout.KINDS[rnd.nextInt(AiWorkout.KINDS.length)];
                it.sets = 1 + rnd.nextInt(4);
                it.workS = 20 + rnd.nextInt(26);
                it.restS = 15 + rnd.nextInt(76);
                it.hz = rnd.nextInt(3) == 0 ? 1 + rnd.nextInt(120) : 0;   // the AI's veto on the frequency
                w.items.add(it);
            }
            Workout m = AiWorkout.toWorkout(w, in);
            int active = 0, rec = 0;
            for (Workout.Block b : m.blocks) {
                boolean recovery = "Възстановяване".equals(b.label) || "Recovery".equals(b.label);
                if (recovery) rec += b.seconds(); else active += b.seconds();
                if (b.isRest()) continue;
                check(b.label != null && b.ex == null, "described, no figure");
                check(b.hz <= SafeLimits.hzMax(in.age), "Hz ≤ age limit " + b.hz + "/" + in.age);
                check(b.hz < 100 || b.pw <= 300, "≥ 100 Hz ⇒ ≤ 300 µs");
                if (b.hz >= 50) check(b.on <= 6, "ON ≤ 6 s at ≥ 50 Hz");
                if (b.hz >= 20) check(b.off >= Math.ceil(b.on * 0.66), "rest ≥ 2/3 ON (" + b.on + "/" + b.off + ")");
            }
            check(active <= AiWorkout.ACTIVE_MAX_S + 60, "active ≤ 20 min (" + active + ", " + k + " ex)");
            check(rec >= 540 && rec <= 660, "recovery ≈ 10 min (" + rec + ")");
            check(m.totalSeconds() <= Workout.RUN_MAX_S, "whole ≤ 35 min");
        }
        // spoken commands, read on the tablet
        AiVoiceCmd.Result v = AiVoiceCmd.parse("намали импулсите на краката");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("legs") && v.commands.get(0).dir.equals("down"), "legs down");
        v = AiVoiceCmd.parse("увеличи малко ръцете и корема");
        check(v.commands.size() == 2 && v.commands.get(0).small, "arms + abs up, small " + v.commands.size());
        v = AiVoiceCmd.parse("по-силно");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("strength"), "strength up");
        v = AiVoiceCmd.parse("по-дълга пауза");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("pause") && v.commands.get(0).dir.equals("up"), "pause longer");
        v = AiVoiceCmd.parse("пауза");
        check(v.commands.isEmpty() && v.actions.contains("pause"), "pause action");
        v = AiVoiceCmd.parse("изключи гърдите");
        check(v.commands.size() == 1 && v.commands.get(0).dir.equals("off") && v.commands.get(0).target.equals("chest"), "chest off");
        v = AiVoiceCmd.parse("кръстът ме боли от вчера");
        check(v.isEmpty(), "a complaint is no command");
        check(AiVoiceCmd.step(50, false) == 5 && AiVoiceCmd.step(4, false) == 1 && AiVoiceCmd.step(50, true) == 3
                && AiVoiceCmd.step(0, false) == 1, "the relative step");
        AiVoiceCmd.Result sv = AiVoiceCmd.parseServer("{\"ok\":true,\"command\":{\"commands\":[{\"target\":\"glutes\",\"dir\":\"up\",\"step\":\"small\"}],\"coach\":false}}");
        check(sv.commands.size() == 1 && sv.commands.get(0).small && !sv.coach, "server command");
        check(AiVoiceCmd.parseServer("{\"ok\":false}").coach, "server error → coach");
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — AI workouts: " + checks + " checks, " + fails + " failures");
        if (fails > 0) System.exit(1);
    }
}
