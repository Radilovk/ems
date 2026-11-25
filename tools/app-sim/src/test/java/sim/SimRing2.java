package sim;

import android.app.Activity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/**
 * Owner, 2026-11-25: the ring of Интензитет 2 never goes past 1.5 × the main — a push past it stops there with a
 * message; the main going down brings the 2nd down to 1.5 × with it.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimRing2 {
    static Object bean(Activity a) throws Exception {
        Class<?> fb = Class.forName("com.isaigu.gymapp.ai.FocusBoard");
        java.lang.reflect.Method cur = fb.getDeclaredMethod("current");
        cur.setAccessible(true);
        Object it = cur.invoke(null);
        java.lang.reflect.Method bm = fb.getDeclaredMethod("bean", Class.forName("com.isaigu.gymapp.train.model.TrainItem"));
        bm.setAccessible(true);
        return bm.invoke(null, it);
    }

    static int get(Object b, String f) throws Exception {
        return b.getClass().getField(f).getInt(b);
    }

    static void step(int what, int d) throws Exception {
        Class<?> fb = Class.forName("com.isaigu.gymapp.ai.FocusBoard");
        java.lang.reflect.Method m = fb.getDeclaredMethod("step", int.class, int.class);
        m.setAccessible(true);
        m.invoke(null, what, d);
    }

    @Test
    public void ring2() throws Exception {
        Suit.enableBluetooth();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.real(800);
        Object b = bean(a);
        b.getClass().getField("activePause").setBoolean(b, true);
        b.getClass().getField("pauseHz").setInt(b, 7);
        step(0, 20 - get(b, "strenth"));                       // Интензитет 1 → 20
        Ui.idle(500);
        b = bean(a);
        System.out.println("SIM ring2 main=" + get(b, "strenth") + " second=" + get(b, "pauseStrenthPercent"));
        step(1, 60);                                          // push Интензитет 2 far up
        Ui.idle(500);
        b = bean(a);
        int m = get(b, "strenth");
        int p = get(b, "pauseStrenthPercent");
        String toast = org.robolectric.shadows.ShadowToast.getTextOfLatestToast();
        System.out.println("SIM ring2 after push: main=" + m + " second=" + p + " toast=" + toast);
        org.junit.Assert.assertTrue("a push past the top says so (" + toast + ")", toast != null && toast.contains("1,5"));
        Ui.shot(Ui.root(a), "ring2-1");
        org.junit.Assert.assertTrue("the 2nd stops at 1.5 × the main (" + p + " / " + m + ")", p <= m * 3 / 2 && p >= m * 3 / 2 - 1);
        org.robolectric.shadows.ShadowToast.reset();
        step(0, -10);                                         // the main down → the 2nd follows to 1.5 ×
        Ui.idle(500);
        b = bean(a);
        m = get(b, "strenth");
        p = get(b, "pauseStrenthPercent");
        String t2 = org.robolectric.shadows.ShadowToast.getTextOfLatestToast();
        System.out.println("SIM ring2 after main down: main=" + m + " second=" + p + " toast=" + t2);
        org.junit.Assert.assertTrue("the main going down says nothing (" + t2 + ")", t2 == null);
        Ui.shot(Ui.root(a), "ring2-2");
        org.junit.Assert.assertTrue("the 2nd comes down with the main (" + p + " / " + m + ")", p <= m * 3 / 2);
    }
}
