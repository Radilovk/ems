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
        private final Paint small = new Paint(Paint.ANTI_ALIAS_FLAG);
        private String centerBig;
        private String centerSmall;
        private int centerColor;

        /**
         * What sits in the ring when there is no exercise figure: the HR (big, zone colour) for a program with a
         * pulse, else the phase's time. null = nothing (the figure is there).
         */
        public void setCenter(String bigText, String smallText, int color) {
            boolean same = bigText == null ? centerBig == null : bigText.equals(centerBig);
            boolean same2 = smallText == null ? centerSmall == null : smallText.equals(centerSmall);
            if (same && same2 && color == centerColor) {
                return;
            }
            centerBig = bigText;
            centerSmall = smallText;
            centerColor = color;
            invalidate();
        }

        public SetRing(Context c) {
            super(c);
            track.setStyle(Paint.Style.STROKE);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeCap(Paint.Cap.ROUND);
            glow.setStyle(Paint.Style.STROKE);
            glow.setStrokeCap(Paint.Cap.ROUND);
            big.setTextAlign(Paint.Align.CENTER);
            big.setFakeBoldText(true);
            small.setTextAlign(Paint.Align.CENTER);
            small.setFakeBoldText(true);
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
                    case WORK:
                        a = 0xFFFFA726;
                        b = 0xFFFF3D2E;
                        break;
                    case READY:
                        a = 0xFF34D399;
                        b = 0xFF22C55E;
                        break;
                    case REST:
                        a = 0xFFFACC15;
                        b = 0xFFF59E0B;
                        break;
                    case RECOVERY:
                        a = 0xFF60A5FA;
                        b = 0xFF22D3EE;
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
            if (count <= 0 && centerBig != null) {
                big.setColor(centerColor);
                big.setTextSize(s * 0.26f);
                c.drawText(centerBig, w / 2f, h / 2f + s * 0.06f, big);
                if (centerSmall != null) {
                    small.setColor(XemsUi.MUTED);
                    small.setTextSize(s * 0.075f);
                    c.drawText(centerSmall, w / 2f, h / 2f + s * 0.2f, small);
                }
            }
            if (count > 0) {
                scrim.setColor(XemsUi.alpha(XemsUi.CARD, 0xC8));
                c.drawCircle(w / 2f, h / 2f, s / 2f - sw * 2.5f, scrim);
                big.setColor(0xFF22C55E);
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
        private final Paint label = new Paint(Paint.ANTI_ALIAS_FLAG);
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
            label.setTextAlign(Paint.Align.CENTER);
            label.setTextSize(dp(this, 12));
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
            float lh = dp(this, 20);
            float gap = dp(this, 18);
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
            label.setColor(XemsUi.MUTED);
            String[] names = {AiText.t("Отпред", "Front"), AiText.t("Отзад", "Back")};
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
                c.drawText(names[i], x + fw / 2f, getHeight() - dp(this, 4), label);
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
        private int lastH;

        public PeakBar(Context c) {
            super(c);
            line.setStrokeWidth(dp(this, 2.5f));
            line.setStrokeCap(Paint.Cap.ROUND);
            txt.setTextAlign(Paint.Align.CENTER);
            txt.setFakeBoldText(true);
            txt.setTextSize(dp(this, 13));
        }

        public void set(double v) {
            float f = (float) Math.max(0, Math.min(1.25, v));
            if (Math.abs(f - value) > 0.005f) {
                value = f;
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            int h = getHeight();
            float top = dp(this, 22);
            float bottom = h - dp(this, 8);
            float half = Math.min(w / 2f - dp(this, 4), dp(this, 16));
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
            txt.setColor(heat(value));
            c.drawText(Math.round(value * 100) + "%", w / 2f, dp(this, 14), txt);
        }
    }

    // ================================================================ timeline

    /**
     * The whole session on one line: height = the stimulus the program gives (cycle load), colour = the peak zone
     * load at that time, valleys = the rests. The past is what happened (bright), the future is the forecast moved
     * to now (faded); phase separators with their names above; the "now" line.
     */
    public static final class Timeline extends View {
        private static final int N = 240;
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
            int pi = 0;
            int fi = 0;
            for (int i = 0; i < N; i++) {
                double t = (i + 0.5) * totalS / N;
                float[] p = null;
                if (t <= sessionNow) {
                    while (pi + 1 < past.size() && past.get(pi + 1)[0] <= t) {
                        pi++;
                    }
                    p = past.isEmpty() ? null : past.get(pi);
                } else if (f != null) {
                    double ft = anchor + (t - sessionNow);
                    while (fi + 1 < f.points.size() && f.points.get(fi + 1)[0] <= ft) {
                        fi++;
                    }
                    p = f.points.isEmpty() ? null : f.points.get(fi);
                }
                raw[i] = p != null ? (float) (p[2] / max) : 0;
                hrv[i] = t <= sessionNow && p != null && p.length > 5 ? p[5] : 0;
                col[i] = p != null ? p[3] : 0;
                phase[i] = p != null && p.length > 4 ? (int) p[4] : 0;
            }
            for (int i = 0; i < N; i++) {           // soften the steps into a profile (rests stay valleys)
                float s = 0;
                float cs = 0;
                int n = 0;
                for (int j = Math.max(0, i - 2); j <= Math.min(N - 1, i + 2); j++) {
                    s += raw[j];
                    cs += col[j];
                    n++;
                }
                hv[i] = s / n;
                cv[i] = cs / n;
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
