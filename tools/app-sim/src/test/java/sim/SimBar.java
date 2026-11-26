package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The AI bar during the run: 🎙 off / on again, ✦ Чат opens a chat one can type in. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimBar {
    static boolean wakeOn() throws Exception {
        return (Boolean) Class.forName("com.isaigu.gymapp.ai.WakeListener").getMethod("isOn").invoke(null);
    }

    @Test
    public void bar() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        Ui.createAi();
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Ui.idle(3000);
        System.out.println("SIM wake on at start: " + wakeOn());
        Ui.tap(Ui.root(a), "„Окей тренер, …“");
        Ui.idle(500);
        System.out.println("SIM after 1st mic tap: on=" + wakeOn());
        Ui.dump(Ui.root(a), "bar-off");
        boolean t2 = Ui.tap(Ui.root(a), "изкл.");
        Ui.idle(1500);
        System.out.println("SIM after 2nd mic tap (found=" + t2 + "): on=" + wakeOn());
        org.junit.Assert.assertTrue("🎙 turned off cannot be turned on again", wakeOn());
        int before = Ui.windows().size();
        boolean c = Ui.tap(Ui.root(a), "Чат");
        Ui.idle(800);
        System.out.println("SIM chat tap found=" + c + " windows " + before + " → " + Ui.windows().size());
        Ui.shot(Ui.root(a), "bar-chat");
        View top = Ui.windows().get(Ui.windows().size() - 1);
        Ui.dump(top, "bar-chat");
        View f = Ui.byId(top, "nope");
        java.util.List<View> edits = new java.util.ArrayList<View>();
        collectEdits(top, edits);
        System.out.println("SIM chat edit fields: " + edits.size());
        for (View e : edits) {
            boolean ok = e.requestFocus();
            System.out.println("SIM   field focusable=" + e.isFocusable() + " focus=" + ok + " hasFocus=" + e.hasFocus()
                    + " window flags=" + Integer.toHexString(((android.view.WindowManager.LayoutParams) top.getLayoutParams()).flags));
        }
        Ui.idle(12000);
        System.out.println("SIM after 12 s idle: windows=" + Ui.windows().size());
        org.junit.Assert.assertEquals("✦ Чат did not open, or closed by itself", 2, Ui.windows().size());
        org.junit.Assert.assertEquals("the chat has no field to write in", 1, edits.size());
    }

    static void collectEdits(View v, java.util.List<View> out) {
        if (v instanceof android.widget.EditText) {
            out.add(v);
        }
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                collectEdits(g.getChildAt(i), out);
            }
        }
    }
}
