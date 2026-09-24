package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;

import com.isaigu.gymapp.widget.XemsUi;

import java.util.Locale;

/**
 * Live HR chart: faint zone bands, the HR line in zone colours with a soft fill, the rest /
 * limit / ceiling lines, a pulsing "now" dot, and touch-to-scrub (value and time under the
 * finger). Drawn in code; refreshed by its panel once a second.
 */
public final class HrChartView extends View {
    private final Paint line = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint band = new Paint();
    private final Paint guide = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint label = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint dot = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint bubble = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final Path area = new Path();
    private final RectF r = new RectF();

    private HrHistory.Series data;
    private long nowMs;
    private long windowMs = 10 * 60 * 1000L;
    private int limit = 170;
    private int cap;
    private int rest;
    private float scrubX = -1;

    public HrChartView(Context c) {
        super(c);
        line.setStyle(Paint.Style.STROKE);
        line.setStrokeWidth(dp(2.6f));
        line.setStrokeCap(Paint.Cap.ROUND);
        line.setStrokeJoin(Paint.Join.ROUND);
        guide.setStyle(Paint.Style.STROKE);
        guide.setStrokeWidth(dp(1.2f));
        label.setTextSize(TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, 11,
                c.getResources().getDisplayMetrics()));
        bubble.setTextSize(TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, 13,
                c.getResources().getDisplayMetrics()));
        bubble.setFakeBoldText(true);
    }

    public void set(HrHistory.Series s, long now, long window, int limit, int cap, int rest) {
        this.data = s;
        this.nowMs = now;
        this.windowMs = window;
        this.limit = limit > 0 ? limit : 170;
        this.cap = cap;
        this.rest = rest;
        invalidate();
    }

    private float dp(float v) {
        return v * getResources().getDisplayMetrics().density;
    }

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        int a = e.getActionMasked();
        if (a == MotionEvent.ACTION_DOWN || a == MotionEvent.ACTION_MOVE) {
            getParent().requestDisallowInterceptTouchEvent(true);
            scrubX = e.getX();
            invalidate();
            return true;
        }
        if (a == MotionEvent.ACTION_UP || a == MotionEvent.ACTION_CANCEL) {
            scrubX = -1;
            invalidate();
            return true;
        }
        return super.onTouchEvent(e);
    }

    @Override
    protected void onDraw(Canvas c) {
        try {
            draw0(c);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("HrChartView.onDraw", t);
        }
    }

    private void draw0(Canvas c) {
        float w = getWidth();
        float h = getHeight();
        float left = dp(8);
        float right = w - dp(34);
        float top = dp(10);
        float bottom = h - dp(20);
        if (right - left < dp(40) || bottom - top < dp(40)) {
            return;
        }
        long span = windowMs > 0 ? windowMs : HrHistory.KEEP_MS;
        long t0 = nowMs - span;
        if (windowMs <= 0 && data != null && data.size() > 0) {
            t0 = data.t[0];
            span = Math.max(60000L, nowMs - t0);
        }

        // Vertical scale: 40 … above the ceiling, widened to the data.
        int lo = 40;
        int hi = Math.max(cap > 0 ? cap + 10 : limit + 20, 120);
        if (data != null && data.size() > 0) {
            lo = Math.min(lo, data.min() - 5);
            hi = Math.max(hi, data.max() + 8);
        }
        lo = Math.max(30, lo);

        // Zone bands (Z1…Z5 of the limit), very faint.
        float[] edges = {0f, 0.60f, 0.70f, 0.80f, 0.90f, 10f};
        for (int z = 1; z <= 5; z++) {
            float yA = yOf(limit * edges[z - 1], lo, hi, top, bottom);
            float yB = yOf(limit * edges[z], lo, hi, top, bottom);
            band.setColor(XemsUi.alpha(WearableUi.zoneColor(z), 0x14));
            c.drawRect(left, Math.max(top, yB), right, Math.min(bottom, yA), band);
        }

        drawGuide(c, rest, lo, hi, top, bottom, left, right, XemsUi.MUTED, "", false);
        drawGuide(c, limit, lo, hi, top, bottom, left, right, WearableUi.COLOR_ZONE4, "", true);
        if (cap > 0) {
            drawGuide(c, cap, lo, hi, top, bottom, left, right, WearableUi.COLOR_ZONE5, "", true);
        }

        // Time axis labels: minutes ago.
        label.setColor(XemsUi.HINT);
        int minutes = (int) Math.max(1, span / 60000L);
        int step = minutes <= 6 ? 1 : minutes <= 16 ? 5 : minutes <= 40 ? 10 : 15;
        for (int m = 0; m <= minutes; m += step) {
            float x = right - (m * 60000f / span) * (right - left);
            String s = m == 0 ? XemsUiText.now() : "−" + m;
            c.drawText(s, x - label.measureText(s) / 2f, h - dp(4), label);
        }

        if (data == null || data.size() == 0) {
            label.setColor(XemsUi.MUTED);
            String s = XemsUiText.waiting();
            c.drawText(s, (left + right) / 2f - label.measureText(s) / 2f, (top + bottom) / 2f, label);
            return;
        }

        // Line in segments coloured by zone, with a soft fill below.
        path.reset();
        area.reset();
        boolean started = false;
        float lastX = 0;
        float lastY = 0;
        float firstX = 0;
        for (int i = 0; i < data.size(); i++) {
            long ti = data.t[i];
            if (ti < t0) {
                continue;
            }
            float x = left + (ti - t0) / (float) span * (right - left);
            float y = yOf(data.hr[i], lo, hi, top, bottom);
            boolean gap = i > 0 && data.t[i] - data.t[i - 1] > HrHistory.MAX_GAP_MS;
            if (!started || gap) {
                if (started) {
                    closeArea(c, bottom, firstX, lastX, top);
                    area.reset();
                }
                path.moveTo(x, y);
                area.moveTo(x, bottom);
                area.lineTo(x, y);
                firstX = x;
                started = true;
            } else {
                path.lineTo(x, y);
                area.lineTo(x, y);
            }
            lastX = x;
            lastY = y;
        }
        if (!started) {
            return;
        }
        closeArea(c, bottom, firstX, lastX, top);
        int zNow = WearableUi.zoneFor(data.last(), limit);
        int col = WearableUi.zoneColor(Math.max(1, zNow));
        line.setShader(new LinearGradient(0, top, 0, bottom,
                new int[] {WearableUi.COLOR_ZONE5, WearableUi.COLOR_ZONE4, WearableUi.COLOR_ZONE3,
                        WearableUi.COLOR_ZONE2, WearableUi.COLOR_ZONE1},
                gradientStops(lo, hi), Shader.TileMode.CLAMP));
        c.drawPath(path, line);

        // "Now" dot with a breathing halo.
        float phase = (System.currentTimeMillis() % 1200L) / 1200f;
        dot.setColor(XemsUi.alpha(col, (int) (0x70 * (1 - phase))));
        c.drawCircle(lastX, lastY, dp(5) + dp(9) * phase, dot);
        dot.setColor(col);
        c.drawCircle(lastX, lastY, dp(5), dot);
        dot.setColor(0xFFFFFFFF);
        c.drawCircle(lastX, lastY, dp(2), dot);
        postInvalidateDelayed(60);

        if (scrubX >= left && scrubX <= right) {
            drawScrub(c, t0, span, left, right, top, bottom, lo, hi);
        }
    }

    private void closeArea(Canvas c, float bottom, float firstX, float lastX, float top) {
        area.lineTo(lastX, bottom);
        area.close();
        fill.setShader(new LinearGradient(0, top, 0, bottom,
                XemsUi.alpha(WearableUi.COLOR_ZONE4, 0x38), 0x00000000, Shader.TileMode.CLAMP));
        c.drawPath(area, fill);
    }

    /** Colour stops matching the zone edges on this scale (top = high HR). */
    private float[] gradientStops(int lo, int hi) {
        float[] hrAt = {limit * 0.90f, limit * 0.80f, limit * 0.70f, limit * 0.60f};
        float[] s = new float[5];
        s[0] = 0f;
        for (int i = 0; i < 4; i++) {
            s[i + 1] = Math.max(s[i], Math.min(1f, (hi - hrAt[i]) / (float) (hi - lo)));
        }
        return s;
    }

    private void drawScrub(Canvas c, long t0, long span, float left, float right, float top,
            float bottom, int lo, int hi) {
        long tAt = t0 + (long) ((scrubX - left) / (right - left) * span);
        int best = -1;
        long bestD = Long.MAX_VALUE;
        for (int i = 0; i < data.size(); i++) {
            long d = Math.abs(data.t[i] - tAt);
            if (d < bestD) {
                bestD = d;
                best = i;
            }
        }
        if (best < 0 || bestD > 30000L) {
            return;
        }
        float x = left + (data.t[best] - t0) / (float) span * (right - left);
        float y = yOf(data.hr[best], lo, hi, top, bottom);
        guide.setColor(XemsUi.alpha(XemsUi.TEXT, 0x66));
        guide.setPathEffect(null);
        c.drawLine(x, top, x, bottom, guide);
        int col = WearableUi.zoneColor(Math.max(1, WearableUi.zoneFor(data.hr[best], limit)));
        dot.setColor(col);
        c.drawCircle(x, y, dp(6), dot);
        long ago = Math.max(0, (nowMs - data.t[best]) / 1000L);
        String s = data.hr[best] + "  ·  " + String.format(Locale.US, "−%d:%02d", ago / 60, ago % 60);
        float tw = bubble.measureText(s) + dp(20);
        float bx = Math.max(left, Math.min(right - tw, x - tw / 2f));
        r.set(bx, top, bx + tw, top + dp(28));
        dot.setColor(XemsUi.ELEVATED);
        c.drawRoundRect(r, dp(14), dp(14), dot);
        bubble.setColor(col);
        c.drawText(s, bx + dp(10), top + dp(19), bubble);
    }

    private void drawGuide(Canvas c, int bpm, int lo, int hi, float top, float bottom, float left,
            float right, int color, String tag, boolean dashed) {
        if (bpm <= 0 || bpm < lo || bpm > hi) {
            return;
        }
        float y = yOf(bpm, lo, hi, top, bottom);
        guide.setColor(XemsUi.alpha(color, 0xAA));
        guide.setPathEffect(dashed ? new DashPathEffect(new float[] {dp(6), dp(5)}, 0) : null);
        c.drawLine(left, y, right, y, guide);
        label.setColor(color);
        c.drawText(String.valueOf(bpm), right + dp(5), y + dp(4), label);
    }

    private static float yOf(float bpm, int lo, int hi, float top, float bottom) {
        float f = (bpm - lo) / (float) Math.max(1, hi - lo);
        return bottom - Math.max(0f, Math.min(1f, f)) * (bottom - top);
    }

    /** Two short texts, kept here so the view has no other dependency. */
    static final class XemsUiText {
        static String now() {
            return WearableUi.tr("сега", "now");
        }

        static String waiting() {
            return WearableUi.tr("Чака пулс от гривната…", "Waiting for heart rate…");
        }
    }
}
