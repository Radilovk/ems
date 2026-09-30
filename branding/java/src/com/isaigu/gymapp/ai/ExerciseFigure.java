package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * An exercise figure that moves with the impulse: the frames of the exercise (assets/xems/exercises.json, from
 * branding/exercises/) drawn as filled paths in one colour with a fine glow. During the impulse the body goes to
 * the working pose (the first frame: bottom of the squat, hips up in the bridge), in the pause it comes back to the
 * last frame; one-frame exercises (plank, cardio machine) stand still. Paths are plain absolute M/L/C/Z
 * (scripts/exercise-paths.py), so no SVG library.
 */
public final class ExerciseFigure extends View {
    public static final String ASSET = "xems/exercises.json";
    /** Figure colour: cyan for men, magenta for women (the design's pair); the glow is the same colour. */
    public static final int COLOR = 0xFF22E3FF;
    public static final int COLOR_F = 0xFFFF3BD4;

    public static int colorFor(AiModel.Sex sex) {
        return sex == AiModel.Sex.MALE ? COLOR : COLOR_F;
    }

    static final class Fig {
        float[] vb;
        Path[] frames;
    }

    private static final Map<String, JSONObject> RAW = new HashMap<String, JSONObject>();
    private static final Map<String, Fig> CACHE = new HashMap<String, Fig>();
    private static volatile boolean loading;
    private static volatile boolean loaded;
    /** For the figures of downloaded library exercises (files/xems_ex, ExerciseLibrary). */
    private static volatile Context app;

    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG);
    private Fig fig;
    private String id;
    private long cycleStartMs;
    private int onS = 4;
    private int offS = 4;
    private final float density;
    private float glowScale = -1;
    /** Lists: the working pose, no animation loop. */
    private boolean still;
    /** Lists: no glow, so no software layer (hundreds of cards). */
    private boolean withGlow = true;

    public ExerciseFigure(Context c) {
        super(c);
        setLayerType(LAYER_TYPE_SOFTWARE, null);      // BlurMaskFilter needs it; the view is small
        float d = c.getResources().getDisplayMetrics().density;
        fill.setStyle(Paint.Style.FILL);
        fill.setColor(COLOR);
        glow.setStyle(Paint.Style.FILL);
        glow.setColor(COLOR);
        density = d;
        preload(c);
    }

    /** Parse the asset once, off the main thread (≈2 MB). */
    public static void preload(Context c) {
        if (c != null && app == null) {
            app = c.getApplicationContext();
        }
        if (loaded || loading || c == null) {
            return;
        }
        loading = true;
        new Thread(new Load(c.getApplicationContext()), "xems-figures").start();
    }

    static final class Load implements Runnable {
        private final Context c;

        Load(Context c) {
            this.c = c;
        }

        @Override
        public void run() {
            try {
                InputStream in = c.getAssets().open(ASSET);
                ByteArrayOutputStream out = new ByteArrayOutputStream();
                byte[] buf = new byte[16384];
                int n;
                while ((n = in.read(buf)) > 0) {
                    out.write(buf, 0, n);
                }
                in.close();
                JSONArray a = new JSONObject(out.toString("UTF-8")).getJSONArray("exercises");
                synchronized (RAW) {
                    for (int i = 0; i < a.length(); i++) {
                        JSONObject o = a.getJSONObject(i);
                        RAW.put(o.getString("id"), o);
                    }
                }
                loaded = true;
            } catch (Throwable t) {
                android.util.Log.w("xems", "ExerciseFigure.load", t);
            } finally {
                loading = false;
            }
        }
    }

    private static Fig fig(String id) {
        synchronized (RAW) {
            Fig f = CACHE.get(id);
            if (f != null) {
                return f;
            }
            JSONObject o = RAW.get(id);
            if (o == null && app != null) {
                o = ExerciseLibrary.cachedFigure(app, id);     // a library exercise the admin enabled
            }
            if (o == null) {
                return null;
            }
            try {
                f = new Fig();
                JSONArray vb = o.getJSONArray("vb");
                f.vb = new float[] {(float) vb.getDouble(0), (float) vb.getDouble(1), (float) vb.getDouble(2),
                        (float) vb.getDouble(3)};
                JSONArray ps = o.getJSONArray("paths");
                f.frames = new Path[ps.length()];
                for (int i = 0; i < ps.length(); i++) {
                    f.frames[i] = parse(ps.getString(i));
                }
                CACHE.put(id, f);
                return f;
            } catch (Throwable t) {
                return null;
            }
        }
    }

    /** Absolute M / L / C / Z with numbers separated by spaces or the next command letter. */
    static Path parse(String d) {
        Path p = new Path();
        p.setFillType(Path.FillType.EVEN_ODD);
        int i = 0;
        int n = d.length();
        char cmd = 'M';
        float[] v = new float[6];
        while (i < n) {
            char ch = d.charAt(i);
            if (ch == ' ' || ch == ',') {
                i++;
                continue;
            }
            if (Character.isLetter(ch)) {
                cmd = ch;
                i++;
                if (cmd == 'Z') {
                    p.close();
                }
                continue;
            }
            int need = cmd == 'C' ? 6 : 2;
            for (int k = 0; k < need; k++) {
                while (i < n && (d.charAt(i) == ' ' || d.charAt(i) == ',')) {
                    i++;
                }
                int s = i;
                if (i < n && (d.charAt(i) == '-' || d.charAt(i) == '+')) {
                    i++;
                }
                while (i < n && (Character.isDigit(d.charAt(i)) || d.charAt(i) == '.')) {
                    i++;
                }
                v[k] = Float.parseFloat(d.substring(s, i));
            }
            if (cmd == 'M') {
                p.moveTo(v[0], v[1]);
                cmd = 'L';
            } else if (cmd == 'L') {
                p.lineTo(v[0], v[1]);
            } else if (cmd == 'C') {
                p.cubicTo(v[0], v[1], v[2], v[3], v[4], v[5]);
            }
        }
        return p;
    }

    /** Draw the working pose only (lists, picker): no animation. */
    public void setStill(boolean still) {
        this.still = still;
        invalidate();
    }

    /** Without the glow the view needs no software layer — for grids of many figures. */
    public void setGlow(boolean on) {
        withGlow = on;
        setLayerType(on ? LAYER_TYPE_SOFTWARE : LAYER_TYPE_NONE, null);
        invalidate();
    }

    /** The client's colour ({@link #colorFor}). */
    public void setColor(int color) {
        if ((fill.getColor() & 0xFFFFFF) != (color & 0xFFFFFF)) {
            fill.setColor(color);
            glow.setColor(color);
            invalidate();
        }
    }

    /** Which exercise (null = none). */
    public void setExercise(String id) {
        if (id == null ? this.id == null : id.equals(this.id)) {
            return;
        }
        this.id = id;
        fig = null;
        invalidate();
    }

    /** The running device cycle: its start and ON / OFF seconds. */
    public void setCycle(long startMs, int onS, int offS) {
        this.cycleStartMs = startMs;
        this.onS = Math.max(1, onS);
        this.offS = Math.max(1, offS);
    }

    @Override
    protected void onDraw(Canvas c) {
        if (id == null) {
            return;
        }
        if (fig == null) {
            fig = fig(id);
            if (fig == null) {
                postInvalidateDelayed(200);           // the asset is still loading
                return;
            }
        }
        float w = getWidth();
        float h = getHeight();
        float s = Math.min(w / fig.vb[2], h / fig.vb[3]);
        c.save();
        c.translate((w - fig.vb[2] * s) / 2f - fig.vb[0] * s, (h - fig.vb[3] * s) / 2f - fig.vb[1] * s);
        c.scale(s, s);
        if (withGlow && s != glowScale) {                          // the blur follows the canvas scale: keep it 3.5 dp on screen
            glowScale = s;
            glow.setMaskFilter(new BlurMaskFilter(Math.max(0.5f, 3.5f * density / s), BlurMaskFilter.Blur.NORMAL));
        }
        int n = fig.frames.length;
        float pos = 0;
        if (n > 1 && !still) {
            long now = System.currentTimeMillis();
            float cyc = onS + offS;
            float x = ((now - cycleStartMs) / 1000f) % cyc;
            if (x < 0) {
                x += cyc;
            }
            boolean on = x < onS;
            float p = on ? Math.min(1f, x / (onS * 0.55f)) : Math.min(1f, (x - onS) / (offS * 0.55f));
            float q = p * p * (3 - 2 * p);
            pos = on ? (1 - q) * (n - 1) : q * (n - 1);      // 0 = working pose, n-1 = rest pose
        }
        for (int k = 0; k < n; k++) {
            float a = n == 1 ? 1f : Math.max(0f, 1f - Math.abs(pos - k));
            if (a <= 0.01f) {
                continue;
            }
            if (withGlow) {
                glow.setAlpha((int) (110 * a));
                c.drawPath(fig.frames[k], glow);
            }
            fill.setAlpha((int) (255 * a));
            c.drawPath(fig.frames[k], fill);
        }
        c.restore();
        if (n > 1 && !still && isShown()) {
            postInvalidateOnAnimation();
        }
    }
}
