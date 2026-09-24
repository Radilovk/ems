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
    // Theme tokens — filled from the app's colors (light / dark) by applyTheme(); dark defaults.
    static int BG = 0xFF121212;
    static int CARD = 0xFF1E1E1E;
    static int CARD2 = 0xFF2A2A2A;
    static int STROKE = 0xFF444444;
    static int TEXT = 0xFFE8E8E8;
    static int MUTED = 0xFFB0B0B0;
    /** Brand accent (app red: active tab, primary actions, strength). */
    static int VIOLET = 0xFFE53935;
    static int ACCENT_DARK = 0xFFB71C1C;
    /** Impulse / recovery green (app impulse_accent). */
    static int CYAN = 0xFF81C784;
    static int OK = 0xFF66BB6A;
    static int WARN = 0xFFF9A825;
    static int DANGER = 0xFFEF5350;
    static int ORANGE = 0xFFF57C00;
    /** X logo pink (metabolic phase). */
    static int PINK = 0xFFFF2D95;
    static int ON_ACCENT = 0xFFFFFFFF;
    static boolean dark = true;

    /** Read the app's theme colors (values / values-night) so the AI screens match the rest. */
    static void applyTheme(Context c) {
        if (c == null) {
            return;
        }
        BG = color(c, "bg_screen", BG);
        CARD = color(c, "bg_card", CARD);
        CARD2 = color(c, "bg_surface", CARD2);
        STROKE = color(c, "card_stroke", STROKE);
        TEXT = color(c, "text_primary", TEXT);
        MUTED = color(c, "text_secondary", MUTED);
        VIOLET = color(c, "accent_primary", VIOLET);
        ACCENT_DARK = color(c, "accent_primary_dark", ACCENT_DARK);
        CYAN = color(c, "impulse_accent", CYAN);
        OK = color(c, "light_green_color", OK);
        WARN = color(c, "ma_badge_pause_bg", WARN);
        DANGER = color(c, "pause_accent", DANGER);
        ORANGE = color(c, "light_orange_exister", ORANGE);
        ON_ACCENT = color(c, "text_on_accent", ON_ACCENT);
        dark = luminance(BG) < 0.4;
    }

    static int color(Context c, String name, int fallback) {
        try {
            int id = c.getResources().getIdentifier(name, "color", c.getPackageName());
            return id != 0 ? c.getResources().getColor(id) : fallback;
        } catch (Throwable t) {
            return fallback;
        }
    }

    static int alpha(int color, int a) {
        return (color & 0x00FFFFFF) | ((a & 0xFF) << 24);
    }

    static double luminance(int c) {
        return (0.299 * ((c >> 16) & 0xFF) + 0.587 * ((c >> 8) & 0xFF) + 0.114 * (c & 0xFF)) / 255.0;
    }

    /** App dial gradient (as on the avatar ring): green → yellow → orange → red. */
    static int[] heatGradient() {
        return new int[] {CYAN, 0xFFFDD835, ORANGE, VIOLET};
    }

    static int phaseColor(AiModel.PhaseId id) {
        switch (id) {
            case WARMUP: return WARN;
            case MAIN: return VIOLET;
            case METABOLIC: return PINK;
            default: return CYAN;
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
            track.setColor(alpha(TEXT, 0x1C));
            track.setStrokeCap(Paint.Cap.ROUND);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeWidth(stroke);
            arc.setStrokeCap(Paint.Cap.ROUND);
            band.setStyle(Paint.Style.STROKE);
            band.setStrokeWidth(stroke * 0.45f);
            band.setColor(alpha(CYAN, 0x70));
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
                // Heat gradient over the 270° gauge (starts at 135°), as on the app's avatar ring.
                int[] hc = heatGradient();
                SweepGradient sg = new SweepGradient(w / 2f, h / 2f,
                        new int[] {hc[0], hc[1], hc[2], hc[3], hc[3]},
                        new float[] {0f, 0.25f, 0.5f, 0.75f, 1f});
                android.graphics.Matrix m = new android.graphics.Matrix();
                m.setRotate(start, w / 2f, h / 2f);
                sg.setLocalMatrix(m);
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
            dim.setColor(alpha(BG, 0x99));
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
            back.setColor(alpha(TEXT, 0x1C));
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
