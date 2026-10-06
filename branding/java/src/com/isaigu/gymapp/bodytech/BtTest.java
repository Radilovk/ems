package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * Feel a channel in Settings → Костюм bodytech: hold ▶ on a channel and the plain EMS impulse (85 Hz, 360 µs) runs
 * on it at the chosen level ({@link BtBridge#test}) — to find which electrode is which. The protocol test (plain /
 * Australian / Russian, free Hz, width, bursts, STEP_NOR) and the gear's test mode are gone (owner, 1.1.372).
 */
final class BtTest {
    static final int[] LEVEL_PRESETS = {1, 3, 5, 10, 20, 30};

    final Activity a;
    /** The suit to test (MAC); null = the first connected bodytech suit. */
    final String mac;
    final XemsUi.Shell sh;
    final Runnable redraw;
    final Handler handler = new Handler(Looper.getMainLooper());
    int level = 3;                         // %, 1..99
    final int tHz = 85, tUs = 360, tWave = -1;
    Hold hold;

    BtTest(Activity a, String mac, XemsUi.Shell sh, Runnable redraw) {
        this.a = a;
        this.mac = mac;
        this.sh = sh;
        this.redraw = redraw;
    }

    /** What ▶ does and the level it uses. */
    View panel() {
        LinearLayout box = XemsUi.surface(a);
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(android.view.Gravity.CENTER_VERTICAL);
        LinearLayout txt = XemsUi.vertical(a);
        txt.addView(XemsUi.text(a, "Дръж ▶ на канал — усещаш го", 15, XemsUi.TEXT, true));
        txt.addView(XemsUi.text(a, "Обикновен импулс 85 Hz. Така намираш кой електрод е кой. Костюмът се свързва от "
                + "екрана Тренировка.", 12, XemsUi.HINT, false));
        row.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout lv = XemsUi.vertical(a);
        lv.addView(XemsUi.label(a, "Ниво"));
        lv.addView(XemsUi.stepper(a, level + " %", null, 16, new Lvl(this)).view);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = XemsUi.dp(a, 12);
        row.addView(lv, lp);
        box.addView(row);
        LinearLayout[] lh = new LinearLayout[1];
        android.widget.HorizontalScrollView ls = XemsUi.chipRow(a, lh);
        for (int i = 0; i < LEVEL_PRESETS.length; i++) {
            TextView c = XemsUi.chip(a, LEVEL_PRESETS[i] + " %", LEVEL_PRESETS[i] == level, XemsUi.ACCENT);
            c.setOnClickListener(new Preset(this, LEVEL_PRESETS[i]));
            XemsUi.addChip(a, lh[0], c);
        }
        box.addView(ls, XemsUi.matchWrap(a, 8));
        return box;
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
            String r = BtBridge.test(t.mac, ch, t.level, t.tHz, t.tUs, t.tWave, 0, 0, 1, true);
            if ("ok".equals(r)) {
                t.say(BtSettings.name(ch) + " · " + t.level + " %");
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

    /** A level chip. */
    static final class Preset implements View.OnClickListener {
        final BtTest t;
        final int value;

        Preset(BtTest t, int value) {
            this.t = t;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            t.level = value;
            t.redraw.run();
        }
    }
}
