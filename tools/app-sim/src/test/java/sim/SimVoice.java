package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Voice during the AI training: "Тренер, …" commands, the answers aloud, the dialogue going on. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimVoice {
    @Test
    public void voice() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Ui.idle(2000);
        Voice.ttsReady();
        for (int i = 0; i < 6; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);
        }
        Ui.idle(60000);
        System.out.println("SIM voice state before: \"" + Voice.state() + "\"");
        String[] phrases = {"увеличи краката", "продължи", "увеличи краката", "намали ръцете",
                "увеличи ръцете и намали дупето", "по-силно", "пауза", "продължи", "колко повторения клек да направя"};
        System.out.println("SIM bars before: " + Ui.bars(Ui.root(a)));
        for (String p : phrases) {
            System.out.println("SIM before \"" + p + "\": " + State.auto());
            Voice.wake();
            Voice.say(p);
            System.out.println("SIM right after: " + State.auto());
            Ui.real(2500);
            java.util.List<String> said = Voice.heard();
            for (String x : said) {
                org.junit.Assert.assertFalse("a symbol read aloud: " + x, x.matches(".*[▶⏸⏭✓].*"));
            }
            if (p.startsWith("увеличи краката") && !said.isEmpty()) {
                org.junit.Assert.assertFalse("legs said at 100 % while they are not (owner)", said.get(said.size() - 1).contains("100"));
            }
            Ui.idle(6000);                                 // into the next impulse: the bars show the new levels
            System.out.println("SIM after \"" + p + "\": state=\"" + Voice.state() + "\"  " + Ui.bars(Ui.root(a)));
            Ui.dump(Ui.root(a), "voice-" + p.replace(' ', '_'));
        }
        Ui.shot(Ui.root(a), "voice-end");
    }
}
