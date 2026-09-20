package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/**
 * Display-only countdown ring: arc grows as interval elapses; color tracks remaining fraction.
 */
public final class TimerRingView extends View {

    private static final int RES_COLOR_TRACK = 0x7f0600ac; // seekbar_back_gray

    private final Paint trackPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint progressPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF arcBounds = new RectF();

    private float trackWidthPx;
    private int maxDiameterPx;
    private int maxProcess = 100;
    private int curProcess;
    private float remainingFraction = 1f;

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
        trackWidthPx = dp(context, 14f);
        maxDiameterPx = (int) dp(context, 192f);
        int trackColor = 0xFFE0DDDE;
        try {
            trackColor = context.getResources().getColor(RES_COLOR_TRACK);
        } catch (Throwable ignored) {
        }
        trackPaint.setStyle(Paint.Style.STROKE);
        trackPaint.setStrokeCap(Paint.Cap.ROUND);
        trackPaint.setColor(trackColor);
        progressPaint.setStyle(Paint.Style.STROKE);
        progressPaint.setStrokeCap(Paint.Cap.ROUND);
        setWillNotDraw(false);
        updateProgressColor();
    }

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
        if (curProcess < 0) {
            curProcess = 0;
        }
        if (curProcess > maxProcess) {
            curProcess = maxProcess;
        }
        this.curProcess = curProcess;
        invalidate();
    }

    /** Remaining fraction of the user-selected interval (1 = full duration left). */
    public void setRemainingFraction(float remaining) {
        if (remaining < 0f) {
            remaining = 0f;
        }
        if (remaining > 1f) {
            remaining = 1f;
        }
        remainingFraction = remaining;
        updateProgressColor();
        invalidate();
    }

    private void updateProgressColor() {
        progressPaint.setColor(colorForRemaining(remainingFraction));
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
        float inset = trackWidthPx / 2f + dp(getContext(), 1f);
        arcBounds.set(inset, inset, getWidth() - inset, getHeight() - inset);
        trackPaint.setStrokeWidth(trackWidthPx);
        progressPaint.setStrokeWidth(trackWidthPx);
        canvas.drawArc(arcBounds, 0f, 360f, false, trackPaint);
        if (curProcess <= 0) {
            return;
        }
        float sweep = 360f * curProcess / (float) maxProcess;
        canvas.drawArc(arcBounds, -90f, sweep, false, progressPaint);
    }

    private static float dp(Context context, float value) {
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, value, context.getResources().getDisplayMetrics());
    }
}
