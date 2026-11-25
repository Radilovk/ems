package sim;

import android.app.Activity;
import android.view.View;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The workouts / impulse maps editor (owner, 2026-11-25: a block sets no strength): the list, a map, a block's impulse. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimMaps {
    static View top() {
        return Ui.windows().get(Ui.windows().size() - 1);
    }

    static void scrollDown(View v) {
        if (v instanceof android.widget.ScrollView) {
            ((android.widget.ScrollView) v).fullScroll(View.FOCUS_DOWN);
        }
        if (v instanceof android.view.ViewGroup) {
            android.view.ViewGroup g = (android.view.ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                scrollDown(g.getChildAt(i));
            }
        }
    }

    @Test
    public void maps() throws Exception {
        Suit.enableBluetooth();
        Activity a = App.launch();
        Class.forName("com.isaigu.gymapp.ai.WorkoutsUi").getMethod("open", Activity.class).invoke(null, a);
        Ui.real(1200);
        Ui.shot(Ui.root(a), "maps-1");
        Ui.dump(top(), "maps-1");
        String[] tries = {"Талия и корем", "Копирай и промени", "Импулс ▸", "Двоен импулс", "scroll"};
        int n = 2;
        for (String t : tries) {
            if (t.isEmpty()) {
                continue;
            }
            boolean ok;
            if (t.equals("scroll")) {
                scrollDown(top());
                ok = true;
            } else if (t.startsWith("@")) {
                String[] xy = t.substring(1).split(",");
                ok = Ui.tapAt(top(), Integer.parseInt(xy[0]), Integer.parseInt(xy[1]));
            } else {
                ok = Ui.tap(top(), t);
            }
            System.out.println("SIM maps tap " + t + " " + ok);
            Ui.real(800);
            Ui.shot(Ui.root(a), "maps-" + n);
            Ui.dump(top(), "maps-" + n);
            n++;
        }
    }
}
