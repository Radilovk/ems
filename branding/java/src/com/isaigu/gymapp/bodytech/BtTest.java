package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The impulse test: protocol (plain / Australian / Russian), Hz 1..10000, width 50 µs .. half the period, waveform,
 * burst (the suit's T2 / T4), gain (STEP_NOR byte) and level, felt with a ▶ held on a channel ({@link BtBridge#test}).
 * Shared by Settings → Костюм bodytech (any connected bodytech suit) and the row's gear test mode ({@link BtTestMode},
 * that row's suit). No strength cap (owner, 1.1.360): level up to the suit's 99 %. Two limits stay: width ≤ half the
 * period ({@link BtTranslator#maxUsAt}) and a raised gain brings the level down to 10 % at most.
 */
final class BtTest {
    static final int[] HZ_PRESETS = {1, 10, 30, 50, 85, 120, 300, 1000, 2500, 5000, 10000};
    static final int[] US_PRESETS = {50, 100, 200, 360, 500, 700, 1000, 1600};
    static final int[] LEVEL_PRESETS = {1, 3, 5, 10, 20, 30, 50, 70, 99};
    /** Protocols: plain, Australian (1 kHz, 500 µs, 4 / 16 ms = 50 bursts/s), Russian (2.5 kHz, 200 µs, 10 / 10 ms). */
    static final String[] PROTO = {"Обикновен", "Австралийски 1 kHz", "Руски 2,5 kHz"};
    static final int[][] PROTO_VAL = {{85, 360, 0, 0}, {1000, 500, 4, 16}, {2500, 200, 10, 10}};
    static final int GAIN_SAFE_LEVEL = 10;

    final Activity a;
    /** The suit to test (MAC); null = the first connected bodytech suit. */
    final String mac;
    final XemsUi.Shell sh;
    final Runnable redraw;
    final Handler handler = new Handler(Looper.getMainLooper());
    int level = 3;                         // %, 1..99
    int tHz = 85, tUs = 360, tWave = -1;   // the test impulse
    int onMs, offMs;                       // burst; 0 = continuous
    int gain = 1;                          // STEP_NOR byte 1..31 (1 = the vendor's)
    int proto;                             // index in PROTO; −1 = own values
    Hold hold;

    BtTest(Activity a, String mac, XemsUi.Shell sh, Runnable redraw) {
        this.a = a;
        this.mac = mac;
        this.sh = sh;
        this.redraw = redraw;
    }

    /** The settings panel: protocol, Hz, width, waveform, level, burst, gain. */
    View panel() {
        LinearLayout box = XemsUi.surface(a);
        box.addView(XemsUi.text(a, "Тест на импулс — дръж ▶ на канал", 16, XemsUi.TEXT, true));
        TextView hint = XemsUi.text(a, "Протокол, честота, ширина, форма и пакети върху мускула. Само за проба: "
                + "тренировката остава в границите на програмата. Костюмът трябва да е свързан от екрана Тренировка. "
                + "Започни от ниско ниво.", 12, XemsUi.HINT, false);
        hint.setPadding(0, XemsUi.dp(a, 4), 0, XemsUi.dp(a, 10));
        box.addView(hint);

        int wmax = BtTranslator.maxUsAt(tHz);
        if (tUs > wmax) tUs = wmax;

        // protocol
        box.addView(XemsUi.label(a, "Протокол"));
        LinearLayout[] ph = new LinearLayout[1];
        HorizontalScrollView ps = XemsUi.chipRow(a, ph);
        for (int i = 0; i < PROTO.length; i++) {
            TextView c = XemsUi.chip(a, PROTO[i], proto == i, XemsUi.ACCENT);
            c.setOnClickListener(new Preset(this, Preset.PROTO, i));
            XemsUi.addChip(a, ph[0], c);
        }
        box.addView(ps, XemsUi.matchWrap(a, 6));

        LinearLayout r1 = XemsUi.horizontal(a);
        r1.setGravity(Gravity.TOP);
        r1.addView(field("Честота", tHz + " Hz", new Step(this, Step.HZ), HZ_PRESETS, tHz, Preset.HZ, Integer.MAX_VALUE),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r1.addView(field("Ширина (до " + wmax + " µs при " + tHz + " Hz)", tUs + " µs", new Step(this, Step.US),
                US_PRESETS, tUs, Preset.US, wmax), XemsUi.weight(1f, 12, a));
        box.addView(r1, XemsUi.matchWrap(a, 10));

        LinearLayout r2 = XemsUi.horizontal(a);
        r2.setGravity(Gravity.TOP);
        LinearLayout wv = XemsUi.vertical(a);
        wv.addView(XemsUi.label(a, "Форма на импулса"));
        LinearLayout[] holder = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, holder);
        for (int w = -1; w <= 3; w++) {
            TextView c = XemsUi.chip(a, BtSettings.WAVES[w + 1], tWave == w, XemsUi.ACCENT);
            c.setOnClickListener(new Preset(this, Preset.WAVE, w));
            XemsUi.addChip(a, holder[0], c);
        }
        wv.addView(hs);
        r2.addView(wv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout lv = XemsUi.vertical(a);
        lv.addView(XemsUi.label(a, "Ниво (до 99 %)"));
        lv.addView(XemsUi.stepper(a, level + " %", null, 16, new Lvl(this)).view);
        LinearLayout[] lh = new LinearLayout[1];
        HorizontalScrollView ls = XemsUi.chipRow(a, lh);
        for (int i = 0; i < LEVEL_PRESETS.length; i++) {
            TextView c = XemsUi.chip(a, LEVEL_PRESETS[i] + "", LEVEL_PRESETS[i] == level, XemsUi.ACCENT);
            c.setOnClickListener(new Preset(this, Preset.LEVEL, LEVEL_PRESETS[i]));
            XemsUi.addChip(a, lh[0], c);
        }
        lv.addView(ls, XemsUi.matchWrap(a, 8));
        r2.addView(lv, XemsUi.weight(1f, 12, a));
        box.addView(r2, XemsUi.matchWrap(a, 10));

        LinearLayout r3 = XemsUi.horizontal(a);
        r3.setGravity(Gravity.TOP);
        r3.addView(small("Пакет вкл.", onMs == 0 ? "непрекъснато" : onMs + " ms", new Step(this, Step.ON)),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r3.addView(small("Пауза между пакетите", onMs == 0 ? "—" : offMs + " ms", new Step(this, Step.OFF)),
                XemsUi.weight(1f, 12, a));
        r3.addView(small("Усилване (опит)", "×" + gain, new Step(this, Step.GAIN)), XemsUi.weight(1f, 12, a));
        box.addView(r3, XemsUi.matchWrap(a, 10));
        String rate = onMs > 0 ? " · " + (1000 / (onMs + offMs > 0 ? onMs + offMs : 1)) + " пакета/s" : "";
        TextView cn = XemsUi.text(a, "Пакетите ги прави костюмът сам (T2 / T4)" + rate + ". Усилване = регистър STEP_NOR "
                + "(производителят праща ×1, ефектът не е измерен): при вдигане нивото слиза до " + GAIN_SAFE_LEVEL
                + " %.", 12, XemsUi.HINT, false);
        cn.setPadding(0, XemsUi.dp(a, 6), 0, 0);
        box.addView(cn);
        return box;
    }

    private View field(String label, String value, XemsUi.OnStep cb, int[] presets, int cur, int kind, int max) {
        LinearLayout f = XemsUi.vertical(a);
        f.addView(XemsUi.label(a, label));
        f.addView(XemsUi.stepper(a, value, null, 16, cb).view);
        LinearLayout[] holder = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, holder);
        for (int i = 0; i < presets.length; i++) {
            if (presets[i] > max) break;
            TextView c = XemsUi.chip(a, String.valueOf(presets[i]), presets[i] == cur, XemsUi.GO_TEXT);
            c.setOnClickListener(new Preset(this, kind, presets[i]));
            XemsUi.addChip(a, holder[0], c);
        }
        f.addView(hs, XemsUi.matchWrap(a, 8));
        return f;
    }

    private View small(String label, String value, XemsUi.OnStep cb) {
        LinearLayout f = XemsUi.vertical(a);
        f.addView(XemsUi.label(a, label));
        f.addView(XemsUi.stepper(a, value, null, 16, cb).view);
        return f;
    }

    /** Touch listener for a channel's ▶: hold = on, release = off. */
    View.OnTouchListener touch(int ch) {
        return new Touch(this, ch);
    }

    void say(String s) {
        sh.subtitle.setText(s);
        sh.subtitle.setVisibility(View.VISIBLE);
    }

    void stop() {
        if (hold != null) {
            hold.live = false;
            handler.removeCallbacks(hold);
            hold = null;
        }
        BtBridge.test(mac, 0, 0, 0, 0, -1, 0, 0, 1, false);
    }

    static final class Touch implements View.OnTouchListener {
        final BtTest t;
        final int ch;

        Touch(BtTest t, int ch) {
            this.t = t;
            this.ch = ch;
        }

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            int act = e.getActionMasked();
            if (act == MotionEvent.ACTION_DOWN) {
                v.setPressed(true);
                XemsUi.haptic(v);
                t.stop();
                t.hold = new Hold(t, ch);
                t.hold.run();
            } else if (act == MotionEvent.ACTION_UP || act == MotionEvent.ACTION_CANCEL) {
                v.setPressed(false);
                t.stop();
            }
            return true;
        }
    }

    /** While held: renew the test every 500 ms and say what happened. */
    static final class Hold implements Runnable {
        final BtTest t;
        final int ch;
        boolean live = true;

        Hold(BtTest t, int ch) {
            this.t = t;
            this.ch = ch;
        }

        @Override
        public void run() {
            if (!live) return;
            String r = BtBridge.test(t.mac, ch, t.level, t.tHz, t.tUs, t.tWave, t.onMs, t.offMs, t.gain, true);
            if ("ok".equals(r)) {
                t.say(BtSettings.name(ch) + " · " + t.level + " % · " + t.tHz + " Hz · " + t.tUs + " µs · "
                        + BtSettings.WAVES[t.tWave + 1] + (t.onMs > 0 ? " · пакет " + t.onMs + "/" + t.offMs + " ms" : "")
                        + (t.gain > 1 ? " · ×" + t.gain : ""));
                t.handler.postDelayed(this, 500);
            } else {
                t.say("no_suit".equals(r)
                        ? "Няма свързан bodytech костюм — свържи го от екрана Тренировка"
                        : "Тренировка върви на костюма — спри я, за да тестваш");
                live = false;
            }
        }
    }

    static final class Lvl implements XemsUi.OnStep {
        final BtTest t;

        Lvl(BtTest t) {
            this.t = t;
        }

        @Override
        public void onStep(int dir) {
            int step = t.level < 10 ? 1 : (t.level < 40 ? 2 : 5);
            if (dir < 0 && t.level > 1) step = Math.min(step, t.level - 1);
            t.level = Math.max(1, Math.min(BtTranslator.MAX_PCT, t.level + dir * step));
            t.redraw.run();
        }
    }

    /** − / + of the test Hz, width, burst on / off or gain: fine steps low, coarser high. */
    static final class Step implements XemsUi.OnStep {
        static final int HZ = 0, US = 1, ON = 2, OFF = 3, GAIN = 4;
        final BtTest t;
        final int what;

        Step(BtTest t, int what) {
            this.t = t;
            this.what = what;
        }

        @Override
        public void onStep(int dir) {
            if (what == HZ) {
                int h = t.tHz;
                int step = h < 20 ? 1 : (h < 100 ? 5 : (h < 300 ? 10 : (h < 1000 ? 50 : (h < 3000 ? 100 : 500))));
                if (dir < 0 && h > 1) step = h - step < 1 ? h - 1 : step;
                t.tHz = Math.max(1, Math.min(BtTranslator.TEST_HZ_MAX, h + dir * step));
                t.proto = -1;
            } else if (what == US) {
                int step = t.tUs < 500 ? 10 : 50;
                t.tUs = Math.max(BtTranslator.MIN_US, Math.min(BtTranslator.maxUsAt(t.tHz), t.tUs + step * dir));
                t.proto = -1;
            } else if (what == ON) {
                t.onMs = ms(t.onMs, dir);
                if (t.onMs > 0 && t.offMs == 0) t.offMs = t.onMs;
                t.proto = -1;
            } else if (what == OFF) {
                if (t.onMs > 0) t.offMs = ms(t.offMs, dir);
                t.proto = -1;
            } else {
                int g = Math.max(1, Math.min(BtTranslator.STEP_MAX, t.gain + dir));
                if (g > t.gain && t.level > GAIN_SAFE_LEVEL) t.level = GAIN_SAFE_LEVEL;
                t.gain = g;
            }
            t.redraw.run();
        }

        static int ms(int v, int dir) {
            int step = v < 20 ? 1 : (v < 100 ? 5 : 50);
            if (dir < 0 && v > 0 && v - step < 0) step = v;
            return Math.max(0, Math.min(BtTranslator.BURST_MAX_MS, v + dir * step));
        }
    }

    /** A chip of the test impulse: a protocol, Hz or width preset, a waveform or a level. */
    static final class Preset implements View.OnClickListener {
        static final int HZ = 0, US = 1, WAVE = 2, LEVEL = 3, PROTO = 4;
        final BtTest t;
        final int what, value;

        Preset(BtTest t, int what, int value) {
            this.t = t;
            this.what = what;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (what == HZ) {
                t.tHz = value;
                t.proto = -1;
            } else if (what == US) {
                t.tUs = value;
                t.proto = -1;
            } else if (what == LEVEL) {
                t.level = value;
            } else if (what == PROTO) {
                int[] p = PROTO_VAL[value];
                t.tHz = p[0];
                t.tUs = p[1];
                t.onMs = p[2];
                t.offMs = p[3];
                t.proto = value;
            } else {
                t.tWave = value;
            }
            t.redraw.run();
        }
    }
}
