package sim;

import android.app.Activity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** "✦ AI я съставя": the AI's own workout (its answer given here — no network), ▶ Старт, the run. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimFree {
    static final String ANSWER = "{\"ok\":true,\"coach\":{\"reply\":\"Съставих тренировка с дъмбели и постелка.\","
            + "\"title\":\"Дъмбели и постелка\",\"blocks\":["
            + "{\"name\":\"Загрявка на място\",\"how\":\"Ходене на място, кръгове с ръцете.\",\"kind\":\"warmup\",\"sets\":1,\"work_s\":60,\"rest_s\":15},"
            + "{\"name\":\"Клек с дъмбел\",\"how\":\"Дъмбел пред гърдите, таз назад, гръб прав.\",\"kind\":\"strength\",\"equipment\":\"dumbbells\",\"sets\":3,\"work_s\":30,\"rest_s\":40},"
            + "{\"name\":\"Румънска тяга\",\"how\":\"Бавно, гръб прав, дъмбелите по краката.\",\"kind\":\"strength\",\"equipment\":\"dumbbells\",\"sets\":3,\"work_s\":30,\"rest_s\":40},"
            + "{\"name\":\"Планк\",\"how\":\"На лакти, тялото в права линия.\",\"kind\":\"core\",\"equipment\":\"mat\",\"sets\":2,\"work_s\":30,\"rest_s\":30}]}}";

    static String mapState() {
        try {
            Class<?> m = Class.forName("com.isaigu.gymapp.ai.MapRunner");
            java.lang.reflect.Method st = m.getDeclaredMethod("strength");
            st.setAccessible(true);
            java.lang.reflect.Method lead = m.getDeclaredMethod("leader");
            lead.setAccessible(true);
            Object it = lead.invoke(null);
            java.lang.reflect.Method bean = m.getDeclaredMethod("bean", Class.forName("com.isaigu.gymapp.train.model.TrainItem"));
            bean.setAccessible(true);
            Object b = bean.invoke(null, it);
            Object sb = b.getClass().getField("strenthBean").get(b);
            int[] z = (int[]) sb.getClass().getField("buwei").get(sb);
            return "strength=" + st.invoke(null) + " bean=" + b.getClass().getField("strenth").get(b) + " buwei="
                    + java.util.Arrays.toString(z) + " dbl=" + b.getClass().getField("activePause").get(b);
        } catch (Exception e) {
            return "state " + e;
        }
    }

    @Test
    public void free() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "AI я съставя");
        Ui.real(500);
        // the AI's answer, as it comes from the server
        Class<?> tr = Class.forName("com.isaigu.gymapp.ai.AiTrain");
        Class<?> aw = Class.forName("com.isaigu.gymapp.ai.AiWorkout");
        java.lang.reflect.Method pm = aw.getDeclaredMethod("parse", String.class);
        pm.setAccessible(true);
        Object plan = pm.invoke(null, ANSWER);
        java.lang.reflect.Field fp = tr.getDeclaredField("freePlan");
        fp.setAccessible(true);
        fp.set(null, plan);
        java.lang.reflect.Field busy = tr.getDeclaredField("busy");
        busy.setAccessible(true);
        busy.set(null, false);
        java.lang.reflect.Method rb = tr.getDeclaredMethod("rebuild");
        rb.setAccessible(true);
        rb.invoke(null);
        Ui.idle(300);
        Ui.shot(Ui.root(a), "free-1-plan");
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Ui.idle(3000);
        Ui.shot(Ui.root(a), "free-2-run");
        Ui.dump(Ui.root(a), "free-2-run");
        for (int i = 0; i < 6; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);
        }
        Ui.idle(90000);
        Blink.suitTick(Ui.root(a));
        Ui.shot(Ui.root(a), "free-3-90s");
        Ui.dump(Ui.root(a), "free-3-90s");
        Voice.ttsReady();
        String[] phrases = {"увеличи краката", "силата на 20", "спри двойния импулс", "следващото упражнение", "пауза", "продължи"};
        for (String p : phrases) {
            Voice.wake();
            Voice.say(p);
            Ui.idle(1500);
            Voice.heard();
            System.out.println("SIM map after \"" + p + "\": " + Ui.bars(Ui.root(a)) + "  " + mapState());
        }
        Ui.shot(Ui.root(a), "free-4-voice");
        boolean c = Ui.tap(Ui.root(a), "Чат");
        Ui.idle(600);
        System.out.println("SIM chat tap=" + c + " windows=" + Ui.windows().size());
        org.junit.Assert.assertTrue("✦ Чат on the AI's own workout", c && Ui.windows().size() >= 2);
    }
}
