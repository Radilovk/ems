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
 * The impulse test: Hz 1..1000, width 50..511 µs, waveform and level, felt with a ▶ held on a channel
 * ({@link BtBridge#test}). Shared by Settings → Костюм bodytech (any connected bodytech suit) and the row's gear
 * test mode ({@link BtTestMode}, that row's suit). The level is held to {@link BtTranslator#testCap}.
 */
final class BtTest {
    static final int[] HZ_PRESETS = {1, 10, 30, 50, 85, 120, 200, 400, 700, 1000};
    static final int[] US_PRESETS = {50, 100, 200, 360, 450, 511};

    final Activity a;
    /** The suit to test (MAC); null = the first connected bodytech suit. */
    final String mac;
    final XemsUi.Shell sh;
    final Runnable redraw;
    final Handler handler = new Handler(Looper.getMainLooper());
    int level = 3;                         // %, 1..cap (99 at most)
    boolean free = true;                   // no charge cap by default (the owner can switch it on)
    static final int[] LEVEL_PRESETS = {1, 3, 5, 10, 20, 30, 50, 70, 99};
    int tHz = 85, tUs = 360, tWave = -1;   // the test impulse
    Hold hold;

    BtTest(Activity a, String mac, XemsUi.Shell sh, Runnable redraw) {
        this.a = a;
        this.mac = mac;
        this.sh = sh;
        this.redraw = redraw;
    }

    /** The settings panel: Hz, width, waveform, level. */
    View panel() {
        LinearLayout box = XemsUi.surface(a);
        box.addView(XemsUi.text(a, "Тест на импулс — дръж ▶ на канал", 16, XemsUi.TEXT, true));
        TextView hint = XemsUi.text(a, "Усещаш как се променят честотата, ширината и формата върху мускула. Само за "
                + "проба: тренировката остава в границите на програмата. Костюмът трябва да е свързан от екрана "
                + "Тренировка. Започни от най-ниското ниво.", 12, XemsUi.HINT, false);
        hint.setPadding(0, XemsUi.dp(a, 4), 0, XemsUi.dp(a, 10));
        box.addView(hint);

        int cap = BtTranslator.testCap(tHz, tUs, free);
        if (level > cap) level = cap;
        LinearLayout r1 = XemsUi.horizontal(a);
        r1.setGravity(Gravity.TOP);
        r1.addView(field("Честота", tHz + " Hz", new Step(this, Step.HZ), HZ_PRESETS, tHz, Preset.HZ),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        r1.addView(field("Ширина", tUs + " µs", new Step(this, Step.US), US_PRESETS, tUs, Preset.US),
                XemsUi.weight(1f, 12, a));
        box.addView(r1);

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
        lv.addView(XemsUi.label(a, "Ниво (най-много " + cap + " %)"));
        lv.addView(XemsUi.stepper(a, level + " %", null, 16, new Lvl(this)).view);
        LinearLayout[] lh = new LinearLayout[1];
        HorizontalScrollView ls = XemsUi.chipRow(a, lh);
        for (int i = 0; i < LEVEL_PRESETS.length; i++) {
            if (LEVEL_PRESETS[i] > cap) break;
            TextView c = XemsUi.chip(a, LEVEL_PRESETS[i] + "", LEVEL_PRESETS[i] == level, XemsUi.ACCENT);
            c.setOnClickListener(new Preset(this, Preset.LEVEL, LEVEL_PRESETS[i]));
            XemsUi.addChip(a, lh[0], c);
        }
        lv.addView(ls, XemsUi.matchWrap(a, 8));
        r2.addView(lv, XemsUi.weight(1f, 12, a));
        box.addView(r2, XemsUi.matchWrap(a, 10));

        TextView cp = XemsUi.chip(a, free ? "Таван по заряд: изключен" : "Таван по заряд: включен", !free, XemsUi.GO_TEXT);
        cp.setOnClickListener(new Preset(this, Preset.FREE, free ? 0 : 1));
        LinearLayout.LayoutParams cl = XemsUi.matchWrap(a, 10);
        cl.width = ViewGroup.LayoutParams.WRAP_CONTENT;
        box.addView(cp, cl);
        TextView cn = XemsUi.text(a, "Изключен: нивото е до 99 % при всякакви Hz и ширина. Включен: при високи Hz и широки "
                + "импулси таванът на нивото е по-нисък (пази кожата).", 12, XemsUi.HINT, false);
        cn.setPadding(0, XemsUi.dp(a, 6), 0, 0);
        box.addView(cn);
        return box;
    }

    private View field(String label, String value, XemsUi.OnStep cb, int[] presets, int cur, int kind) {
        LinearLayout f = XemsUi.vertical(a);
        f.addView(XemsUi.label(a, label));
        f.addView(XemsUi.stepper(a, value, null, 16, cb).view);
        LinearLayout[] holder = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, holder);
        for (int i = 0; i < presets.length; i++) {
            TextView c = XemsUi.chip(a, String.valueOf(presets[i]), presets[i] == cur, XemsUi.GO_TEXT);
            c.setOnClickListener(new Preset(this, kind, presets[i]));
            XemsUi.addChip(a, holder[0], c);
        }
        f.addView(hs, XemsUi.matchWrap(a, 8));
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
        BtBridge.test(mac, 0, 0, 0, 0, -1, false, false);
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
            String r = BtBridge.test(t.mac, ch, t.level, t.tHz, t.tUs, t.tWave, t.free, true);
            if ("ok".equals(r)) {
                t.say(BtSettings.name(ch) + " · " + t.level + " % · " + t.tHz + " Hz · " + t.tUs + " µs · "
                        + BtSettings.WAVES[t.tWave + 1]);
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
            t.level = Math.max(1, Math.min(BtTranslator.testCap(t.tHz, t.tUs, t.free), t.level + dir * step));
            t.redraw.run();
        }
    }

    /** − / + of the test Hz or width: fine steps low, coarser high. */
    static final class Step implements XemsUi.OnStep {
        static final int HZ = 0, US = 1;
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
                int step = h < 20 ? 1 : (h < 100 ? 5 : (h < 300 ? 10 : 50));
                if (dir < 0 && h > 1) step = h - step < 1 ? h - 1 : step;
                t.tHz = Math.max(1, Math.min(BtTranslator.TEST_HZ_MAX, h + dir * step));
            } else {
                t.tUs = Math.max(BtTranslator.MIN_US, Math.min(BtTranslator.MAX_US, t.tUs + 10 * dir));
            }
            t.redraw.run();
        }
    }

    /** A chip of the test impulse: a Hz or width preset, or a waveform. */
    static final class Preset implements View.OnClickListener {
        static final int HZ = 0, US = 1, WAVE = 2, LEVEL = 3, FREE = 4;
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
            if (what == HZ) t.tHz = value;
            else if (what == US) t.tUs = value;
            else if (what == LEVEL) t.level = value;
            else if (what == FREE) t.free = value == 1;
            else t.tWave = value;
            t.redraw.run();
        }
    }
}
