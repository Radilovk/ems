package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/**
 * XEMS dial ring (interval timer, HR dial): a 60-segment LED ring on a soft face.
 * <ul>
 *   <li>lit segments carry a comet tail in the progress colour, with a glow and a head dot;</li>
 *   <li>colour follows the remaining time (red → green) or a colour set by the caller (HR zone);</li>
 *   <li>optional band (e.g. HR corridor) and marker (e.g. HR ceiling) on the inner edge;</li>
 *   <li>optional heartbeat: the glow pulses at the given bpm.</li>
 * </ul>
 * Colours come from the app theme (bg_card / bg_surface / card_stroke / text_primary), so the dial
 * follows light and dark mode. Progress moves smoothly between updates.
 */
public final class TimerRingView extends View {

    private static final int SEGMENTS = 60;
    private static final float SEGMENT_FILL = 0.70f;

    private final Paint facePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint faceStroke = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint segOff = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint segOn = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint headFill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint headRing = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint bandPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint markerPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF ring = new RectF();
    private final RectF inner = new RectF();
    private final Matrix matrix = new Matrix();

    private float trackWidthPx;
    private int maxDiameterPx;
    private int maxProcess = 100;
    private int curProcess;
    private float targetFraction;
    private float shownFraction;
    private float remainingFraction = 1f;
    private int colorOverride;
    private float bandLo = -1f;
    private float bandHi = -1f;
    private float marker = -1f;
    private int beatBpm;
    private long lastBeatMs;

    private int faceColor = 0xFF1E1E1E;
    private int faceCenter = 0xFF2A2A2A;
    private int strokeColor = 0xFF444444;
    private int textColor = 0xFFE8E8E8;
    private int okColor = 0xFF81C784;
    private int dangerColor = 0xFFEF5350;

    public TimerRingView(Context context) {
        super(context);
        init(context);
    }

    public TimerRingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public TimerRingView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        trackWidthPx = dp(context, 12f);
        maxDiameterPx = (int) dp(context, 192f);
        faceColor = themeColor(context, "bg_card", faceColor);
        faceCenter = themeColor(context, "bg_surface", faceCenter);
        strokeColor = themeColor(context, "card_stroke", strokeColor);
        textColor = themeColor(context, "text_primary", textColor);
        okColor = themeColor(context, "impulse_accent", okColor);
        dangerColor = themeColor(context, "accent_primary", dangerColor);

        faceStroke.setStyle(Paint.Style.STROKE);
        faceStroke.setStrokeWidth(dp(context, 1f));
        faceStroke.setColor(alpha(strokeColor, 0xAA));
        for (Paint p : new Paint[] {segOff, segOn, glow, bandPaint}) {
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeCap(Paint.Cap.ROUND);
        }
        segOff.setColor(alpha(textColor, 0x22));
        headFill.setColor(0xFFFFFFFF);
        headRing.setStyle(Paint.Style.STROKE);
        headRing.setStrokeWidth(dp(context, 2.5f));
        markerPaint.setStyle(Paint.Style.STROKE);
        markerPaint.setStrokeCap(Paint.Cap.ROUND);
        markerPaint.setStrokeWidth(dp(context, 3f));
        markerPaint.setColor(dangerColor);
        bandPaint.setColor(alpha(okColor, 0xB0));
        setWillNotDraw(false);
    }

    // ================================================================ API (unchanged + new)

    public void setMaxDiameterDp(float dpValue) {
        maxDiameterPx = (int) dp(getContext(), dpValue);
        requestLayout();
    }

    public void setMaxProcess(int maxProcess) {
        if (maxProcess <= 0) {
            maxProcess = 1;
        }
        this.maxProcess = maxProcess;
        if (curProcess > this.maxProcess) {
            curProcess = this.maxProcess;
        }
        invalidate();
    }

    /** Elapsed fraction of the configured interval (0 = just started, max = finished). */
    public void setCurProcess(int curProcess) {
        this.curProcess = Math.max(0, Math.min(maxProcess, curProcess));
        setElapsedFraction(this.curProcess / (float) maxProcess);
    }

    /** Remaining fraction of the user-selected interval (1 = full duration left). */
    public void setRemainingFraction(float remaining) {
        setElapsedFraction(1f - clamp01(remaining));
    }

    /** Smooth elapsed fraction (0 = start, 1 = finished). */
    public void setElapsedFraction(float elapsed) {
        elapsed = clamp01(elapsed);
        remainingFraction = 1f - elapsed;
        // A new interval (wrap to the start) or a big jump snaps; small steps glide.
        if (elapsed < shownFraction - 0.25f || Math.abs(elapsed - shownFraction) > 0.5f) {
            shownFraction = elapsed;
        }
        targetFraction = elapsed;
        postInvalidateOnAnimation();
    }

    /** Fixed progress colour (e.g. HR zone); 0 = colour by remaining time. */
    public void setProgressColor(int color) {
        colorOverride = color;
        invalidate();
    }

    /** Band on the inner edge, fractions 0..1 of the full circle (clockwise from 12 o'clock). */
    public void setBand(float lo, float hi) {
        bandLo = lo;
        bandHi = hi;
        invalidate();
    }

    /** Marker tick at a fraction 0..1; &lt; 0 hides it. */
    public void setMarker(float fraction) {
        marker = fraction;
        invalidate();
    }

    /** Glow pulses at this heart rate; 0 = steady. */
    public void setBeatBpm(int bpm) {
        beatBpm = bpm >= 30 && bpm <= 230 ? bpm : 0;
        postInvalidateOnAnimation();
    }

    /**
     * Smooth red → orange → yellow → green proportional to remaining time
     * of the configured interval (not bucketed).
     */
    public static int colorForRemaining(float remaining) {
        if (remaining >= 1f) {
            return 0xFFE53935;
        }
        if (remaining <= 0f) {
            return 0xFF43A047;
        }
        float hue = (1f - remaining) * 120f;
        return Color.HSVToColor(new float[] {hue, 0.88f, 0.96f});
    }

    // ================================================================ drawing

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int specW = MeasureSpec.getSize(widthMeasureSpec);
        int specH = MeasureSpec.getSize(heightMeasureSpec);
        int size = Math.min(specW, specH);
        if (size <= 0 || size > maxDiameterPx) {
            size = maxDiameterPx;
        }
        setMeasuredDimension(size, size);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float w = getWidth();
        float h = getHeight();
        float cx = w / 2f;
        float cy = h / 2f;
        float pad = trackWidthPx * 0.95f;
        float r = Math.min(w, h) / 2f - pad;
        ring.set(cx - r, cy - r, cx + r, cy + r);

        boolean animating = false;
        float diff = targetFraction - shownFraction;
        if (Math.abs(diff) > 0.0015f) {
            shownFraction += diff * 0.22f;
            animating = true;
        } else {
            shownFraction = targetFraction;
        }
        int color = colorOverride != 0 ? colorOverride : colorForRemaining(1f - shownFraction);

        // Face: soft radial disc with a hairline.
        float faceR = r - trackWidthPx / 2f - dp(getContext(), 5f);
        facePaint.setShader(new RadialGradient(cx, cy - faceR * 0.35f, faceR * 1.3f,
                faceCenter, faceColor, Shader.TileMode.CLAMP));
        canvas.drawCircle(cx, cy, faceR, facePaint);
        canvas.drawCircle(cx, cy, faceR, faceStroke);

        // Glow under the lit part (pulses with the heartbeat when set).
        float sweep = 360f * shownFraction;
        float beat = beatLevel();
        if (sweep > 0.5f) {
            glow.setStrokeWidth(trackWidthPx * (1.35f + 0.45f * beat));
            glow.setColor(alpha(color, (int) (0x1C + 0x38 * beat)));
            glow.setShader(null);
            canvas.drawArc(ring, -90f, sweep, false, glow);
        }

        // Segmented track: dim segments, lit ones with a comet tail.
        float segDeg = 360f / SEGMENTS;
        float segSweep = segDeg * SEGMENT_FILL;
        segOff.setStrokeWidth(trackWidthPx);
        segOn.setStrokeWidth(trackWidthPx);
        SweepGradient tail = new SweepGradient(cx, cy,
                new int[] {alpha(color, 0x55), color, color}, new float[] {0f, Math.max(0.01f, shownFraction), 1f});
        matrix.setRotate(-90f, cx, cy);
        tail.setLocalMatrix(matrix);
        segOn.setShader(tail);
        segOn.setStrokeCap(Paint.Cap.BUTT);
        segOff.setStrokeCap(Paint.Cap.BUTT);
        for (int i = 0; i < SEGMENTS; i++) {
            float start = -90f + i * segDeg + (segDeg - segSweep) / 2f;
            float segEnd = (i * segDeg + segDeg / 2f) / 360f;
            canvas.drawArc(ring, start, segSweep, false, segEnd <= shownFraction ? segOn : segOff);
        }

        // Band and marker on the inner edge.
        float innerR = r - trackWidthPx / 2f - dp(getContext(), 3f);
        inner.set(cx - innerR, cy - innerR, cx + innerR, cy + innerR);
        if (bandLo >= 0f && bandHi > bandLo) {
            bandPaint.setStrokeWidth(dp(getContext(), 3f));
            canvas.drawArc(inner, -90f + 360f * clamp01(bandLo), 360f * (clamp01(bandHi) - clamp01(bandLo)),
                    false, bandPaint);
        }
        if (marker >= 0f && marker <= 1f) {
            double a = Math.toRadians(-90f + 360f * marker);
            float r1 = innerR - dp(getContext(), 4f);
            float r2 = r + trackWidthPx / 2f;
            canvas.drawLine(cx + (float) (r1 * Math.cos(a)), cy + (float) (r1 * Math.sin(a)),
                    cx + (float) (r2 * Math.cos(a)), cy + (float) (r2 * Math.sin(a)), markerPaint);
        }

        // Head dot.
        if (sweep > 0.5f) {
            double a = Math.toRadians(-90f + sweep);
            float hx = cx + (float) (r * Math.cos(a));
            float hy = cy + (float) (r * Math.sin(a));
            float hr = trackWidthPx * (0.62f + 0.12f * beat);
            canvas.drawCircle(hx, hy, hr, headFill);
            headRing.setColor(color);
            canvas.drawCircle(hx, hy, hr, headRing);
        }

        if (animating || beatBpm > 0) {
            postInvalidateOnAnimation();
        }
    }

    /** 1 right after a beat, decaying to 0 before the next one. */
    private float beatLevel() {
        if (beatBpm <= 0) {
            return 0f;
        }
        long now = android.os.SystemClock.uptimeMillis();
        long period = 60000L / beatBpm;
        if (now - lastBeatMs >= period) {
            lastBeatMs = now - ((now - lastBeatMs) % period);
        }
        float t = (now - lastBeatMs) / (float) period;
        return (float) Math.exp(-4.0 * t);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        beatBpm = 0;
    }

    // ================================================================ helpers

    private static int themeColor(Context c, String name, int fallback) {
        try {
            int id = c.getResources().getIdentifier(name, "color", c.getPackageName());
            return id != 0 ? c.getResources().getColor(id) : fallback;
        } catch (Throwable t) {
            return fallback;
        }
    }

    private static int alpha(int color, int a) {
        return (color & 0x00FFFFFF) | ((Math.max(0, Math.min(255, a))) << 24);
    }

    private static float clamp01(float v) {
        return v < 0f ? 0f : v > 1f ? 1f : v;
    }

    private static float dp(Context context, float value) {
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, value, context.getResources().getDisplayMetrics());
    }
}
