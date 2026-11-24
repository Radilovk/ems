package sim;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import org.robolectric.shadows.ShadowLooper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/** Helpers to drive the real app: time, screenshots, the view tree as text, taps by text or id. */
public final class Ui {
    private Ui() {}

    public static final int W = 1280, H = 800;

    public static void idle(long ms) {
        // in steps, so periodic tasks (every 100 ms … 1 s) run as on the tablet
        long step = Math.min(100, ms);
        for (long t = 0; t < ms; t += step) {
            ShadowLooper.idleMainLooper(step, TimeUnit.MILLISECONDS);
        }
    }

    /** Real time too: the app's java.util.Timer callbacks (TimerUtils) run on real threads. */
    public static void real(long ms) throws InterruptedException {
        for (long t = 0; t < ms; t += 50) {
            ShadowLooper.idleMainLooper(50, TimeUnit.MILLISECONDS);
            Thread.sleep(50);
        }
    }

    public static View root(Activity a) {
        return a.getWindow().getDecorView();
    }

    public static void layout(View v) {
        v.measure(View.MeasureSpec.makeMeasureSpec(W, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(H, View.MeasureSpec.EXACTLY));
        v.layout(0, 0, W, H);
    }

    /** The screen as the tablet shows it: the activity's content, then every dialog window over it. */
    public static void shot(View v, String name) throws Exception {
        layout(v);
        Bitmap b = Bitmap.createBitmap(W, H, Bitmap.Config.ARGB_8888);
        android.graphics.Canvas cv = new android.graphics.Canvas(b);
        cv.drawColor(0xFF000000);
        View fc = byId(v, "frameContainer");
        if (fc instanceof ViewGroup) {
            // the container's own foreground still holds the splash: its children only
            ViewGroup g = (ViewGroup) fc;
            for (int i = 0; i < g.getChildCount(); i++) {
                View c = g.getChildAt(i);
                if (c.getVisibility() == View.VISIBLE) {
                    cv.save();
                    cv.translate(c.getLeft(), c.getTop());
                    c.draw(cv);
                    cv.restore();
                }
            }
        } else {
            v.draw(cv);
        }
        for (View w : windows()) {
            if (w == v || w.getVisibility() != View.VISIBLE) {
                continue;
            }
            android.view.WindowManager.LayoutParams lp = (android.view.WindowManager.LayoutParams) w.getLayoutParams();
            int ww = lp.width > 0 ? lp.width : W, wh = lp.height > 0 ? lp.height : 0;
            w.measure(View.MeasureSpec.makeMeasureSpec(ww, View.MeasureSpec.EXACTLY),
                    wh > 0 ? View.MeasureSpec.makeMeasureSpec(wh, View.MeasureSpec.EXACTLY)
                            : lp.height == ViewGroup.LayoutParams.MATCH_PARENT ? View.MeasureSpec.makeMeasureSpec(H, View.MeasureSpec.EXACTLY)
                            : View.MeasureSpec.makeMeasureSpec(H, View.MeasureSpec.AT_MOST));
            w.layout(0, 0, w.getMeasuredWidth(), w.getMeasuredHeight());
            int g = lp.gravity;
            int x = (g & android.view.Gravity.HORIZONTAL_GRAVITY_MASK) == android.view.Gravity.END
                    || (g & android.view.Gravity.HORIZONTAL_GRAVITY_MASK) == android.view.Gravity.RIGHT
                    ? W - w.getMeasuredWidth() : (W - w.getMeasuredWidth()) / 2;
            int y = (g & android.view.Gravity.VERTICAL_GRAVITY_MASK) == android.view.Gravity.TOP ? 0 : (H - w.getMeasuredHeight()) / 2;
            if ((lp.flags & android.view.WindowManager.LayoutParams.FLAG_DIM_BEHIND) != 0) {
                cv.drawColor(((int) (lp.dimAmount * 255) << 24));
            }
            cv.save();
            cv.translate(x, y);
            w.draw(cv);
            cv.restore();
        }
        File f = new File(System.getProperty("sim.out", "out"), name + ".png");
        try (FileOutputStream o = new FileOutputStream(f)) {
            b.compress(Bitmap.CompressFormat.PNG, 100, o);
        }
        System.out.println("SIM shot " + f.getName());
    }

    /** Every window's root view (the activity, dialogs), bottom to top. */
    @SuppressWarnings("unchecked")
    public static List<View> windows() {
        try {
            Object g = Class.forName("android.view.WindowManagerGlobal").getMethod("getInstance").invoke(null);
            java.lang.reflect.Field f = g.getClass().getDeclaredField("mViews");
            f.setAccessible(true);
            return new ArrayList<View>((List<View>) f.get(g));
        } catch (Exception e) {
            return new ArrayList<View>();
        }
    }

    /** Every visible view: depth, class, id name, text, bounds on screen — what I read instead of looking. */
    public static void dump(View v, String name) throws Exception {
        layout(v);
        File f = new File(System.getProperty("sim.out", "out"), name + ".tree.txt");
        try (PrintStream o = new PrintStream(new FileOutputStream(f), true, "UTF-8")) {
            dump(v, 0, o);
        }
        System.out.println("SIM tree " + f.getName());
    }

    static void dump(View v, int depth, PrintStream o) {
        if (v.getVisibility() != View.VISIBLE) {
            return;
        }
        int[] p = new int[2];
        v.getLocationOnScreen(p);
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < depth; i++) {
            b.append("  ");
        }
        b.append(v.getClass().getSimpleName());
        String id = idName(v);
        if (id != null) {
            b.append(" #").append(id);
        }
        if (v instanceof TextView && ((TextView) v).getText() != null && ((TextView) v).getText().length() > 0) {
            b.append(" \"").append(((TextView) v).getText().toString().replace('\n', ' ')).append('"');
        }
        if (v.isClickable()) {
            b.append(" [tap]");
        }
        if (v.getAlpha() < 1f) {
            b.append(" alpha=").append(v.getAlpha());
        }
        if (v.getBackground() != null) {
            b.append(" bg=").append(v.getBackground().getClass().getSimpleName());
        }
        b.append(" @").append(p[0]).append(',').append(p[1]).append(' ').append(v.getWidth()).append('x').append(v.getHeight());
        o.println(b);
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                dump(g.getChildAt(i), depth + 1, o);
            }
        }
    }

    public static String idName(View v) {
        if (v.getId() == View.NO_ID) {
            return null;
        }
        try {
            return v.getResources().getResourceEntryName(v.getId());
        } catch (Exception e) {
            return null;
        }
    }

    /** The row's ten channel bars as the screen shows them (the "N%" over each bar), left to right. */
    public static String bars(View root) {
        Blink.suitTick(root);
        idle(50);
        layout(root);
        List<View> all = find(root, "%");
        java.util.TreeMap<Integer, String> m = new java.util.TreeMap<Integer, String>();
        for (View v : all) {
            int[] p = new int[2];
            v.getLocationOnScreen(p);
            if (p[1] >= 90 && p[1] <= 105 && p[0] < 760) {
                m.put(p[0], ((TextView) v).getText().toString());
            }
        }
        return "прасец/пр.бедро/з.бедро/глутеус/корем/кръст/гръб/трапец/гърди/ръце = " + m.values();
    }

    public static List<View> find(View root, String text) {
        List<View> out = new ArrayList<View>();
        find(root, text, out);
        return out;
    }

    static void find(View v, String text, List<View> out) {
        if (v.getVisibility() != View.VISIBLE) {
            return;
        }
        if (v instanceof TextView && ((TextView) v).getText() != null && ((TextView) v).getText().toString().contains(text)) {
            out.add(v);
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                find(g.getChildAt(i), text, out);
            }
        }
    }

    /** Tap the first visible view with this text (or its clickable parent). */
    public static boolean tap(View root, String text) {
        layout(root);
        for (View v : find(root, text)) {
            View c = v;
            while (c != null && !c.isClickable()) {
                c = c.getParent() instanceof View ? (View) c.getParent() : null;
            }
            if (c != null) {
                c.performClick();
                System.out.println("SIM tap \"" + text + "\"");
                idle(300);
                return true;
            }
        }
        System.out.println("SIM tap \"" + text + "\" — not found");
        return false;
    }

    /** Tap at a point: the topmost clickable view there (as a finger would). */
    public static boolean tapAt(View root, int x, int y) {
        layout(root);
        View hit = hit(root, x, y);
        if (hit != null) {
            hit.performClick();
            System.out.println("SIM tap @" + x + "," + y + " " + hit.getClass().getSimpleName());
            idle(200);
            return true;
        }
        System.out.println("SIM tap @" + x + "," + y + " — nothing");
        return false;
    }

    static View hit(View v, int x, int y) {
        if (v.getVisibility() != View.VISIBLE) {
            return null;
        }
        int[] p = new int[2];
        v.getLocationOnScreen(p);
        if (x < p[0] || y < p[1] || x >= p[0] + v.getWidth() || y >= p[1] + v.getHeight()) {
            return null;
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = g.getChildCount() - 1; i >= 0; i--) {
                View r = hit(g.getChildAt(i), x, y);
                if (r != null) {
                    return r;
                }
            }
        }
        return v.isClickable() ? v : null;
    }

    public static boolean tapId(View root, String id) {
        layout(root);
        View v = byId(root, id);
        if (v != null && v.isClickable()) {
            v.performClick();
            System.out.println("SIM tap #" + id);
            idle(300);
            return true;
        }
        System.out.println("SIM tap #" + id + " — not found");
        return false;
    }

    public static View byId(View v, String id) {
        if (id.equals(idName(v)) && v.getVisibility() == View.VISIBLE) {
            return v;
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                View r = byId(g.getChildAt(i), id);
                if (r != null) {
                    return r;
                }
            }
        }
        return null;
    }
}
