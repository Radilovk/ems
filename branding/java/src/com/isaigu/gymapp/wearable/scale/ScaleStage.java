package com.isaigu.gymapp.wearable.scale;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * The measuring stage — what the client sees from "step on" to "done", one standing, no step-off:
 *
 * <ul>
 *   <li><b>Left</b> — a dark theatre: the client's figure on the scale (by sex), a still picture that breathes;
 *       from the moment the scale is heard (it only wakes when someone stands on it) a scan sweeps over it — drawn
 *       here, time-driven, so it moves even when the tablet's animations are switched off. A tap on the figure
 *       sends a ripple. No video.</li>
 *   <li><b>Right</b> — the five steps (step on · link · weight · analysis · done), the instruction now (big), the
 *       live weight with its settling line, the scan ring with seconds, how many sweeps and how the contact was
 *       (hands · feet · trunk).</li>
 * </ul>
 *
 * Driven by ScaleScreen (link state, live weight, sweeps). Pure UI.
 */
final class ScaleStage {
    static final int P_WAIT = 0, P_LINK = 1, P_SETTLE = 2, P_SCAN = 3, P_DONE = 4, P_NO_BT = 5;
    /** The scale's impedance sweep after the weight settles, about this long. */
    static final double SCAN_S = 9;
    /** Steadiness seen here too: generation A sends no "stable" flag with the live weight. */
    static final double STEADY_KG = 0.15;
    static final long STEADY_MS = 1500;

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static void log(String s) {
        WearableBleDiagLog.log("scale", "stage " + s);
    }

    final Activity a;
    final boolean female;
    final LinearLayout root;
    final FrameLayout theatre;
    final ImageView hero;
    final ScanFx fx;
    final TextView chip;
    final StepsBar steps;
    final TextView title, sub, weight, unit, stableChip, round;
    final Live live;
    final LinearLayout quality;
    final TextView results;
    final Handler main = new Handler(Looper.getMainLooper());
    int phase = -1;
    long scanStart;
    double anchorKg;
    long anchorT;
    final Tick tick = new Tick(this);

    int dp(float v) {
        return XemsUi.dp(a, v);
    }

    ScaleStage(Activity a, boolean female) {
        this.a = a;
        this.female = female;
        root = XemsUi.horizontal(a);
        root.setGravity(Gravity.TOP);
        int accent = female ? 0xFFFF3EC8 : 0xFF38BDF8;

        // the theatre: the figure (a still picture) · the drawn effects · chip and caption
        theatre = new FrameLayout(a);
        theatre.setBackgroundDrawable(XemsUi.rounded(0xFF05070B, dp(22), XemsUi.alpha(accent, 90), dp(1)));
        theatre.setClipToOutline(true);
        hero = new ImageView(a);
        hero.setScaleType(ImageView.ScaleType.FIT_CENTER);
        hero.setPadding(dp(18), dp(40), dp(18), dp(18));
        Bitmap hb = load(a, "xems/body/scale/measure/" + (female ? "female" : "male") + "-hero.webp");
        if (hb != null) {
            hero.setImageBitmap(hb);
        }
        theatre.addView(hero, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        fx = new ScanFx(a, accent);
        theatre.addView(fx, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        chip = XemsUi.text(a, "", 13, 0xFFFFFFFF, true);
        chip.setPadding(dp(14), dp(7), dp(14), dp(7));
        FrameLayout.LayoutParams cl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.START);
        cl.setMargins(dp(16), dp(16), 0, 0);
        theatre.addView(chip, cl);
        TextView tech = XemsUi.text(a, tr("8 електрода · 20 и 100 kHz · 5 зони", "8 electrodes · 20 and 100 kHz · 5 zones"),
                12, 0x99FFFFFF, false);
        FrameLayout.LayoutParams tl = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.BOTTOM | Gravity.END);
        tl.setMargins(0, 0, dp(16), dp(12));
        theatre.addView(tech, tl);
        root.addView(theatre);

        // the process
        LinearLayout side = XemsUi.card(a);
        steps = new StepsBar(a);
        side.addView(steps, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(72)));
        title = XemsUi.text(a, "", 30, XemsUi.TEXT, true);
        side.addView(title, XemsUi.matchWrap(a, 14));
        sub = XemsUi.text(a, "", 16, XemsUi.MUTED, false);
        sub.setLineSpacing(dp(2), 1f);
        side.addView(sub, XemsUi.matchWrap(a, 4));
        LinearLayout wr = XemsUi.horizontal(a);
        wr.setGravity(Gravity.BOTTOM);
        weight = XemsUi.text(a, "—", 68, XemsUi.TEXT, true);
        weight.setIncludeFontPadding(false);
        wr.addView(weight);
        unit = XemsUi.text(a, tr(" кг", " kg"), 20, XemsUi.MUTED, true);
        unit.setPadding(0, 0, 0, dp(10));
        wr.addView(unit);
        wr.addView(XemsUi.spacer(a));
        stableChip = XemsUi.text(a, "", 14, XemsUi.MUTED, true);
        stableChip.setPadding(dp(12), dp(6), dp(12), dp(6));
        LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        sl.bottomMargin = dp(12);
        wr.addView(stableChip, sl);
        side.addView(wr, XemsUi.matchWrap(a, 16));
        live = new Live(a);
        side.addView(live, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout rr = XemsUi.horizontal(a);
        rr.setGravity(Gravity.CENTER_VERTICAL);
        round = XemsUi.text(a, "", 14, XemsUi.MUTED, true);
        rr.addView(round, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        quality = XemsUi.horizontal(a);
        rr.addView(quality);
        side.addView(rr, XemsUi.matchWrap(a, 10));
        results = XemsUi.button(a, tr("Резултати ›", "Results ›"), XemsUi.SECONDARY);
        LinearLayout.LayoutParams bl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(52));
        bl.topMargin = dp(12);
        side.addView(results, bl);
        root.addView(side);
        phase(P_WAIT);
    }

    View view() {
        return root;
    }

    // ================================================================ driven from ScaleScreen

    /** The link: searching = nobody on yet; connected = the scale woke up, so someone stands on it. */
    void linkState(int st) {
        switch (st) {
            case ScaleLink.SEARCHING:
                if (phase == P_NO_BT || phase == P_LINK) {
                    phase(P_WAIT);
                }
                break;
            case ScaleLink.CONNECTING:
            case ScaleLink.READY:
            case ScaleLink.MEASURING:
                if (phase == P_WAIT || phase == P_NO_BT) {
                    phase(P_LINK);
                }
                break;
            case ScaleLink.NO_BLUETOOTH:
                phase(P_NO_BT);
                break;
            default:
                break;
        }
    }

    void liveWeight(double kg, boolean stable) {
        if (phase == P_DONE) {
            if (kg >= 5) {
                weight.setText(String.valueOf(Math.round(kg * 10) / 10.0));
            }
            return;
        }
        weight.setText(kg >= 5 ? String.valueOf(Math.round(kg * 10) / 10.0) : "—");
        weight.setTextColor(stable ? XemsUi.TEXT : XemsUi.MUTED);
        if (kg >= 5) {
            live.add(kg, stable);
        }
        long now = System.currentTimeMillis();
        if (Math.abs(kg - anchorKg) > STEADY_KG) {
            anchorKg = kg;
            anchorT = now;
        } else if (kg >= 5 && now - anchorT >= STEADY_MS) {
            stable = true;
        }
        if (kg < 5) {
            if (phase == P_SETTLE || phase == P_SCAN) {
                phase(P_LINK);
            }
            return;
        }
        if (stable) {
            if (phase != P_SCAN) {
                phase(P_SCAN);
            }
        } else if (phase != P_SETTLE && phase != P_SCAN) {
            phase(P_SETTLE);
        }
    }

    /** One sweep in (the session already holds it): contact chips and how many sweeps. */
    void sweep(ScaleProtocol.Reading r, ScaleSession s) {
        weight.setText(String.valueOf(Math.round(r.weightKg * 10) / 10.0));
        weight.setTextColor(XemsUi.TEXT);
        live.done();
        ScaleSession.Quality q = s.lastQuality();
        quality.removeAllViews();
        addQ(tr("Ръце", "Hands"), q != null && q.full && q.arms);
        addQ(tr("Крака", "Feet"), q != null && q.full && q.legs);
        if (r.hasTrunk()) {
            addQ(tr("Тяло", "Trunk"), q != null && q.full && q.trunk);
        }
        int n = s.count();
        round.setText(n <= 1 ? "" : tr(n + " отчитания · осреднени", n + " readings · averaged"));
    }

    void addQ(String name, boolean ok) {
        int c = ok ? 0xFF22C55E : 0xFFF59E0B;
        TextView t = XemsUi.text(a, (ok ? "✓ " : "! ") + name, 13, c, true);
        t.setPadding(dp(10), dp(5), dp(10), dp(5));
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(c, 30), dp(14), XemsUi.alpha(c, 140), dp(1)));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = dp(6);
        quality.addView(t, lp);
        XemsUi.enter(t);
    }

    /**
     * Saved: the big ✓ and the two numbers that matter — or, without the hands on the handle, "weight only" and
     * what to do (the client may stay on: a scale that measures again is heard).
     */
    void finished(String line, boolean full) {
        phase(P_DONE);
        if (full) {
            title.setText(tr("Готово", "Done"));
            sub.setText(line);
        } else {
            title.setText(tr("Само тегло", "Weight only"));
            sub.setText(tr("Няма контакт с дръжката. Хванете я с цели длани и останете на кантара или "
                    + "започнете ново измерване.", "No contact with the handle. Hold it with whole palms and stay on "
                    + "the scale, or start a new measurement."));
        }
    }

    /** A fresh standing ("Мери пак", or the next person). */
    void reset() {
        quality.removeAllViews();
        round.setText("");
        live.clear();
        weight.setText("—");
        anchorKg = 0;
        phase = -1;
        phase(P_WAIT);
    }

    // ================================================================ phases

    void phase(int p) {
        if (p == phase) {
            return;
        }
        int was = phase;
        phase = p;
        int accent = female ? 0xFFFF3EC8 : 0xFF38BDF8;
        String c;
        int cc;
        switch (p) {
            case P_WAIT:
                title.setText(tr("Стъпете боси на кантара", "Step on the scale barefoot"));
                sub.setText(tr("Петите върху задните електроди, двете ръце на дръжката, ръцете изпънати надолу.",
                        "Heels on the rear electrodes, both hands on the handle, arms straight down."));
                c = tr("ИЗЧАКВАНЕ", "WAITING");
                cc = accent;
                steps.at(0);
                break;
            case P_LINK:
                title.setText(tr("Свързване…", "Connecting…"));
                sub.setText(tr("Хванете дръжката с цели длани и стойте неподвижно.",
                        "Hold the handle with whole palms and stand still."));
                c = tr("ВРЪЗКА", "LINK");
                cc = 0xFF94A3B8;
                steps.at(1);
                break;
            case P_SETTLE:
                title.setText(tr("Стойте неподвижно", "Stand still"));
                sub.setText(tr("Теглото се стабилизира.", "The weight is stabilising."));
                c = tr("ТЕГЛО", "WEIGHT");
                cc = 0xFFF59E0B;
                steps.at(2);
                break;
            case P_SCAN:
                title.setText(tr("Измерване…", "Measuring…"));
                sub.setText(tr("Не пускайте дръжката. Измервателният ток не се усеща.",
                        "Keep holding the handle. The measuring current cannot be felt."));
                c = tr("АНАЛИЗ", "ANALYSIS");
                cc = 0xFF22C55E;
                steps.at(3);
                scanStart = System.currentTimeMillis();
                main.removeCallbacks(tick);
                main.post(tick);
                break;
            case P_DONE:
                c = tr("ГОТОВО", "DONE");
                cc = 0xFF22C55E;
                steps.at(4);
                break;
            default:
                title.setText(tr("Включете Bluetooth", "Turn Bluetooth on"));
                sub.setText(tr("Bluetooth е нужен за връзка с кантара.", "Bluetooth is needed to connect to the scale."));
                c = "BLUETOOTH";
                cc = 0xFFEF4444;
                steps.at(0);
                break;
        }
        chip.setText(c);
        chip.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(cc, 70), dp(16), XemsUi.alpha(cc, 200), dp(1)));
        stable(p);
        // someone is on the scale from the link on: the scan runs until the results come in
        boolean on = p == P_LINK || p == P_SETTLE || p == P_SCAN || p == P_DONE;
        fx.mode(p == P_WAIT ? ScanFx.IDLE : p == P_DONE ? ScanFx.DONE : on ? ScanFx.SCAN : ScanFx.OFF);
        breath(on);
        if (p != P_SCAN) {
            main.removeCallbacks(tick);
            live.ring(p == P_DONE ? 1f : 0f, p == P_DONE ? "✓" : "");
        }
        if (was != p) {
            XemsUi.enter(title);
        }
    }

    void stable(int p) {
        if (p == P_SETTLE) {
            stableChip.setText(tr("● стабилизиране", "● stabilising"));
            stableChip.setTextColor(0xFFF59E0B);
        } else if (p == P_SCAN || p == P_DONE) {
            stableChip.setText(tr("✓ стабилно", "✓ stable"));
            stableChip.setTextColor(0xFF22C55E);
        } else {
            stableChip.setText("");
        }
    }

    void scanTick() {
        double t = (System.currentTimeMillis() - scanStart) / 1000.0;
        float f = (float) Math.min(0.95, 1 - Math.exp(-t / (SCAN_S / 2.6)));
        live.ring(f, Math.max(0, Math.round(SCAN_S - t)) + tr(" с", " s"));
    }

    // ================================================================ the theatre: a still figure with live effects

    /** The figure breathes (time-driven, so it moves even with animations off) while someone is on the scale. */
    void breath(boolean on) {
        main.removeCallbacks(breather);
        if (on) {
            main.post(breather);
        } else {
            hero.setScaleX(1f);
            hero.setScaleY(1f);
        }
    }

    final Runnable breather = new Breather(this);

    void release() {
        main.removeCallbacksAndMessages(null);
    }

    static Bitmap load(Context c, String asset) {
        try {
            InputStream in = c.getAssets().open(asset);
            try {
                return BitmapFactory.decodeStream(in);
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            return null;
        }
    }

    // ================================================================ drawn parts (time-driven: they move even with
    // the system's animator scale at 0, which stops every ValueAnimator)

    static float now() {
        return (SystemClock.uptimeMillis() % 1000000L) / 1000f;
    }

    /**
     * Over the figure: waiting — a soft glow breathing at the plate (step here); scanning — a bright line sweeping
     * the body up and down with a fading trail, faint scan lines and the edges pulsing; done — one green flash.
     */
    static final class ScanFx extends View {
        static final int OFF = 0, IDLE = 1, SCAN = 2, DONE = 3;
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final RectF r = new RectF();
        final int accent;
        int mode = OFF;
        long since;
        float rx, ry;
        long rt;

        ScanFx(Context c, int accent) {
            super(c);
            this.accent = accent;
        }

        float d(float v) {
            return v * getResources().getDisplayMetrics().density;
        }

        @Override
        public boolean onTouchEvent(android.view.MotionEvent e) {
            if (e.getActionMasked() == android.view.MotionEvent.ACTION_DOWN) {
                rx = e.getX();
                ry = e.getY();
                rt = SystemClock.uptimeMillis();
                XemsUi.haptic(this);
                invalidate();
                return true;
            }
            return super.onTouchEvent(e);
        }

        /** A ripple where the figure was touched. */
        void ripple(Canvas c) {
            float e = (SystemClock.uptimeMillis() - rt) / 900f;
            if (rt == 0 || e >= 1) {
                return;
            }
            p.setShader(null);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(d(3));
            p.setColor(XemsUi.alpha(accent, (int) (200 * (1 - e))));
            c.drawCircle(rx, ry, d(14) + d(90) * e, p);
            p.setColor(XemsUi.alpha(0xFFFFFFFF, (int) (90 * (1 - e))));
            c.drawCircle(rx, ry, d(6) + d(55) * e, p);
            postInvalidateOnAnimation();
        }

        void mode(int m) {
            if (m != mode) {
                mode = m;
                since = SystemClock.uptimeMillis();
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth(), h = getHeight();
            ripple(c);
            if (mode == OFF || w <= 0 || h <= 0) {
                return;
            }
            float t = now();
            p.setShader(null);
            p.setStyle(Paint.Style.FILL);
            if (mode == IDLE) {
                // the plate glows where the feet go
                float k = 0.5f + 0.5f * (float) Math.sin(t * Math.PI / 1.2);
                float cy = h - d(46), rx = w * 0.26f, ry = d(14);
                p.setColor(XemsUi.alpha(accent, (int) (40 + 70 * k)));
                r.set(w / 2 - rx * (1 + 0.08f * k), cy - ry, w / 2 + rx * (1 + 0.08f * k), cy + ry);
                c.drawOval(r, p);
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(d(2));
                p.setColor(XemsUi.alpha(accent, (int) (160 * (1 - k))));
                float grow = 1 + 0.5f * k;
                r.set(w / 2 - rx * grow, cy - ry * grow, w / 2 + rx * grow, cy + ry * grow);
                c.drawOval(r, p);
                postInvalidateOnAnimation();
                return;
            }
            if (mode == DONE) {
                float e = (SystemClock.uptimeMillis() - since) / 900f;
                if (e < 1) {
                    p.setColor(XemsUi.alpha(0xFF22C55E, (int) (110 * (1 - e))));
                    c.drawRect(0, 0, w, h, p);
                    postInvalidateOnAnimation();
                }
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(d(3));
                p.setColor(XemsUi.alpha(0xFF22C55E, 200));
                r.set(d(2), d(2), w - d(2), h - d(2));
                c.drawRoundRect(r, d(20), d(20), p);
                return;
            }
            // SCAN: faint horizontal lines, a sweeping bright line with its trail, the frame pulsing
            float top = d(36), bot = h - d(20);
            p.setColor(XemsUi.alpha(accent, 22));
            for (float y = top; y < bot; y += d(10)) {
                c.drawRect(0, y, w, y + d(1), p);
            }
            float ph = (t % 2.4f) / 2.4f;                      // 0..1
            float tri = ph < 0.5f ? ph * 2 : 2 - ph * 2;       // down and up
            float ease = tri * tri * (3 - 2 * tri);
            float y = top + (bot - top) * ease;
            boolean down = ph < 0.5f;
            float trail = d(70);
            float y0 = down ? y - trail : y, y1 = down ? y : y + trail;
            p.setShader(new LinearGradient(0, y0, 0, y1, down ? 0x00000000 : XemsUi.alpha(0xFF22C55E, 120),
                    down ? XemsUi.alpha(0xFF22C55E, 120) : 0x00000000, Shader.TileMode.CLAMP));
            c.drawRect(0, y0, w, y1, p);
            p.setShader(null);
            p.setColor(0xFFB9FBC0);
            c.drawRect(d(8), y - d(1.5f), w - d(8), y + d(1.5f), p);
            float k = 0.5f + 0.5f * (float) Math.sin(t * Math.PI * 2 / 1.6);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(d(2));
            p.setColor(XemsUi.alpha(0xFF22C55E, (int) (60 + 100 * k)));
            r.set(d(2), d(2), w - d(2), h - d(2));
            c.drawRoundRect(r, d(20), d(20), p);
            postInvalidateOnAnimation();
        }
    }

    /** step on · link · weight · analysis · done — done ones ✓, the current one pulsing. */
    static final class StepsBar extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        int at;

        StepsBar(Context c) {
            super(c);
        }

        void at(int i) {
            at = i;
            invalidate();
        }

        float d(float v) {
            return v * getResources().getDisplayMetrics().density;
        }

        @Override
        protected void onDraw(Canvas c) {
            String[] n = {tr("Стъпване", "Step on"), tr("Връзка", "Link"), tr("Тегло", "Weight"),
                    tr("Анализ", "Analysis"), tr("Готово", "Done")};
            float pulse = (now() % 1.2f) / 1.2f;
            float l = d(24), w = getWidth() - 2 * l, y = d(22);
            for (int i = 0; i < 5; i++) {
                float x = l + w * i / 4;
                if (i < 4) {
                    p.setStrokeWidth(d(3));
                    p.setColor(i < at ? 0xFF22C55E : XemsUi.alpha(XemsUi.TEXT, 50));
                    c.drawLine(x + d(14), y, l + w * (i + 1) / 4 - d(14), y, p);
                }
                p.setStyle(Paint.Style.FILL);
                if (i == at && at < 4) {
                    p.setColor(XemsUi.alpha(0xFF22C55E, (int) (90 * (1 - pulse))));
                    c.drawCircle(x, y, d(12) + d(10) * pulse, p);
                }
                p.setColor(i <= at ? 0xFF22C55E : XemsUi.alpha(XemsUi.TEXT, 40));
                c.drawCircle(x, y, d(12), p);
                p.setColor(i <= at ? 0xFF0B1A10 : XemsUi.MUTED);
                p.setTextAlign(Paint.Align.CENTER);
                p.setFakeBoldText(true);
                p.setTextSize(d(13));
                c.drawText(i < at || (i == 4 && at == 4) ? "✓" : String.valueOf(i + 1), x, y + d(4.5f), p);
                p.setFakeBoldText(i == at);
                p.setTextSize(d(12));
                p.setColor(i == at ? XemsUi.TEXT : XemsUi.MUTED);
                ScaleViews.drawFit(c, p, n[i], x, y + d(36), w / 4 - d(4), this);
            }
            p.setFakeBoldText(false);
            if (at < 4) {
                postInvalidateOnAnimation();
            }
        }
    }

    /** The live weight as it settles (a line into a narrowing band) and the scan ring with its seconds. */
    static final class Live extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        final Path line = new Path();
        final RectF r = new RectF();
        final List<Double> kg = new ArrayList<Double>();
        final List<Boolean> st = new ArrayList<Boolean>();
        float ring;
        String ringText = "";
        boolean done;

        Live(Context c) {
            super(c);
        }

        float d(float v) {
            return v * getResources().getDisplayMetrics().density;
        }

        void add(double v, boolean stable) {
            if (done) {
                clear();
            }
            kg.add(v);
            st.add(stable);
            while (kg.size() > 60) {
                kg.remove(0);
                st.remove(0);
            }
            invalidate();
        }

        void done() {
            done = true;
            invalidate();
        }

        void clear() {
            kg.clear();
            st.clear();
            done = false;
            invalidate();
        }

        void ring(float f, String text) {
            ring = f;
            ringText = text;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float h = getHeight(), w = getWidth();
            float rs = Math.min(h - d(8), d(120));
            float lw = w - rs - d(24);
            // the settling line
            int n = kg.size();
            p.setStyle(Paint.Style.FILL);
            p.setColor(XemsUi.alpha(XemsUi.TEXT, 14));
            r.set(0, d(4), lw, h - d(4));
            c.drawRoundRect(r, d(14), d(14), p);
            if (n >= 2) {
                double lo = Double.MAX_VALUE, hi = -Double.MAX_VALUE;
                for (double v : kg) {
                    lo = Math.min(lo, v);
                    hi = Math.max(hi, v);
                }
                double mid = kg.get(n - 1);
                double span = Math.max(0.6, Math.max(hi - mid, mid - lo) * 2.2);
                float top = d(14), bh = h - d(28);
                // the band the weight must sit in (±0.1 kg)
                float b0 = (float) (top + bh / 2 - 0.1 / span * bh), b1 = (float) (top + bh / 2 + 0.1 / span * bh);
                p.setColor(XemsUi.alpha(0xFF22C55E, 40));
                r.set(d(10), b0, lw - d(10), b1);
                c.drawRoundRect(r, d(4), d(4), p);
                line.reset();
                for (int i = 0; i < n; i++) {
                    float x = d(14) + (lw - d(28)) * i / 59f;
                    float y = (float) (top + bh / 2 - (kg.get(i) - mid) / span * bh);
                    if (i == 0) {
                        line.moveTo(x, y);
                    } else {
                        line.lineTo(x, y);
                    }
                }
                p.setStyle(Paint.Style.STROKE);
                p.setStrokeWidth(d(3));
                p.setStrokeCap(Paint.Cap.ROUND);
                p.setColor(st.get(n - 1) ? 0xFF22C55E : 0xFFF59E0B);
                c.drawPath(line, p);
            } else {
                p.setColor(XemsUi.MUTED);
                p.setTextAlign(Paint.Align.CENTER);
                p.setTextSize(d(13));
                ScaleViews.drawFit(c, p, tr("живо тегло", "live weight"), lw / 2, h / 2 + d(4), lw - d(16), this);
            }
            // the scan ring
            float cx = w - rs / 2 - d(4), cy = h / 2, rad = rs / 2 - d(8);
            p.setStyle(Paint.Style.STROKE);
            p.setStrokeWidth(d(9));
            p.setStrokeCap(Paint.Cap.ROUND);
            p.setColor(XemsUi.alpha(XemsUi.TEXT, 30));
            c.drawCircle(cx, cy, rad, p);
            if (ring > 0) {
                p.setColor(0xFF22C55E);
                r.set(cx - rad, cy - rad, cx + rad, cy + rad);
                c.drawArc(r, -90, 360 * ring, false, p);
            }
            p.setStyle(Paint.Style.FILL);
            p.setTextAlign(Paint.Align.CENTER);
            p.setFakeBoldText(true);
            p.setTextSize(d(ringText.equals("✓") ? 34 : 22));
            p.setColor(ring >= 1 ? 0xFF22C55E : XemsUi.TEXT);
            c.drawText(ringText.length() > 0 ? ringText : "BIA", cx, cy + d(ringText.equals("✓") ? 12 : 8), p);
            p.setFakeBoldText(false);
        }
    }

    // ------------------------------------------------------------------ named listeners (dx-safe)

    static final class Tick implements Runnable {
        final ScaleStage v;

        Tick(ScaleStage v) {
            this.v = v;
        }

        @Override
        public void run() {
            if (v.phase != P_SCAN) {
                return;
            }
            v.scanTick();
            v.main.postDelayed(this, 100);
        }
    }

    static final class Breather implements Runnable {
        final ScaleStage v;

        Breather(ScaleStage v) {
            this.v = v;
        }

        @Override
        public void run() {
            float k = 1f + 0.012f * (float) Math.sin(now() * Math.PI / 1.4);
            v.hero.setScaleX(k);
            v.hero.setScaleY(k);
            v.main.postDelayed(this, 40);
        }
    }
}
