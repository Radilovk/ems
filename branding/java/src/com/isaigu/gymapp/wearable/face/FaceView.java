package com.isaigu.gymapp.wearable.face;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.view.View;

import java.io.InputStream;
import java.util.List;

/**
 * The face studio's picture: the owner's face image (assets/xems/face/face.webp) with the anatomy layer of
 * {@link FaceArt} on top — the target muscle, the pads with their numbers, the keep-out zones, and while the device
 * works the contraction itself (the muscle shortens and glows, impulses run along the fibres, the mouth corner
 * lifts). Animates only while shown and while something moves.
 */
public final class FaceView extends View {
    /** Fills the scene every frame (the studio: step, device state). */
    public interface Source {
        void fill(FaceArt.Scene s, long now);
    }

    static final String ASSET = "xems/face/face.webp";
    private static Bitmap picture;

    private final FaceArt.Scene scene = new FaceArt.Scene();
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
    private final Paint text = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final RectF dst = new RectF();
    private final DashPathEffect dash = new DashPathEffect(new float[] {14, 10}, 0);
    private final long born = System.currentTimeMillis();
    private Source source;
    private boolean attached;
    /** The part of the picture to show (picture px): the face, the hair crown trimmed. */
    private final RectF focus = new RectF(70, 150, FaceArt.W - 70, FaceArt.H);
    private float scale = 1f;
    private float ox;
    private float oy;
    private int accent = 0xFF5EEAFF;
    private int rose = 0xFFFF6F91;
    private int danger = 0xFFFF5A5A;
    private float radius;

    public FaceView(Context c) {
        super(c);
        text.setTypeface(Typeface.DEFAULT_BOLD);
        text.setTextAlign(Paint.Align.CENTER);
        load(c);
        radius = 22 * c.getResources().getDisplayMetrics().density;
    }

    public void setSource(Source s) {
        source = s;
        invalidate();
    }

    public void setColors(int accent, int rose, int danger) {
        this.accent = accent;
        this.rose = rose;
        this.danger = danger;
    }

    /** Show the lower face (the chin program) a little closer. */
    public void focusChin(boolean chin) {
        if (chin) {
            focus.set(190, 330, FaceArt.W - 190, FaceArt.H);
        } else {
            focus.set(70, 150, FaceArt.W - 70, FaceArt.H);
        }
        invalidate();
    }

    private static void load(Context c) {
        if (picture != null) {
            return;
        }
        InputStream in = null;
        try {
            in = c.getAssets().open(ASSET);
            BitmapFactory.Options o = new BitmapFactory.Options();
            o.inPreferredConfig = Bitmap.Config.RGB_565;
            picture = BitmapFactory.decodeStream(in, null, o);
        } catch (Throwable t) {
            picture = null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        attached = true;
        postInvalidateOnAnimation();
    }

    @Override
    protected void onDetachedFromWindow() {
        attached = false;
        super.onDetachedFromWindow();
    }

    @Override
    protected void onDraw(Canvas c) {
        int w = getWidth();
        int h = getHeight();
        if (w <= 0 || h <= 0) {
            return;
        }
        // cover the view with the focus area (centred), rounded corners
        scale = Math.max(w / focus.width(), h / focus.height());
        ox = (w - focus.width() * scale) / 2 - focus.left * scale;
        oy = (h - focus.height() * scale) / 2 - focus.top * scale;
        int save = c.save();
        path.reset();
        RectF clip = new RectF(0, 0, w, h);
        path.addRoundRect(clip, radius, radius, Path.Direction.CW);
        c.clipPath(path);
        c.drawColor(0xFF04101C);
        if (picture != null) {
            dst.set(ox, oy, ox + FaceArt.W * scale, oy + FaceArt.H * scale);
            paint.setStyle(Paint.Style.FILL);
            paint.setAlpha(255);
            paint.setShader(null);
            c.drawBitmap(picture, null, dst, paint);
        }
        long now = System.currentTimeMillis();
        scene.level[0] = 0;
        scene.level[1] = 0;
        scene.t = (now - born) / 1000f;
        if (source != null) {
            source.fill(scene, now);
        }
        boolean moving = scene.placing || scene.level[0] > 0 || scene.level[1] > 0 || source != null;
        List<FaceArt.Prim> prims = FaceArt.compose(scene);
        for (FaceArt.Prim p : prims) {
            draw(c, p);
        }
        // a soft floor so the overlays below read on any part of the picture
        paint.setStyle(Paint.Style.FILL);
        paint.setShader(new LinearGradient(0, h * 0.82f, 0, h, 0x00000000, 0x99000000, Shader.TileMode.CLAMP));
        c.drawRect(0, h * 0.82f, w, h, paint);
        paint.setShader(null);
        c.restoreToCount(save);
        if (attached && moving && getVisibility() == VISIBLE) {
            postInvalidateOnAnimation();
        }
    }

    private float X(float x) {
        return ox + x * scale;
    }

    private float Y(float y) {
        return oy + y * scale;
    }

    private void draw(Canvas c, FaceArt.Prim p) {
        float a = Math.max(0f, Math.min(1f, p.alpha));
        if (a <= 0.01f) {
            return;
        }
        if (p.text != null) {
            text.setTextSize(36 * scale);
            text.setColor(0xFF04222C);
            text.setAlpha((int) (255 * a));
            Paint.FontMetrics fm = text.getFontMetrics();
            c.drawText(p.text, X(p.x), Y(p.y) - (fm.ascent + fm.descent) / 2, text);
            return;
        }
        toPath(p.path);
        paint.setPathEffect(p.dashed ? dash : null);
        paint.setShader(null);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        float sw = 4f * scale * p.width;
        switch (p.role) {
            case FaceArt.GLOW:
                // a soft halo: three wide strokes, fainter outwards (no blur filter — stays on the GPU)
                paint.setStyle(Paint.Style.STROKE);
                for (int k = 3; k >= 1; k--) {
                    paint.setColor(rose);
                    paint.setAlpha((int) (255 * a * 0.12f * (4 - k)));
                    paint.setStrokeWidth(scale * (10 + 14 * k));
                    c.drawPath(path, paint);
                }
                return;
            case FaceArt.MUSCLE:
                fill(c, rose, a * 0.9f);
                return;
            case FaceArt.FIBRE:
                stroke(c, 0xFFFFE1E8, a, 2.4f * scale * p.width);
                return;
            case FaceArt.NOGO:
                stroke(c, danger, a, 3.4f * scale * p.width);
                return;
            case FaceArt.PAD:
                fill(c, accent, a * 0.55f);
                return;
            case FaceArt.PAD_LINE:
                stroke(c, 0xFFE8FBFF, a, 3f * scale);
                return;
            case FaceArt.ARROW:
                stroke(c, accent, a, 5f * scale);
                return;
            case FaceArt.SPARK:
                fill(c, 0xFFFFFFFF, a);
                return;
            case FaceArt.RIPPLE:
                stroke(c, accent, a, 3f * scale);
                return;
            case FaceArt.CORNER:
                paint.setStyle(Paint.Style.STROKE);
                paint.setColor(0xFFFFFFFF);
                paint.setAlpha((int) (255 * a * 0.25f));
                paint.setStrokeWidth(18 * scale);
                c.drawPath(path, paint);
                fill(c, 0xFFFFFFFF, a);
                return;
            default:
                stroke(c, 0xFFFFFFFF, a, sw);
        }
    }

    private void fill(Canvas c, int color, float a) {
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(color);
        paint.setAlpha((int) (255 * Math.max(0f, Math.min(1f, a))));
        c.drawPath(path, paint);
    }

    private void stroke(Canvas c, int color, float a, float w) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(color);
        paint.setAlpha((int) (255 * Math.max(0f, Math.min(1f, a))));
        paint.setStrokeWidth(Math.max(1f, w));
        c.drawPath(path, paint);
    }

    private void toPath(float[] q) {
        path.reset();
        int i = 0;
        while (i < q.length) {
            float op = q[i];
            if (op == FaceArt.M) {
                path.moveTo(X(q[i + 1]), Y(q[i + 2]));
                i += 3;
            } else if (op == FaceArt.L) {
                path.lineTo(X(q[i + 1]), Y(q[i + 2]));
                i += 3;
            } else if (op == FaceArt.C) {
                path.cubicTo(X(q[i + 1]), Y(q[i + 2]), X(q[i + 3]), Y(q[i + 4]), X(q[i + 5]), Y(q[i + 6]));
                i += 7;
            } else {
                path.close();
                i += 1;
            }
        }
    }
}
