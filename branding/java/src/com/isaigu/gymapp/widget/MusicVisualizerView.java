package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

import com.isaigu.gymapp.train.utils.MusicSync;

/**
 * Radial music visualizer: rays from the play-button ring toward the seek ring (never past it).
 */
public final class MusicVisualizerView extends View implements Runnable {

    private static final int BAR_COUNT = 40;
    private static final long FRAME_MS = 16L;

    /** Start just outside the 56dp play button (fraction of half-size). */
    private static final float INNER_RADIUS_FRAC = 0.34f;
    /** End at the inner edge of the seek ring track (fraction of half-size). */
    private static final float OUTER_RADIUS_FRAC = 0.72f;

    private static final int RES_GREEN = 0x7f06006f;
    private static final int RES_GROWN = 0x7f06005c;
    private static final int RES_ORANGE = 0x7f060070;

    private final Paint barPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint glowPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final float[] barLevels = new float[BAR_COUNT];
    private final float[] barPeaks = new float[BAR_COUNT];

    private final Handler handler = new Handler(Looper.getMainLooper());
    private float phase;
    private float smoothedEnergy;
    private int liveLevel;
    private boolean playing;
    private int colorLow = 0x8866BB6A;
    private int colorMid = 0xCC81C784;
    private int colorHigh = 0xCCF57C00;

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
        glowPaint.setStyle(Paint.Style.STROKE);
        glowPaint.setStrokeCap(Paint.Cap.ROUND);
        try {
            colorLow = withAlpha(context.getResources().getColor(RES_GREEN), 0.45f);
            colorMid = withAlpha(context.getResources().getColor(RES_GROWN), 0.9f);
            colorHigh = withAlpha(context.getResources().getColor(RES_ORANGE), 0.85f);
        } catch (Throwable ignored) {
        }
        setWillNotDraw(false);
    }

    public void setPlaying(boolean playing) {
        this.playing = playing;
        if (!playing) {
            liveLevel = 0;
            smoothedEnergy = 0f;
            for (int i = 0; i < BAR_COUNT; i++) {
                barPeaks[i] = 0f;
            }
        }
        ensureAnimating();
    }

    public void setLiveLevel(int level) {
        liveLevel = Math.max(0, Math.min(level, 100));
    }

    private void ensureAnimating() {
        handler.removeCallbacks(this);
        handler.post(this);
    }

    @Override
    public void run() {
        float musicTarget;
        if (playing && MusicSync.isRunning() && MusicSync.isPlayerMode()) {
            musicTarget = MusicSync.getLiveStrength() / 100f;
            if (musicTarget <= 0f && liveLevel > 0) {
                musicTarget = liveLevel / 100f;
            }
        } else if (playing) {
            musicTarget = liveLevel / 100f;
        } else {
            musicTarget = 0.04f + 0.03f * (float) Math.sin(phase * 0.65f);
        }

        float rate = musicTarget > smoothedEnergy ? 0.52f : 0.1f;
        smoothedEnergy += (musicTarget - smoothedEnergy) * rate;

        phase += playing ? 0.28f : 0.12f;
        boolean moving = false;
        for (int i = 0; i < BAR_COUNT; i++) {
            float band = bandShape(i, phase);
            float target = smoothedEnergy * band;
            if (target > barPeaks[i]) {
                barPeaks[i] = target;
            } else {
                barPeaks[i] *= 0.86f;
            }
            target = Math.max(target, barPeaks[i] * 0.55f);
            float delta = target - barLevels[i];
            if (Math.abs(delta) > 0.001f) {
                barLevels[i] += delta * (delta > 0f ? 0.55f : 0.14f);
                moving = true;
            } else {
                barLevels[i] = target;
            }
        }

        invalidate();
        if (moving || playing || smoothedEnergy > 0.02f) {
            handler.postDelayed(this, FRAME_MS);
        }
    }

    private static float bandShape(int index, float phase) {
        float a = (float) (Math.sin(phase * 1.9 + index * 0.48) * 0.5 + 0.5);
        float b = (float) (Math.sin(phase * 4.7 + index * 1.07) * 0.5 + 0.5);
        return 0.28f + 0.52f * a + 0.2f * b;
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
        float maxR = Math.min(w, h) * 0.5f;
        float innerR = maxR * INNER_RADIUS_FRAC;
        float outerR = maxR * OUTER_RADIUS_FRAC;
        float span = Math.max(1f, outerR - innerR);
        float baseStroke = dp(getContext(), 2.4f);

        for (int i = 0; i < BAR_COUNT; i++) {
            float level = barLevels[i];
            if (level < 0.02f) {
                continue;
            }
            float angle = (float) (i * (Math.PI * 2.0 / BAR_COUNT) - Math.PI / 2.0);
            float endR = innerR + span * Math.min(1f, level);
            float sx = cx + (float) Math.cos(angle) * innerR;
            float sy = cy + (float) Math.sin(angle) * innerR;
            float ex = cx + (float) Math.cos(angle) * endR;
            float ey = cy + (float) Math.sin(angle) * endR;
            int color = colorForLevel(level);
            glowPaint.setStrokeWidth(baseStroke * 2.2f);
            glowPaint.setColor(withAlpha(color, 0.22f));
            canvas.drawLine(sx, sy, ex, ey, glowPaint);
            barPaint.setStrokeWidth(baseStroke + level * dp(getContext(), 1.6f));
            barPaint.setColor(color);
            canvas.drawLine(sx, sy, ex, ey, barPaint);
        }
    }

    private int colorForLevel(float level) {
        if (level >= 0.72f) {
            return blend(colorMid, colorHigh, (level - 0.72f) / 0.28f);
        }
        if (level >= 0.35f) {
            return blend(colorLow, colorMid, (level - 0.35f) / 0.37f);
        }
        return colorLow;
    }

    private static int blend(int from, int to, float t) {
        if (t <= 0f) {
            return from;
        }
        if (t >= 1f) {
            return to;
        }
        int a = (int) (((from >>> 24) & 0xFF) + (((to >>> 24) & 0xFF) - ((from >>> 24) & 0xFF)) * t);
        int r = (int) (((from >>> 16) & 0xFF) + (((to >>> 16) & 0xFF) - ((from >>> 16) & 0xFF)) * t);
        int g = (int) (((from >>> 8) & 0xFF) + (((to >>> 8) & 0xFF) - ((from >>> 8) & 0xFF)) * t);
        int b = (int) ((from & 0xFF) + ((to & 0xFF) - (from & 0xFF)) * t);
        return (a << 24) | (r << 16) | (g << 8) | b;
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
