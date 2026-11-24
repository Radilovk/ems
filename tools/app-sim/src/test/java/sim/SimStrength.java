package sim;

import android.app.Activity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/**
 * "The strength cannot be raised above 0 % in the ready programs" (owner, 1.1.548): the AI training with a ready
 * program — the side +, a + held during the countdown, a + in every phase, the voice — the row's strength followed
 * every 5 s for 3 minutes.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimStrength {
    static int strength() {
        String s = State.auto();
        java.util.regex.Matcher m = java.util.regex.Pattern.compile("row strength=(-?\\d+)").matcher(s);
        return m.find() ? Integer.parseInt(m.group(1)) : -99;
    }

    static void collectSeeks(android.view.View v, java.util.List<android.view.View> out) {
        if (v.getClass().getSimpleName().contains("SeekBar") && v.getClass().getSimpleName().contains("Vertical")) {
            out.add(v);
        }
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                collectSeeks(g.getChildAt(i), out);
            }
        }
    }

    static Object itemOf(Activity a) throws Exception {
        Class<?> as = Class.forName("com.isaigu.gymapp.ai.AutoSession");
        java.lang.reflect.Field f = as.getDeclaredField("rows");
        f.setAccessible(true);
        Object r = ((java.util.List<?>) f.get(null)).get(0);
        java.lang.reflect.Field it = r.getClass().getDeclaredField("item");
        it.setAccessible(true);
        return it.get(r);
    }

    @Test
    public void aiReady() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Voice.ttsReady();
        // + right away (the countdown), as a trainer does
        for (int i = 0; i < 3; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);
            Ui.idle(300);
        }
        System.out.println("SIM after + in the countdown: " + State.auto());
        Ui.idle(4000);
        System.out.println("SIM after the countdown: " + State.auto());
        org.junit.Assert.assertTrue("+ in the countdown was thrown away", strength() > 0);
        int max = 0;
        for (int t = 0; t < 180; t += 5) {
            if (t % 15 == 0) {
                Ui.tapAt(Ui.root(a), 1237, 436);
            }
            Ui.idle(5000);
            int s = strength();
            max = Math.max(max, s);
            System.out.println("SIM t=" + t + "s strength=" + s + " " + State.auto().replaceAll(" zones=\\[[^]]*\\]", ""));
        }
        Voice.wake();
        Voice.say("силата на 30");
        Ui.idle(6000);
        System.out.println("SIM after \"силата на 30\": " + State.auto());
        Ui.shot(Ui.root(a), "strength-end");
        org.junit.Assert.assertTrue("the strength never rose above 0 (owner)", max > 0);
        // a channel's slider dragged by a finger (the stock seek bar's touch → PartStrength.bar): legs to 40
        android.view.View bars = null;
        java.util.List<android.view.View> seeks = new java.util.ArrayList<android.view.View>();
        collectSeeks(Ui.root(a), seeks);
        System.out.println("SIM sliders: " + seeks.size() + " " + Ui.bars(Ui.root(a)));
        Class<?> ps = Class.forName("com.isaigu.gymapp.train.utils.PartStrength");
        java.lang.reflect.Method bar = null;
        for (java.lang.reflect.Method m : ps.getMethods()) {
            if (m.getName().equals("bar")) {
                bar = m;
            }
        }
        Object item = itemOf(a);
        Object prog = item.getClass().getMethod("getTrainProgram").invoke(item);
        Object bean = prog.getClass().getMethod("matchProgram").invoke(prog);
        bar.invoke(null, seeks.isEmpty() ? Ui.root(a) : seeks.get(2), prog, bean, 2, 40);   // front thigh → 40
        Ui.idle(30000);                                    // the rise is ≤ 5 an impulse
        String bs = Ui.bars(Ui.root(a));
        System.out.println("SIM after a slider to 40: " + State.auto() + " " + bs);
        java.util.regex.Matcher m = java.util.regex.Pattern.compile("(\\d+)%").matcher(bs);
        java.util.List<Integer> v = new java.util.ArrayList<Integer>();
        while (m.find()) {
            v.add(Integer.parseInt(m.group(1)));
        }
        // the program's wave moves the impulse a few % around the set level
        org.junit.Assert.assertTrue("the slider set the channel's level (" + bs + ")", v.size() == 10 && Math.abs(v.get(1) - 40) <= 4);
        org.junit.Assert.assertTrue("the other channels keep their level (" + bs + ")", Math.abs(v.get(0) - 23) <= 3 && Math.abs(v.get(5) - 23) <= 3);
        org.junit.Assert.assertTrue("\"силата на 30\" did not take", strength() >= 25 || State.auto().contains("REST"));
    }
}
