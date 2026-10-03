package com.isaigu.gymapp.wearable.scale;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * The measuring stage — what the client sees from "step on" to "done", the whole process visible:
 *
 * <ul>
 *   <li><b>Left</b> — a dark theatre: the client's figure on the scale (by sex) while waiting, the scan film while
 *       the scale sweeps the impedances, a phase chip.</li>
 *   <li><b>Right</b> — the five steps (link · step on · steady · scan · done), the instruction now (big), the live
 *       weight with its settling line, the scan ring with seconds, which step-on of how many and how each went
 *       (hands · feet · trunk).</li>
 * </ul>
 *
 * Driven by ScaleScreen (link state, live weight, results with the session's verdict). Pure UI.
 */
final class ScaleStage {
    static final int P_CONNECT = 0, P_STEP_ON = 1, P_SETTLE = 2, P_SCAN = 3, P_REVIEW = 4, P_STEP_OFF = 5,
            P_DONE = 6, P_NO_BT = 7;
    /** The scale's impedance sweep after the weight settles, about this long. */
    static final double SCAN_S = 9;

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    final Activity a;
    final boolean female;
    final LinearLayout root;
    final FrameLayout theatre;
    final ImageView hero;
    final TextureView film;
    final View cover;
    final TextView chip;
    final StepsBar steps;
    final TextView title, sub, weight, unit, stableChip, round;
    final Live live;
    final LinearLayout quality;
    final TextView results;
    final Handler main = new Handler(Looper.getMainLooper());
    MediaPlayer player;
    boolean filmReady;
    /** The film is meant to be on (someone stands on the scale) — it starts as soon as the player is ready. */
    boolean filmOn;
    /** Steadiness seen here too: generation A sends no "stable" flag with the live weight. */
    double anchorKg;
    long anchorT;
    static final double STEADY_KG = 0.15;
    static final long STEADY_MS = 1500;
    int phase = -1;
    long scanStart;
    boolean needOff;
    ValueAnimator breathe;
    final Tick tick = new Tick(this);

    int dp(float v) {
        return XemsUi.dp(a, v);
    }

    ScaleStage(Activity a, boolean female) {
        this.a = a;
        this.female = female;
        root = XemsUi.horizontal(a);
        root.setGravity(Gravity.TOP);

        // the theatre
        theatre = new FrameLayout(a);
        theatre.setBackgroundDrawable(XemsUi.rounded(0xFF05070B, dp(22), XemsUi.alpha(female ? 0xFFFF3EC8 : 0xFF38BDF8,
                90), dp(1)));
        theatre.setClipToOutline(true);
        // the film is always drawn (a TextureView kept at alpha 0 may never get its surface) under an opaque cover
        // and the figure; showing the film = fading both out
        film = new TextureView(a);
        film.setSurfaceTextureListener(new FilmSurface(this));
        theatre.addView(film, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        cover = new View(a);
        cover.setBackgroundColor(0xFF05070B);
        theatre.addView(cover, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        hero = new ImageView(a);
        hero.setScaleType(ImageView.ScaleType.FIT_CENTER);
        hero.setPadding(dp(18), dp(40), dp(18), dp(18));
        Bitmap hb = load(a, "xems/body/scale/measure/" + (female ? "female" : "male") + "-hero.webp");
        if (hb != null) {
            hero.setImageBitmap(hb);
        }
        theatre.addView(hero, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
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
        phase(P_CONNECT);
    }

    View view() {
        return root;
    }

    // ================================================================ driven from ScaleScreen

    void linkState(int st) {
        switch (st) {
            case ScaleLink.SEARCHING:
            case ScaleLink.CONNECTING:
                if (phase == P_CONNECT || phase == P_NO_BT) {
                    phase(P_CONNECT);
                }
                break;
            case ScaleLink.READY:
                if (phase <= P_STEP_ON || phase == P_NO_BT) {
                    phase(P_STEP_ON);
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
        weight.setText(String.valueOf(Math.round(kg * 10) / 10.0));
        weight.setTextColor(stable ? XemsUi.TEXT : XemsUi.MUTED);
        live.add(kg, stable);
        long now = System.currentTimeMillis();
        if (Math.abs(kg - anchorKg) > STEADY_KG) {
            anchorKg = kg;
            anchorT = now;
        } else if (kg >= 5 && now - anchorT >= STEADY_MS) {
            stable = true;
        }
        if (needOff) {
            if (kg < 5) {
                needOff = false;
                phase(P_STEP_ON);
            } else if (phase != P_STEP_OFF) {
                phase(P_STEP_OFF);
            }
            return;
        }
        if (kg < 5) {
            if (phase == P_SETTLE || phase == P_SCAN) {
                phase(P_STEP_ON);
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

    /** One step-on's result in, with the session's verdict. */
    void stepResult(ScaleProtocol.Reading r, ScaleSession s) {
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
        roundText(s);
        if (s.need == ScaleSession.NEED_NONE) {
            phase(P_REVIEW);
            title.setText(tr("✓ Мерено", "✓ Measured"));
            sub.setText(s.count() > 1 ? tr(s.count() + " стъпвания — лошите извън сметката, останалите осреднени",
                    s.count() + " step-ons — the bad ones out, the rest averaged")
                    : tr("Контактът е добър, тялото е както обикновено", "Good contact, the body is as usual"));
            return;
        }
        needOff = true;
        phase(P_REVIEW);
        switch (s.need) {
            case ScaleSession.NEED_CONTACT:
                title.setText(tr("Още веднъж — по-добър контакт", "Once more — better contact"));
                sub.setText(q != null && !q.full ? tr("Ръцете не държаха дръжката. Слез, стъпи пак и хвани с двете ръце.",
                        "The hands were off the handle. Step off, on again, both hands on it.")
                        : q != null && !q.arms ? tr("Едната ръка не хваща добре — цялата длан върху металното, ръцете отпуснати.",
                        "One hand is not on well — the whole palm on the metal, arms relaxed.")
                        : tr("Стъпалата: боси, сухи, петите върху задните електроди.",
                        "The feet: bare, dry, heels on the back electrodes."));
                break;
            case ScaleSession.NEED_BASELINE:
                title.setText(tr("Още едно — за база", "One more — for the baseline"));
                sub.setText(tr("Първото мерене на клиента: две стъпвания дават стабилна отправна точка. Слез и стъпи пак.",
                        "The client's first: two step-ons give a steady starting point. Step off and on again."));
                break;
            case ScaleSession.NEED_CONFIRM:
                title.setText(tr("Още едно — за проверка", "One more — to check"));
                sub.setText(tr("Резултатът е далеч от последните дни, а тялото не се мени толкова бързо. Слез и стъпи пак.",
                        "The result is far from the last days, and the body does not change that fast. Step off and on again."));
                break;
            default:
                title.setText(tr("Още едно — двете се разминават", "One more — the two differ"));
                sub.setText(tr("Третото решава: средното от трите, без крайното.",
                        "The third decides: the middle of the three."));
                break;
        }
        main.postDelayed(new Next(this), 2400);
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

    void roundText(ScaleSession s) {
        int n = s.count(), of = Math.max(n, s.planned());
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < of; i++) {
            b.append(i < n ? "●" : "○");
        }
        round.setText(b + "  " + tr("стъпване " + Math.min(n + (s.need == ScaleSession.NEED_NONE ? 0 : 1), of)
                + " от " + of, "step-on " + Math.min(n + (s.need == ScaleSession.NEED_NONE ? 0 : 1), of) + " of " + of));
    }

    /** All merged and saved: the big ✓ and the two numbers that matter. */
    void finished(String line) {
        phase(P_DONE);
        sub.setText(line);
    }

    /** A fresh session ("Мери пак"). */
    void reset() {
        needOff = false;
        quality.removeAllViews();
        round.setText("");
        live.clear();
        weight.setText("—");
        phase(P_CONNECT);
    }

    // ================================================================ phases

    void phase(int p) {
        if (p == phase && p != P_CONNECT) {
            return;
        }
        int was = phase;
        phase = p;
        int accent = female ? 0xFFFF3EC8 : 0xFF38BDF8;
        String c;
        int cc;
        switch (p) {
            case P_CONNECT:
                title.setText(tr("Търся кантара…", "Looking for the scale…"));
                sub.setText(tr("Стъпи на кантара — той се събужда и таблетът го намира сам.",
                        "Step on the scale — it wakes up and the tablet finds it by itself."));
                c = tr("ВРЪЗКА", "LINK");
                cc = 0xFF94A3B8;
                steps.at(0);
                break;
            case P_STEP_ON:
                title.setText(tr("Стъпи бос на кантара", "Step on barefoot"));
                sub.setText(tr("Петите върху задните електроди, хвани дръжката с двете ръце, ръцете отпуснати надолу.",
                        "Heels on the back electrodes, both hands on the handle, arms relaxed down."));
                c = tr("ЧАКАМ", "WAITING");
                cc = accent;
                steps.at(1);
                break;
            case P_SETTLE:
                title.setText(tr("Стой спокойно…", "Stand still…"));
                sub.setText(tr("Теглото се успокоява — без движение, без говорене.", "The weight settles — no moving, no talking."));
                c = tr("ТЕГЛО", "WEIGHT");
                cc = 0xFFF59E0B;
                steps.at(2);
                break;
            case P_SCAN:
                title.setText(tr("Мери — не пускай дръжката", "Measuring — keep holding"));
                sub.setText(tr("Слаб ток минава през ръцете, тялото и краката на две честоти. Не се усеща.",
                        "A faint current passes through arms, trunk and legs at two frequencies. It is not felt."));
                c = tr("СКАНИРАНЕ", "SCANNING");
                cc = 0xFF22C55E;
                steps.at(3);
                scanStart = System.currentTimeMillis();
                main.removeCallbacks(tick);
                main.post(tick);
                break;
            case P_REVIEW:
                c = tr("ПРОВЕРКА", "CHECK");
                cc = 0xFF22C55E;
                steps.at(3);
                live.ring(1f, "✓");
                break;
            case P_STEP_OFF:
                title.setText(tr("Слез от кантара за момент", "Step off for a moment"));
                sub.setText(tr("После стъпи пак — кантарът мери наново при всяко стъпване.",
                        "Then step on again — the scale measures anew at every step-on."));
                c = tr("СЛЕЗ", "STEP OFF");
                cc = 0xFFF59E0B;
                steps.at(1);
                break;
            case P_DONE:
                title.setText(tr("✓ Готово — може да слезе", "✓ Done — step off"));
                c = tr("ГОТОВО", "DONE");
                cc = 0xFF22C55E;
                steps.at(4);
                break;
            default:
                title.setText(tr("Включи Bluetooth", "Turn Bluetooth on"));
                sub.setText(tr("Без Bluetooth таблетът не чува кантара.", "Without Bluetooth the tablet cannot hear the scale."));
                c = "BLUETOOTH";
                cc = 0xFFEF4444;
                steps.at(0);
                break;
        }
        chip.setText(c);
        chip.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(cc, 70), dp(16), XemsUi.alpha(cc, 200), dp(1)));
        stable(p);
        if (p == P_STEP_ON || p == P_CONNECT) {
            breathe(true);
        } else {
            breathe(false);
        }
        // the film runs from the moment someone stands on the scale until the results come in
        showFilm(p == P_SETTLE || p == P_SCAN || p == P_REVIEW || p == P_DONE);
        if (p != P_SCAN) {
            main.removeCallbacks(tick);
            if (p != P_REVIEW) {
                live.ring(p == P_DONE ? 1f : 0f, p == P_DONE ? "✓" : "");
            }
        }
        if (was != p) {
            XemsUi.enter(title);
        }
    }

    void stable(int p) {
        if (p == P_SETTLE) {
            stableChip.setText(tr("● успокоява се", "● settling"));
            stableChip.setTextColor(0xFFF59E0B);
        } else if (p == P_SCAN || p == P_REVIEW || p == P_DONE) {
            stableChip.setText(tr("✓ стабилно", "✓ steady"));
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

    // ================================================================ the theatre: figure ↔ film

    void breathe(boolean on) {
        if (on && breathe == null) {
            breathe = ValueAnimator.ofFloat(0f, 1f);
            breathe.setDuration(2400);
            breathe.setRepeatMode(ValueAnimator.REVERSE);
            breathe.setRepeatCount(ValueAnimator.INFINITE);
            breathe.addUpdateListener(new Breathe(this));
            breathe.start();
        } else if (!on && breathe != null) {
            breathe.cancel();
            breathe = null;
            hero.setScaleX(1f);
            hero.setScaleY(1f);
            hero.setAlpha(1f);
        }
    }

    void showFilm(boolean on) {
        boolean was = filmOn;
        filmOn = on;
        if (on) {
            if (player != null && filmReady) {
                try {
                    if (!was || !player.isPlaying()) {
                        if (!was) {
                            player.seekTo(0);
                        }
                        player.start();
                    }
                } catch (Throwable t) {
                    XemsGuard.report("ScaleStage.play", t);
                }
                cover.animate().alpha(0f).setDuration(500).start();
                hero.animate().alpha(0f).setDuration(500).start();
            }
        } else {
            cover.animate().alpha(1f).setDuration(400).start();
            hero.animate().alpha(1f).setDuration(400).start();
            if (player != null) {
                try {
                    player.pause();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    void openFilm(SurfaceTexture st) {
        try {
            File f = videoFile(a, female);
            if (f == null) {
                return;
            }
            player = new MediaPlayer();
            player.setSurface(new Surface(st));
            player.setDataSource(f.getAbsolutePath());
            player.setLooping(true);
            player.setVolume(0f, 0f);
            Film l = new Film(this);
            player.setOnPreparedListener(l);
            player.setOnVideoSizeChangedListener(l);
            player.prepareAsync();
        } catch (Throwable t) {
            XemsGuard.report("ScaleStage.film", t);
        }
    }

    /** Fit the film into the theatre without stretching. */
    void fit(int vw, int vh) {
        int w = film.getWidth(), h = film.getHeight();
        if (vw <= 0 || vh <= 0 || w <= 0 || h <= 0) {
            return;
        }
        float s = Math.min(w / (float) vw, h / (float) vh);
        Matrix m = new Matrix();
        m.setScale(vw * s / w, vh * s / h, w / 2f, h / 2f);
        film.setTransform(m);
    }

    void release() {
        main.removeCallbacksAndMessages(null);
        breathe(false);
        filmReady = false;
        if (player != null) {
            try {
                player.release();
            } catch (Throwable ignored) {
            }
            player = null;
        }
    }

    /** The film from the APK's assets, copied once to the cache (the player needs a file). */
    static File videoFile(Context c, boolean female) {
        String name = (female ? "female" : "male") + ".mp4";
        File f = new File(c.getCacheDir(), "xems_scale_" + name);
        if (f.isFile() && f.length() > 10000) {
            return f;
        }
        try {
            InputStream in = c.getAssets().open("xems/body/scale/measure/" + name);
            OutputStream out = new FileOutputStream(f);
            try {
                byte[] buf = new byte[32768];
                int n;
                while ((n = in.read(buf)) > 0) {
                    out.write(buf, 0, n);
                }
            } finally {
                out.close();
                in.close();
            }
            return f;
        } catch (Throwable t) {
            XemsGuard.report("ScaleStage.videoFile", t);
            return null;
        }
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

    // ================================================================ drawn parts

    /** link · step on · steady · scan · done — done ones ✓, the current one pulsing. */
    static final class StepsBar extends View {
        final Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
        int at;
        float pulse;
        ValueAnimator va;

        StepsBar(Context c) {
            super(c);
            va = ValueAnimator.ofFloat(0f, 1f);
            va.setDuration(1200);
            va.setRepeatCount(ValueAnimator.INFINITE);
            va.addUpdateListener(new Pulse(this));
            va.start();
        }

        void at(int i) {
            at = i;
            invalidate();
        }

        float d(float v) {
            return v * getResources().getDisplayMetrics().density;
        }

        @Override
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            va.cancel();
        }

        @Override
        protected void onDraw(Canvas c) {
            String[] n = {tr("Връзка", "Link"), tr("Стъпи", "Step on"), tr("Стабилно", "Steady"),
                    tr("Сканиране", "Scan"), tr("Готово", "Done")};
            float l = d(24), w = getWidth() - 2 * l, y = d(22);
            for (int i = 0; i < 5; i++) {
                float x = l + w * i / 4;
                if (i < 4) {
                    p.setStrokeWidth(d(3));
                    p.setColor(i < at ? 0xFF22C55E : XemsUi.alpha(XemsUi.TEXT, 50));
                    c.drawLine(x + d(14), y, l + w * (i + 1) / 4 - d(14), y, p);
                }
                p.setStyle(Paint.Style.FILL);
                if (i == at) {
                    p.setColor(XemsUi.alpha(0xFF22C55E, (int) (90 * (1 - pulse))));
                    c.drawCircle(x, y, d(12) + d(10) * pulse, p);
                }
                p.setColor(i < at || (i == 4 && at == 4) ? 0xFF22C55E : i == at ? 0xFF22C55E
                        : XemsUi.alpha(XemsUi.TEXT, 40));
                c.drawCircle(x, y, d(12), p);
                p.setColor(i <= at ? 0xFF0B1A10 : XemsUi.MUTED);
                p.setTextAlign(Paint.Align.CENTER);
                p.setFakeBoldText(true);
                p.setTextSize(d(13));
                c.drawText(i < at || (i == 4 && at == 4) ? "✓" : String.valueOf(i + 1), x, y + d(4.5f), p);
                p.setFakeBoldText(i == at);
                p.setTextSize(d(12));
                p.setColor(i == at ? XemsUi.TEXT : XemsUi.MUTED);
                c.drawText(n[i], x, y + d(36), p);
            }
            p.setFakeBoldText(false);
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
                c.drawText(tr("тук се вижда как теглото се успокоява", "here the weight settles"), lw / 2, h / 2 + d(4), p);
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

    static final class Next implements Runnable {
        final ScaleStage v;

        Next(ScaleStage v) {
            this.v = v;
        }

        @Override
        public void run() {
            if (v.phase == P_REVIEW && v.needOff) {
                v.phase(P_STEP_OFF);
            }
        }
    }

    static final class Breathe implements ValueAnimator.AnimatorUpdateListener {
        final ScaleStage v;

        Breathe(ScaleStage v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            float f = (Float) a.getAnimatedValue();
            v.hero.setScaleX(1f + 0.015f * f);
            v.hero.setScaleY(1f + 0.015f * f);
            v.hero.setAlpha(v.phase == P_CONNECT ? 0.55f + 0.25f * f : 0.85f + 0.15f * f);
        }
    }

    static final class Pulse implements ValueAnimator.AnimatorUpdateListener {
        final StepsBar v;

        Pulse(StepsBar v) {
            this.v = v;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator a) {
            v.pulse = (Float) a.getAnimatedValue();
            v.invalidate();
        }
    }

    static final class FilmSurface implements TextureView.SurfaceTextureListener {
        final ScaleStage v;

        FilmSurface(ScaleStage v) {
            this.v = v;
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture st, int w, int h) {
            v.openFilm(st);
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture st, int w, int h) {
            if (v.player != null) {
                v.fit(v.player.getVideoWidth(), v.player.getVideoHeight());
            }
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture st) {
            v.release();
            return true;
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture st) {
        }
    }

    static final class Film implements MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
        final ScaleStage v;

        Film(ScaleStage v) {
            this.v = v;
        }

        @Override
        public void onPrepared(MediaPlayer mp) {
            v.filmReady = true;
            v.fit(mp.getVideoWidth(), mp.getVideoHeight());
            if (v.filmOn) {
                v.filmOn = false;   // so it starts from the top
                v.showFilm(true);
            }
        }

        @Override
        public void onVideoSizeChanged(MediaPlayer mp, int w, int h) {
            v.fit(w, h);
        }
    }
}
