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
        check(v.commands.size() == 2 && v.commands.get(1).small, "the second part takes the first one's \"малко\"");
        // several commands in one phrase, each with its own verb (owner, 1.1.545)
        v = AiVoiceCmd.parse("увеличи ръцете и намали дупето");
        check(v.commands.size() == 2 && v.commands.get(0).target.equals("arms") && v.commands.get(0).dir.equals("up")
                && v.commands.get(1).target.equals("glutes") && v.commands.get(1).dir.equals("down"), "arms up + glutes down");
        v = AiVoiceCmd.parse("намали задника");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("glutes"), "задник = glutes");
        v = AiVoiceCmd.parse("увеличи ръцете, намали корема и спри");
        check(v.commands.size() == 2 && v.commands.get(1).dir.equals("down") && v.actions.contains("pause"), "two + pause");
        v = AiVoiceCmd.parse("колко повторения клек да направя");
        check(v.isEmpty() && AiVoiceCmd.isQuestion("колко повторения клек да направя"), "a question goes to the coach");
        check(!AiVoiceCmd.isQuestion("намали ръцете"), "a command is no question");
        check(AiVoiceCmd.parse("дай малко повече на долната част на тялото").isEmpty(), "a body place without a word → AI");
        check(AiVoiceCmd.parse("по-силно").commands.size() == 1, "plain по-силно stays local");
        // the double impulse and absolute levels (owner, 1.1.547)
        v = AiVoiceCmd.parse("спри двойния импулс");
        check(v.actions.contains("double_off") && !v.actions.contains("pause"), "спри двойния импулс = off, no pause");
        v = AiVoiceCmd.parse("пусни двойния импулс");
        check(v.actions.contains("double_on") && !v.actions.contains("resume"), "пусни двойния импулс = on");
        v = AiVoiceCmd.parse("махни втория импулс");
        check(v.actions.contains("double_off"), "махни втория импулс = off");
        v = AiVoiceCmd.parse("силата на 50");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("strength") && v.commands.get(0).value == 50
                && v.commands.get(0).dir.equals("set"), "силата на 50 = set 50");
        v = AiVoiceCmd.parse("увеличи на 50%");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("strength") && v.commands.get(0).value == 50, "увеличи на 50% = strength 50");
        v = AiVoiceCmd.parse("краката на 30 процента");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("legs") && v.commands.get(0).value == 30, "legs set 30");
        v = AiVoiceCmd.parse("увеличи с 10");
        check(v.commands.size() == 1 && v.commands.get(0).dir.equals("up") && v.commands.get(0).value == 10, "up by 10");
        // owner, 1.1.556: a percent = a point of the 0–100 scale; numbers in words too
        v = AiVoiceCmd.parse("увеличи с 1%");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("strength") && v.commands.get(0).dir.equals("up")
                && v.commands.get(0).value == 1, "увеличи с 1% = strength +1 point");
        v = AiVoiceCmd.parse("увеличи с един процент");
        check(v.commands.size() == 1 && v.commands.get(0).dir.equals("up") && v.commands.get(0).value == 1,
                "увеличи с един процент = +1");
        v = AiVoiceCmd.parse("краката на петдесет процента");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("legs") && v.commands.get(0).dir.equals("set")
                && v.commands.get(0).value == 50, "краката на петдесет процента = legs 50");
        v = AiVoiceCmd.parse("силата на двадесет и пет");
        check(v.commands.size() == 1 && v.commands.get(0).dir.equals("set") && v.commands.get(0).value == 25,
                "силата на двадесет и пет = 25");
        v = AiVoiceCmd.parse("намали ръцете с десет");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("arms") && v.commands.get(0).dir.equals("down")
                && v.commands.get(0).value == 10, "намали ръцете с десет = arms −10");
        check(AiVoiceCmd.numbers("направи три клякания").equals("направи три клякания"), "words stay words elsewhere");
        // owner: "увеличи 1" = "увеличи с 1" = "увеличи с 1 %"; only "на / до N" is a level; synonyms
        String[][] steps = {{"увеличи 1", "strength", "up", "1"}, {"намали 5", "strength", "down", "5"},
                {"вдигни 10%", "strength", "up", "10"}, {"свали 3 процента", "strength", "down", "3"},
                {"увеличи едно", "strength", "up", "1"}, {"смъкни пет", "strength", "down", "5"},
                {"повиши краката 4", "legs", "up", "4"}, {"махни 2 от ръцете", "arms", "down", "2"},
                {"добави 5 на корема", "abs", "up", "5"}, {"намали краката на 30", "legs", "set", "30"},
                {"качи до 40", "strength", "set", "40"}, {"усили с два", "strength", "up", "2"}};
        for (String[] st : steps) {
            v = AiVoiceCmd.parse(st[0]);
            boolean ok = v.commands.size() == 1 && v.commands.get(0).target.equals(st[1])
                    && v.commands.get(0).dir.equals(st[2]) && v.commands.get(0).value == Integer.parseInt(st[3]);
            check(ok, "\"" + st[0] + "\" = " + st[1] + " " + st[2] + " " + st[3]
                    + (ok ? "" : " (got " + (v.commands.isEmpty() ? "none" : v.commands.get(0).target + " "
                    + v.commands.get(0).dir + " " + v.commands.get(0).value) + ")"));
        }
        v = AiVoiceCmd.parseServer("{\"ok\":true,\"command\":{\"commands\":[{\"target\":\"strength\",\"dir\":\"up\",\"amount\":1},"
                + "{\"target\":\"legs\",\"dir\":\"set\",\"amount\":50}],\"actions\":[]}}");
        check(v.commands.size() == 2 && v.commands.get(0).value == 1 && v.commands.get(1).dir.equals("set")
                && v.commands.get(1).value == 50, "the server's amount: up by 1, legs set 50");
        v = AiVoiceCmd.parse("увеличи ръцете с 5 и намали дупето");
        check(v.commands.size() == 2 && v.commands.get(0).value == 5 && v.commands.get(1).dir.equals("down")
                && v.commands.get(1).value == -1, "arms +5, glutes a step down");
        // the rest of the training screen by voice (owner, 1.1.551: "full control")
        v = AiVoiceCmd.parse("намали втория импулс");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("second") && v.commands.get(0).dir.equals("down")
                && v.actions.isEmpty(), "намали втория импулс = its strength down, not off");
        v = AiVoiceCmd.parse("по-дълбок импулс");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("width") && v.commands.get(0).dir.equals("up"), "deeper = width up");
        v = AiVoiceCmd.parse("по-плитък импулс");
        check(v.commands.size() == 1 && v.commands.get(0).target.equals("width") && v.commands.get(0).dir.equals("down"), "shallower");
        v = AiVoiceCmd.parse("спри музиката");
        check(v.actions.contains("music_toggle") && !v.actions.contains("pause"), "спри музиката = music, no pause");
        v = AiVoiceCmd.parse("следващата песен");
        check(v.actions.contains("music_next") && !v.actions.contains("skip"), "next song, not the next exercise");
        v = AiVoiceCmd.parse("приключи след 3 минути");
        check(v.actions.contains("end_in") && v.minutes == 3, "end in 3");
        v = AiVoiceCmd.parse("още 5 минути");
        check(v.actions.contains("end_in") && v.minutes == 5, "5 more minutes");
        v = AiVoiceCmd.parse("увеличи още 5");
        check(!v.actions.contains("end_in"), "увеличи още 5 is no end");
        v = AiVoiceCmd.parse("колко остава");
        check(v.actions.contains("ask_time"), "how long left");
        v = AiVoiceCmd.parse("какъв ми е пулсът");
        check(v.actions.contains("ask_hr"), "the pulse");
        v = AiVoiceCmd.parse("по-дълъг импулс");
        check(!v.actions.contains("ask_hr") && v.commands.size() == 1 && v.commands.get(0).target.equals("impulse"), "импулс is no пулс");
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
        check("увеличи краката".equals(AiVoiceCmd.afterWake("Тренер, увеличи краката")), "wake + command");
        check("спри на пауза".equals(AiVoiceCmd.afterWake("тренера спри на пауза")), "wake form");
        check("".equals(AiVoiceCmd.afterWake("Треньор")) && AiVoiceCmd.afterWake("увеличи краката") == null, "wake alone / none");
        check(AiVoiceCmd.parse("стоп").actions.contains("stop") && AiVoiceCmd.parse("старт").actions.contains("resume"), "стоп / старт");
        check(AiVoiceCmd.parse("спри на пауза").actions.contains("pause"), "спри на пауза");
        check(AiVoiceCmd.step(50, false) == 5 && AiVoiceCmd.step(4, false) == 1 && AiVoiceCmd.step(50, true) == 3
                && AiVoiceCmd.step(0, false) == 1, "the relative step");
        AiVoiceCmd.Result sv = AiVoiceCmd.parseServer("{\"ok\":true,\"command\":{\"commands\":[{\"target\":\"glutes\",\"dir\":\"up\",\"step\":\"small\"}],\"coach\":false}}");
        check(sv.commands.size() == 1 && sv.commands.get(0).small && !sv.coach, "server command");
        check(AiVoiceCmd.parseServer("{\"ok\":false}").coach, "server error → coach");
        System.out.println((fails == 0 ? "OK" : "FAIL") + " — AI workouts: " + checks + " checks, " + fails + " failures");
        if (fails > 0) System.exit(1);
    }
}
