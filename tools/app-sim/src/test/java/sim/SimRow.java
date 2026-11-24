package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** Explore: add a client to a row. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimRow {
    @Test
    public void add() throws Exception {
        Suit.enableBluetooth();
        Activity a = App.launch();
        Ui.shot(Ui.root(a), "row-0");
        Ui.tap(Ui.root(a), "Добави");
        Ui.real(1500);
        for (int i = 0; i < 12; i++) {
            Suit.advertise("C0:00:00:00:00:01", "XEMS-SIM1");
            Ui.real(1000);
        }
        Ui.shot(Ui.root(a), "row-1");
        View top = Ui.windows().get(Ui.windows().size() - 1);
        Ui.tap(top, "Demo");
        Ui.tap(top, "XEMS-SIM1");
        Ui.real(500);
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "OK");
        Ui.real(1500);
        Suit.connect("C0:00:00:00:00:01");
        Ui.real(3000);
        System.out.println("SIM last write " + Suit.lastWrite("C0:00:00:00:00:01"));
        Ui.shot(Ui.root(a), "row-2");
        Ui.dump(Ui.root(a), "row-2");
        int k = 0;
        for (android.view.View w : Ui.windows()) {
            Ui.dump(w, "row-1-w" + (k++));
        }
    }
}
