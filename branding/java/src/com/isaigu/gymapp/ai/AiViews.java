package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.view.View;

import java.util.ArrayList;
import java.util.List;

/** Canvas-drawn widgets for the Smart Session UI (no resources needed). */
final class AiViews {
    static final int BG = 0xFF0E1015;
    static final int CARD = 0xFF171A21;
    static final int CARD2 = 0xFF1F232C;
    static final int STROKE = 0x1FFFFFFF;
    static final int TEXT = 0xFFF2F4F8;
    static final int MUTED = 0xFF8B93A1;
    static final int VIOLET = 0xFF7C4DFF;
    static final int CYAN = 0xFF00D1FF;
    static final int OK = 0xFF2ECC71;
    static final int WARN = 0xFFFFB020;
    static final int DANGER = 0xFFFF4D4F;

    static int phaseColor(AiModel.PhaseId id) {
        switch (id) {
            case WARMUP: return 0xFF4F7BFF;
            case MAIN: return VIOLET;
            case METABOLIC: return 0xFFE040FB;
            default: return 0xFF26C6DA;
        }
    }

    private AiViews() {}

    /**
     * Circular gauge 0..1 with an optional corridor band [lo, hi], a cap tick and a value arc.
     * Used for resting-HR progress, calibration and the live HR gauge.
     */
    static final class Ring extends View {
        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint band = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint tick = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF oval = new RectF();
        private float value;
        private float bandLo = -1;
        private float bandHi = -1;
        private float cap = -1;
        private int color = VIOLET;
        private boolean gradient = true;
        private final float stroke;

        Ring(Context c, float strokeDp) {
            super(c);
            stroke = strokeDp * c.getResources().getDisplayMetrics().density;
            track.setStyle(Paint.Style.STROKE);
            track.setStrokeWidth(stroke);
            track.setColor(0x14FFFFFF);
            track.setStrokeCap(Paint.Cap.ROUND);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeWidth(stroke);
            arc.setStrokeCap(Paint.Cap.ROUND);
            band.setStyle(Paint.Style.STROKE);
            band.setStrokeWidth(stroke * 0.45f);
            band.setColor(0x6632D583);
            band.setStrokeCap(Paint.Cap.ROUND);
            tick.setStyle(Paint.Style.STROKE);
            tick.setStrokeWidth(stroke * 0.35f);
            tick.setColor(DANGER);
            tick.setStrokeCap(Paint.Cap.ROUND);
        }

        void setValue(float v) {
            value = Math.max(0f, Math.min(1f, v));
            invalidate();
        }

        void setBand(float lo, float hi) {
            bandLo = lo;
            bandHi = hi;
            invalidate();
        }

        void setCap(float c) {
            cap = c;
            invalidate();
        }

        void setColor(int c, boolean useGradient) {
            color = c;
            gradient = useGradient;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas canvas) {
            float w = getWidth();
            float h = getHeight();
            float size = Math.min(w, h) - stroke * 1.6f;
            float left = (w - size) / 2f;
            float top = (h - size) / 2f;
            oval.set(left, top, left + size, top + size);
            // 270° gauge opening at the bottom.
            float start = 135f;
            float sweep = 270f;
            canvas.drawArc(oval, start, sweep, false, track);
            if (bandLo >= 0 && bandHi > bandLo) {
                float inset = stroke * 1.1f;
                RectF inner = new RectF(oval.left + inset, oval.top + inset,
                        oval.right - inset, oval.bottom - inset);
                canvas.drawArc(inner, start + sweep * clamp(bandLo), sweep * (clamp(bandHi) - clamp(bandLo)),
                        false, band);
            }
            if (gradient) {
                SweepGradient sg = new SweepGradient(w / 2f, h / 2f,
                        new int[] {CYAN, VIOLET, 0xFFE040FB, CYAN}, null);
                arc.setShader(sg);
            } else {
                arc.setShader(null);
                arc.setColor(color);
            }
            if (value > 0.001f) {
                canvas.drawArc(oval, start, sweep * value, false, arc);
            }
            if (cap >= 0 && cap <= 1) {
                double a = Math.toRadians(start + sweep * cap);
                float r1 = size / 2f - stroke * 0.9f;
                float r2 = size / 2f + stroke * 0.9f;
                float cx = w / 2f;
                float cy = h / 2f;
                canvas.drawLine(cx + (float) (r1 * Math.cos(a)), cy + (float) (r1 * Math.sin(a)),
                        cx + (float) (r2 * Math.cos(a)), cy + (float) (r2 * Math.sin(a)), tick);
            }
        }

        private static float clamp(float v) {
            return Math.max(0f, Math.min(1f, v));
        }
    }

    /** Horizontal phase timeline with a progress cursor. */
    static final class Timeline extends View {
        private final Paint seg = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint dim = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint cursor = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final List<float[]> parts = new ArrayList<float[]>();
        private final List<Integer> colors = new ArrayList<Integer>();
        private float progress = -1;
        private final float radius;

        Timeline(Context c) {
            super(c);
            radius = 6 * c.getResources().getDisplayMetrics().density;
            dim.setColor(0x99000000);
            cursor.setColor(TEXT);
        }

        void setPlan(AiModel.Plan plan) {
            parts.clear();
            colors.clear();
            float total = Math.max(1, plan.totalS);
            float acc = 0;
            for (AiModel.Phase ph : plan.phases) {
                parts.add(new float[] {acc / total, (acc + ph.durationS) / total});
                colors.add(phaseColor(ph.id));
                acc += ph.durationS;
            }
            invalidate();
        }

        void setProgress(float p) {
            progress = p;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas canvas) {
            float w = getWidth();
            float h = getHeight();
            float gap = 3 * getResources().getDisplayMetrics().density;
            for (int i = 0; i < parts.size(); i++) {
                float[] p = parts.get(i);
                float l = p[0] * w + (i > 0 ? gap / 2 : 0);
                float r = p[1] * w - (i < parts.size() - 1 ? gap / 2 : 0);
                int col = colors.get(i);
                seg.setShader(new LinearGradient(l, 0, r, 0, col, lighten(col), Shader.TileMode.CLAMP));
                canvas.drawRoundRect(new RectF(l, 0, r, h), radius, radius, seg);
            }
            if (progress >= 0) {
                float x = Math.max(0, Math.min(1, progress)) * w;
                canvas.drawRoundRect(new RectF(x, 0, w, h), radius, radius, dim);
                float cw = 3 * getResources().getDisplayMetrics().density;
                canvas.drawRoundRect(new RectF(x - cw / 2, -cw, x + cw / 2, h + cw), cw, cw, cursor);
            }
        }

        private static int lighten(int c) {
            int r = Math.min(255, ((c >> 16) & 0xFF) + 40);
            int g = Math.min(255, ((c >> 8) & 0xFF) + 40);
            int b = Math.min(255, (c & 0xFF) + 40);
            return 0xFF000000 | (r << 16) | (g << 8) | b;
        }
    }

    /** Thin horizontal meter (value / max) with an optional marker. */
    static final class Bar extends View {
        private final Paint back = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint mark = new Paint(Paint.ANTI_ALIAS_FLAG);
        private float value;
        private float marker = -1;
        private int color = VIOLET;

        Bar(Context c) {
            super(c);
            back.setColor(0x14FFFFFF);
            mark.setColor(TEXT);
        }

        void set(float v, int col) {
            value = Math.max(0, Math.min(1, v));
            color = col;
            invalidate();
        }

        void setMarker(float m) {
            marker = m;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas canvas) {
            float w = getWidth();
            float h = getHeight();
            float r = h / 2f;
            canvas.drawRoundRect(new RectF(0, 0, w, h), r, r, back);
            if (value > 0) {
                fill.setShader(new LinearGradient(0, 0, w, 0, color, lightenAlpha(color),
                        Shader.TileMode.CLAMP));
                canvas.drawRoundRect(new RectF(0, 0, Math.max(h, w * value), h), r, r, fill);
            }
            if (marker >= 0 && marker <= 1) {
                float x = marker * w;
                float mw = 2 * getResources().getDisplayMetrics().density;
                canvas.drawRect(x - mw / 2, -mw, x + mw / 2, h + mw, mark);
            }
        }

        private static int lightenAlpha(int c) {
            return (c & 0x00FFFFFF) | 0xCC000000;
        }
    }
}
