package sim;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Blink detector: the screen every stepMs; each small view's pixels hashed; a view whose look changes back and
 * forth (A→B→A) many times is reported with its id / text and the times it changed.
 */
public final class Blink {
    private Blink() {}

    static final class Track {
        String name;
        List<Long> hashes = new ArrayList<Long>();
        List<Long> at = new ArrayList<Long>();
        List<String> why = new ArrayList<String>();
        int flips;
    }

    public static void watch(android.app.Activity a, long ms, long stepMs, String tag) throws Exception {
        Map<String, Track> t = new LinkedHashMap<String, Track>();
        long start = 0;
        for (long now = 0; now < ms; now += stepMs) {
            Ui.idle(stepMs);
            View root = Ui.root(a);
            Ui.layout(root);
            Bitmap b = Bitmap.createBitmap(Ui.W, Ui.H, Bitmap.Config.ARGB_8888);
            android.graphics.Canvas cv = new android.graphics.Canvas(b);
            View fc = Ui.byId(root, "frameContainer");
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
            List<View> vs = new ArrayList<View>();
            collect(root, vs);
            for (View v : vs) {
                int[] p = new int[2];
                v.getLocationOnScreen(p);
                String key = Ui.idName(v) != null ? "#" + Ui.idName(v) + "@" + p[0] + "," + p[1]
                        : v.getClass().getSimpleName() + "@" + p[0] + "," + p[1] + " " + v.getWidth() + "x" + v.getHeight();
                Track tr = t.get(key);
                if (tr == null) {
                    tr = new Track();
                    tr.name = key + (v instanceof TextView ? " \"" + ((TextView) v).getText() + "\"" : "");
                    t.put(key, tr);
                }
                long h = hash(b, p[0], p[1], v.getWidth(), v.getHeight(), v.getVisibility() == View.VISIBLE && v.isShown());
                int n = tr.hashes.size();
                if (n >= 2 && h == tr.hashes.get(n - 2) && h != tr.hashes.get(n - 1)) {
                    tr.flips++;                                   // back to the look before: a blink
                }
                if (n == 0 || h != tr.hashes.get(n - 1)) {
                    tr.hashes.add(h);
                    tr.at.add(now);
                }
            }
        }
        System.out.println("SIM blink [" + tag + "] over " + ms / 1000 + " s:");
        for (Track tr : t.values()) {
            if (tr.flips >= 3) {
                StringBuilder s = new StringBuilder();
                for (int i = 0; i < Math.min(12, tr.at.size()); i++) {
                    s.append(tr.at.get(i) / 1000.0).append("s ");
                }
                System.out.println("SIM   BLINK " + tr.flips + "× " + tr.name + " — changes at " + s);
            }
        }
    }

    /** Every frame (16 ms): each control's alpha, visibility, background, text, selected — A→B→A counted. */
    public static int frames(android.app.Activity a, long ms, String tag) {
        Map<String, Track> t = new LinkedHashMap<String, Track>();
        for (long now = 0; now < ms; now += 16) {
            Ui.idle(16);
            View root = Ui.root(a);
            if (now % 1000 < 16) {
                suitTick(root);                               // the suit's status once a second: the rows rebind
            }
            List<View> vs = new ArrayList<View>();
            collectAll(root, vs, true);
            for (View v : vs) {
                String key = key(v);
                Track tr = t.get(key);
                if (tr == null) {
                    tr = new Track();
                    tr.name = key;
                    t.put(key, tr);
                }
                long h = sig(v);
                int n = tr.hashes.size();
                if (n >= 2 && h == tr.hashes.get(n - 2) && h != tr.hashes.get(n - 1)) {
                    tr.flips++;
                }
                if (n == 0 || h != tr.hashes.get(n - 1)) {
                    tr.hashes.add(h);
                    tr.at.add(now);
                    if (tr.why.size() < 14) {
                        tr.why.add(now + "ms " + desc(v));
                    }
                }
            }
        }
        System.out.println("SIM frames [" + tag + "] over " + ms / 1000 + " s:");
        int total = 0;
        for (Track tr : t.values()) {
            total += tr.flips >= 2 ? tr.flips : 0;
            boolean watched = tr.name.contains("#startpaulse") || tr.name.contains("#stop") || tr.name.contains("#save");
            if (tr.flips >= 2 || (watched && tr.hashes.size() > 1)) {
                System.out.println("SIM   FLIP " + tr.flips + "× (" + tr.hashes.size() + " looks) " + tr.name);
                for (String w : tr.why) {
                    System.out.println("SIM        " + w);
                }
            }
        }
        return total;
    }

    /** As the real suit's notifications do: the row list rebinds (TrainViewHolder.updateUI). */
    public static void suitTick(View root) {
        View rv = Ui.byId(root, "recyclerView");
        if (rv instanceof android.support.v7.widget.RecyclerView) {
            android.support.v7.widget.RecyclerView.Adapter<?> ad = ((android.support.v7.widget.RecyclerView) rv).getAdapter();
            if (ad != null) {
                ad.notifyDataSetChanged();
            }
        }
        Ui.layout(root);
    }

    static String key(View v) {
        StringBuilder b = new StringBuilder();
        View c = v;
        while (c != null) {
            String id = Ui.idName(c);
            b.insert(0, "/" + (id != null ? "#" + id : c.getClass().getSimpleName()
                    + (c.getParent() instanceof ViewGroup ? ((ViewGroup) c.getParent()).indexOfChild(c) : 0)));
            c = c.getParent() instanceof View ? (View) c.getParent() : null;
            if (b.length() > 400) {
                break;
            }
        }
        return b.toString();
    }

    static long sig(View v) {
        long h = v.getVisibility() * 7L + Float.floatToIntBits(v.getAlpha()) * 31L;
        android.graphics.drawable.Drawable bg = v.getBackground();
        if (bg != null) {
            h = h * 131 + System.identityHashCode(bg);
            if (bg instanceof android.graphics.drawable.GradientDrawable && android.os.Build.VERSION.SDK_INT >= 24) {
                android.content.res.ColorStateList cl = ((android.graphics.drawable.GradientDrawable) bg).getColor();
                h = h * 131 + (cl != null ? cl.getDefaultColor() : 0);
            }
            h = h * 131 + bg.getLevel() + java.util.Arrays.hashCode(bg.getState());
        }
        if (v instanceof TextView) {
            h = h * 131 + ((TextView) v).getCurrentTextColor();
        }
        h = h * 131 + (v.isSelected() ? 1 : 0) + (v.isActivated() ? 2 : 0) + (v.isEnabled() ? 4 : 0);
        return h;
    }

    static String desc(View v) {
        android.graphics.drawable.Drawable bg = v.getBackground();
        return "vis=" + v.getVisibility() + " alpha=" + v.getAlpha() + " bg=" + (bg != null ? bg.getClass().getSimpleName()
                + "@" + Integer.toHexString(System.identityHashCode(bg)) : "-")
                + (v instanceof TextView ? " text=\"" + ((TextView) v).getText() + "\" color=" + Integer.toHexString(((TextView) v).getCurrentTextColor()) : "")
                + (v.isSelected() ? " selected" : "");
    }

    static void collectAll(View v, List<View> out, boolean parentShown) {
        boolean shown = parentShown && v.getVisibility() == View.VISIBLE;
        if (v.isClickable() || Ui.idName(v) != null) {
            out.add(v);
        }
        if (v instanceof ViewGroup && shown) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                collectAll(g.getChildAt(i), out, shown);
            }
        }
    }

    static void collect(View v, List<View> out) {
        if (v.getVisibility() == View.GONE) {
            return;
        }
        // buttons and small controls (≤ 260 × 260): where a blink is seen
        if (v.getWidth() > 0 && v.getWidth() <= 260 && v.getHeight() <= 260 && (v.isClickable() || v instanceof TextView)) {
            out.add(v);
        }
        if (v instanceof ViewGroup) {
            ViewGroup g = (ViewGroup) v;
            for (int i = 0; i < g.getChildCount(); i++) {
                collect(g.getChildAt(i), out);
            }
        }
    }

    static long hash(Bitmap b, int x, int y, int w, int h, boolean shown) {
        if (!shown) {
            return 1;
        }
        long s = 17;
        for (int yy = Math.max(0, y); yy < Math.min(Ui.H, y + h); yy += 3) {
            for (int xx = Math.max(0, x); xx < Math.min(Ui.W, x + w); xx += 3) {
                s = s * 31 + b.getPixel(xx, yy);
            }
        }
        return s;
    }
}
