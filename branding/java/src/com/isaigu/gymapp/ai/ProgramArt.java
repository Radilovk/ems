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
 * The picture of a program by its kind and the client's sex (assets/xems/programs/*.webp, from branding/programs/):
 * neon line art, so it always sits on a dark tile — in the light theme too. docs/xems-exercise-templates.md
 */
public final class ProgramArt {
    private ProgramArt() {}

    static final String DIR = "xems/programs/";
    /** The tile behind the art, both themes (the neon needs the dark). */
    static final int TILE = 0xFF12141A;

    private static final Map<String, Bitmap> CACHE = new HashMap<String, Bitmap>();

    /** Which picture: an active program by what it trains, a passive one by the client's sex. */
    public static String key(String programId, boolean active, AiModel.Sex sex) {
        boolean male = sex == AiModel.Sex.MALE;
        if (!active || programId == null) {
            if (male) {
                return "passive-m";
            }
            return AutoCatalog.DRAIN.equals(programId) || AutoCatalog.RECOVERY.equals(programId)
                    ? "passive-f-music" : "passive-f-line";
        }
        if (male) {
            if (AutoCatalog.GLUTES_LEGS.equals(programId) || AutoCatalog.CARDIO.equals(programId)) {
                return "m-lunge";
            }
            if (AutoCatalog.CORE.equals(programId) || AutoCatalog.POWER.equals(programId)
                    || AutoCatalog.BACK_ACTIVE.equals(programId)) {
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

    static Bitmap bitmap(Context c, String key) {
        synchronized (CACHE) {
            if (CACHE.containsKey(key)) {
                return CACHE.get(key);
            }
            Bitmap b = null;
            try {
                InputStream in = c.getAssets().open(DIR + key + ".webp");
                b = BitmapFactory.decodeStream(in);
                in.close();
            } catch (Throwable t) {
                android.util.Log.w("xems", "ProgramArt " + key + ": " + t);
            }
            CACHE.put(key, b);
            return b;
        }
    }

    /** The picture on its dark rounded tile, {@code wDp} × {@code hDp}; an empty tile if the picture is missing. */
    public static View tile(Context c, String programId, boolean active, AiModel.Sex sex, int wDp, int hDp) {
        FrameLayout f = new FrameLayout(c);
        f.setBackgroundDrawable(XemsUi.rounded(TILE, XemsUi.dp(c, 14), 0, 0));
        ImageView iv = new ImageView(c);
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        iv.setAdjustViewBounds(false);
        Bitmap b = bitmap(c, key(programId, active, sex));
        if (b != null) {
            iv.setImageBitmap(b);
        }
        int pad = XemsUi.dp(c, 5);
        iv.setPadding(pad, pad, pad, pad);
        f.addView(iv, new FrameLayout.LayoutParams(XemsUi.dp(c, wDp), XemsUi.dp(c, hDp), Gravity.CENTER));
        f.setMinimumWidth(XemsUi.dp(c, wDp));
        f.setMinimumHeight(XemsUi.dp(c, hDp));
        return f;
    }
}
