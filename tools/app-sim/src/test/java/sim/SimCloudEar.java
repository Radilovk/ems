package sim;

import android.app.Activity;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/**
 * The cloud ear (1.1.592): what the server wrote down decides. "Окей, треньор, пауза." pauses at once (one breath);
 * "Окей, треньор." alone opens a window on our own microphone (no system dialog); words without "тренер" do nothing;
 * a window's silence closes it. The server is not called here — its answers are handed to WakeListener.heard.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimCloudEar {
    static Class<?> wl() throws Exception {
        return Class.forName("com.isaigu.gymapp.ai.WakeListener");
    }

    static void heard(String text, int mode) throws Exception {
        java.lang.reflect.Method m = wl().getDeclaredMethod("heard", String.class, int.class);
        m.setAccessible(true);
        m.invoke(null, text, mode);
        Ui.idle(400);
    }

    static Object field(String n) throws Exception {
        java.lang.reflect.Field f = wl().getDeclaredField(n);
        f.setAccessible(true);
        return f.get(null);
    }

    @Test
    public void cloudEar() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        Ui.createAi();
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Ui.idle(2000);
        Voice.ttsReady();
        for (int i = 0; i < 6; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);
        }
        Ui.idle(30000);
        String before = State.auto();
        System.out.println("SIM ear before: " + before);

        // a false suspicion: nothing happens, no window
        heard("Тренировката днес беше добра.", 1);
        System.out.println("SIM ear false suspicion: window=" + field("window") + " state=\"" + Voice.state() + "\"");
        Assert.assertEquals("a false suspicion opens no window", Boolean.FALSE, field("window"));

        // the phrase and the command in one breath
        heard("Окей, треньор, пауза.", 1);
        Ui.real(1500);
        String paused = State.auto();
        System.out.println("SIM ear after 'Окей, треньор, пауза.': " + paused);
        Voice.heard();
        Ui.idle(3000);
        Assert.assertNotEquals("the command was done", before, paused);

        // the phrase alone: a window on our microphone (pendingEar 2 or the capture running), no system dialog
        heard("Окей, треньор.", 1);
        Object pe = field("pendingEar"), ear = field("ear");
        System.out.println("SIM ear phrase alone: window=" + field("window") + " pendingEar=" + pe + " ear=" + ear
                + " state=\"" + Voice.state() + "\"");
        Assert.assertEquals("the phrase alone opens a window", Boolean.TRUE, field("window"));
        // the window's command arrives from the server
        heard("продължи", 2);
        Ui.real(1500);
        System.out.println("SIM ear after window 'продължи': " + State.auto() + " window=" + field("window"));
        Voice.heard();
        Ui.idle(3000);

        // a window where nothing was said: closed, back to the spotter
        heard("Окей треньор", 1);
        heard("", 2);
        System.out.println("SIM ear silent window: window=" + field("window") + " state=\"" + Voice.state() + "\"");
        Assert.assertEquals("a silent window closes", Boolean.FALSE, field("window"));
    }
}
