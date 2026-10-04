package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;

import com.isaigu.gymapp.widget.XemsUi;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * The picture of a program by its kind and the client's sex: neon line art, so it always sits on a dark tile —
 * in the light theme too. Each picture comes in the exact pixel sizes of a 128×96 dp tile at densities 1.5 / 2 /
 * 2.5 / 3 (assets/xems/programs/key@w.webp, made line-preserving by scripts/gen-program-art.py); the smallest one
 * ≥ what the tile needs is drawn, scaled by ≤ 1.33 with mipmaps, so the thin lines stay whole.
 * docs/xems-exercise-templates.md
 */
public final class ProgramArt {
    private ProgramArt() {}

    static final String DIR = "xems/programs/";
    /** The tile behind the art, both themes (the neon needs the dark). */
    static final int TILE = 0xFF12141A;

    private static final Map<String, Bitmap> CACHE = new HashMap<String, Bitmap>();
    /** Pixel widths made by scripts/gen-program-art.py (4:3). */
    static final int[] WIDTHS = {192, 256, 320, 384};

    static int widthFor(int px) {
        for (int w : WIDTHS) {
            if (w >= px) {
                return w;
            }
        }
        return WIDTHS[WIDTHS.length - 1];
    }

    /**
     * The picture of the template alone (owner, 1.1.336): the active template is the standing figure with the
     * dumbbell, whatever the program — the exercises (when they are on) are drawn by their own figures.
     */
    public static String templateKey(AiModel.Sex sex) {
        return sex == AiModel.Sex.MALE ? "active-m" : "active-f";
    }

    /** The passive procedure and the recovery (owner, 1.1.336): the figure lying back, by sex. */
    public static String passiveKey(AiModel.Sex sex) {
        return sex == AiModel.Sex.MALE ? "passive-m" : "passive-f";
    }

    /** Which picture: an active program by what it trains, a passive one by the client's sex. */
    public static String key(String programId, boolean active, AiModel.Sex sex) {
        boolean male = sex == AiModel.Sex.MALE;
        if (!active || programId == null) {
            return passiveKey(sex);
        }
        if (male) {
            if (AutoCatalog.GLUTES_LEGS.equals(programId) || AutoCatalog.CARDIO.equals(programId)) {
                return "m-lunge";
            }
            if (AutoCatalog.CORE.equals(programId) || AutoCatalog.POWER.equals(programId)
                    || AutoCatalog.BACK_ACTIVE.equals(programId) || AutoCatalog.UPPER.equals(programId)) {
                return "m-pushup";
            }
            return "m-squat";
        }
        if (AutoCatalog.GLUTES_LEGS.equals(programId) || AutoCatalog.POSTPARTUM.equals(programId)) {
            return "f-bridge";
        }
        if (AutoCatalog.CORE.equals(programId)) {
            return "f-plank";
        }
        if (AutoCatalog.POWER.equals(programId)) {
            return "f-pushup";
        }
        if (AutoCatalog.CARDIO.equals(programId)) {
            return "f-climber";
        }
        if (AutoCatalog.BACK_ACTIVE.equals(programId)) {
            return "f-lateral";
        }
        if (AutoCatalog.SENIOR.equals(programId)) {
            return "f-curl";
        }
        return "f-squat";
    }

    static Bitmap bitmap(Context c, String key, int px) {
        String name = key + "@" + (key.endsWith("-sq") ? RING_PX : widthFor(px));
        synchronized (CACHE) {
            if (CACHE.containsKey(name)) {
                return CACHE.get(name);
            }
            Bitmap b = null;
            try {
                InputStream in = c.getAssets().open(DIR + name + ".webp");
                BitmapFactory.Options o = new BitmapFactory.Options();
                o.inScaled = false;
                b = BitmapFactory.decodeStream(in, null, o);
                in.close();
                if (b != null) {
                    b.setHasMipMap(true);
                }
            } catch (Throwable t) {
                android.util.Log.w("xems", "ProgramArt " + key + ": " + t);
            }
            CACHE.put(name, b);
            return b;
        }
    }

    /**
     * Puts picture {@code key} on a tile from {@link #tile} (owner, 1.1.315: the passive recovery shows the figure
     * lying back, not the program's own picture). Nothing happens when the tile already shows it.
     */
    public static void show(View tile, String key, int wDp) {
        if (!(tile instanceof FrameLayout) || ((FrameLayout) tile).getChildCount() == 0
                || !(((FrameLayout) tile).getChildAt(0) instanceof ImageView) || key.equals(tile.getTag())) {
            return;
        }
        Context c = tile.getContext();
        Bitmap b = bitmap(c, key, XemsUi.dp(c, wDp));
        if (b == null) {
            return;
        }
        android.graphics.drawable.BitmapDrawable d = new android.graphics.drawable.BitmapDrawable(c.getResources(), b);
        d.setFilterBitmap(true);
        d.setAntiAlias(true);
        ((ImageView) ((FrameLayout) tile).getChildAt(0)).setImageDrawable(d);
        tile.setTag(key);
    }

    /** Pixel side of the square ring pictures (scripts/gen-program-art.py SQ). */
    static final int RING_PX = 512;

    /**
     * The owner's square picture for the Auto ring (1.1.338): whole, transparent, filling the circle — no tile.
     * {@code key} = {@link #templateKey} / {@link #passiveKey}.
     */
    public static ImageView ring(Context c, String key) {
        ImageView iv = new ImageView(c);
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        showRing(iv, key);
        return iv;
    }

    /** Puts square picture {@code key} on a ring view (nothing when it already shows it). */
    public static void showRing(View v, String key) {
        if (!(v instanceof ImageView) || key.equals(v.getTag())) {
            return;
        }
        Context c = v.getContext();
        Bitmap b = bitmap(c, key + "-sq", RING_PX);
        if (b == null) {
            return;
        }
        android.graphics.drawable.BitmapDrawable d = new android.graphics.drawable.BitmapDrawable(c.getResources(), b);
        d.setFilterBitmap(true);
        d.setAntiAlias(true);
        ((ImageView) v).setImageDrawable(d);
        v.setTag(key);
    }

    /** The picture on its dark rounded tile, {@code wDp} × {@code hDp}; an empty tile if the picture is missing. */
    public static View tile(Context c, String programId, boolean active, AiModel.Sex sex, int wDp, int hDp) {
        return tileKey(c, key(programId, active, sex), wDp, hDp);
    }

    /** The same tile for a picture picked by its key ({@link #templateKey}, {@link #passiveKey}). */
    public static View tileKey(Context c, String key, int wDp, int hDp) {
        FrameLayout f = new FrameLayout(c);
        f.setBackgroundDrawable(XemsUi.rounded(TILE, XemsUi.dp(c, 14), 0, 0));
        ImageView iv = new ImageView(c);
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        iv.setAdjustViewBounds(false);
        Bitmap b = bitmap(c, key, XemsUi.dp(c, wDp));
        if (b != null) {
            android.graphics.drawable.BitmapDrawable d = new android.graphics.drawable.BitmapDrawable(c.getResources(), b);
            d.setFilterBitmap(true);
            d.setAntiAlias(true);
            iv.setImageDrawable(d);
        }
        f.addView(iv, new FrameLayout.LayoutParams(XemsUi.dp(c, wDp), XemsUi.dp(c, hDp), Gravity.CENTER));
        f.setTag(key);
        f.setMinimumWidth(XemsUi.dp(c, wDp));
        f.setMinimumHeight(XemsUi.dp(c, hDp));
        return f;
    }
}
