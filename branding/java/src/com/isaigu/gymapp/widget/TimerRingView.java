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
 * Display-only countdown ring with traffic-light progress color (no thumb/touch).
 */
public final class TimerRingView extends View {

    private static final int RES_COLOR_TRACK = 0x7f0600ac; // seekbar_back_gray

    private final Paint trackPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint progressPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF arcBounds = new RectF();

    private float trackWidthPx;
    private int maxDiameterPx;
    private int maxProcess = 100;
    private int curProcess = 100;

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
        updateProgressColor();
        invalidate();
    }

    public void setCurProcess(int curProcess) {
        if (curProcess < 0) {
            curProcess = 0;
        }
        if (curProcess > maxProcess) {
            curProcess = maxProcess;
        }
        this.curProcess = curProcess;
        updateProgressColor();
        invalidate();
    }

    private void updateProgressColor() {
        float remaining = curProcess / (float) maxProcess;
        progressPaint.setColor(colorForRemaining(remaining));
    }

    /** Full time = red; as time runs out → orange → yellow → green. */
    public static int colorForRemaining(float remaining) {
        if (remaining >= 1f) {
            return 0xFFE53935;
        }
        if (remaining <= 0f) {
            return 0xFF43A047;
        }
        if (remaining >= 0.75f) {
            return blend(0xFFFF9800, 0xFFE53935, (remaining - 0.75f) / 0.25f);
        }
        if (remaining >= 0.50f) {
            return blend(0xFFFFEB3B, 0xFFFF9800, (remaining - 0.50f) / 0.25f);
        }
        if (remaining >= 0.25f) {
            return blend(0xFF66BB6A, 0xFFFFEB3B, (remaining - 0.25f) / 0.25f);
        }
        return blend(0xFF43A047, 0xFF66BB6A, remaining / 0.25f);
    }

    private static int blend(int c1, int c2, float ratio) {
        if (ratio <= 0f) {
            return c2;
        }
        if (ratio >= 1f) {
            return c1;
        }
        int a = (int) (Color.alpha(c1) * ratio + Color.alpha(c2) * (1f - ratio));
        int r = (int) (Color.red(c1) * ratio + Color.red(c2) * (1f - ratio));
        int g = (int) (Color.green(c1) * ratio + Color.green(c2) * (1f - ratio));
        int b = (int) (Color.blue(c1) * ratio + Color.blue(c2) * (1f - ratio));
        return Color.argb(a, r, g, b);
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
