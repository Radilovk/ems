package com.isaigu.gymapp.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;

import com.isaigu.gymapp.train.utils.MasterStrengthControl;
import com.isaigu.gymapp.train.utils.MusicSync;

/**
 * Two live bars for the music player: music level (after rhythm mix) and the impulse strength
 * actually sent to the suit, with floor band, ceiling marker and measured BLE latency.
 */
public final class MusicImpulseMeterView extends View implements Runnable {
    private static final long FRAME_MS = 33L;
    private static final int LATENCY_OK_MS = 60;
    private static final int LATENCY_WARN_MS = 120;

    private static final int RES_GREEN = 0x7f06006f;
    private static final int RES_ORANGE = 0x7f060070;
    private static final int RES_TEXT_PRIMARY = 0x7f0600e6;
    private static final int RES_TEXT_SECONDARY = 0x7f0600e7;

    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Paint trackPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fillPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint bandPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint markerPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint labelPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint valuePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint chipPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint chipTextPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final RectF rect = new RectF();

    private int colorGreen = 0xFF66BB6A;
    private int colorOrange = 0xFFF57C00;
    private int colorText = 0xFFE8E8E8;
    private int colorTextSecondary = 0xFF9E9E9E;
    private int colorTrack = 0x33FFFFFF;
    private int colorWarn = 0xFFFFB300;
    private int colorBad = 0xFFE53935;

    private float musicShown;
    private float impulseShown;
    private boolean attached;

    public MusicImpulseMeterView(Context context) {
        super(context);
        init(context);
    }

    public MusicImpulseMeterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public MusicImpulseMeterView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context);
    }

    private void init(Context context) {
        try {
            colorGreen = context.getResources().getColor(RES_GREEN);
            colorOrange = context.getResources().getColor(RES_ORANGE);
            colorText = context.getResources().getColor(RES_TEXT_PRIMARY);
            colorTextSecondary = context.getResources().getColor(RES_TEXT_SECONDARY);
        } catch (Throwable ignored) {
        }
        colorTrack = withAlpha(colorTextSecondary, 0.22f);
        trackPaint.setColor(colorTrack);
        bandPaint.setColor(withAlpha(colorOrange, 0.28f));
        markerPaint.setColor(colorText);
        markerPaint.setStrokeWidth(dp(2f));
        markerPaint.setStrokeCap(Paint.Cap.ROUND);
        labelPaint.setColor(colorTextSecondary);
        labelPaint.setTextSize(sp(11f));
        valuePaint.setColor(colorText);
        valuePaint.setTextSize(sp(13f));
        valuePaint.setFakeBoldText(true);
        chipTextPaint.setTextSize(sp(10f));
        chipTextPaint.setFakeBoldText(true);
        chipTextPaint.setTextAlign(Paint.Align.CENTER);
        setWillNotDraw(false);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        attached = true;
        handler.removeCallbacks(this);
        handler.post(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        attached = false;
        handler.removeCallbacks(this);
        super.onDetachedFromWindow();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int width = MeasureSpec.getSize(widthMeasureSpec);
        setMeasuredDimension(width, resolveSize((int) dp(56f), heightMeasureSpec));
    }

    @Override
    public void run() {
        boolean active = MusicSync.isRunning();
        float musicTarget = active ? MusicSync.getLiveStrength() : 0f;
        float impulseTarget = active ? MusicSync.getEffectiveStrength() : 0f;
        musicShown += (musicTarget - musicShown) * (musicTarget > musicShown ? 0.6f : 0.25f);
        impulseShown += (impulseTarget - impulseShown) * (impulseTarget > impulseShown ? 0.6f : 0.25f);
        invalidate();
        if (attached && getVisibility() == VISIBLE) {
            handler.postDelayed(this, FRAME_MS);
        }
    }

    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (attached && visibility == VISIBLE) {
            handler.removeCallbacks(this);
            handler.post(this);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float w = getWidth();
        float h = getHeight();
        if (w <= 0f || h <= 0f) {
            return;
        }
        float iconW = dp(20f);
        float valueW = dp(64f);
        float barLeft = iconW;
        float barRight = w - valueW - dp(6f);
        float barH = dp(8f);
        float rowH = h / 2f;

        int ceiling = MusicSync.getStrengthCeiling();
        int floor = MasterStrengthControl.getFloorStrength();

        // Row 1: music level (0–100 % of the track's dynamic range).
        float y1 = rowH * 0.5f;
        drawIcon(canvas, "♪", y1);
        drawTrack(canvas, barLeft, barRight, y1, barH);
        fillPaint.setColor(colorGreen);
        drawFill(canvas, barLeft, barRight, y1, barH, musicShown / 100f);
        drawLatencyChip(canvas, w - valueW, w, y1);

        // Row 2: impulse strength (absolute %), floor band and ceiling marker.
        float y2 = rowH * 1.5f;
        drawIcon(canvas, "⚡", y2);
        drawTrack(canvas, barLeft, barRight, y2, barH);
        float span = barRight - barLeft;
        if (floor > 0) {
            rect.set(barLeft, y2 - barH / 2f, barLeft + span * floor / 100f, y2 + barH / 2f);
            canvas.drawRoundRect(rect, barH / 2f, barH / 2f, bandPaint);
        }
        fillPaint.setColor(colorOrange);
        drawFill(canvas, barLeft, barRight, y2, barH, impulseShown / 100f);
        float cx = barLeft + span * Math.min(100, Math.max(1, ceiling)) / 100f;
        canvas.drawLine(cx, y2 - barH, cx, y2 + barH, markerPaint);

        String value = Math.round(impulseShown) + "%";
        String limit = "/" + ceiling + "%";
        float valueX = w - valueW;
        float baseline = y2 + valuePaint.getTextSize() * 0.36f;
        canvas.drawText(value, valueX, baseline, valuePaint);
        canvas.drawText(limit, valueX + valuePaint.measureText(value) + dp(2f), baseline, labelPaint);
    }

    private void drawIcon(Canvas canvas, String glyph, float cy) {
        canvas.drawText(glyph, 0f, cy + labelPaint.getTextSize() * 0.36f, labelPaint);
    }

    private void drawTrack(Canvas canvas, float left, float right, float cy, float barH) {
        rect.set(left, cy - barH / 2f, right, cy + barH / 2f);
        canvas.drawRoundRect(rect, barH / 2f, barH / 2f, trackPaint);
    }

    private void drawFill(Canvas canvas, float left, float right, float cy, float barH, float fraction) {
        if (fraction <= 0.005f) {
            return;
        }
        float end = left + (right - left) * Math.min(1f, fraction);
        rect.set(left, cy - barH / 2f, Math.max(end, left + barH), cy + barH / 2f);
        canvas.drawRoundRect(rect, barH / 2f, barH / 2f, fillPaint);
    }

    /** "BLE 42 ms" chip: measured send→ACK time of one strength update. */
    private void drawLatencyChip(Canvas canvas, float left, float right, float cy) {
        String text;
        int color;
        if (MusicSync.hasBleLatencySample()) {
            int ms = MusicSync.getBleLatencyMs();
            text = "BLE " + ms + " ms";
            color = ms <= LATENCY_OK_MS ? colorGreen : ms <= LATENCY_WARN_MS ? colorWarn : colorBad;
        } else {
            text = "BLE —";
            color = colorTextSecondary;
        }
        float chipH = dp(16f);
        rect.set(left, cy - chipH / 2f, right, cy + chipH / 2f);
        chipPaint.setColor(withAlpha(color, 0.2f));
        canvas.drawRoundRect(rect, chipH / 2f, chipH / 2f, chipPaint);
        chipTextPaint.setColor(color);
        canvas.drawText(text, rect.centerX(), cy + chipTextPaint.getTextSize() * 0.36f, chipTextPaint);
    }

    private float dp(float value) {
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, value, getResources().getDisplayMetrics());
    }

    private float sp(float value) {
        return TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_SP, value, getResources().getDisplayMetrics());
    }

    private static int withAlpha(int color, float alpha) {
        int a = Math.max(0, Math.min(255, (int) (alpha * 255f)));
        return (color & 0x00FFFFFF) | (a << 24);
    }
}
