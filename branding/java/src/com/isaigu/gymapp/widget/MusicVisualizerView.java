package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/**
 * Radial bar visualizer for the music player circle interior.
 */
public final class MusicVisualizerView extends View implements Runnable {

    private static final int BAR_COUNT = 28;
    private static final long FRAME_MS = 40L;

    private static final int RES_GREEN = 0x7f06006f;
    private static final int RES_GROWN = 0x7f06005c;
    private static final int RES_ORANGE = 0x7f060070;

    private final Paint barPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final float[] barHeights = new float[BAR_COUNT];
    private final float[] barTargets = new float[BAR_COUNT];

    private final Handler handler = new Handler(Looper.getMainLooper());
    private float phase;
    private int liveLevel;
    private boolean playing;
    private int greenColor = 0x9966BB6A;
    private int grownColor = 0xCC81C784;
    private int orangeColor = 0x88F57C00;

    public MusicVisualizerView(Context context) {
        super(context);
        init(context);
    }

    public MusicVisualizerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public MusicVisualizerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        barPaint.setStyle(Paint.Style.STROKE);
        barPaint.setStrokeCap(Paint.Cap.ROUND);
        try {
            greenColor = withAlpha(context.getResources().getColor(RES_GREEN), 0.55f);
            grownColor = withAlpha(context.getResources().getColor(RES_GROWN), 0.85f);
            orangeColor = withAlpha(context.getResources().getColor(RES_ORANGE), 0.45f);
        } catch (Throwable ignored) {
        }
        setWillNotDraw(false);
    }

    public void setPlaying(boolean playing) {
        this.playing = playing;
        if (playing) {
            ensureAnimating();
        } else {
            liveLevel = 0;
            updateTargets();
            ensureAnimating();
        }
    }

    public void setLiveLevel(int level) {
        liveLevel = Math.max(0, Math.min(level, 100));
        ensureAnimating();
    }

    private void updateTargets() {
        float energy = playing ? liveLevel / 100f : 0.08f;
        if (!playing) {
            energy = 0.06f + 0.04f * (float) Math.sin(phase * 0.7f);
        }
        for (int i = 0; i < BAR_COUNT; i++) {
            float wave = (float) (Math.sin(phase + i * 0.42) * 0.5 + 0.5);
            float ripple = (float) (Math.sin(phase * 1.6 + i * 0.18) * 0.5 + 0.5);
            barTargets[i] = energy * (0.25f + 0.75f * wave) * (0.7f + 0.3f * ripple);
        }
    }

    private boolean smoothBars() {
        boolean moving = false;
        for (int i = 0; i < BAR_COUNT; i++) {
            float delta = barTargets[i] - barHeights[i];
            if (Math.abs(delta) > 0.002f) {
                barHeights[i] += delta * (delta > 0 ? 0.38f : 0.22f);
                moving = true;
            } else {
                barHeights[i] = barTargets[i];
            }
        }
        return moving;
    }

    private void ensureAnimating() {
        handler.removeCallbacks(this);
        handler.post(this);
    }

    @Override
    public void run() {
        phase += 0.18f;
        updateTargets();
        boolean needsMore = smoothBars();
        invalidate();
        if (needsMore || playing || liveLevel > 0) {
            handler.postDelayed(this, FRAME_MS);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int w = getWidth();
        int h = getHeight();
        if (w <= 0 || h <= 0) {
            return;
        }
        float cx = w * 0.5f;
        float cy = h * 0.5f;
        float inner = Math.min(w, h) * 0.36f;
        float outer = Math.min(w, h) * 0.49f;
        float barWidth = dp(getContext(), 2.8f);
        barPaint.setStrokeWidth(barWidth);

        for (int i = 0; i < BAR_COUNT; i++) {
            float angle = (float) (i * (Math.PI * 2.0 / BAR_COUNT) - Math.PI / 2.0);
            float height = barHeights[i];
            float startR = inner;
            float endR = inner + (outer - inner) * height;
            float sx = cx + (float) Math.cos(angle) * startR;
            float sy = cy + (float) Math.sin(angle) * startR;
            float ex = cx + (float) Math.cos(angle) * endR;
            float ey = cy + (float) Math.sin(angle) * endR;
            barPaint.setColor(blendColor(height));
            canvas.drawLine(sx, sy, ex, ey, barPaint);
        }
    }

    private int blendColor(float height) {
        if (height > 0.72f) {
            return orangeColor;
        }
        if (height > 0.35f) {
            return grownColor;
        }
        return greenColor;
    }

    private static int withAlpha(int color, float alpha) {
        int a = Math.max(0, Math.min(255, (int) (alpha * 255f)));
        return (color & 0x00FFFFFF) | (a << 24);
    }

    private static float dp(Context context, float value) {
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP,
                value,
                context.getResources().getDisplayMetrics());
    }

}
