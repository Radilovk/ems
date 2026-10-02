package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.view.View;

import com.isaigu.gymapp.widget.XemsUi;

import java.io.InputStream;
import java.util.List;

/**
 * The drawn parts of the Auto live board (docs/xems-auto-mode-spec.md §12): the set ring around the exercise, the
 * body heat map (front | back, the report's anatomical figures), the peak-load triangle and the session timeline.
 * All values come from {@link AutoEngine} (the channel fatigue model, the forecast); nothing here computes physiology.
 * Named classes only (dx).
 */
public final class AutoViews {
    private AutoViews() {}

    // ================================================================ heat scale

    /** One colour scale for every load on the board: blue (light) → cyan → green → yellow → red (the limit). */
    static final float[] HEAT_AT = {0f, 0.3f, 0.55f, 0.8f, 1.0f, 1.25f};
    static final int[] HEAT_COL = {0xFF2F6BFF, 0xFF22D3EE, 0xFF22C55E, 0xFFFACC15, 0xFFEF4444, 0xFFB91C1C};

    public static int heat(double v) {
        if (v <= HEAT_AT[0]) {
            return HEAT_COL[0];
        }
        for (int i = 1; i < HEAT_AT.length; i++) {
            if (v <= HEAT_AT[i]) {
                float k = (float) ((v - HEAT_AT[i - 1]) / (HEAT_AT[i] - HEAT_AT[i - 1]));
                return XemsUi.mix(HEAT_COL[i - 1], HEAT_COL[i], k);
            }
        }
        return HEAT_COL[HEAT_COL.length - 1];
    }

    static float dp(View v, float d) {
        return d * v.getResources().getDisplayMetrics().density;
    }

    // ================================================================ set ring

    /**
     * The ring around the exercise figure: the set's progress (orange → red), the rest's progress (amber, green when
     * ▶ is allowed), the recovery (blue); during the countdown a big 3 · 2 · 1 over the figure.
     */
    public static final class SetRing extends View {
        public static final int WORK = 0;
        public static final int REST = 1;
        public static final int READY = 2;
        public static final int RECOVERY = 3;
        public static final int IDLE = 4;

        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint scrim = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint big = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF box = new RectF();
        private float progress;
        private int mode = IDLE;
        private int count;
        private int lastW;
        private int lastMode = -1;
        public SetRing(Context c) {
            super(c);
            track.setStyle(Paint.Style.STROKE);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeCap(Paint.Cap.ROUND);
            glow.setStyle(Paint.Style.STROKE);
            glow.setStrokeCap(Paint.Cap.ROUND);
            big.setTextAlign(Paint.Align.CENTER);
            big.setFakeBoldText(true);
        }

        /** progress 0…1, mode WORK / REST / READY / RECOVERY / IDLE, countdown seconds (0 = none). */
        public void set(float p, int m, int countdown) {
            p = Math.max(0f, Math.min(1f, p));
            if (Math.abs(p - progress) < 0.002f && m == mode && countdown == count) {
                return;
            }
            progress = p;
            mode = m;
            count = countdown;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            int h = getHeight();
            float s = Math.min(w, h);
            float sw = dp(this, 9);
            box.set((w - s) / 2f + sw * 1.5f, (h - s) / 2f + sw * 1.5f, (w + s) / 2f - sw * 1.5f, (h + s) / 2f - sw * 1.5f);
            track.setStrokeWidth(sw);
            track.setColor(XemsUi.alpha(XemsUi.TEXT, 0x1E));
            c.drawOval(box, track);
            if (w != lastW || mode != lastMode) {
                lastW = w;
                lastMode = mode;
                int a;
                int b;
                switch (mode) {
                    case WORK:                    // the kit's impulse colours: orange → accent red
                        a = XemsUi.ORANGE;
                        b = XemsUi.ACCENT;
                        break;
                    case READY:
                        a = XemsUi.GO_TEXT;
                        b = XemsUi.GO;
                        break;
                    case REST:
                        a = XemsUi.AMBER;
                        b = XemsUi.mix(XemsUi.AMBER, XemsUi.ORANGE, 0.5f);
                        break;
                    case RECOVERY:
                        a = HEAT_COL[1];
                        b = HEAT_COL[0];
                        break;
                    default:
                        a = XemsUi.MUTED;
                        b = XemsUi.MUTED;
                        break;
                }
                SweepGradient g = new SweepGradient(w / 2f, h / 2f, new int[] {a, b, b}, new float[] {0f, 0.85f, 1f});
                android.graphics.Matrix m = new android.graphics.Matrix();
                m.setRotate(-90, w / 2f, h / 2f);
                g.setLocalMatrix(m);
                arc.setShader(g);
                glow.setShader(g);
            }
            if (progress > 0) {
                float sweep = 360f * progress;
                glow.setStrokeWidth(sw * 2.6f);
                glow.setAlpha(XemsUi.dark ? 70 : 40);
                c.drawArc(box, -90, sweep, false, glow);
                arc.setStrokeWidth(sw);
                c.drawArc(box, -90, sweep, false, arc);
            }
            if (count > 0) {
                scrim.setColor(XemsUi.alpha(XemsUi.CARD, 0xC8));
                c.drawCircle(w / 2f, h / 2f, s / 2f - sw * 2.5f, scrim);
                big.setColor(XemsUi.GO_TEXT);
                big.setTextSize(s * 0.42f);
                Paint.FontMetrics fm = big.getFontMetrics();
                c.drawText(String.valueOf(count), w / 2f, h / 2f - (fm.ascent + fm.descent) / 2f, big);
            }
        }
    }

    // ================================================================ body heat map

    /** Anterior | posterior figure; each suit channel painted by its load (assets/xems/body, scripts/gen-body-figures.py). */
    public static final class BodyHeat extends View {
        private static final String[] SIDES = {"front", "back"};
        private final Fig[] figs = new Fig[2];
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Rect src = new Rect();
        private final RectF dst = new RectF();
        private final double[] load = new double[AutoModel.CHANNELS];
        private final boolean[] off = new boolean[AutoModel.CHANNELS];
        private String sexKey = "";
        private boolean dirty = true;

        static final class Fig {
            Bitmap art;
            Bitmap over;
            int[] idx;          // pixel index of every channel pixel
            byte[] zone;
            byte[] shade;
            byte[] cov;
            int[] px;
        }

        public BodyHeat(Context c) {
            super(c);
        }

        /** Loads (F / F_max) per channel; off = the channel is switched off for every row (drawn plain). */
        public void set(AiModel.Sex sex, double[] l, boolean[] disabled) {
            String key = sex == AiModel.Sex.FEMALE ? "female" : "male";
            if (!key.equals(sexKey)) {
                sexKey = key;
                for (int i = 0; i < 2; i++) {
                    figs[i] = load(getContext(), key + "_" + SIDES[i]);
                }
                dirty = true;
            }
            for (int k = 0; k < load.length; k++) {
                // 1/40 steps: the figure is repainted only when a zone visibly changes
                double v = l != null && k < l.length ? Math.round(l[k] * 40) / 40.0 : 0;
                boolean o = disabled != null && k < disabled.length && disabled[k];
                if (v != load[k] || o != off[k]) {
                    load[k] = v;
                    off[k] = o;
                    dirty = true;
                }
            }
            if (dirty) {
                invalidate();
            }
        }

        static Fig load(Context c, String key) {
            Fig f = new Fig();
            try {
                f.art = decode(c, "xems/body/" + key + "-art.webp", true);
                Bitmap ix = decode(c, "xems/body/" + key + "-idx.webp", false);
                if (f.art == null || ix == null) {
                    return f;
                }
                int w = ix.getWidth();
                int h = ix.getHeight();
                int[] all = new int[w * h];
                ix.getPixels(all, 0, w, 0, 0, w, h);
                ix.recycle();
                int n = 0;
                for (int p : all) {
                    int z = (p >> 16) & 0xFF;
                    if (z >= 1 && z <= AutoModel.CHANNELS && (p & 0xFF) > 8) {
                        n++;
                    }
                }
                f.idx = new int[n];
                f.zone = new byte[n];
                f.shade = new byte[n];
                f.cov = new byte[n];
                int j = 0;
                for (int i = 0; i < all.length; i++) {
                    int p = all[i];
                    int z = (p >> 16) & 0xFF;
                    if (z >= 1 && z <= AutoModel.CHANNELS && (p & 0xFF) > 8) {
                        f.idx[j] = i;
                        f.zone[j] = (byte) (z - 1);
                        f.shade[j] = (byte) ((p >> 8) & 0xFF);
                        f.cov[j] = (byte) (p & 0xFF);
                        j++;
                    }
                }
                f.px = new int[w * h];
                f.over = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("AutoViews.body", t);
            }
            return f;
        }

        private static Bitmap decode(Context c, String asset, boolean premultiplied) throws java.io.IOException {
            InputStream in = c.getAssets().open(asset);
            try {
                BitmapFactory.Options o = new BitmapFactory.Options();
                o.inScaled = false;
                o.inPreferredConfig = Bitmap.Config.ARGB_8888;
                o.inPremultiplied = premultiplied;
                return BitmapFactory.decodeStream(in, null, o);
            } finally {
                in.close();
            }
        }

        /** The report's recolour: the shade keeps the volume (dark → black, mid → the colour, light → white). */
        private void repaint(Fig f) {
            if (f == null || f.over == null) {
                return;
            }
            int[] col = new int[AutoModel.CHANNELS];
            float[] op = new float[AutoModel.CHANNELS];
            for (int k = 0; k < col.length; k++) {
                col[k] = heat(load[k]);
                op[k] = off[k] ? 0f : 0.3f + 0.7f * (float) Math.min(1.0, load[k] / 0.6);
            }
            int[] px = f.px;
            java.util.Arrays.fill(px, 0);
            for (int j = 0; j < f.idx.length; j++) {
                int z = f.zone[j];
                float a = op[z];
                if (a <= 0f) {
                    continue;
                }
                int c = col[z];
                float l = (f.shade[j] & 0xFF) / 255f;
                int r = (c >> 16) & 0xFF;
                int g = (c >> 8) & 0xFF;
                int b = c & 0xFF;
                if (l < 0.5f) {
                    r = (int) (r * 2 * l);
                    g = (int) (g * 2 * l);
                    b = (int) (b * 2 * l);
                } else {
                    float k2 = (2 * l - 1) * 0.55f;
                    r = (int) (r + (255 - r) * k2);
                    g = (int) (g + (255 - g) * k2);
                    b = (int) (b + (255 - b) * k2);
                }
                int alpha = (int) ((f.cov[j] & 0xFF) * a);
                px[f.idx[j]] = (alpha << 24) | (r << 16) | (g << 8) | b;
            }
            f.over.setPixels(px, 0, f.over.getWidth(), 0, 0, f.over.getWidth(), f.over.getHeight());
        }

        @Override
        protected void onDraw(Canvas c) {
            if (dirty) {
                dirty = false;
                repaint(figs[0]);
                repaint(figs[1]);
            }
            float lh = 0;
            float gap = dp(this, 22);
            float h = getHeight() - lh;
            float totalW = 0;
            for (Fig f : figs) {
                if (f != null && f.art != null) {
                    totalW += f.art.getWidth() * h / f.art.getHeight();
                }
            }
            float scale = 1f;
            if (totalW + gap > getWidth()) {
                scale = (getWidth() - gap) / Math.max(1f, totalW);
            }
            float x = (getWidth() - (totalW * scale + gap)) / 2f;
            for (int i = 0; i < 2; i++) {
                Fig f = figs[i];
                if (f == null || f.art == null) {
                    continue;
                }
                float fh = h * scale;
                float fw = f.art.getWidth() * fh / f.art.getHeight();
                float top = (h - fh) / 2f;
                src.set(0, 0, f.art.getWidth(), f.art.getHeight());
                dst.set(x, top, x + fw, top + fh);
                c.drawBitmap(f.art, src, dst, paint);
                if (f.over != null) {
                    c.drawBitmap(f.over, src, dst, paint);
                }
                x += fw + gap;
            }
        }
    }

    // ================================================================ peak triangle

    /** Inverted triangle: wide (red, peak) at the top, the point (blue, light) at the bottom; a marker at the
     *  most loaded zone now, with the value. */
    public static final class PeakBar extends View {
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint line = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint txt = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path tri = new Path();
        private float value;
        private boolean cardio;
        private int lastH;

        public PeakBar(Context c) {
            super(c);
            line.setStrokeWidth(dp(this, 2.5f));
            line.setStrokeCap(Paint.Cap.ROUND);
            txt.setTextAlign(Paint.Align.CENTER);
            txt.setFakeBoldText(true);
            txt.setTextSize(dp(this, 13));
        }

        /** v = the system load; heart = the heart, not a muscle, is what is nearest its limit (a ♥ at the mark). */
        public void set(double v, boolean heart) {
            float f = (float) Math.max(0, Math.min(1.25, v));
            if (Math.abs(f - value) > 0.005f || heart != cardio) {
                value = f;
                cardio = heart;
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            int h = getHeight();
            float top = dp(this, 6);
            float bottom = h - dp(this, 6);
            float half = Math.min(w / 2f - dp(this, 12), dp(this, 15));
            if (h != lastH) {
                lastH = h;
                // top = 1.25 (beyond the limit), bottom = 0
                int[] cols = new int[HEAT_AT.length];
                float[] pos = new float[HEAT_AT.length];
                for (int i = 0; i < cols.length; i++) {
                    int j = HEAT_AT.length - 1 - i;
                    cols[i] = HEAT_COL[j];
                    pos[i] = 1f - HEAT_AT[j] / 1.25f;
                }
                fill.setShader(new LinearGradient(0, top, 0, bottom, cols, pos, Shader.TileMode.CLAMP));
                tri.reset();
                tri.moveTo(w / 2f - half, top);
                tri.lineTo(w / 2f + half, top);
                tri.lineTo(w / 2f, bottom);
                tri.close();
            }
            fill.setAlpha(XemsUi.dark ? 235 : 255);
            c.drawPath(tri, fill);
            float y = bottom - (bottom - top) * value / 1.25f;
            float hw = half * (y - top) / (bottom - top);
            hw = half - hw + dp(this, 6);
            line.setColor(XemsUi.TEXT);
            c.drawLine(w / 2f - hw, y, w / 2f + hw, y, line);
            if (cardio) {
                float g = dp(this, 13);
                line.setColor(heat(value));
                ImpulseGlyph.draw(c, ImpulseGlyph.HEART, w / 2f + hw + dp(this, 2), y - g / 2f, g, line);
            }
        }
    }

    // ================================================================ the pulse

    /**
     * The pulse beside the body: a heart that beats at the HR, in the colour of its zone (the kit's HR zones,
     * as on the dial), the number under it. Gone without a band.
     */
    public static final class Vital extends View {
        private final Paint heart = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint num = new Paint(Paint.ANTI_ALIAS_FLAG);
        private int hr;
        private int color;

        public Vital(Context c) {
            super(c);
            heart.setStrokeWidth(dp(this, 2.2f));
            heart.setStrokeJoin(Paint.Join.ROUND);
            num.setTextAlign(Paint.Align.CENTER);
            num.setFakeBoldText(true);
        }

        /** hr ≤ 0 = no fresh value (an outline heart, "—"). */
        public void set(int bpm, int zoneColor) {
            if (bpm != hr || zoneColor != color) {
                hr = bpm;
                color = zoneColor;
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            float s = Math.min(w * 0.62f, getHeight() * 0.5f);
            float beat = 1f;
            if (hr > 0) {
                long period = 60000L / Math.max(30, hr);
                float ph = (System.currentTimeMillis() % period) / (float) period;
                beat = 1f + 0.12f * (float) Math.exp(-ph * 9f);        // a quick swell on each beat
                postInvalidateDelayed(40);
            }
            float g = s * beat;
            heart.setColor(hr > 0 ? color : XemsUi.MUTED);
            ImpulseGlyph.draw(c, ImpulseGlyph.HEART, (w - g) / 2f, s * 0.55f - g / 2f, g, heart);
            if (hr > 0) {
                heart.setStyle(Paint.Style.FILL);
                heart.setAlpha(70);
                c.drawPath(heartPath((w - g) / 2f, s * 0.55f - g / 2f, g), heart);
                heart.setAlpha(255);
                heart.setStyle(Paint.Style.STROKE);
            }
            num.setColor(hr > 0 ? color : XemsUi.MUTED);
            num.setTextSize(s * 0.62f);
            c.drawText(hr > 0 ? String.valueOf(hr) : "—", w / 2f, s * 1.1f + s * 0.62f, num);
        }

        private static Path heartPath(float x, float y, float s) {
            Path p = new Path();
            p.moveTo(x + .5f * s, y + .9f * s);
            p.cubicTo(x + .1f * s, y + .62f * s, x - .02f * s, y + .34f * s, x + .2f * s, y + .16f * s);
            p.cubicTo(x + .34f * s, y + .05f * s, x + .47f * s, y + .14f * s, x + .5f * s, y + .27f * s);
            p.cubicTo(x + .53f * s, y + .14f * s, x + .66f * s, y + .05f * s, x + .8f * s, y + .16f * s);
            p.cubicTo(x + 1.02f * s, y + .34f * s, x + .9f * s, y + .62f * s, x + .5f * s, y + .9f * s);
            p.close();
            return p;
        }
    }

    /** The impulses of the set as dots: done filled, the running one bright, the rest hollow — no words. */
    public static final class Dots extends View {
        private final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        private int done;
        private int all;

        public Dots(Context c) {
            super(c);
            p.setStrokeWidth(dp(this, 1.6f));
        }

        public void set(int now, int count) {
            if (now != done || count != all) {
                done = now;
                all = count;
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            if (all <= 0) {
                return;
            }
            float r = dp(this, 5);
            float gap = dp(this, 9);
            float total = all * 2 * r + (all - 1) * gap;
            float x = (getWidth() - total) / 2f + r;
            float y = getHeight() / 2f;
            for (int i = 1; i <= all; i++) {
                if (i < done) {
                    p.setStyle(Paint.Style.FILL);
                    p.setColor(XemsUi.ORANGE);
                } else if (i == done) {
                    p.setStyle(Paint.Style.FILL);
                    p.setColor(XemsUi.ACCENT);
                } else {
                    p.setStyle(Paint.Style.STROKE);
                    p.setColor(XemsUi.alpha(XemsUi.TEXT, 0x66));
                }
                c.drawCircle(x, y, i == done ? r * 1.25f : r, p);
                x += 2 * r + gap;
            }
        }
    }

    // ================================================================ timeline

    /**
     * The whole session on one line: height = the stimulus the program gives (cycle load), colour = the peak zone
     * load at that time. Smoothed over time (σ ≈ 40 s), so the usual short rests between sets melt into one
     * profile; a critical pause — a rest of {@link AutoEngine#CRITICAL_PAUSE_S} s or more, or an HR stop — is kept
     * out of the smoothing and goes down to the base, as wide as it lasts, with soft walls. The past is what
     * happened (bright), the future the forecast moved to now (faded); phase separators, the HR line, "now".
     */
    public static final class Timeline extends View {
        private static final int N = 360;
        /** Time constant of the smoothing (seconds). */
        private static final double SMOOTH_S = 40.0;
        private final Paint area = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint sep = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint now = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint txt = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path path = new Path();
        private final float[] hv = new float[N];
        private final float[] cv = new float[N];
        private final int[] phase = new int[N];
        private float nowS;
        private float totalS = 1;
        private String[] names = new String[0];
        private final Paint hrLine = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path hrPath = new Path();
        private final float[] hrv = new float[N];
        private float hrLo;
        private float hrHi;
        private float hrCapY = -1;

        public Timeline(Context c) {
            super(c);
            sep.setStrokeWidth(dp(this, 1.5f));
            now.setStrokeWidth(dp(this, 2f));
            txt.setTextSize(dp(this, 12));
            txt.setFakeBoldText(true);
            hrLine.setStyle(Paint.Style.STROKE);
            hrLine.setStrokeWidth(dp(this, 2f));
            hrLine.setStrokeJoin(Paint.Join.ROUND);
        }

        /** The HR scale of the line (rest … a bit over the cap), cap ≤ 0 = no HR line. */
        public void setHrScale(int rest, int cap) {
            if (cap <= rest) {
                hrHi = 0;
                return;
            }
            hrLo = rest;
            hrHi = cap + 8;
            hrCapY = (cap - hrLo) / (hrHi - hrLo);
        }

        /** True for a pause that stays deep on the timeline: an HR stop, or a rest of ≥ CRITICAL_PAUSE_S. */
        static boolean critical(float[] p, double durationS) {
            float kind = p.length > 6 ? p[6] : (p[2] <= 0 ? AutoEngine.TRACE_REST : AutoEngine.TRACE_CYCLE);
            return kind == AutoEngine.TRACE_HR_PAUSE
                    || (kind == AutoEngine.TRACE_REST && durationS >= AutoEngine.CRITICAL_PAUSE_S);
        }

        /**
         * past: the engine's trace; f: the forecast; elapsedImpulse: impulse seconds done; sessionNow: the clock;
         * phaseNames: the plan's phases.
         */
        public void set(List<float[]> past, AutoEngine.Forecast f, double elapsedImpulse, double sessionNow,
                        String[] phaseNames) {
            names = phaseNames;
            double anchor = f != null ? f.sessionAt(elapsedImpulse) : sessionNow;
            double total = f != null ? sessionNow + Math.max(0, f.totalS - anchor) : sessionNow;
            totalS = (float) Math.max(60, total);
            nowS = (float) sessionNow;
            double max = f != null ? f.maxLoad : 0;
            for (float[] p : past) {
                max = Math.max(max, p[2]);
            }
            max = Math.max(0.05, max);
            float[] raw = new float[N];
            float[] col = new float[N];
            boolean[] crit = new boolean[N];
            int pi = 0;
            int fi = 0;
            for (int i = 0; i < N; i++) {
                double t = (i + 0.5) * totalS / N;
                float[] p = null;
                double dur = 0;
                if (t <= sessionNow) {
                    while (pi + 1 < past.size() && past.get(pi + 1)[0] <= t) {
                        pi++;
                    }
                    if (!past.isEmpty()) {
                        p = past.get(pi);
                        dur = (pi + 1 < past.size() ? past.get(pi + 1)[0] : sessionNow) - p[0];
                    }
                } else if (f != null) {
                    double ft = anchor + (t - sessionNow);
                    while (fi + 1 < f.points.size() && f.points.get(fi + 1)[0] <= ft) {
                        fi++;
                    }
                    if (!f.points.isEmpty()) {
                        p = f.points.get(fi);
                        dur = (fi + 1 < f.points.size() ? f.points.get(fi + 1)[0] : f.totalS) - p[0];
                    }
                }
                raw[i] = p != null ? (float) (p[2] / max) : 0;
                col[i] = p != null ? p[3] : 0;
                phase[i] = p != null && p.length > 4 ? (int) p[4] : 0;
                hrv[i] = t <= sessionNow && p != null && p.length > 5 ? p[5] : 0;
                crit[i] = p != null && critical(p, dur);
            }
            // Gaussian over time, without the critical pauses (they must not be filled in by their neighbours)
            double sig = Math.max(0.6, SMOOTH_S * N / totalS);
            int rad = (int) Math.ceil(3 * sig);
            float[] sh = new float[N];
            float[] sc = new float[N];
            for (int i = 0; i < N; i++) {
                if (crit[i]) {
                    sh[i] = 0;
                    sc[i] = 0;
                    continue;
                }
                double ws = 0;
                double hs = 0;
                double cs = 0;
                for (int j = Math.max(0, i - rad); j <= Math.min(N - 1, i + rad); j++) {
                    if (crit[j]) {
                        continue;
                    }
                    double wgt = Math.exp(-0.5 * (i - j) * (i - j) / (sig * sig));
                    ws += wgt;
                    hs += wgt * raw[j];
                    cs += wgt * col[j];
                }
                sh[i] = ws > 0 ? (float) (hs / ws) : 0;
                sc[i] = ws > 0 ? (float) (cs / ws) : 0;
            }
            // soft walls into a critical pause (one light pass over everything)
            for (int i = 0; i < N; i++) {
                float a = sh[Math.max(0, i - 1)];
                float b = sh[Math.min(N - 1, i + 1)];
                hv[i] = crit[i] ? (a + b) * 0.12f : 0.25f * a + 0.5f * sh[i] + 0.25f * b;
                cv[i] = sc[i];
            }
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            int h = getHeight();
            float top = dp(this, 22);
            float base = h - dp(this, 4);
            float dx = w / (float) N;
            int[] cols = new int[N];
            float[] pos = new float[N];
            for (int i = 0; i < N; i++) {
                cols[i] = heat(cv[i]);
                pos[i] = i / (float) (N - 1);
            }
            area.setShader(new LinearGradient(0, 0, w, 0, cols, pos, Shader.TileMode.CLAMP));
            path.reset();
            path.moveTo(0, base);
            for (int i = 0; i < N; i++) {
                path.lineTo(i * dx + dx / 2, base - (base - top) * Math.min(1f, hv[i]));
            }
            path.lineTo(w, base);
            path.close();
            float xNow = w * Math.min(1f, nowS / totalS);
            c.save();
            c.clipRect(0, 0, xNow, h);
            area.setAlpha(255);
            c.drawPath(path, area);
            c.restore();
            c.save();
            c.clipRect(xNow, 0, w, h);
            area.setAlpha(XemsUi.dark ? 90 : 110);
            c.drawPath(path, area);
            c.restore();
            // base line
            sep.setColor(XemsUi.alpha(XemsUi.TEXT, 0x40));
            c.drawLine(0, base, w, base, sep);
            // phase separators and names
            int last = -1;
            float labelEnd = -1;
            for (int i = 0; i < N; i++) {
                if (phase[i] != last) {
                    last = phase[i];
                    float x = i * dx;
                    if (i > 0) {
                        sep.setColor(XemsUi.alpha(XemsUi.TEXT, 0x88));
                        c.drawLine(x, top - dp(this, 6), x, base, sep);
                    }
                    String n = last >= 0 && last < names.length ? names[last] : "";
                    // a short phase: its name moves right instead of disappearing under the previous one
                    float lx = Math.max(x + dp(this, 4), labelEnd + dp(this, 6));
                    if (lx + txt.measureText(n) <= w) {
                        txt.setColor(XemsUi.MUTED);
                        c.drawText(n, lx, dp(this, 13), txt);
                        labelEnd = lx + txt.measureText(n);
                    }
                }
            }
            // the pulse (what happened): a line over the mountain, the cap dashed
            if (hrHi > 0) {
                hrPath.reset();
                boolean pen = false;
                for (int i = 0; i < N; i++) {
                    if (hrv[i] <= 0) {
                        pen = false;
                        continue;
                    }
                    float y = base - (base - top) * Math.max(0f, Math.min(1f, (hrv[i] - hrLo) / (hrHi - hrLo)));
                    if (pen) {
                        hrPath.lineTo(i * dx + dx / 2, y);
                    } else {
                        hrPath.moveTo(i * dx + dx / 2, y);
                        pen = true;
                    }
                }
                hrLine.setColor(0xFFFF4D6D);
                hrLine.setPathEffect(null);
                c.drawPath(hrPath, hrLine);
                float yc = base - (base - top) * hrCapY;
                hrLine.setColor(XemsUi.alpha(0xFFFF4D6D, 0x99));
                hrLine.setPathEffect(new android.graphics.DashPathEffect(new float[] {dp(this, 5), dp(this, 4)}, 0));
                c.drawLine(0, yc, w, yc, hrLine);
                hrLine.setPathEffect(null);
            }
            now.setColor(XemsUi.TEXT);
            c.drawLine(xNow, top - dp(this, 8), xNow, base, now);
            c.drawCircle(xNow, top - dp(this, 8), dp(this, 4), now);
        }
    }
}
