package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

/**
 * Display-only countdown ring (avatar slider colors, no thumb/touch).
 */
public final class TimerRingView extends View {

    private static final int RES_COLOR_TRACK = 0x7f0600ac; // seekbar_back_gray
    private static final int RES_COLOR_PROGRESS = 0x7f06005c; // grown_color

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
        trackWidthPx = dp(context, 10f);
        maxDiameterPx = (int) dp(context, 64f);
        int trackColor = 0xFFE0DDDE;
        int progressColor = 0xFF9A8073;
        try {
            trackColor = context.getResources().getColor(RES_COLOR_TRACK);
            progressColor = context.getResources().getColor(RES_COLOR_PROGRESS);
        } catch (Throwable ignored) {
        }
        trackPaint.setStyle(Paint.Style.STROKE);
        trackPaint.setStrokeCap(Paint.Cap.ROUND);
        trackPaint.setColor(trackColor);
        progressPaint.setStyle(Paint.Style.STROKE);
        progressPaint.setStrokeCap(Paint.Cap.ROUND);
        progressPaint.setColor(progressColor);
        setWillNotDraw(false);
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
