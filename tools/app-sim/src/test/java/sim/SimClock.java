package sim;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, instrumentedPackages = {"com.isaigu"})
public class SimClock {
    @Test
    public void clock() throws Exception {
        Class<?> c = Class.forName("com.isaigu.gymapp.ai.AutoSession");
        System.out.println("SIM loader " + c.getClassLoader().getClass().getName());
        long t0 = com.isaigu.simclock.Now.ms();
        org.robolectric.shadows.ShadowLooper.idleMainLooper(5, java.util.concurrent.TimeUnit.SECONDS);
        System.out.println("SIM app clock moved " + (com.isaigu.simclock.Now.ms() - t0) + " ms; SystemClock " + android.os.SystemClock.uptimeMillis());
    }
}
