package sim;

import android.app.Activity;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/** The real app starts (CrashApplication + MainActivity), past the splash. */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimBoot {
    @Test
    public void boot() throws Exception {
        @SuppressWarnings("unchecked")
        Class<Activity> main = (Class<Activity>) Class.forName("com.isaigu.gymapp.MainActivity");
        Activity a = Robolectric.buildActivity(main).setup().get();
        Ui.idle(1000);
        // Ui.shot(Ui.root(a), "boot-1s");
        Ui.real(6000);
        Ui.shot(Ui.root(a), "boot-7s");
        Ui.dump(Ui.root(a), "boot-7s");
        int k = 0;
        for (android.view.View w : Ui.windows()) {
            System.out.println("SIM window " + w + " " + w.getLayoutParams());
            Ui.dump(w, "boot-win" + (k++));
        }
    }
}
