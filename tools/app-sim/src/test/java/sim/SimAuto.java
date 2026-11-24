package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Explore: Auto → a ready program → its setting-up → + : does the strength rise? */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimAuto {
    @Test
    public void auto() throws Exception {
        Suit.enableBluetooth();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "Авто");
        Ui.real(1000);
        Ui.shot(Ui.root(a), "auto-1");
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Напред");
        Ui.real(800);
        Ui.shot(Ui.root(a), "auto-2");
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Ui.real(1500);
        Ui.shot(Ui.root(a), "auto-3");
        Ui.dump(Ui.root(a), "auto-3");
        System.out.println("SIM after start: " + State.auto() + " " + Ui.bars(Ui.root(a)));
        // the ways a trainer raises the strength: the side +, the row's own +, the ring
        for (int i = 0; i < 5; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);
            Ui.idle(1200);
        }
        System.out.println("SIM after side +×5: " + State.auto() + " " + Ui.bars(Ui.root(a)));
        Ui.shot(Ui.root(a), "auto-4");
    }
}
