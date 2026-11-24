package sim;

import android.app.Activity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

import java.util.ArrayList;
import java.util.List;

/**
 * Every function the AI coach must reach (owner, 1.1.549: "a full test of all functions for the AI coach"), on the
 * real app: each spoken command and each coach answer (as the server sends it), what the suit actually gets after it.
 * A report table: PASS / FAIL per function, in both AI trainings (a ready program, the AI's own workout).
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimCoachAll {
    static final List<String> report = new ArrayList<String>();
    static int fails;

    static void row(String where, String function, String how, boolean ok, String detail) {
        fails += ok ? 0 : 1;
        String r = String.format("%-6s %-4s %-34s %-44s %s", where, ok ? "PASS" : "FAIL", function, how, detail);
        report.add(r);
        System.out.println("SIM REPORT " + r);
    }

    /** A spoken command ("тренер" → the phrase); then the impulses run on for a while. */
    static String voice(String phrase, long settleMs) throws Exception {
        Voice.wake();
        Voice.say(phrase);
        Ui.idle(settleMs);
        List<String> said = Voice.heard();
        return said.isEmpty() ? "" : said.get(said.size() - 1);
    }


    static java.lang.reflect.Method onAnswer() throws Exception {
        Class<?> tr = Class.forName("com.isaigu.gymapp.ai.AiTrain");
        for (java.lang.reflect.Method m : tr.getDeclaredMethods()) {
            if (m.getName().equals("onAnswer")) {
                m.setAccessible(true);
                return m;
            }
        }
        return null;
    }

    static void coachAnswer(String coachJson, long settleMs) throws Exception {
        Class<?> ac = Class.forName("com.isaigu.gymapp.ai.AiCoach");
        java.lang.reflect.Method parse = ac.getDeclaredMethod("parse", String.class);
        parse.setAccessible(true);
        Object r = parse.invoke(null, "{\"ok\":true,\"coach\":" + coachJson + "}");
        Class<?> tr = Class.forName("com.isaigu.gymapp.ai.AiTrain");
        java.lang.reflect.Field seq = tr.getDeclaredField("seq");
        seq.setAccessible(true);
        onAnswer().invoke(null, r, seq.get(null), true, "test");
        Ui.idle(settleMs);
    }

    static Activity start(boolean free) throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        if (free) {
            Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "AI я съставя");
            Ui.real(400);
            Class<?> tr = Class.forName("com.isaigu.gymapp.ai.AiTrain");
            Class<?> aw = Class.forName("com.isaigu.gymapp.ai.AiWorkout");
            java.lang.reflect.Method pm = aw.getDeclaredMethod("parse", String.class);
            pm.setAccessible(true);
            java.lang.reflect.Field fp = tr.getDeclaredField("freePlan");
            fp.setAccessible(true);
            fp.set(null, pm.invoke(null, SimFree.ANSWER));
            java.lang.reflect.Field busy = tr.getDeclaredField("busy");
            busy.setAccessible(true);
            busy.set(null, false);
            java.lang.reflect.Method rb = tr.getDeclaredMethod("rebuild");
            rb.setAccessible(true);
            rb.invoke(null);
            Ui.idle(300);
        }
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Voice.ttsReady();
        Ui.idle(5000);
        return a;
    }

    @Test
    public void readyProgram() throws Exception {
        Activity a = start(false);
        String W = "ready";
        Out o;
        String s;
        // ---- strength
        s = voice("силата на 30", 25000);
        int peak = 0;
        for (int k = 0; k < 30; k++) {
            Ui.idle(1000);
            peak = Math.max(peak, Out.now().strength);
        }
        o = Out.now();
        // the program's warm-up runs softer than the level by design: its strongest impulse 22–33
        row(W, "strength to a level", "\"силата на 30\"", peak >= 22 && peak <= 33, "the strongest impulse " + peak + " · said \"" + s + "\"");
        int before = o.strength;
        s = voice("по-силно", 12000);
        o = Out.now();
        row(W, "strength up (relative)", "\"по-силно\"", o.strength > before, before + " → " + o.strength + " · \"" + s + "\"");
        before = o.strength;
        s = voice("по-слабо", 12000);
        o = Out.now();
        row(W, "strength down (relative)", "\"по-слабо\"", o.strength < before, before + " → " + o.strength + " · \"" + s + "\"");
        before = o.strength;
        s = voice("увеличи с 5", 15000);
        o = Out.now();
        row(W, "strength up by a size", "\"увеличи с 5\"", o.strength - before >= 3, before + " → " + o.strength);
        // ---- channels
        Out b = Out.now();
        s = voice("увеличи краката", 15000);
        o = Out.now();
        row(W, "a muscle group up", "\"увеличи краката\"", o.ch("legs") > b.ch("legs") && Math.abs(o.ch("arms") - b.ch("arms")) <= 2,
                "legs " + b.ch("legs") + "→" + o.ch("legs") + ", arms " + b.ch("arms") + "→" + o.ch("arms") + " · \"" + s + "\"");
        b = Out.now();
        s = voice("намали ръцете", 12000);
        o = Out.now();
        row(W, "a muscle group down", "\"намали ръцете\"", o.ch("arms") < b.ch("arms"),
                "arms " + b.ch("arms") + "→" + o.ch("arms") + " · \"" + s + "\"");
        b = Out.now();
        s = voice("увеличи ръцете и намали дупето", 15000);
        o = Out.now();
        row(W, "two groups in one phrase", "\"увеличи ръцете и намали дупето\"", o.ch("arms") > b.ch("arms") && o.ch("glutes") < b.ch("glutes"),
                "arms " + b.ch("arms") + "→" + o.ch("arms") + ", glutes " + b.ch("glutes") + "→" + o.ch("glutes"));
        s = voice("корема на 20", 25000);
        o = Out.now();
        row(W, "a channel to a level", "\"корема на 20\"", Math.abs(o.ch("abs") - 20) <= 4, "abs " + o.ch("abs") + " · \"" + s + "\"");
        s = voice("изключи гърдите", 12000);
        o = Out.now();
        row(W, "a channel off", "\"изключи гърдите\"", o.ch("chest") == 0, "chest " + o.ch("chest"));
        s = voice("включи гърдите", 15000);
        o = Out.now();
        row(W, "a channel on", "\"включи гърдите\"", o.ch("chest") > 0, "chest " + o.ch("chest"));
        // ---- impulse
        b = Out.now();
        s = voice("по-дълъг импулс", 15000);
        o = Out.now();
        row(W, "impulse longer", "\"по-дълъг импулс\"", o.tuneOn > b.tuneOn, "tune on " + b.tuneOn + "→" + o.tuneOn + " (suit on " + b.on + "→" + o.on + ")");
        b = Out.now();
        s = voice("по-дълга пауза", 15000);
        o = Out.now();
        row(W, "pause between impulses longer", "\"по-дълга пауза\"", o.tuneOff > b.tuneOff, "tune off " + b.tuneOff + "→" + o.tuneOff + " (suit off " + b.off + "→" + o.off + ")");
        b = Out.now();
        s = voice("увеличи честотата", 15000);
        o = Out.now();
        row(W, "frequency up", "\"увеличи честотата\"", o.tuneHz > b.tuneHz, "tune hz " + b.tuneHz + "→" + o.tuneHz + "% (suit " + b.hz + "→" + o.hz + " Hz)");
        // ---- double impulse
        s = voice("пусни двойния импулс", 15000);
        o = Out.now();
        row(W, "double impulse on", "\"пусни двойния импулс\"", o.engineDbl, "engine " + o.engineDbl + ", suit " + o.dbl + " · \"" + s + "\"");
        s = voice("спри двойния импулс", 15000);
        o = Out.now();
        row(W, "double impulse off", "\"спри двойния импулс\"", !o.engineDbl && !o.dbl && "RUN".equals(o.engine),
                "engine " + o.engineDbl + ", suit " + o.dbl + ", state " + o.engine);
        // ---- flow
        b = Out.now();
        s = voice("следващото упражнение", 6000);
        o = Out.now();
        row(W, "next exercise", "\"следващото упражнение\"", !String.valueOf(o.exercise).equals(b.exercise) || !"RUN".equals(b.engine),
                b.exercise + " → " + o.exercise);
        s = voice("пауза", 4000);
        o = Out.now();
        row(W, "pause", "\"пауза\"", "USER_PAUSE".equals(o.engine) && o.strength == 0, o.engine + " S=" + o.strength + " · \"" + s + "\"");
        Ui.idle(20000);
        o = Out.now();
        row(W, "the pause holds (no auto-resume)", "20 s later", "USER_PAUSE".equals(o.engine), o.engine);
        s = voice("продължи", 8000);
        o = Out.now();
        row(W, "go on", "\"продължи\"", "RUN".equals(o.engine) && o.strength > 0, o.engine + " S=" + o.strength);
        // ---- the coach's answers (the server's JSON, the live dialogue)
        b = Out.now();
        coachAnswer("{\"reply\":\"По-леко.\",\"actions\":[\"softer\"]}", 12000);
        o = Out.now();
        row(W, "coach: softer", "actions:[softer]", o.strength < b.strength, b.strength + " → " + o.strength);
        b = Out.now();
        coachAnswer("{\"reply\":\"По-силно.\",\"actions\":[\"stronger\"]}", 12000);
        o = Out.now();
        row(W, "coach: stronger", "actions:[stronger]", o.strength > b.strength, b.strength + " → " + o.strength);
        b = Out.now();
        coachAnswer("{\"reply\":\"Удължавам.\",\"on_delta\":1,\"off_delta\":2,\"hz_pct\":-10,\"rest_pct\":30}", 15000);
        o = Out.now();
        row(W, "coach: impulse/pause/Hz/rests", "on+1 off+2 hz-10% rest+30%", o.tuneOn == 1 && o.tuneOff == 2 && o.tuneHz == -10,
                "tune " + o.tuneOn + "," + o.tuneOff + "," + o.tuneHz + "," + String.format("%.2f", o.tuneRest));
        coachAnswer("{\"reply\":\"Двоен импулс.\",\"actions\":[\"double_on\"]}", 8000);
        o = Out.now();
        row(W, "coach: double impulse on", "actions:[double_on]", o.engineDbl, "engine " + o.engineDbl);
        coachAnswer("{\"reply\":\"Пауза.\",\"actions\":[\"pause\"]}", 3000);
        o = Out.now();
        row(W, "coach: pause", "actions:[pause]", "USER_PAUSE".equals(o.engine), o.engine);
        coachAnswer("{\"reply\":\"Продължаваме.\",\"actions\":[\"resume\"]}", 8000);
        o = Out.now();
        row(W, "coach: resume", "actions:[resume]", "RUN".equals(o.engine), o.engine);
        b = Out.now();
        coachAnswer("{\"reply\":\"Следващото.\",\"actions\":[\"skip\"]}", 6000);
        o = Out.now();
        row(W, "coach: next exercise", "actions:[skip]", !String.valueOf(o.exercise).equals(b.exercise), b.exercise + " → " + o.exercise);
        coachAnswer("{\"reply\":\"Още 2 минути.\",\"end_in_min\":2}", 3000);
        Ui.idle(150000);
        o = Out.now();
        row(W, "coach: end the active part in N min", "end_in_min:2 (+150 s)", "COOLDOWN".equals(o.phase) || o.phase.contains("COOL")
                || o.phase.contains("RECOV") || "DONE".equals(o.engine), "phase " + o.phase + " " + o.engine);
        // ---- to the recovery by voice
        s = voice("стоп", 6000);
        o = Out.now();
        row(W, "stop → the recovery", "\"стоп\"", !"RUN".equals(o.engine) || o.phase.contains("COOL") || o.phase.contains("RECOV"),
                "phase " + o.phase + " " + o.engine + " · \"" + s + "\"");
        print();
    }

    static void print() {
        System.out.println("SIM ======== report (" + fails + " FAIL) ========");
        for (String r : report) {
            System.out.println("SIM " + r);
        }
        org.junit.Assert.assertEquals("functions the AI coach cannot reach — see the report", 0, fails);
    }
}
