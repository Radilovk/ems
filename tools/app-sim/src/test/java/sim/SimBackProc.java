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
public class SimBackProc {
    @Test
    public void back() throws Exception {
        new SimDrain().run("Облекчаване на болки в гърба", "back");
    }
}
