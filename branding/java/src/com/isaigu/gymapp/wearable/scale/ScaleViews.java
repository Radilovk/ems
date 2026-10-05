package com.isaigu.gymapp.wearable.scale;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

import com.isaigu.gymapp.widget.XemsUi;

import java.io.InputStream;
import java.util.Locale;

/**
 * The drawn parts of the scale's result page: the body figure painted by segment, the radar of the five segments
 * against normal, the readiness gauge, the trend line and the current's reach per suit channel. One colour logic
 * everywhere ({@link #muscleCol}, {@link #fatCol}, {@link #swellCol}); a tap on a segment (figure or radar axis)
 * selects it on both.
 */
public final class ScaleViews {
    private ScaleViews() {}

    public static final int LAYER_MUSCLE = 0, LAYER_FAT = 1, LAYER_READY = 2;

    public interface OnSegment {
        void onSegment(int seg);
    }

    static String tr(String bg, String en) {
        return com.isaigu.gymapp.widget.XemsLang.tr(bg, en);
    }

    static float dp(View v, float d) {
        return d * v.getResources().getDisplayMetrics().density;
    }

    /**
     * A drawn label that is never cut: shrunk to {@code maxW} (≤ 0 = the view's width) and moved back inside the
     * view when its alignment would push it past an edge (narrow screens, long Bulgarian words).
     */
    static void drawFit(Canvas c, Paint p, String s, float x, float y, float maxW, View v) {
        if (s == null || s.length() == 0) {
            return;
        }
        float size = p.getTextSize();
        float pad = dp(v, 2);
        float lim = v.getWidth() - 2 * pad;
        if (maxW > 0) {
            lim = Math.min(lim, maxW);
        }
        float w = p.measureText(s);
        if (lim > 0 && w > lim) {
            p.setTextSize(size * lim / w);
            w = p.measureText(s);
        }
        Paint.Align al = p.getTextAlign();
        float left = al == Paint.Align.CENTER ? x - w / 2 : al == Paint.Align.RIGHT ? x - w : x;
        float fixed = Math.max(pad, Math.min(v.getWidth() - pad - w, left));
        c.drawText(s, x + (fixed - left), y, p);
        p.setTextSize(size);
    }

    /**
     * Drawn text: a notch above the dp size (labels on a tablet at arm's length) and following the system's font
     * size like the page's TextViews do (capped, so a big font setting does not break the drawings).
     */
    static float sp(View v, float d) {
        android.util.DisplayMetrics dm = v.getResources().getDisplayMetrics();
        float font = dm.density > 0 ? Math.max(1f, Math.min(1.3f, dm.scaledDensity / dm.density)) : 1f;
        return d * 1.12f * font * dm.density;
    }

    static int lerp(float[] at, int[] col, double v) {
        if (Double.isNaN(v)) {
            return 0xFF6B7280;
        }
        if (v <= at[0]) {
            return col[0];
        }
        for (int i = 1; i < at.length; i++) {
            if (v <= at[i]) {
                return XemsUi.mix(col[i - 1], col[i], (float) ((v - at[i - 1]) / (at[i] - at[i - 1])));
            }
        }
        return col[col.length - 1];
    }

    /** Muscle, % of normal: amber (short) → green (normal) → cyan (above). */
    public static int muscleCol(double v) {
        return lerp(new float[] {75, 90, 100, 115, 130},
                new int[] {0xFFF97316, 0xFFEAB308, 0xFF22C55E, 0xFF10B981, 0xFF06B6D4}, v);
    }

    /** Fat, % of the healthy middle (15 / 25 %): green up to ~+12 %, amber at men 20 / women 34 %, red beyond. */
    public static int fatCol(double v) {
        return lerp(new float[] {85, 112, 135, 165},
                new int[] {0xFF22C55E, 0xFF84CC16, 0xFFF59E0B, 0xFFEF4444}, v);
    }

    /** Swelling Δρ (%): green (as usual) → amber → red. */
    public static int swellCol(double v) {
        return lerp(new float[] {0.4f, (float) ScaleInsight.SWELL_AMBER, (float) ScaleInsight.SWELL_RED},
                new int[] {0xFF22C55E, 0xFFF59E0B, 0xFFEF4444}, v);
    }

    /** A change: green the good way, amber the other, grey near zero (|d| below {@code still}). */
    public static int deltaCol(double d, boolean upGood, double still, double full) {
        if (Double.isNaN(d)) {
            return 0;
        }
        if (Math.abs(d) < still) {
            return 0xFF94A3B8;
        }
        float t = (float) Math.min(1, (Math.abs(d) - still) / Math.max(1e-6, full - still));
        boolean good = (d > 0) == upGood;
        return XemsUi.mix(0xFF94A3B8, good ? 0xFF22C55E : 0xFFF59E0B, 0.35f + 0.65f * t);
    }

    /** Relative reach of a channel against the body's mean: green as good, yellow −5 %, orange −10 % and less. */
    public static int reachCol(double rel) {
        return lerp(new float[] {0.88f, 0.94f, 0.99f}, new int[] {0xFFF97316, 0xFFEAB308, 0xFF22C55E}, rel);
    }

    /** The colour of a segment value in a layer. */
    public static int layerCol(int layer, double v) {
        return layer == LAYER_MUSCLE ? muscleCol(v) : layer == LAYER_FAT ? fatCol(v) : swellCol(v);
    }

    // ================================================================ body figure by segment / by muscle group

    /**
     * Front | back figure (assets/xems/body/scale, scripts/gen-scale-figures.py from the owner's anatomical art): the
     * grey art keeps every muscle's definition; a colour is laid over it either per scale segment (trunk, arms,
     * legs — the art's own light modulates it, so the muscles stay drawn) or per suit muscle group (the 10 channels;
     * the rest of the body stays grey). The selected segment bright, the others dimmed.
     */
    public static final class Body extends View {
        static final String[] SIDES = {"front", "back"};
        final Fig[] figs = new Fig[2];
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        final Paint label = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Rect src = new Rect();
        final RectF[] dst = {new RectF(), new RectF()};
        /** Colour per segment 1..5 / per channel 1..10; 0 = leave grey. */
        final int[] segCol = new int[6];
        final int[] chCol = new int[11];
        boolean byChannel;
        String key = "";
        int selected = -1;
        boolean dirty = true;
        float reveal = 1f;
        OnSegment onSegment;

        static final class Fig {
            Bitmap art;
            Bitmap over;
            int[] idx;
            byte[] seg;
            byte[] ch;
            byte[] lum;
            int[] px;
            int w;
            int h;
        }

        public Body(Context c) {
            super(c);
            label.setTextAlign(Paint.Align.CENTER);
            label.setFakeBoldText(true);
        }

        public void setOnSegment(OnSegment l) {
            onSegment = l;
        }

        void sex(boolean female) {
            String k = female ? "female" : "male";
            if (!k.equals(key)) {
                key = k;
                for (int i = 0; i < 2; i++) {
                    figs[i] = load(getContext(), k + "_" + SIDES[i]);
                }
            }
        }

        /** Colours by segment index (ScaleProtocol 0..4); 0 = no data (grey). */
        public void setSegments(boolean female, int[] cols, int sel) {
            sex(female);
            byChannel = false;
            for (int s = 0; s < 5; s++) {
                segCol[s + 1] = cols != null && s < cols.length ? cols[s] : 0;
            }
            selected = sel;
            dirty = true;
            invalidate();
        }

        /** Colours by suit channel (PartStrenthBean.buwei 0..9); 0 = grey. */
        public void setChannels(boolean female, int[] cols) {
            sex(female);
            byChannel = true;
            for (int c = 0; c < 10; c++) {
                chCol[c + 1] = cols != null && c < cols.length ? cols[c] : 0;
            }
            selected = -1;
            dirty = true;
            invalidate();
        }

        public void animateIn() {
            ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(700);
            va.setInterpolator(new DecelerateInterpolator(1.6f));
            va.addUpdateListener(new Reveal(this));
            va.start();
        }

        static Fig load(Context c, String key) {
            Fig f = new Fig();
            try {
                f.art = decode(c, "xems/body/scale/" + key + "-art.webp", true);
                Bitmap mp = decode(c, "xems/body/scale/" + key + "-map.webp", false);
                if (f.art == null || mp == null) {
                    return f;
                }
                f.w = mp.getWidth();
                f.h = mp.getHeight();
                int[] all = new int[f.w * f.h];
                mp.getPixels(all, 0, f.w, 0, 0, f.w, f.h);
                mp.recycle();
                int[] art = new int[f.w * f.h];
                Bitmap a = f.art.getWidth() == f.w && f.art.getHeight() == f.h ? f.art
                        : Bitmap.createScaledBitmap(f.art, f.w, f.h, true);
                a.getPixels(art, 0, f.w, 0, 0, f.w, f.h);
                int n = 0;
                for (int p : all) {
                    int s = (p >> 16) & 0xFF;
                    if (s >= 1 && s <= 5) {
                        n++;
                    }
                }
                f.idx = new int[n];
                f.seg = new byte[n];
                f.ch = new byte[n];
                f.lum = new byte[n];
                int j = 0;
                for (int i = 0; i < all.length; i++) {
                    int s = (all[i] >> 16) & 0xFF;
                    if (s >= 1 && s <= 5) {
                        f.idx[j] = i;
                        f.seg[j] = (byte) s;
                        int ch = (all[i] >> 8) & 0xFF;
                        f.ch[j] = (byte) (ch <= 10 ? ch : 0);
                        f.lum[j] = (byte) (art[i] & 0xFF);
                        j++;
                    }
                }
                f.px = new int[f.w * f.h];
                f.over = Bitmap.createBitmap(f.w, f.h, Bitmap.Config.ARGB_8888);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("ScaleViews.body", t);
            }
            return f;
        }

        static Bitmap decode(Context c, String asset, boolean premultiplied) throws java.io.IOException {
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

        void repaint(Fig f) {
            if (f == null || f.over == null) {
                return;
            }
            int[] px = f.px;
            java.util.Arrays.fill(px, 0);
            for (int j = 0; j < f.idx.length; j++) {
                int s = f.seg[j];
                int c = byChannel ? chCol[f.ch[j]] : segCol[s];
                if (c == 0) {
                    continue;
                }
                // the art's own light: dark striations stay dark, the muscle bellies glow — definition kept
                float l = (f.lum[j] & 0xFF) / 255f;
                float k = 0.12f + 1.45f * l;
                int r = Math.min(255, (int) (((c >> 16) & 0xFF) * k));
                int g = Math.min(255, (int) (((c >> 8) & 0xFF) * k));
                int b = Math.min(255, (int) ((c & 0xFF) * k));
                int alpha = selected < 0 || selected == s - 1 ? 238 : 110;
                px[f.idx[j]] = (alpha << 24) | (r << 16) | (g << 8) | b;
            }
            f.over.setPixels(px, 0, f.w, 0, 0, f.w, f.h);
        }

        @Override
        protected void onDraw(Canvas c) {
            if (dirty) {
                dirty = false;
                repaint(figs[0]);
                repaint(figs[1]);
            }
            float gap = dp(this, 14);
            float h = getHeight();
            float total = 0;
            for (Fig f : figs) {
                if (f != null && f.art != null) {
                    total += f.art.getWidth() * h / f.art.getHeight();
                }
            }
            float scale = total + gap > getWidth() ? (getWidth() - gap) / Math.max(1f, total) : 1f;
            float x = (getWidth() - (total * scale + gap)) / 2f;
            for (int i = 0; i < 2; i++) {
                Fig f = figs[i];
                if (f == null || f.art == null) {
                    continue;
                }
                float fh = h * scale;
                float fw = f.art.getWidth() * fh / f.art.getHeight();
                float top = (h - fh) / 2f;
                src.set(0, 0, f.art.getWidth(), f.art.getHeight());
                dst[i].set(x, top, x + fw, top + fh);
                paint.setAlpha(255);
                c.drawBitmap(f.art, src, dst[i], paint);
                if (f.over != null) {
                    // the colour rises from the feet when the result arrives
                    c.save();
                    c.clipRect(dst[i].left, dst[i].bottom - dst[i].height() * reveal, dst[i].right, dst[i].bottom);
                    src.set(0, 0, f.w, f.h);
                    c.drawBitmap(f.over, src, dst[i], paint);
                    c.restore();
                }
                // the client's own sides: on the front view their right is on the image's left
                label.setColor(XemsUi.MUTED);
                label.setTextSize(sp(this, 12));
                float ly = dst[i].top + dst[i].height() * 0.07f;
                String l = tr("Л", "L"), r = tr("Д", "R");
                drawFit(c, label, i == 0 ? r : l, dst[i].left + dp(this, 6), ly, -1, this);
                drawFit(c, label, i == 0 ? l : r, dst[i].right - dp(this, 6), ly, -1, this);
                x += fw + gap;
            }
        }

        @Override
        public boolean onTouchEvent(MotionEvent e) {
            if (e.getAction() != MotionEvent.ACTION_UP) {
                return true;
            }
            for (int i = 0; i < 2; i++) {
                Fig f = figs[i];
                if (f == null || f.over == null || !dst[i].contains(e.getX(), e.getY())) {
                    continue;
                }
                int px = (int) ((e.getX() - dst[i].left) / dst[i].width() * f.w);
                int py = (int) ((e.getY() - dst[i].top) / dst[i].height() * f.h);
                int s = segAt(f, px, py);
                if (onSegment != null) {
                    performClick();
                    XemsUi.haptic(this);
                    onSegment.onSegment(s >= 1 ? (s - 1 == selected ? -1 : s - 1) : -1);
                }
                return true;
            }
            return true;
        }

        @Override
        public boolean performClick() {
            return super.performClick();
        }

        /** The segment under the finger, looking a little around it (thin limbs). */
        static int segAt(Fig f, int x, int y) {
            int best = 0;
            for (int r = 0; r <= 14 && best == 0; r += 2) {
                for (int dy = -r; dy <= r && best == 0; dy += 2) {
                    for (int dx = -r; dx <= r && best == 0; dx += 2) {
                        int xx = x + dx, yy = y + dy;
                        if (xx < 0 || yy < 0 || xx >= f.w || yy >= f.h) {
                            continue;
                        }
                        int i = yy * f.w + xx;
                        int lo = 0, hi = f.idx.length - 1;
                        while (lo <= hi) {
                            int m = (lo + hi) >>> 1;
                            if (f.idx[m] < i) {
                                lo = m + 1;
                            } else if (f.idx[m] > i) {
                                hi = m - 1;
                            } else {
                                best = f.seg[m];
                                break;
                            }
                        }
                    }
                }
            }
            return best;
        }
    }

    static final class Reveal implements ValueAnimator.AnimatorUpdateListener {
        final Body v;

        Reveal(Body v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.reveal = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    // ================================================================ radar of the five segments

    /**
     * Five axes laid out like the front figure (trunk on top, the client's right on the left): the value as % of
     * normal on each, the 100 ring bold over a soft normal band (90–110), the previous measurement as a dashed
     * ghost. Grows from the centre when set.
     */
    public static final class Radar extends View {
        /** Axis order clockwise from the top: trunk, left arm, left leg, right leg, right arm. */
        static final int[] AXES = {ScaleProtocol.TRUNK, ScaleProtocol.LEFT_ARM, ScaleProtocol.LEFT_LEG,
                ScaleProtocol.RIGHT_LEG, ScaleProtocol.RIGHT_ARM};
        static String[] names() {
            return new String[] {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Ляв крак", "Left leg"),
                    tr("Десен крак", "Right leg"), tr("Дясна ръка", "Right arm")};
        }

        final String[] names = names();
        static final double MIN = 50, MAX = 150;
        /** The readiness layer: 100 + Δρ × READY_K, so a 2.5 % swelling sits well out of the normal band. */
        public static final double READY_K = 15;
        /** The fat layer's 100 (%), to label each zone with its own fat %. */
        public double fatMid = 15;
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path path = new Path();
        double[] now = new double[5];
        double[] before;
        int layer;
        int selected = -1;
        float grow = 1f;
        OnSegment onSegment;
        final float[] ax = new float[5];
        final float[] ay = new float[5];

        public Radar(Context c) {
            super(c);
        }

        public void setOnSegment(OnSegment l) {
            onSegment = l;
        }

        public void set(int layer, double[] now, double[] before, int sel) {
            this.layer = layer;
            this.now = now != null ? now : new double[5];
            this.before = before;
            this.selected = sel;
            invalidate();
        }

        public void animateIn() {
            ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(650);
            va.setInterpolator(new DecelerateInterpolator(1.8f));
            va.addUpdateListener(new Grow(this));
            va.start();
        }

        float rOf(double v, float rMax) {
            double k = (Math.max(MIN, Math.min(MAX, v)) - MIN) / (MAX - MIN);
            return (float) (rMax * k);
        }

        @Override
        protected void onDraw(Canvas c) {
            float cx = getWidth() / 2f;
            float cy = getHeight() / 2f + dp(this, 6);
            float rMax = Math.min(getWidth() * 0.36f, getHeight() * 0.38f);
            double[] axisAngle = new double[5];
            for (int i = 0; i < 5; i++) {
                axisAngle[i] = -Math.PI / 2 + i * 2 * Math.PI / 5;
            }
            // normal band 90–110
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.alpha(0xFF22C55E, 34));
            ring(c, cx, cy, rOf(110, rMax), axisAngle, true);
            p.setColor(XemsUi.CARD);
            ring(c, cx, cy, rOf(90, rMax), axisAngle, true);
            // grid rings
            p.setStyle(Paint.Style.STROKE);
            for (double v = 60; v <= 140; v += 20) {
                p.setStrokeWidth(dp(this, v == 100 ? 1.6f : 0.8f));
                p.setColor(v == 100 ? XemsUi.alpha(XemsUi.TEXT, 130) : XemsUi.alpha(XemsUi.MUTED, 60));
                ring(c, cx, cy, rOf(v, rMax), axisAngle, false);
            }
            for (int i = 0; i < 5; i++) {
                ax[i] = cx + (float) Math.cos(axisAngle[i]) * rMax;
                ay[i] = cy + (float) Math.sin(axisAngle[i]) * rMax;
                p.setStrokeWidth(dp(this, 0.8f));
                p.setColor(XemsUi.alpha(XemsUi.MUTED, 70));
                c.drawLine(cx, cy, ax[i], ay[i], p);
            }
            // previous: dashed ghost
            if (before != null && layer != LAYER_READY) {
                poly(before, cx, cy, rMax, axisAngle, 1f);
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(dp(this, 1.4f));
                p.setColor(XemsUi.alpha(XemsUi.TEXT, 120));
                p.setPathEffect(new DashPathEffect(new float[] {dp(this, 5), dp(this, 4)}, 0));
                c.drawPath(path, p);
                p.setPathEffect(null);
            }
            // now: filled polygon with a gradient of its mean colour
            int main = layer == LAYER_MUSCLE ? 0xFF22C55E : layer == LAYER_FAT ? 0xFFF59E0B : 0xFF38BDF8;
            poly(now, cx, cy, rMax, axisAngle, grow);
            p.setStyle(Paint.Style.FILL);
            p.setShader(new android.graphics.RadialGradient(cx, cy, rMax, XemsUi.alpha(main, 40),
                    XemsUi.alpha(main, 120), Shader.TileMode.CLAMP));
            c.drawPath(path, p);
            p.setShader(null);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, 2.4f));
            p.setColor(main);
            c.drawPath(path, p);
            // vertices coloured by their own value + labels
            p.setTextAlign(Paint.Align.CENTER);
            for (int i = 0; i < 5; i++) {
                int s = AXES[i];
                double v = now[s];
                if (Double.isNaN(v)) {
                    continue;
                }
                float r = rOf(v, rMax) * grow;
                float x = cx + (float) Math.cos(axisAngle[i]) * r;
                float y = cy + (float) Math.sin(axisAngle[i]) * r;
                p.setStyle(Paint.Style.FILL);
                int vc = layer == LAYER_READY ? swellCol((v - 100) / READY_K) : layerCol(layer, v);
                p.setColor(vc);
                c.drawCircle(x, y, dp(this, s == selected ? 8 : 5.5f), p);
                if (s == selected) {
                    p.setStyle(Paint.Style.STROKE);
                    p.setStrokeWidth(dp(this, 2));
                    p.setColor(XemsUi.TEXT);
                    c.drawCircle(x, y, dp(this, 11), p);
                }
                float lx = cx + (float) Math.cos(axisAngle[i]) * (rMax + dp(this, 26));
                float ly = cy + (float) Math.sin(axisAngle[i]) * (rMax + dp(this, 22));
                p.setStyle(Paint.Style.FILL);
                p.setFakeBoldText(s == selected);
                p.setTextSize(sp(this, 12));
                p.setColor(s == selected ? XemsUi.TEXT : XemsUi.MUTED);
                drawFit(c, p, names[i], lx, ly - dp(this, 2), -1, this);
                p.setFakeBoldText(true);
                p.setTextSize(sp(this, 14));
                p.setColor(vc);
                drawFit(c, p, layer == LAYER_READY ? signed((v - 100) / READY_K) + "%"
                        : layer == LAYER_FAT ? Math.round(v * fatMid / 100) + "%" : Math.round(v) + "%", lx, ly + dp(this, 14), -1, this);
                p.setFakeBoldText(false);
            }
        }

        void ring(Canvas c, float cx, float cy, float r, double[] ang, boolean fill) {
            path.reset();
            for (int i = 0; i < 5; i++) {
                float x = cx + (float) Math.cos(ang[i]) * r;
                float y = cy + (float) Math.sin(ang[i]) * r;
                if (i == 0) {
                    path.moveTo(x, y);
                } else {
                    path.lineTo(x, y);
                }
            }
            path.close();
            c.drawPath(path, p);
        }

        void poly(double[] v, float cx, float cy, float rMax, double[] ang, float k) {
            path.reset();
            boolean first = true;
            for (int i = 0; i < 5; i++) {
                double x0 = v[AXES[i]];
                float r = rOf(Double.isNaN(x0) ? 100 : x0, rMax) * k;
                float x = cx + (float) Math.cos(ang[i]) * r;
                float y = cy + (float) Math.sin(ang[i]) * r;
                if (first) {
                    path.moveTo(x, y);
                    first = false;
                } else {
                    path.lineTo(x, y);
                }
            }
            path.close();
        }

        @Override
        public boolean onTouchEvent(MotionEvent e) {
            if (e.getAction() != MotionEvent.ACTION_UP || onSegment == null) {
                return true;
            }
            float cx = getWidth() / 2f, cy = getHeight() / 2f;
            double a = Math.atan2(e.getY() - cy, e.getX() - cx);
            int best = 0;
            double bd = 9;
            for (int i = 0; i < 5; i++) {
                double d = Math.abs(Math.atan2(Math.sin(a - (-Math.PI / 2 + i * 2 * Math.PI / 5)),
                        Math.cos(a - (-Math.PI / 2 + i * 2 * Math.PI / 5))));
                if (d < bd) {
                    bd = d;
                    best = i;
                }
            }
            XemsUi.haptic(this);
            performClick();
            int s = AXES[best];
            onSegment.onSegment(s == selected ? -1 : s);
            return true;
        }

        @Override
        public boolean performClick() {
            return super.performClick();
        }
    }

    static final class Grow implements ValueAnimator.AnimatorUpdateListener {
        final Radar v;

        Grow(Radar v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.grow = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    static String signed(double v) {
        return (v >= 0 ? "+" : "−") + String.format(Locale.US, "%.1f", Math.abs(v));
    }

    // ================================================================ readiness gauge

    /** A 270° ring: the readiness 0–100 in its colour, the number big in the middle, the verdict under it. */
    public static final class Gauge extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        int score = -1;
        float shown;
        String verdict = "";
        String sub = "";

        public Gauge(Context c) {
            super(c);
            p.setStrokeCap(Paint.Cap.ROUND);
        }

        /** score &lt; 0 = not known yet (the baseline is still being built). */
        public void set(int score, String verdict, String sub) {
            this.score = score;
            this.verdict = verdict != null ? verdict : "";
            this.sub = sub != null ? sub : "";
            ValueAnimator va = ValueAnimator.ofFloat(0f, Math.max(0, score));
            va.setDuration(900);
            va.setInterpolator(new DecelerateInterpolator(1.5f));
            va.addUpdateListener(new Sweep(this));
            va.start();
        }

        static int col(int score) {
            return score < 0 ? 0xFF6B7280 : score >= 80 ? 0xFF22C55E : score >= 60 ? 0xFFF59E0B : 0xFFEF4444;
        }

        @Override
        protected void onDraw(Canvas c) {
            float size = Math.min(getWidth(), getHeight() - dp(this, 12) - sp(this, 32));
            float sw = dp(this, 14);
            float cx = getWidth() / 2f;
            float top = dp(this, 4);
            r.set(cx - size / 2 + sw, top + sw, cx + size / 2 - sw, top + size - sw);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(sw);
            p.setShader(null);
            p.setColor(XemsUi.alpha(XemsUi.MUTED, 50));
            c.drawArc(r, 135, 270, false, p);
            int colr = col(score);
            if (score >= 0) {
                p.setShader(new LinearGradient(r.left, r.bottom, r.right, r.top, XemsUi.mix(colr, 0xFFFFFFFF, 0.1f),
                        colr, Shader.TileMode.CLAMP));
                c.drawArc(r, 135, 270 * shown / 100f, false, p);
                p.setShader(null);
            }
            p.setStyle(Paint.Style.FILL);
            p.setTextAlign(Paint.Align.CENTER);
            p.setFakeBoldText(true);
            p.setColor(score >= 0 ? XemsUi.TEXT : XemsUi.MUTED);
            p.setTextSize(size * 0.3f);
            drawFit(c, p, score >= 0 ? String.valueOf(Math.round(shown)) : "—", cx, r.centerY() + size * 0.1f, -1, this);
            p.setFakeBoldText(false);
            p.setTextSize(sp(this, 12));
            p.setColor(XemsUi.MUTED);
            drawFit(c, p, tr("готовност", "readiness"), cx, r.centerY() + size * 0.24f, -1, this);
            p.setFakeBoldText(true);
            p.setTextSize(sp(this, 17));
            p.setColor(colr);
            drawFit(c, p, verdict, cx, top + size + dp(this, 8), -1, this);
            p.setFakeBoldText(false);
            p.setTextSize(sp(this, 12));
            p.setColor(XemsUi.MUTED);
            drawFit(c, p, sub, cx, top + size + dp(this, 10) + sp(this, 17), -1, this);
        }
    }

    static final class Sweep implements ValueAnimator.AnimatorUpdateListener {
        final Gauge v;

        Sweep(Gauge v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.shown = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    // ================================================================ trend line

    /**
     * One metric over the measurements: soft area, the line, dots, the last point big with its value.
     * A tap on a dot shows that weigh-in's date and value (a tap beside it or on it again hides it).
     */
    public static final class Trend extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path line = new Path();
        final Path area = new Path();
        double[] v = new double[0];
        long[] t = new long[0];
        int color = 0xFF22C55E;
        String unit = "";
        boolean compact;
        /** Where each value was drawn (NaN = not drawn) and the dot tapped (-1 = none). */
        float[] px = new float[0];
        float[] py = new float[0];
        int sel = -1;
        float downX, downY;

        public Trend(Context c, boolean compact) {
            super(c);
            this.compact = compact;
        }

        public void set(double[] values, long[] times, int color, String unit) {
            this.v = values != null ? values : new double[0];
            this.t = times != null ? times : new long[0];
            this.color = color;
            this.unit = unit != null ? unit : "";
            sel = -1;
            invalidate();
        }

        @Override
        public boolean onTouchEvent(android.view.MotionEvent e) {
            if (compact || px.length == 0) {
                return super.onTouchEvent(e);
            }
            int a = e.getActionMasked();
            if (a == android.view.MotionEvent.ACTION_DOWN) {
                downX = e.getX();
                downY = e.getY();
                return true;
            }
            if (a == android.view.MotionEvent.ACTION_UP) {
                float slop = android.view.ViewConfiguration.get(getContext()).getScaledTouchSlop();
                if (Math.abs(e.getX() - downX) > slop * 2 || Math.abs(e.getY() - downY) > slop * 2) {
                    return true;
                }
                int hit = -1;
                float best = dp(this, 28);
                for (int i = 0; i < px.length; i++) {
                    if (Float.isNaN(px[i])) {
                        continue;
                    }
                    float d = Math.abs(px[i] - e.getX()) + 0.35f * Math.abs(py[i] - e.getY());
                    if (d < best) {
                        best = d;
                        hit = i;
                    }
                }
                sel = hit == sel ? -1 : hit;
                if (sel >= 0) {
                    try {
                        performHapticFeedback(android.view.HapticFeedbackConstants.VIRTUAL_KEY);
                    } catch (Throwable ignored) {
                    }
                }
                invalidate();
                return true;
            }
            return a == android.view.MotionEvent.ACTION_MOVE || super.onTouchEvent(e);
        }

        /** The tapped dot: a guide line, the dot ringed, and a bubble with its date and value. */
        void drawPick(Canvas c, float padT, float h) {
            if (sel < 0 || sel >= px.length || Float.isNaN(px[sel]) || sel >= v.length) {
                return;
            }
            float x = px[sel], y = py[sel];
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, 1.2f));
            p.setColor(XemsUi.alpha(color, 120));
            c.drawLine(x, padT, x, padT + h, p);
            p.setStrokeWidth(dp(this, 2.5f));
            p.setColor(color);
            c.drawCircle(x, y, dp(this, 8), p);
            p.setStyle(Paint.Style.FILL);
            String val = String.format(Locale.US, "%.1f", v[sel]) + unit;
            String day = sel < t.length && t[sel] > 0
                    ? new java.text.SimpleDateFormat("d.MM.yyyy  HH:mm", Locale.US).format(new java.util.Date(t[sel])) : "";
            p.setTextSize(sp(this, 15));
            p.setFakeBoldText(true);
            float wv = p.measureText(val);
            p.setFakeBoldText(false);
            p.setTextSize(sp(this, 11));
            float wd = p.measureText(day);
            float bw = Math.max(wv, wd) + dp(this, 20);
            float bh = dp(this, day.isEmpty() ? 30 : 46);
            float bx = Math.max(dp(this, 2), Math.min(getWidth() - bw - dp(this, 2), x - bw / 2f));
            float by = y - bh - dp(this, 14);
            if (by < dp(this, 2)) {
                by = y + dp(this, 14);                    // no room above the dot: below it
            }
            by = Math.min(by, getHeight() - bh - dp(this, 2));
            p.setColor(XemsUi.CARD);
            c.drawRoundRect(new android.graphics.RectF(bx, by, bx + bw, by + bh), dp(this, 10), dp(this, 10), p);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, 1.5f));
            p.setColor(color);
            c.drawRoundRect(new android.graphics.RectF(bx, by, bx + bw, by + bh), dp(this, 10), dp(this, 10), p);
            p.setStyle(Paint.Style.FILL);
            p.setTextAlign(Paint.Align.CENTER);
            p.setTextSize(sp(this, 15));
            p.setFakeBoldText(true);
            p.setColor(XemsUi.TEXT);
            c.drawText(val, bx + bw / 2f, by + dp(this, 21), p);
            p.setFakeBoldText(false);
            if (!day.isEmpty()) {
                p.setTextSize(sp(this, 11));
                p.setColor(XemsUi.MUTED);
                c.drawText(day, bx + bw / 2f, by + dp(this, 38), p);
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            int n = 0;
            double lo = Double.MAX_VALUE, hi = -Double.MAX_VALUE;
            for (double x : v) {
                if (!Double.isNaN(x)) {
                    n++;
                    lo = Math.min(lo, x);
                    hi = Math.max(hi, x);
                }
            }
            float padL = compact ? dp(this, 2) : dp(this, 8);
            float padR = compact ? dp(this, 2) : dp(this, 46);
            float padT = compact ? dp(this, 3) : dp(this, 14);
            float padB = compact ? dp(this, 3) : dp(this, 20);
            float w = getWidth() - padL - padR, h = getHeight() - padT - padB;
            if (n == 0 || w <= 0 || h <= 0) {
                if (!compact) {
                    p.setColor(XemsUi.MUTED);
                    p.setTextSize(sp(this, 13));
                    p.setTextAlign(Paint.Align.CENTER);
                    drawFit(c, p, tr("Графиката се показва след второто измерване", "The chart is shown after the second measurement"), getWidth() / 2f, getHeight() / 2f, -1, this);
                }
                return;
            }
            double span = Math.max(hi - lo, Math.max(0.5, Math.abs(hi) * 0.02));
            lo -= span * 0.15;
            hi += span * 0.15;
            long t0 = t.length > 0 ? t[0] : 0, t1 = t.length > 0 ? t[t.length - 1] : 1;
            boolean byTime = t1 > t0;
            line.reset();
            area.reset();
            float lastX = 0, lastY = 0, firstX = 0;
            int k = 0;
            if (px.length != v.length) {
                px = new float[v.length];
                py = new float[v.length];
            }
            java.util.Arrays.fill(px, Float.NaN);
            for (int i = 0; i < v.length; i++) {
                if (Double.isNaN(v[i])) {
                    continue;
                }
                float x = padL + (v.length == 1 ? w : byTime ? (float) ((t[i] - t0) / (double) (t1 - t0)) * w
                        : w * i / Math.max(1, v.length - 1));
                float y = padT + (float) ((hi - v[i]) / (hi - lo)) * h;
                px[i] = x;
                py[i] = y;
                if (k == 0) {
                    line.moveTo(x, y);
                    area.moveTo(x, padT + h);
                    area.lineTo(x, y);
                    firstX = x;
                } else {
                    line.lineTo(x, y);
                    area.lineTo(x, y);
                }
                lastX = x;
                lastY = y;
                k++;
            }
            area.lineTo(lastX, padT + h);
            area.lineTo(firstX, padT + h);
            area.close();
            p.setStyle(Paint.Style.FILL);
            p.setShader(new LinearGradient(0, padT, 0, padT + h, XemsUi.alpha(color, compact ? 70 : 90),
                    XemsUi.alpha(color, 0), Shader.TileMode.CLAMP));
            c.drawPath(area, p);
            p.setShader(null);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, compact ? 1.8f : 2.6f));
            p.setStrokeJoin(Paint.Join.ROUND);
            p.setColor(color);
            c.drawPath(line, p);
            p.setStyle(Paint.Style.FILL);
            if (!compact) {
                for (int i = 0; i < v.length; i++) {
                    if (Double.isNaN(v[i])) {
                        continue;
                    }
                    float x = padL + (v.length == 1 ? w : byTime ? (float) ((t[i] - t0) / (double) (t1 - t0)) * w
                            : w * i / Math.max(1, v.length - 1));
                    float y = padT + (float) ((hi - v[i]) / (hi - lo)) * h;
                    p.setColor(XemsUi.CARD);
                    c.drawCircle(x, y, dp(this, 4.5f), p);
                    p.setColor(color);
                    c.drawCircle(x, y, dp(this, 3), p);
                }
            }
            p.setColor(color);
            c.drawCircle(lastX, lastY, dp(this, compact ? 2.8f : 6), p);
            if (!compact) {
                p.setTextSize(sp(this, 15));
                p.setFakeBoldText(true);
                p.setTextAlign(Paint.Align.LEFT);
                drawFit(c, p, String.format(Locale.US, "%.1f", v[v.length - 1]) + unit, lastX + dp(this, 9), lastY + dp(this, 5), -1, this);
                p.setFakeBoldText(false);
                p.setTextSize(sp(this, 11));
                p.setColor(XemsUi.MUTED);
                java.text.SimpleDateFormat f = new java.text.SimpleDateFormat("d.MM", Locale.US);
                if (t.length > 0) {
                    p.setTextAlign(Paint.Align.LEFT);
                    drawFit(c, p, f.format(new java.util.Date(t[0])), padL, getHeight() - dp(this, 4), -1, this);
                    p.setTextAlign(Paint.Align.RIGHT);
                    drawFit(c, p, f.format(new java.util.Date(t[t.length - 1])), padL + w, getHeight() - dp(this, 4), -1, this);
                }
                drawPick(c, padT, h);
            }
        }
    }

    // ================================================================ the current's reach per suit channel

    /**
     * The ten suit channels as columns: how much of the muscle the current reaches with this client's fat over
     * that zone (AutoEngine.reach at the reference pulse), the body's mean as a line — where the column is short,
     * the zone needs more strength or a longer pulse.
     */
    public static final class Reach extends View {
        final String[] names = {tr("Гърди", "Chest"), tr("Корем", "Abs"), tr("Предно бедро", "Quads"),
                tr("Прасци", "Calves"), tr("Ръце", "Arms"), tr("Трапец", "Traps"), tr("Гръб", "Back"),
                tr("Кръст", "Lower back"), tr("Седалище", "Glutes"), tr("Задно бедро", "Hamstrings")};
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        double[] fat;

        public Reach(Context c) {
            super(c);
        }

        public void set(double[] channelFat) {
            this.fat = channelFat;
            invalidate();
        }

        /** Relative reach (1 = 25 % fat) — the factor AutoEngine.reach applies. */
        static double factor(double fatPct) {
            return Math.max(0.6, Math.min(1.3, Math.exp(-(fatPct - 25.0) / 35.0)));
        }

        @Override
        protected void onDraw(Canvas c) {
            if (fat == null) {
                return;
            }
            int n = fat.length;
            float labelH = dp(this, 42);
            float top = dp(this, 18);
            float h = getHeight() - labelH - top;
            float colW = getWidth() / (float) n;
            double mean = 0;
            for (double f : fat) {
                mean += factor(f);
            }
            mean /= n;
            p.setTextAlign(Paint.Align.CENTER);
            for (int i = 0; i < n; i++) {
                double k = factor(fat[i]);
                double rel = k / mean;
                float bh = (float) (h * Math.max(0.08, Math.min(1, (k - 0.55) / 0.8)));
                float x = i * colW;
                r.set(x + colW * 0.2f, top + h - bh, x + colW * 0.8f, top + h);
                int col = rel >= 0.98 ? 0xFF22C55E : rel >= 0.9 ? 0xFFEAB308 : 0xFFF97316;
                p.setStyle(Paint.Style.FILL);
                p.setShader(new LinearGradient(0, r.top, 0, r.bottom, col, XemsUi.alpha(col, 90),
                        Shader.TileMode.CLAMP));
                c.drawRoundRect(r, dp(this, 5), dp(this, 5), p);
                p.setShader(null);
                p.setColor(col);
                p.setFakeBoldText(true);
                p.setTextSize(sp(this, 12));
                int pct = (int) Math.round((rel - 1) * 100);
                drawFit(c, p, pct == 0 ? "0" : (pct > 0 ? "+" : "−") + Math.abs(pct), x + colW / 2, r.top - dp(this, 4), colW - dp(this, 2), this);
                p.setFakeBoldText(false);
                p.setColor(XemsUi.MUTED);
                p.setTextSize(sp(this, 11));
                // a name too wide for its column goes on two lines rather than shrinking to nothing
                String nm = names[i];
                int sp = nm.indexOf(' ');
                if (sp > 0 && p.measureText(nm) > colW - dp(this, 2)) {
                    drawFit(c, p, nm.substring(0, sp), x + colW / 2, getHeight() - dp(this, 27), colW - dp(this, 2), this);
                    drawFit(c, p, nm.substring(sp + 1), x + colW / 2, getHeight() - dp(this, 14), colW - dp(this, 2), this);
                } else {
                    drawFit(c, p, nm, x + colW / 2, getHeight() - dp(this, 14), colW - dp(this, 2), this);
                }
                p.setTextSize(sp(this, 10));
                drawFit(c, p, String.format(Locale.US, "%.0f%%", fat[i]), x + colW / 2, getHeight() - dp(this, 2), colW - dp(this, 2), this);
            }
            float my = top + h - (float) (h * Math.max(0.08, Math.min(1, (mean - 0.55) / 0.8)));
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, 1.2f));
            p.setColor(XemsUi.alpha(XemsUi.TEXT, 110));
            p.setPathEffect(new DashPathEffect(new float[] {dp(this, 4), dp(this, 4)}, 0));
            c.drawLine(0, my, getWidth(), my, p);
            p.setPathEffect(null);
        }
    }

    // ================================================================ body type: two band scales

    /**
     * Where the body sits, in two plain scales one above the other: muscle (low · normal · athletic · very) and fat
     * (very low · normal · excess · obese), each a bar of coloured bands with the client's marker — the band the
     * marker sits in is lit, the others muted, a small tick is the previous measurement. Bands from FFMI / FMI
     * (ScaleInsight.body); no kg/m² on screen.
     */
    public static final class BandMeter extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        boolean male = true;
        double ffmi = Double.NaN, fmi = Double.NaN, ffmiBefore = Double.NaN, fmiBefore = Double.NaN;
        float grow = 1f;

        public BandMeter(Context c) {
            super(c);
        }

        public void set(boolean male, double ffmi, double fmi, double ffmiBefore, double fmiBefore) {
            this.male = male;
            this.ffmi = ffmi;
            this.fmi = fmi;
            this.ffmiBefore = ffmiBefore;
            this.fmiBefore = fmiBefore;
            ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(700);
            va.setInterpolator(new DecelerateInterpolator(1.6f));
            va.addUpdateListener(new MeterGrow(this));
            va.start();
        }

        @Override
        protected void onDraw(Canvas c) {
            float h = getHeight() / 2f;
            double[] mEdges = male ? new double[] {14, 17, 20, 23, 26} : new double[] {11, 14, 17, 19.5, 22};
            double[] fEdges = male ? new double[] {0, 1.5, 6, 9, 13} : new double[] {0, 3, 9, 13, 18};
            String[] mNames = {tr("ниска", "low"), tr("норма", "normal"), tr("атлетична", "athletic"),
                    tr("много висока", "very high")};
            String[] fNames = {tr("ниски", "low"), tr("норма", "normal"), tr("повишени", "elevated"),
                    tr("високи", "high")};
            int[] mCols = {0xFFF59E0B, 0xFF84CC16, 0xFF22C55E, 0xFF06B6D4};
            int[] fCols = {0xFF38BDF8, 0xFF22C55E, 0xFFF59E0B, 0xFFEF4444};
            row(c, 0, h, tr("Мускулна маса", "Muscle mass"), mEdges, mNames, mCols, ffmi, ffmiBefore);
            row(c, h, h, tr("Мазнини", "Fat"), fEdges, fNames, fCols, fmi, fmiBefore);
        }

        static int band(double v, double[] e) {
            for (int i = 1; i < e.length - 1; i++) {
                if (v < e[i]) {
                    return i - 1;
                }
            }
            return e.length - 2;
        }

        float xOf(double v, double[] e, float l, float w) {
            int n = e.length - 1;
            // equal width per band (readable), linear inside each band
            double cl = Math.max(e[0], Math.min(e[n], v));
            int b = band(cl, e);
            double t = (cl - e[b]) / (e[b + 1] - e[b]);
            return l + (float) ((b + t) / n * w);
        }

        void row(Canvas c, float top, float h, String title, double[] e, String[] names, int[] cols, double v,
                double before) {
            float l = dp(this, 2), rr = getWidth() - dp(this, 2), w = rr - l;
            int n = e.length - 1;
            int now = Double.isNaN(v) ? -1 : band(v, e);
            // title + the band's name, big
            p.setTextAlign(Paint.Align.LEFT);
            p.setFakeBoldText(false);
            p.setTextSize(sp(this, 13));
            p.setColor(XemsUi.MUTED);
            float ty = top + dp(this, 16);
            drawFit(c, p, title, l, ty, -1, this);
            if (now >= 0) {
                p.setTextAlign(Paint.Align.RIGHT);
                p.setFakeBoldText(true);
                p.setTextSize(sp(this, 17));
                p.setColor(cols[now]);
                drawFit(c, p, names[now], rr, ty + dp(this, 1), -1, this);
            }
            float by = top + dp(this, 28), bh = dp(this, 12);
            for (int i = 0; i < n; i++) {
                float x0 = l + w * i / n + (i == 0 ? 0 : dp(this, 1.5f));
                float x1 = l + w * (i + 1) / n - (i == n - 1 ? 0 : dp(this, 1.5f));
                r.set(x0, by, x1, by + bh);
                p.setStyle(Paint.Style.FILL);
                p.setColor(i == now ? cols[i] : XemsUi.alpha(cols[i], 70));
                c.drawRoundRect(r, bh / 2, bh / 2, p);
                p.setFakeBoldText(i == now);
                p.setTextAlign(Paint.Align.CENTER);
                p.setTextSize(sp(this, 11));
                p.setColor(i == now ? XemsUi.TEXT : XemsUi.MUTED);
                drawFit(c, p, names[i], (x0 + x1) / 2, by + bh + dp(this, 15), x1 - x0 - dp(this, 4), this);
            }
            if (!Double.isNaN(before)) {
                float bx = xOf(before, e, l, w);
                p.setColor(XemsUi.alpha(XemsUi.TEXT, 150));
                p.setStrokeWidth(dp(this, 2));
                c.drawLine(bx, by - dp(this, 5), bx, by + bh + dp(this, 2), p);
            }
            if (!Double.isNaN(v)) {
                float x = xOf(v, e, l, w);
                float from = Double.isNaN(before) ? l : xOf(before, e, l, w);
                x = from + (x - from) * grow;
                float cy = by + bh / 2;
                p.setStyle(Paint.Style.FILL);
                p.setColor(0x66000000);
                c.drawCircle(x, cy + dp(this, 1.5f), dp(this, 10), p);
                p.setColor(XemsUi.TEXT);
                c.drawCircle(x, cy, dp(this, 9.5f), p);
                p.setColor(now >= 0 ? cols[now] : XemsUi.MUTED);
                c.drawCircle(x, cy, dp(this, 6), p);
            }
        }
    }

    static final class MeterGrow implements ValueAnimator.AnimatorUpdateListener {
        final BandMeter v;

        MeterGrow(BandMeter v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.grow = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    // ================================================================ change since the start (kg)

    /**
     * Muscle and fat as kilograms gained or lost since the first measurement of the range — two lines from one
     * dashed "start" line, muscle green, fat amber, each ending in its change. The gap that opens between them is
     * the recomposition: weight can stay while fat goes down and muscle up.
     */
    public static final class Change extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path line = new Path();
        final Path area = new Path();
        double[] muscle = new double[0];
        double[] fat = new double[0];
        long[] t = new long[0];
        float grow = 1f;

        public Change(Context c) {
            super(c);
        }

        /** Absolute kg per measurement (oldest first); drawn as the change from the first. */
        public void set(double[] muscleKg, double[] fatKg, long[] times) {
            muscle = muscleKg != null ? muscleKg : new double[0];
            fat = fatKg != null ? fatKg : new double[0];
            t = times != null ? times : new long[0];
            ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(800);
            va.setInterpolator(new DecelerateInterpolator(1.5f));
            va.addUpdateListener(new ChangeGrow(this));
            va.start();
        }

        @Override
        protected void onDraw(Canvas c) {
            int n = Math.min(Math.min(muscle.length, fat.length), t.length);
            float padL = dp(this, 34), padR = dp(this, 96), padT = dp(this, 12), padB = dp(this, 20);
            float w = getWidth() - padL - padR, h = getHeight() - padT - padB;
            if (n < 2 || w <= 0 || h <= 0) {
                p.setColor(XemsUi.MUTED);
                p.setTextSize(sp(this, 13));
                p.setTextAlign(Paint.Align.CENTER);
                drawFit(c, p, tr("Промяната се показва след второто измерване", "The change is shown after the second measurement"), getWidth() / 2f, getHeight() / 2f, -1, this);
                return;
            }
            double[] dm = new double[n], df = new double[n];
            double lo = -1, hi = 1;
            for (int i = 0; i < n; i++) {
                dm[i] = muscle[i] - muscle[0];
                df[i] = fat[i] - fat[0];
                lo = Math.min(lo, Math.min(dm[i], df[i]));
                hi = Math.max(hi, Math.max(dm[i], df[i]));
            }
            double span = hi - lo;
            lo -= span * 0.12;
            hi += span * 0.12;
            long t0 = t[0], t1 = t[n - 1];
            // grid: whole kilograms
            p.setTextAlign(Paint.Align.RIGHT);
            p.setTextSize(sp(this, 11));
            int step = span > 8 ? 2 : 1;
            for (int k = (int) Math.ceil(lo); k <= Math.floor(hi); k++) {
                if (k % step != 0) {
                    continue;
                }
                float y = (float) (padT + (hi - k) / (hi - lo) * h);
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(dp(this, k == 0 ? 1.4f : 0.7f));
                p.setColor(k == 0 ? XemsUi.alpha(XemsUi.TEXT, 130) : XemsUi.alpha(XemsUi.MUTED, 45));
                p.setPathEffect(k == 0 ? new DashPathEffect(new float[] {dp(this, 5), dp(this, 4)}, 0) : null);
                c.drawLine(padL, y, padL + w, y, p);
                p.setPathEffect(null);
                p.setStyle(Paint.Style.FILL);
                p.setColor(XemsUi.MUTED);
                drawFit(c, p, k == 0 ? tr("начало", "start") : (k > 0 ? "+" : "−") + Math.abs(k), padL - dp(this, 6), y + dp(this, 4), -1, this);
            }
            float y0 = (float) (padT + hi / (hi - lo) * h);
            series(c, dm, n, t0, t1, padL, padT, w, h, lo, hi, y0, 0xFF22C55E, true);
            series(c, df, n, t0, t1, padL, padT, w, h, lo, hi, y0, 0xFFF59E0B, false);
            java.text.SimpleDateFormat f = new java.text.SimpleDateFormat("d.MM", Locale.US);
            p.setTextSize(sp(this, 11));
            p.setColor(XemsUi.MUTED);
            p.setTextAlign(Paint.Align.LEFT);
            drawFit(c, p, f.format(new java.util.Date(t0)), padL, getHeight() - dp(this, 4), -1, this);
            p.setTextAlign(Paint.Align.RIGHT);
            drawFit(c, p, f.format(new java.util.Date(t1)), padL + w, getHeight() - dp(this, 4), -1, this);
        }

        void series(Canvas c, double[] d, int n, long t0, long t1, float padL, float padT, float w, float h,
                double lo, double hi, float y0, int col, boolean upGood) {
            line.reset();
            area.reset();
            float lx = 0, ly = 0;
            for (int i = 0; i < n; i++) {
                float x = padL + (t1 > t0 ? (float) ((t[i] - t0) / (double) (t1 - t0)) : i / (float) (n - 1)) * w;
                float y = (float) (padT + (hi - d[i] * grow) / (hi - lo) * h);
                if (i == 0) {
                    line.moveTo(x, y);
                    area.moveTo(x, y0);
                }
                line.lineTo(x, y);
                area.lineTo(x, y);
                lx = x;
                ly = y;
            }
            area.lineTo(lx, y0);
            area.close();
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.alpha(col, 46));
            c.drawPath(area, p);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, 3));
            p.setStrokeJoin(Paint.Join.ROUND);
            p.setStrokeCap(Paint.Cap.ROUND);
            p.setColor(col);
            c.drawPath(line, p);
            p.setStyle(Paint.Style.FILL);
            for (int i = 0; i < n; i++) {
                float x = padL + (t1 > t0 ? (float) ((t[i] - t0) / (double) (t1 - t0)) : i / (float) (n - 1)) * w;
                float y = (float) (padT + (hi - d[i] * grow) / (hi - lo) * h);
                p.setColor(XemsUi.CARD);
                c.drawCircle(x, y, dp(this, i == n - 1 ? 7 : 4.5f), p);
                p.setColor(col);
                c.drawCircle(x, y, dp(this, i == n - 1 ? 5 : 3), p);
            }
            double last = d[n - 1];
            boolean good = Math.abs(last) < 0.05 || (last > 0) == upGood;
            p.setTextAlign(Paint.Align.LEFT);
            p.setFakeBoldText(true);
            p.setTextSize(sp(this, 16));
            p.setColor(col);
            String v = (last >= 0 ? "+" : "−") + String.format(Locale.US, "%.1f", Math.abs(last)) + tr(" кг", " kg");
            drawFit(c, p, v, lx + dp(this, 12), ly + dp(this, 2), -1, this);
            p.setFakeBoldText(false);
            p.setTextSize(sp(this, 11));
            p.setColor(good ? XemsUi.GO_TEXT : XemsUi.AMBER);
            drawFit(c, p, upGood ? tr("мускулна маса", "muscle mass") : tr("мазнини", "fat"), lx + dp(this, 12), ly + dp(this, 16), -1, this);
        }
    }

    static final class ChangeGrow implements ValueAnimator.AnimatorUpdateListener {
        final Change v;

        ChangeGrow(Change v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.grow = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    // ================================================================ a value on its 5-sector norm

    /**
     * The norm as a linear bar: five coloured sectors of equal width — the norm in the middle, two degrees of
     * deviation to each side — the edges' numbers under the joins, each sector's name, and the client's marker with
     * its value in a bubble above. The sector the marker sits in is lit, the others muted.
     */
    public static final class NormBar extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        ScaleInsight.Norm n;
        float grow = 1f;

        public NormBar(Context c) {
            super(c);
        }

        public void set(ScaleInsight.Norm norm) {
            n = norm;
            ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(650);
            va.setInterpolator(new DecelerateInterpolator(1.6f));
            va.addUpdateListener(new NormGrow(this));
            va.start();
        }

        float xOf(double v, float l, float w) {
            double[] e = n.edges;
            double cl = Math.max(e[0], Math.min(e[5], v));
            int b = 4;
            for (int i = 1; i < 6; i++) {
                if (cl < e[i]) {
                    b = i - 1;
                    break;
                }
            }
            double t = (cl - e[b]) / Math.max(1e-9, e[b + 1] - e[b]);
            return l + (float) ((b + t) / 5 * w);
        }

        static String num(double v, int dec) {
            return dec == 0 ? String.valueOf(Math.round(v)) : String.format(Locale.US, "%." + dec + "f", v);
        }

        @Override
        protected void onDraw(Canvas c) {
            if (n == null) {
                return;
            }
            float l = dp(this, 6), rr = getWidth() - dp(this, 6), w = rr - l;
            float by = dp(this, 40), bh = dp(this, 14);
            int now = n.sector();
            for (int i = 0; i < 5; i++) {
                float x0 = l + w * i / 5 + (i == 0 ? 0 : dp(this, 1.5f));
                float x1 = l + w * (i + 1) / 5 - (i == 4 ? 0 : dp(this, 1.5f));
                r.set(x0, by, x1, by + bh);
                p.setStyle(Paint.Style.FILL);
                p.setColor(i == now ? n.colors[i] : XemsUi.alpha(n.colors[i], 80));
                c.drawRoundRect(r, bh / 2, bh / 2, p);
                p.setTextAlign(Paint.Align.CENTER);
                p.setFakeBoldText(i == now || i == 2);
                p.setTextSize(sp(this, 12));
                p.setColor(i == now ? XemsUi.TEXT : i == 2 ? XemsUi.alpha(XemsUi.TEXT, 200) : XemsUi.MUTED);
                drawFit(c, p, n.names[i], (x0 + x1) / 2, by + bh + dp(this, 34), x1 - x0 - dp(this, 4), this);
                if (i > 0) {
                    p.setFakeBoldText(false);
                    p.setTextSize(sp(this, 11));
                    p.setColor(XemsUi.MUTED);
                    drawFit(c, p, num(n.edges[i], n.edges[i] == Math.rint(n.edges[i]) ? 0 : 1), l + w * i / 5, by + bh + dp(this, 16), -1, this);
                }
            }
            // the norm's bracket over the middle sector
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(dp(this, 1.2f));
            p.setColor(XemsUi.alpha(XemsUi.TEXT, 110));
            float m0 = l + w * 2 / 5, m1 = l + w * 3 / 5;
            c.drawLine(m0, by - dp(this, 4), m1, by - dp(this, 4), p);
            if (Double.isNaN(n.value)) {
                return;
            }
            float x = l + (xOf(n.value, l, w) - l) * grow;
            float cy = by + bh / 2;
            p.setStyle(Paint.Style.FILL);
            p.setColor(0x66000000);
            c.drawCircle(x, cy + dp(this, 1.5f), dp(this, 11), p);
            p.setColor(XemsUi.TEXT);
            c.drawCircle(x, cy, dp(this, 10.5f), p);
            int col = now >= 0 ? n.colors[now] : XemsUi.MUTED;
            p.setColor(col);
            c.drawCircle(x, cy, dp(this, 6.5f), p);
            // the value in a bubble above the marker
            String v = num(n.value, n.decimals) + n.unit;
            p.setFakeBoldText(true);
            p.setTextSize(sp(this, 15));
            float tw = p.measureText(v) + dp(this, 16);
            float bx = Math.max(l, Math.min(rr - tw, x - tw / 2));
            r.set(bx, dp(this, 2), bx + tw, dp(this, 26));
            p.setColor(col);
            c.drawRoundRect(r, dp(this, 12), dp(this, 12), p);
            p.setColor(0xFF111111);
            p.setTextAlign(Paint.Align.CENTER);
            drawFit(c, p, v, r.centerX(), r.bottom - dp(this, 7), -1, this);
            p.setFakeBoldText(false);
        }
    }

    static final class NormGrow implements ValueAnimator.AnimatorUpdateListener {
        final NormBar v;

        NormGrow(NormBar v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.grow = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    // ================================================================ the analysis: mini norm, composition, path

    /** A tile's norm in one glance: five short segments, the current one lit, a dot where the value is. */
    public static final class MiniNorm extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        ScaleInsight.Norm n;
        float grow = 1f;

        public MiniNorm(Context c) {
            super(c);
        }

        public void set(ScaleInsight.Norm norm) {
            n = norm;
            ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(520);
            va.setInterpolator(new DecelerateInterpolator(1.6f));
            va.addUpdateListener(new Grow1(this));
            va.start();
        }

        @Override
        protected void onDraw(Canvas c) {
            if (n == null) {
                return;
            }
            float l = dp(this, 5), w = getWidth() - 2 * l, h = dp(this, 6), y = (getHeight() - h) / 2;
            int now = n.sector();
            for (int i = 0; i < 5; i++) {
                float x0 = l + w * i / 5 + dp(this, 1), x1 = l + w * (i + 1) / 5 - dp(this, 1);
                r.set(x0, y, x1, y + h);
                p.setColor(i == now ? n.colors[i] : XemsUi.alpha(n.colors[i], 70));
                c.drawRoundRect(r, h / 2, h / 2, p);
            }
            if (Double.isNaN(n.value) || now < 0) {
                return;
            }
            double[] e = n.edges;
            double cl = Math.max(e[0], Math.min(e[5], n.value));
            double t = (cl - e[now]) / Math.max(1e-9, e[now + 1] - e[now]);
            float x = l + (float) ((now + t) / 5 * w) * grow;
            p.setColor(XemsUi.TEXT);
            c.drawCircle(x, y + h / 2, dp(this, 5.5f), p);
            p.setColor(n.colors[now]);
            c.drawCircle(x, y + h / 2, dp(this, 3.2f), p);
        }
    }

    static final class Grow1 implements ValueAnimator.AnimatorUpdateListener {
        final View v;

        Grow1(View v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            float g = (Float) a.getAnimatedValue();
            if (v instanceof MiniNorm) {
                ((MiniNorm) v).grow = g;
            } else if (v instanceof Composition) {
                ((Composition) v).grow = g;
            } else if (v instanceof Path2Target) {
                ((Path2Target) v).grow = g;
            }
            v.invalidate();
        }
    }

    /**
     * What the weight is made of: one bar split into fat · water · protein · minerals (kg), each part as wide as its
     * share, its name, kg and % under it. Tap a part → {@link OnSegment#onSegment} with its index.
     */
    public static final class Composition extends View {
        public static final int FAT = 0, WATER = 1, PROTEIN = 2, MINERAL = 3;
        static final int[] COL = {0xFFF59E0B, 0xFF38BDF8, 0xFF22C55E, 0xFFA78BFA};
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        final double[] kg = {Double.NaN, Double.NaN, Double.NaN, Double.NaN};
        final float[] x0 = new float[4], x1 = new float[4];
        int sel = -1;
        float grow = 1f;
        OnSegment l;

        public Composition(Context c) {
            super(c);
            setClickable(true);
        }

        public void setOnSegment(OnSegment l) {
            this.l = l;
        }

        public void set(double fatKg, double waterKg, double proteinKg, double mineralKg, int sel) {
            boolean first = Double.isNaN(kg[0]);
            kg[0] = fatKg;
            kg[1] = waterKg;
            kg[2] = proteinKg;
            kg[3] = mineralKg;
            this.sel = sel;
            if (first) {
                ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
                va.setDuration(700);
                va.setInterpolator(new DecelerateInterpolator(1.6f));
                va.addUpdateListener(new Grow1(this));
                va.start();
            }
            invalidate();
        }

        public void select(int sel) {
            this.sel = sel;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            double sum = 0;
            for (double v : kg) {
                if (Double.isNaN(v)) {
                    return;
                }
                sum += v;
            }
            String[] names = {tr("Мазнини", "Fat"), tr("Вода", "Water"), tr("Белтък", "Protein"),
                    tr("Минерали", "Minerals")};
            float l0 = dp(this, 2), w = (getWidth() - 2 * l0) * grow, bh = dp(this, 34), top = dp(this, 4);
            float x = l0;
            for (int i = 0; i < 4; i++) {
                float pw = (float) (kg[i] / sum * w);
                x0[i] = x;
                x1[i] = x + pw;
                r.set(x + (i == 0 ? 0 : dp(this, 1.5f)), top, x + pw - (i == 3 ? 0 : dp(this, 1.5f)), top + bh);
                p.setStyle(Paint.Style.FILL);
                p.setColor(sel < 0 || sel == i ? COL[i] : XemsUi.alpha(COL[i], 90));
                c.drawRoundRect(r, dp(this, 9), dp(this, 9), p);
                if (sel == i) {
                    p.setStyle(Paint.Style.STROKE);
                    p.setStrokeWidth(dp(this, 2.5f));
                    p.setColor(XemsUi.TEXT);
                    r.inset(-dp(this, 2), -dp(this, 2));
                    c.drawRoundRect(r, dp(this, 11), dp(this, 11), p);
                }
                x += pw;
            }
            if (grow < 1f) {
                return;
            }
            // the legend: four equal columns (a thin part still gets its label), dot · kg · name · %
            float cw = (getWidth() - 2 * l0) / 4f, ty = top + bh + dp(this, 22);
            for (int i = 0; i < 4; i++) {
                float cx = l0 + cw * i;
                boolean lit = sel < 0 || sel == i;
                p.setStyle(Paint.Style.FILL);
                p.setColor(COL[i]);
                c.drawCircle(cx + dp(this, 5), ty - dp(this, 5), dp(this, 4.5f), p);
                p.setTextAlign(Paint.Align.LEFT);
                p.setTextSize(sp(this, 15));
                p.setFakeBoldText(true);
                p.setColor(lit ? XemsUi.TEXT : XemsUi.MUTED);
                drawFit(c, p, (Math.round(kg[i] * 10) / 10.0) + tr(" кг", " kg"), cx + dp(this, 14), ty, -1, this);
                p.setFakeBoldText(false);
                p.setTextSize(sp(this, 12));
                p.setColor(lit ? COL[i] : XemsUi.alpha(COL[i], 150));
                drawFit(c, p, names[i], cx + dp(this, 14), ty + dp(this, 16), -1, this);
                p.setColor(XemsUi.MUTED);
                drawFit(c, p, Math.round(kg[i] / sum * 100) + " %", cx + dp(this, 14), ty + dp(this, 31), -1, this);
            }
        }

        @Override
        public boolean onTouchEvent(MotionEvent e) {
            if (e.getAction() == MotionEvent.ACTION_DOWN) {
                return true;
            }
            if (e.getAction() == MotionEvent.ACTION_UP && l != null) {
                float x = e.getX();
                int hit = 0;
                for (int i = 0; i < 4; i++) {
                    // the minerals part is thin: give each part at least 48 dp to hit
                    float a = x0[i], b = Math.max(x1[i], x0[i] + dp(this, 48));
                    if (x >= a && x <= b) {
                        hit = i;
                    }
                }
                if (x > x1[3] - dp(this, 48)) {
                    hit = 3;
                }
                if (e.getY() > dp(this, 44)) {
                    hit = Math.max(0, Math.min(3, (int) (x / (getWidth() / 4f))));
                }
                XemsUi.haptic(this);
                l.onSegment(hit);
                performClick();
            }
            return true;
        }

        @Override
        public boolean performClick() {
            return super.performClick();
        }
    }

    /**
     * The way to the healthy weight: a track with today's weight and the healthy one, the gap as an arrow, under it
     * what the gap is made of (fat to lose, muscle to gain). Healthy = the client's own lean at a healthy fat %.
     */
    public static final class Path2Target extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        double now = Double.NaN, target = Double.NaN, fat = Double.NaN, muscle = Double.NaN;
        float grow = 1f;
        boolean selected;

        public Path2Target(Context c) {
            super(c);
            setClickable(true);
        }

        public void set(double now, double target, double fat, double muscle) {
            boolean first = Double.isNaN(this.now);
            this.now = now;
            this.target = target;
            this.fat = fat;
            this.muscle = muscle;
            if (first) {
                ValueAnimator va = ValueAnimator.ofFloat(0f, 1f);
                va.setDuration(800);
                va.setInterpolator(new DecelerateInterpolator(1.6f));
                va.addUpdateListener(new Grow1(this));
                va.start();
            }
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            if (Double.isNaN(now) || Double.isNaN(target)) {
                return;
            }
            float l = dp(this, 14), rr = getWidth() - dp(this, 14), w = rr - l;
            double lo = Math.min(now, target) - 4, hi = Math.max(now, target) + 4;
            float y = dp(this, 44);
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.alpha(XemsUi.TEXT, 34));
            r.set(l, y - dp(this, 4), rr, y + dp(this, 4));
            c.drawRoundRect(r, dp(this, 4), dp(this, 4), p);
            // the healthy band ±3 %
            float b0 = (float) (l + (target * 0.97 - lo) / (hi - lo) * w), b1 = (float) (l + (target * 1.03 - lo) / (hi - lo) * w);
            p.setColor(XemsUi.alpha(0xFF22C55E, 120));
            r.set(b0, y - dp(this, 4), b1, y + dp(this, 4));
            c.drawRoundRect(r, dp(this, 4), dp(this, 4), p);
            float xt = (float) (l + (target - lo) / (hi - lo) * w);
            float xn0 = (float) (l + (now - lo) / (hi - lo) * w);
            float xn = xt + (xn0 - xt) * grow;
            boolean on = Math.abs(now - target) <= target * 0.03;
            int gap = on ? 0xFF22C55E : 0xFFF59E0B;
            if (!on) {
                p.setColor(gap);
                p.setStrokeWidth(dp(this, 4));
                p.setStyle(Paint.Style.STROKE);
                c.drawLine(xn, y, xt, y, p);
                // arrow head at the healthy end
                float d = xt > xn ? -1 : 1;
                Path a = new Path();
                a.moveTo(xt, y);
                a.lineTo(xt + d * dp(this, 10), y - dp(this, 7));
                a.lineTo(xt + d * dp(this, 10), y + dp(this, 7));
                a.close();
                p.setStyle(Paint.Style.FILL);
                c.drawPath(a, p);
            }
            // healthy flag
            p.setStyle(Paint.Style.FILL);
            p.setColor(0xFF22C55E);
            c.drawCircle(xt, y, dp(this, 8), p);
            p.setTextAlign(Paint.Align.CENTER);
            p.setTextSize(sp(this, 13));
            p.setFakeBoldText(true);
            drawFit(c, p, Math.round(target * 10) / 10.0 + tr(" кг", " kg"), xt, y + dp(this, 28), -1, this);
            // now
            p.setColor(XemsUi.TEXT);
            c.drawCircle(xn, y, dp(this, 11), p);
            p.setColor(on ? 0xFF22C55E : gap);
            c.drawCircle(xn, y, dp(this, 6), p);
            p.setColor(XemsUi.TEXT);
            p.setTextSize(sp(this, 15));
            drawFit(c, p, Math.round(now * 10) / 10.0 + tr(" кг · сега", " kg · now"), Math.max(l + dp(this, 50),
                    Math.min(rr - dp(this, 50), xn)), y - dp(this, 18), -1, this);
            p.setFakeBoldText(false);
            // what the gap is
            p.setTextAlign(Paint.Align.LEFT);
            p.setTextSize(sp(this, 14));
            float ty = y + dp(this, 56);
            String t;
            if (on) {
                t = tr("✓ В здравословни граници", "✓ Within a healthy range");
                p.setColor(0xFF22C55E);
            } else {
                StringBuilder b = new StringBuilder();
                if (Math.abs(fat) >= 0.5) {
                    b.append(fat < 0 ? tr("−", "−") : "+").append(Math.round(Math.abs(fat) * 10) / 10.0)
                            .append(tr(" кг мазнини", " kg fat"));
                }
                if (muscle >= 0.5) {
                    b.append(b.length() > 0 ? "   " : "").append("+").append(Math.round(muscle * 10) / 10.0)
                            .append(tr(" кг мускулна маса", " kg muscle mass"));
                }
                t = b.toString();
                p.setColor(XemsUi.TEXT);
            }
            drawFit(c, p, t, l, ty, -1, this);
            if (selected) {
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(dp(this, 2));
                p.setColor(XemsUi.alpha(0xFF22C55E, 200));
                r.set(dp(this, 1), dp(this, 1), getWidth() - dp(this, 1), getHeight() - dp(this, 1));
                c.drawRoundRect(r, dp(this, 14), dp(this, 14), p);
            }
        }
    }

    // ================================================================ build matrix: muscle × fat

    /**
     * The build as a small labelled grid (muscle up, fat to the right): the client's cell lit with a dot, the
     * others quiet — one glance says where the body is, with no numbers.
     */
    public static final class BuildGrid extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        int muscle = -1, fat = -1;

        public BuildGrid(Context c) {
            super(c);
        }

        /** muscle class 0 low … 3 very muscular; fat class 0 very low … 3 obese. */
        public void set(int muscleCls, int fatCls) {
            muscle = muscleCls;
            fat = fatCls;
            invalidate();
        }

        static int cellColor(int mu, int fa) {
            if (fa == 0) {
                return 0xFF38BDF8;
            }
            if (fa == 1) {
                return mu >= 1 ? 0xFF22C55E : 0xFFF59E0B;
            }
            return mu >= 2 ? 0xFFF59E0B : 0xFFEF4444;
        }

        @Override
        protected void onDraw(Canvas c) {
            float lab = sp(this, 12) + dp(this, 6);
            float w = getWidth(), h = getHeight() - lab;
            float gap = dp(this, 4);
            float cw = (w - 3 * gap) / 4, ch = (h - 3 * gap) / 4;
            for (int row = 0; row < 4; row++) {
                for (int col = 0; col < 4; col++) {
                    int mu = 3 - row;
                    boolean on = mu == muscle && col == fat;
                    int color = cellColor(mu, col);
                    r.set(col * (cw + gap), row * (ch + gap), col * (cw + gap) + cw, row * (ch + gap) + ch);
                    p.setStyle(Paint.Style.FILL);
                    p.setColor(on ? color : XemsUi.alpha(color, 46));
                    c.drawRoundRect(r, dp(this, 8), dp(this, 8), p);
                    if (on) {
                        p.setColor(0xFFFFFFFF);
                        c.drawCircle(r.centerX(), r.centerY(), Math.min(cw, ch) * 0.2f, p);
                    }
                }
            }
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.MUTED);
            p.setTextSize(sp(this, 12));
            p.setTextAlign(Paint.Align.LEFT);
            drawFit(c, p, tr("▲ мускули", "▲ muscle"), 0, getHeight() - dp(this, 3), w / 2, this);
            p.setTextAlign(Paint.Align.RIGHT);
            drawFit(c, p, tr("мазнини ▶", "fat ▶"), w, getHeight() - dp(this, 3), w / 2, this);
        }
    }
}
