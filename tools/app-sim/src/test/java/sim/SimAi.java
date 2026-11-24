package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The AI training on the real app: open, prepare, ▶ Старт, the run. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimAi {
    @Test
    public void aiTraining() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.shot(Ui.root(a), "ai-0-client");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1500);
        Ui.shot(Ui.root(a), "ai-1-open");
        View top = Ui.windows().get(Ui.windows().size() - 1);
        Ui.dump(top, "ai-1-open");
        Ui.tap(top, "Старт");
        Voice.ttsReady();
        Ui.idle(2000);
        Ui.shot(Ui.root(a), "ai-2-started");
        Ui.dump(Ui.root(a), "ai-2-started");
        for (int i = 0; i < 6; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);              // the side "+": strength up
        }
        int flips = Blink.frames(a, 60000, "AI run, rows, the suit's status every second");
        // the AI training never stops by itself (owner, 1.1.548): 4 more minutes, the engine looked at every second
        for (int s = 0; s < 240; s++) {
            Ui.idle(1000);
            String st = State.auto();
            org.junit.Assert.assertFalse("an automatic stop in the AI training: " + st,
                    st.contains("engine=REST") || st.contains("engine=HR_PAUSE"));
        }
        java.util.List<String> said = Voice.heard();
        String all = String.join(" | ", said);
        System.out.println("SIM announced: " + all);
        org.junit.Assert.assertTrue("the warm-up is said aloud", all.contains("загрявка"));
        org.junit.Assert.assertEquals("a control blinks (owner: the 2nd-impulse button under the pause one)", 0, flips);
        Ui.shot(Ui.root(a), "ai-3-150s");
    }
}
