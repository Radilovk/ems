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

    /**
     * Colour of a body zone (owner, 1.1.287): the client's colour — magenta for a woman, cyan for a man — fills in
     * smoothly as the zone gets the work this session is meant to give it; at the target (p = 1, the end of the plan,
     * the passive part and the recovery included) it is full. The target is the session's own, not an absolute
     * scale. Past it the colour warms: +15 % amber, +30 % red.
     */
    public static int bodyHeat(int sexCol, double p) {
        if (p <= 1.0) {
            return sexCol;
        }
        if (p <= 1.15) {
            return XemsUi.mix(sexCol, HEAT_COL[3], (float) ((p - 1.0) / 0.15));
        }
        return XemsUi.mix(HEAT_COL[3], HEAT_COL[4], (float) Math.min(1.0, (p - 1.15) / 0.15));
    }

    /** How strongly a zone shows at progress p: faint at the start, full at the target (smoothstep). */
    static float bodyFill(double p) {
        double x = Math.max(0, Math.min(1, p));
        return (float) (0.12 + 0.88 * x * x * (3 - 2 * x));
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
        /** The board refreshes every 250 ms: the ring runs on by itself at most this far past the last value. */
        private static final long AHEAD_MS = 700L;

        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint arc = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint glow = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint scrim = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint big = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF box = new RectF();
        private final android.graphics.Matrix rot = new android.graphics.Matrix();
        private float progress;
        private float rate;
        private long setMs;
        private float shown;
        private int mode = IDLE;
        private int count;
        private int colA;
        private int colB;
        public SetRing(Context c) {
            super(c);
            track.setStyle(Paint.Style.STROKE);
            arc.setStyle(Paint.Style.STROKE);
            arc.setStrokeCap(Paint.Cap.ROUND);
            glow.setStyle(Paint.Style.STROKE);
            glow.setStrokeCap(Paint.Cap.ROUND);
            big.setTextAlign(Paint.Align.CENTER);
            big.setFakeBoldText(true);
            colors(IDLE);
        }

        public void set(float p, int m, int countdown) {
            set(p, m, countdown, 0f);
        }

        /**
         * progress 0…1, mode WORK / REST / READY / RECOVERY / IDLE, countdown seconds (0 = none), and how fast the
         * progress runs now (share per second, 0 = stands): the ring moves on every frame between the board's
         * refreshes, so it glides instead of stepping.
         */
        public void set(float p, int m, int countdown, float perS) {
            p = Math.max(0f, Math.min(1f, p));
            long now = android.os.SystemClock.uptimeMillis();
            if (m != mode || p < shown - 0.03f) {
                shown = p;                                // a new set / mode: start from the true value
            }
            if (m != mode) {
                colors(m);
            }
            progress = p;
            rate = Math.max(0f, perS);
            setMs = now;
            mode = m;
            count = countdown;
            invalidate();
        }

        private void colors(int m) {
            switch (m) {
                case WORK:                    // the kit's impulse colours: orange → accent red
                    colA = XemsUi.ORANGE;
                    colB = XemsUi.ACCENT;
                    break;
                case READY:
                    colA = XemsUi.GO_TEXT;
                    colB = XemsUi.GO;
                    break;
                case REST:
                    colA = XemsUi.AMBER;
                    colB = XemsUi.mix(XemsUi.AMBER, XemsUi.ORANGE, 0.5f);
                    break;
                case RECOVERY:
                    colA = HEAT_COL[1];
                    colB = HEAT_COL[0];
                    break;
                default:
                    colA = XemsUi.MUTED;
                    colB = XemsUi.MUTED;
                    break;
            }
        }

        /** The progress drawn now: the last value run on at its rate (never back, never past the next value's reach). */
        private float now() {
            float p = progress;
            if (rate > 0f) {
                long dt = Math.min(AHEAD_MS, android.os.SystemClock.uptimeMillis() - setMs);
                p = Math.min(1f, p + rate * dt / 1000f);
            }
            if (p < shown) {
                p = shown;
            }
            shown = p;
            return p;
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            int h = getHeight();
            float s = Math.min(w, h);
            float sw = Math.max(dp(this, 5), s * 0.042f);
            float inset = sw * 1.2f;
            box.set((w - s) / 2f + inset, (h - s) / 2f + inset, (w + s) / 2f - inset, (h + s) / 2f - inset);
            track.setStrokeWidth(sw);
            track.setColor(XemsUi.alpha(XemsUi.TEXT, 0x1E));
            c.drawOval(box, track);
            float p = now();
            if (p > 0.001f) {
                float r = box.width() / 2f;
                // the round caps reach half a stroke past each end: the gradient starts under the first cap and
                // ends exactly at the last one, so both ends carry their own colour (no wrap of the end colour)
                float cap = (float) Math.toDegrees(sw * 1.3f / Math.max(1f, r));
                boolean full = p >= 0.999f;
                float sweep = full ? 360f : 360f * p;
                float span = Math.min(1f, (sweep + 2 * cap) / 360f);
                float back = Math.min(0.999f, span + (1f - span) * 0.5f);
                SweepGradient g = full
                        ? new SweepGradient(w / 2f, h / 2f, new int[] {colA, colB, colA}, new float[] {0f, 0.85f, 1f})
                        : new SweepGradient(w / 2f, h / 2f, new int[] {colA, colB, colB, colA},
                                new float[] {0f, Math.min(0.998f, span), back, 1f});
                rot.setRotate(-90f - (full ? 0f : cap), w / 2f, h / 2f);
                g.setLocalMatrix(rot);
                arc.setShader(g);
                glow.setShader(g);
                glow.setStrokeWidth(sw * 2.4f);
                glow.setAlpha(XemsUi.dark ? 70 : 40);
                arc.setStrokeWidth(sw);
                if (full) {
                    c.drawOval(box, glow);
                    c.drawOval(box, arc);
                } else {
                    c.drawArc(box, -90, sweep, false, glow);
                    c.drawArc(box, -90, sweep, false, arc);
                }
            }
            if (count > 0) {
                scrim.setColor(XemsUi.alpha(XemsUi.CARD, 0xC8));
                c.drawCircle(w / 2f, h / 2f, s / 2f - sw * 2.5f, scrim);
                big.setColor(XemsUi.GO_TEXT);
                big.setTextSize(s * 0.42f);
                Paint.FontMetrics fm = big.getFontMetrics();
                c.drawText(String.valueOf(count), w / 2f, h / 2f - (fm.ascent + fm.descent) / 2f, big);
            }
            if (rate > 0f && p < 1f && android.os.SystemClock.uptimeMillis() - setMs < AHEAD_MS) {
                postInvalidateOnAnimation();
            }
        }
    }

    // ================================================================ ring stage

    /**
     * The square under a set ring: as large as its slot allows (owner, 1.1.285 — the ring grows with the card), the
     * ring over the whole square, the exercise figure inside it at {@code figInset} of the side, the program's
     * picture (when added) centred at 60 % × 45 %. Children in order: figure, [picture], ring.
     */
    public static final class RingStage extends android.view.ViewGroup {
        private final float figInset;
        private final int maxPx;

        public RingStage(Context c, float figInset, int maxPx) {
            super(c);
            this.figInset = figInset;
            this.maxPx = maxPx;
        }

        @Override
        protected void onMeasure(int ws, int hs) {
            int w = MeasureSpec.getMode(ws) == MeasureSpec.UNSPECIFIED ? maxPx : MeasureSpec.getSize(ws);
            int h = MeasureSpec.getMode(hs) == MeasureSpec.UNSPECIFIED ? maxPx : MeasureSpec.getSize(hs);
            int s = Math.max(0, Math.min(maxPx, Math.min(w, h)));
            for (int i = 0; i < getChildCount(); i++) {
                View ch = getChildAt(i);
                int[] b = box(i, s);
                ch.measure(MeasureSpec.makeMeasureSpec(b[2], MeasureSpec.EXACTLY),
                        MeasureSpec.makeMeasureSpec(b[3], MeasureSpec.EXACTLY));
            }
            setMeasuredDimension(s, s);
        }

        /** {x, y, w, h} of child i in a square of side s. */
        private int[] box(int i, int s) {
            int n = getChildCount();
            if (i == n - 1) {
                return new int[] {0, 0, s, s};                       // the ring
            }
            if (i == 0) {
                int in = Math.round(s * figInset);
                return new int[] {in, in, Math.max(0, s - 2 * in), Math.max(0, s - 2 * in)};
            }
            int pw = Math.round(s * 0.6f);
            int ph = Math.round(s * 0.45f);
            return new int[] {(s - pw) / 2, (s - ph) / 2, pw, ph};
        }

        @Override
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            int s = Math.min(r - l, b - t);
            for (int i = 0; i < getChildCount(); i++) {
                int[] x = box(i, s);
                getChildAt(i).layout(x[0], x[1], x[0] + x[2], x[1] + x[3]);
            }
        }
    }

    // ================================================================ stage pair

    /**
     * The exercise now and the next one side by side (owner, 1.1.290 — the figures twice as big): the main square as
     * high as the card, the arrow, the next square at 46 % of it, all centred vertically. When they would leave less
     * than {@code minRestPx} for the text beside, both shrink together. Children: main stage, arrow, next stage.
     */
    public static final class StagePair extends android.view.ViewGroup {
        static final float NEXT_SHARE = 0.46f;
        private final int minRestPx;
        private final int arrowPx;

        public StagePair(Context c, int minRestPx, int arrowPx) {
            super(c);
            this.minRestPx = minRestPx;
            this.arrowPx = arrowPx;
        }

        @Override
        protected void onMeasure(int ws, int hs) {
            int h = MeasureSpec.getSize(hs);
            int w = MeasureSpec.getMode(ws) == MeasureSpec.UNSPECIFIED ? Integer.MAX_VALUE : MeasureSpec.getSize(ws);
            boolean next = getChildCount() > 2 && getChildAt(2).getVisibility() != GONE;
            float units = 1f + (next ? NEXT_SHARE : 0f);
            int room = Math.max(0, w - minRestPx - (next ? arrowPx : 0));
            int main = Math.max(0, Math.min(h, (int) (room / units)));
            int nx = Math.round(main * NEXT_SHARE);
            int total = main + (next ? arrowPx + nx : 0);
            for (int i = 0; i < getChildCount(); i++) {
                View ch = getChildAt(i);
                if (ch.getVisibility() == GONE) {
                    continue;
                }
                int cw = i == 0 ? main : i == 1 ? arrowPx : nx;
                int chh = i == 1 ? main : cw;
                ch.measure(MeasureSpec.makeMeasureSpec(cw, MeasureSpec.EXACTLY), MeasureSpec.makeMeasureSpec(chh, MeasureSpec.EXACTLY));
            }
            setMeasuredDimension(total, h);
        }

        @Override
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            int h = b - t;
            int x = 0;
            for (int i = 0; i < getChildCount(); i++) {
                View ch = getChildAt(i);
                if (ch.getVisibility() == GONE) {
                    continue;
                }
                int cw = ch.getMeasuredWidth();
                int chh = ch.getMeasuredHeight();
                int y = (h - chh) / 2;
                ch.layout(x, y, x + cw, y + chh);
                x += cw;
            }
        }
    }

    // ================================================================ body heat map

    /**
     * The body figures (front | back) coloured per zone (owner, 1.1.313): the ten suit zones and the deltoid (the
     * exercises only). A zone the running set works lights up and pulses for as long as it works; its colour is
     * held meanwhile and, once the set is over (or every {@link #COMMIT_MS} of non-stop work), moves smoothly to
     * the work gathered so far — so it changes a step with every set and ends the session in the colour of all of
     * it: pale = less than its optimum, the client's colour = the optimum, amber → red = overload
     * ({@link AutoEngine#getZoneProgress}).
     */
    public static final class BodyHeat extends View {
        private static final String[] SIDES = {"front", "back"};
        /** Region id of the deltoid in the idx maps (scripts/gen-body-figures.py). */
        static final int DELTOID_R = 13;
        /** A zone working without a break takes its new colour at least this often. */
        static final long COMMIT_MS = 60000L;
        static final long FADE_MS = 900L;
        static final long PULSE_MS = 1100L;
        private static final int Z = AutoEngine.ZONES;
        private final Fig[] figs = new Fig[2];
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Paint glowPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Rect src = new Rect();
        private final RectF dst = new RectF();
        /** The newest progress per zone, the value the colour shows (held while working), and the fade's start. */
        private final double[] target = new double[Z];
        private final double[] held = new double[Z];
        private final double[] from = new double[Z];
        private final long[] fadeMs = new long[Z];
        private final long[] activeSince = new long[Z];
        private final double[] live = new double[Z];
        private final boolean[] off = new boolean[Z];
        private final boolean[] active = new boolean[Z];
        private final double[] shown = new double[Z];
        private String sexKey = "";
        private int sexCol = ExerciseFigure.COLOR;
        private boolean dirty = true;
        private boolean glowDirty = true;
        private boolean first = true;

        static final class Fig {
            Bitmap art;
            Bitmap over;
            Bitmap glow;
            int[] idx;          // pixel index of every zone pixel
            byte[] zone;
            byte[] shade;
            byte[] cov;
            int[] px;
        }

        public BodyHeat(Context c) {
            super(c);
        }

        public void set(AiModel.Sex sex, double[] progress, double[] liveLoad, boolean[] disabled) {
            set(sex, progress, liveLoad, disabled, null);
        }

        /**
         * progress = each zone's work done / its optimum ({@link AutoEngine#getZoneProgress}); live = F / F_max now
         * (how strongly a working zone pulses); off = switched off for every row; working = the zones the running
         * set works now ({@link AutoEngine#getZoneActive}).
         */
        public void set(AiModel.Sex sex, double[] progress, double[] liveLoad, boolean[] disabled, boolean[] working) {
            String key = sex == AiModel.Sex.FEMALE ? "female" : "male";
            if (!key.equals(sexKey)) {
                sexKey = key;
                sexCol = ExerciseFigure.colorFor(sex == AiModel.Sex.FEMALE ? AiModel.Sex.FEMALE : AiModel.Sex.MALE);
                for (int i = 0; i < 2; i++) {
                    figs[i] = load(getContext(), key + "_" + SIDES[i]);
                }
                dirty = true;
                glowDirty = true;
            }
            long now = android.os.SystemClock.uptimeMillis();
            boolean any = false;
            for (int k = 0; k < Z; k++) {
                // 1/80 steps: the figure is repainted only when a zone changes
                double v = progress != null && k < progress.length ? Math.round(progress[k] * 80) / 80.0 : 0;
                double lv = liveLoad != null && k < liveLoad.length ? Math.round(Math.min(1.0, liveLoad[k]) * 10) / 10.0 : 0;
                boolean o = disabled != null && k < disabled.length && disabled[k] || v < 0;
                boolean a = working != null && k < working.length && working[k] && !o;
                if (a && !active[k]) {
                    activeSince[k] = now;
                }
                if (a != active[k] || lv != live[k]) {
                    glowDirty = true;
                }
                active[k] = a;
                live[k] = lv;
                target[k] = v;
                if (o != off[k]) {
                    off[k] = o;
                    dirty = true;
                }
                // the colour moves on when the zone rests, or after a long stretch of work; the very first values
                // are taken as they are (a board opened mid-session)
                boolean commit = first || !a || now - activeSince[k] >= COMMIT_MS;
                if (commit && v != held[k]) {
                    from[k] = first ? v : shownAt(k, now);
                    held[k] = v;
                    fadeMs[k] = first ? 0 : now;
                    if (a) {
                        activeSince[k] = now;
                    }
                    dirty = true;
                }
                any |= a;
            }
            first = false;
            if (dirty || glowDirty || any) {
                invalidate();
            }
        }

        /** The value the colour shows at {@code now}: the held value, faded in from the previous one. */
        private double shownAt(int k, long now) {
            if (fadeMs[k] <= 0) {
                return held[k];
            }
            double t = Math.min(1.0, (now - fadeMs[k]) / (double) FADE_MS);
            t = t * t * (3 - 2 * t);
            return from[k] + (held[k] - from[k]) * t;
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
                    if (zoneOf(p) >= 0) {
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
                    int z = zoneOf(p);
                    if (z >= 0) {
                        f.idx[j] = i;
                        f.zone[j] = (byte) z;
                        f.shade[j] = (byte) ((p >> 8) & 0xFF);
                        f.cov[j] = (byte) (p & 0xFF);
                        j++;
                    }
                }
                f.px = new int[w * h];
                f.over = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
                f.glow = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("AutoViews.body", t);
            }
            return f;
        }

        /** Zone of an idx pixel: R 1…10 = the suit channels, {@link #DELTOID_R} = the deltoid; −1 = none. */
        static int zoneOf(int p) {
            int r = (p >> 16) & 0xFF;
            if ((p & 0xFF) <= 8) {
                return -1;
            }
            if (r >= 1 && r <= AutoModel.CHANNELS) {
                return r - 1;
            }
            return r == DELTOID_R ? AutoEngine.DELTOID : -1;
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
        private static int shadeOf(int c, float l, int alpha) {
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
            return (alpha << 24) | (r << 16) | (g << 8) | b;
        }

        /** The held colours (or the glow of the working zones: lighter, as strong as the zone's load now). */
        private void repaint(Fig f, Bitmap target, boolean glow) {
            if (f == null || target == null) {
                return;
            }
            int[] col = new int[Z];
            float[] op = new float[Z];
            for (int k = 0; k < Z; k++) {
                if (glow) {
                    col[k] = XemsUi.mix(bodyHeat(sexCol, Math.max(0, shown[k])), 0xFFFFFFFF, 0.45f);
                    op[k] = active[k] ? (float) (0.55 + 0.45 * live[k]) : 0f;
                } else {
                    col[k] = bodyHeat(sexCol, shown[k]);
                    op[k] = off[k] ? 0f : bodyFill(shown[k]);
                }
            }
            int[] px = f.px;
            java.util.Arrays.fill(px, 0);
            for (int j = 0; j < f.idx.length; j++) {
                int z = f.zone[j];
                float a = op[z];
                if (a <= 0f) {
                    continue;
                }
                px[f.idx[j]] = shadeOf(col[z], (f.shade[j] & 0xFF) / 255f, (int) ((f.cov[j] & 0xFF) * a));
            }
            target.setPixels(px, 0, target.getWidth(), 0, 0, target.getWidth(), target.getHeight());
        }

        @Override
        protected void onDraw(Canvas c) {
            long now = android.os.SystemClock.uptimeMillis();
            boolean fading = false;
            for (int k = 0; k < Z; k++) {
                double v = shownAt(k, now);
                if (v != shown[k]) {
                    shown[k] = v;
                    dirty = true;
                    glowDirty = true;
                }
                fading |= fadeMs[k] > 0 && now - fadeMs[k] < FADE_MS;
            }
            boolean any = false;
            for (boolean a : active) {
                any |= a;
            }
            if (dirty) {
                dirty = false;
                for (Fig f : figs) {
                    repaint(f, f != null ? f.over : null, false);
                }
            }
            if (glowDirty && any) {
                glowDirty = false;
                for (Fig f : figs) {
                    repaint(f, f != null ? f.glow : null, true);
                }
            }
            // the pulse: the working zones breathe between a faint and a strong glow
            double ph = (now % PULSE_MS) / (double) PULSE_MS;
            glowPaint.setAlpha((int) (255 * (0.15 + 0.85 * (0.5 - 0.5 * Math.cos(2 * Math.PI * ph)))));
            float gap = dp(this, 22);
            float h = getHeight();
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
                if (any && f.glow != null) {
                    c.drawBitmap(f.glow, src, dst, glowPaint);
                }
                x += fw + gap;
            }
            if (any || fading) {
                postInvalidateOnAnimation();
            }
        }
    }

    // ================================================================ peak triangle

    /** Inverted triangle: wide (red, high) at the top, the point (blue, light) at the bottom; a marker at the
     *  total load now. */
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

        /** v = the total load ({@link AutoEngine#getSystemLoad}). */
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
            // 100 % = the most this client's body takes in a healthy way (in general, not this session); above it
            // up to 125 % is over the limit — a thin line marks where that begins
            float y100 = bottom - (bottom - top) / 1.25f;
            float h100 = half * (bottom - y100) / (bottom - top);
            line.setColor(XemsUi.alpha(XemsUi.TEXT, 0x99));
            line.setStrokeWidth(dp(this, 1.2f));
            c.drawLine(w / 2f - h100 - dp(this, 5), y100, w / 2f + h100 + dp(this, 5), y100, line);
            float y = bottom - (bottom - top) * value / 1.25f;
            float hw = half * (bottom - y) / (bottom - top) + dp(this, 6);
            line.setColor(XemsUi.TEXT);
            line.setStrokeWidth(dp(this, 2.5f));
            c.drawLine(w / 2f - hw, y, w / 2f + hw, y, line);
            // the value beside the marker, in the scale's own colour
            txt.setTextAlign(Paint.Align.LEFT);
            txt.setColor(value > 1f ? HEAT_COL[4] : XemsUi.TEXT);
            Paint.FontMetrics fm = txt.getFontMetrics();
            float ty = Math.max(top - fm.ascent, Math.min(bottom, y - (fm.ascent + fm.descent) / 2f));
            String pct = Math.round(value * 100) + "%";
            float tx = w / 2f + hw + dp(this, 4);
            if (tx + txt.measureText(pct) > w) {
                tx = Math.max(0, w / 2f - hw - dp(this, 4) - txt.measureText(pct));
            }
            c.drawText(pct, tx, ty, txt);
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
     * The whole session on one line (owner, 1.1.290): height and colour = the total load at that moment, on the
     * real clock — a set (EMS + the exercise) stands high, the rest and any pause fall with the load as long as
     * they last (muscles recover, the oxygen debt clears), the passive recovery stays low. Points are joined as
     * they are (no time smoothing), so the sets and the valleys keep their real proportions. The past is bright,
     * the future the live forecast (faded); phase separators, the HR line, "now".
     */
    public static final class Timeline extends View {
        private static final int N = 480;
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

        /** Index of the last point at or before t (by its session time), from {@code from}. */
        private static int at(List<float[]> pts, double t, int from) {
            int i = Math.max(0, from);
            while (i + 1 < pts.size() && pts.get(i + 1)[0] <= t) {
                i++;
            }
            return i;
        }

        /** Height at t: a cycle holds its value to the next point; a wait slides to the next point (the fall). */
        private static float value(List<float[]> pts, int i, double t, int idx) {
            float[] p = pts.get(i);
            if (i + 1 >= pts.size() || p.length < 7 || p[6] == AutoEngine.TRACE_CYCLE) {
                return p[idx];
            }
            float[] q = pts.get(i + 1);
            double span = q[0] - p[0];
            double k = span > 0 ? Math.max(0, Math.min(1, (t - p[0]) / span)) : 0;
            return (float) (p[idx] + (q[idx] - p[idx]) * k);
        }

        /**
         * past: the engine's trace; f: the forecast; elapsedImpulse: impulse seconds done; sessionNow: the clock;
         * phaseNames: the plan's phases.
         */
        public void set(List<float[]> past, AutoEngine.Forecast f, double elapsedImpulse, double sessionNow,
                        String[] phaseNames) {
            names = phaseNames;
            double anchor = f != null ? f.anchor(sessionNow, elapsedImpulse) : sessionNow;
            double total = f != null ? sessionNow + Math.max(0, f.totalS - anchor) : sessionNow;
            totalS = (float) Math.max(60, total);
            nowS = (float) sessionNow;
            // absolute: the top is the total load 1 (the healthy limit) — never rescaled to the session
            double max = f != null ? f.maxLoad : 0;
            for (float[] p : past) {
                max = Math.max(max, p[2]);
            }
            max = Math.max(1.0, Math.min(1.25, max));
            int pi = 0;
            int fi = 0;
            for (int i = 0; i < N; i++) {
                double t = (i + 0.5) * totalS / N;
                List<float[]> src = null;
                int k = 0;
                double tt = t;
                if (t <= sessionNow) {
                    if (!past.isEmpty() && past.get(0)[0] <= t) {
                        pi = at(past, t, pi);
                        src = past;
                        k = pi;
                    }
                } else if (f != null && !f.points.isEmpty()) {
                    tt = anchor + (t - sessionNow);
                    fi = at(f.points, tt, fi);
                    src = f.points;
                    k = fi;
                }
                if (src == null) {
                    hv[i] = 0;
                    cv[i] = 0;
                    phase[i] = i > 0 ? phase[i - 1] : 0;
                    hrv[i] = 0;
                    continue;
                }
                float[] p = src.get(k);
                hv[i] = (float) (value(src, k, tt, 2) / max);
                cv[i] = value(src, k, tt, 3);
                phase[i] = p.length > 4 ? (int) p[4] : 0;
                hrv[i] = t <= sessionNow && p.length > 5 ? p[5] : 0;
            }
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            int w = getWidth();
            int h = getHeight();
            float top = dp(this, 16);
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
