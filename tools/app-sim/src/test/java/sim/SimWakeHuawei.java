package sim;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.speech.RecognitionService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;

/**
 * Owner, 2026-11-25 (Huawei): "the setup records, but in a session 'тренер' opens nothing". A recognition service is
 * listed but never gets ready: the window must not stay open for good — after 3 s the tablet gives the background
 * recognizer up (kept) and opens the system's speech dialog, as before 1.1.561.
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 30, qualifiers = "w1280dp-h800dp-land-mdpi", instrumentedPackages = {"com.isaigu"})
@GraphicsMode(GraphicsMode.Mode.NATIVE)
public class SimWakeHuawei {
    @Test
    public void notReady() throws Exception {
        Suit.enableBluetooth();
        Voice.permit();
        Activity a = App.launch();
        // a recognition service that exists (isRecognitionAvailable = true) but never answers
        ResolveInfo ri = new ResolveInfo();
        ri.serviceInfo = new ServiceInfo();
        ri.serviceInfo.packageName = "com.huawei.vassistant";
        ri.serviceInfo.name = "com.huawei.vassistant.Recognizer";
        Shadows.shadowOf(a.getPackageManager()).addResolveInfoForIntent(new Intent(RecognitionService.SERVICE_INTERFACE), ri);
        App.addClient(a, "C0:00:00:00:00:01", "XEMS-SIM1");
        Ui.tap(Ui.root(a), "AI тренировка");
        Ui.real(1000);
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "Старт");
        Voice.ttsReady();
        Ui.idle(2000);
        Class<?> wl = Class.forName("com.isaigu.gymapp.ai.WakeListener");
        java.lang.reflect.Field so = wl.getDeclaredField("serviceOk");
        so.setAccessible(true);
        System.out.println("SIM huawei serviceOk before=" + so.get(null));
        Voice.wake();
        System.out.println("SIM huawei after wake: state=" + Voice.state() + " serviceOk=" + so.get(null));
        Ui.idle(3500);                                         // the recognizer never gets ready
        boolean kept = a.getSharedPreferences("xems_wake", Context.MODE_PRIVATE).getBoolean("noBgRec", false);
        Intent started = Shadows.shadowOf(a).peekNextStartedActivity();
        System.out.println("SIM huawei after 3.5 s: state=" + Voice.state() + " serviceOk=" + so.get(null)
                + " kept=" + kept + " dialog=" + (started != null ? started.getAction() : null));
        org.junit.Assert.assertEquals("the background recognizer given up", Boolean.FALSE, so.get(null));
        org.junit.Assert.assertTrue("the system's speech dialog opens",
                started != null && android.speech.RecognizerIntent.ACTION_RECOGNIZE_SPEECH.equals(started.getAction()));
    }
}
