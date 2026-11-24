package sim;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;

import org.robolectric.Robolectric;
import org.robolectric.RuntimeEnvironment;

/** The app as a licensed tablet: every module open, the licence fresh (no server call), then MainActivity. */
public final class App {
    private App() {}

    public static Activity launch() throws Exception {
        Context c = RuntimeEnvironment.getApplication();
        SharedPreferences p = c.getSharedPreferences("xems_license", Context.MODE_PRIVATE);
        p.edit().putString("source", "server").putString("mods", "timer,music,pulse,auto,ai,band")
                .putString("feats", "").putString("ems", "C0:00:00:00:00:01,C0:00:00:00:00:02,C0:00:00:00:00:03").putLong("exp", 0).putString("phase", "locked")
                .putBoolean("setup_done", true).putString("key", "SIM-0000")
                .putLong("checked", System.currentTimeMillis()).commit();
        Class<?> lic = Class.forName("com.isaigu.gymapp.widget.XemsLicense");
        try {
            java.lang.reflect.Method init = lic.getDeclaredMethod("init", Context.class);
            init.invoke(null, c);
            java.lang.reflect.Method reload = lic.getDeclaredMethod("reload");
            reload.setAccessible(true);
            reload.invoke(null);
        } catch (Exception e) {
            System.out.println("SIM licence: " + e);
        }
        @SuppressWarnings("unchecked")
        Class<Activity> main = (Class<Activity>) Class.forName("com.isaigu.gymapp.MainActivity");
        Activity a = Robolectric.buildActivity(main).setup().get();
        Ui.real(6000);                                   // the splash's real-time timer
        return a;
    }

    /** "Добави": the client Demo with a simulated suit on the next free row, connected. */
    public static void addClient(Activity a, String mac, String name) throws Exception {
        Ui.tap(Ui.root(a), "Добави");
        Ui.real(800);
        for (int i = 0; i < 4; i++) {
            Suit.advertise(mac, name);
            Ui.real(400);
        }
        android.view.View top = Ui.windows().get(Ui.windows().size() - 1);
        Ui.tap(top, "Demo");
        Ui.tap(top, name);
        Ui.real(400);
        Ui.tap(Ui.windows().get(Ui.windows().size() - 1), "OK");
        Ui.real(1500);
        Suit.connect(mac);
        Ui.real(2500);
    }
}
