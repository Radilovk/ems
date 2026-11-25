package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/**
 * Owner, 2026-11-25: no program sets a strength or a share between channels — only which channels work (the rest
 * locked); the drainage's wave, the calf at 8 Hz. Auto → Здраве → Пасивна → a procedure → Старт → + → the wave.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimDrain {
    static View top() {
        return Ui.windows().get(Ui.windows().size() - 1);
    }

    void run(String program, String tag) throws Exception {
        Suit.enableBluetooth();
        Activity a = App.launch();
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "Авто");
        Ui.real(1000);
        Ui.tap(top(), "Здраве");
        Ui.real(500);
        Ui.tap(top(), "Пасивна");
        Ui.real(500);
        Ui.shot(Ui.root(a), tag + "-1");
        System.out.println("SIM " + tag + " picked " + Ui.tap(top(), program));
        Ui.real(500);
        Ui.tap(top(), "Напред");
        Ui.real(800);
        Ui.shot(Ui.root(a), tag + "-2");
        Ui.tap(top(), "Фази и зони");
        Ui.real(600);
        Ui.shot(Ui.root(a), tag + "-3");
        Ui.dump(top(), tag + "-3");
        Ui.tap(top(), "Старт");
        Ui.real(1500);
        for (int i = 0; i < 6; i++) {
            Ui.tapAt(Ui.root(a), 1237, 436);
            Ui.idle(1200);
        }
        Ui.shot(Ui.root(a), tag + "-4");
        System.out.println("SIM " + tag + " after +×6: " + State.auto() + " " + Ui.bars(Ui.root(a)));
        for (int i = 0; i < 8; i++) {
            Ui.idle(4000);
            System.out.println("SIM " + tag + " t" + i + ": " + State.auto() + " " + Ui.bars(Ui.root(a)));
            if (i == 3 || i == 6) {
                Ui.shot(Ui.root(a), tag + "-5-" + i);
            }
        }
        Ui.dump(Ui.root(a), tag + "-5");
    }

    @Test
    public void drain() throws Exception {
        run("Лимфен дренаж", "drain");
    }
}
