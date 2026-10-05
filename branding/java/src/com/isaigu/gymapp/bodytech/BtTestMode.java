package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The row's gear on a bodytech suit → "Тестов режим": a screen of its own, apart from the training, to try the
 * impulse (Hz 1–1000, width 50–511 µs, waveform, level) on every channel of THIS row's suit. Hold ▶ on a channel
 * and feel it; nothing is saved into the program. Refused while a training runs on the suit.
 */
final class BtTestMode {
    final Activity a;
    final XemsUi.Shell sh;
    final BtTest test;

    BtTestMode(Activity a, String mac) {
        this.a = a;
        XemsUi.init(a);
        String tail = mac != null && mac.length() >= 8 ? mac.substring(mac.length() - 8) : "";
        sh = XemsUi.shell(a, "Тестов режим · bodytech", tail.length() > 0 ? "Костюм …" + tail : null, 980);
        test = new BtTest(a, mac, sh, new Redraw(this));
        render();
        TextView close = XemsUi.button(a, "Затвори", XemsUi.PRIMARY);
        close.setOnClickListener(new Close(sh));
        sh.footer.addView(XemsUi.spacer(a));
        sh.footer.addView(close);
        sh.dialog.setOnDismissListener(new Stop(test));
    }

    void show() {
        sh.dialog.show();
        XemsUi.fitHeight(a, sh, 0.94f);
    }

    void render() {
        sh.body.removeAllViews();
        sh.body.addView(test.panel(), XemsUi.matchWrap(a, 0));
        TextView lab = XemsUi.label(a, "Канали — ляво → дясно (дръж ▶)");
        lab.setPadding(0, XemsUi.dp(a, 14), 0, XemsUi.dp(a, 8));
        sh.body.addView(lab);
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.TOP);
        for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
            int ch = BtSettings.channelAt(pos);
            LinearLayout cell = XemsUi.surface(a);
            cell.setGravity(Gravity.CENTER_HORIZONTAL);
            cell.addView(XemsUi.badge(a, "C" + ch, XemsUi.GO_TEXT));
            TextView name = XemsUi.text(a, BtSettings.name(ch), 14, XemsUi.TEXT, true);
            name.setGravity(Gravity.CENTER);
            name.setSingleLine(true);
            name.setPadding(0, XemsUi.dp(a, 8), 0, 0);
            cell.addView(name);
            TextView sl = XemsUi.text(a, BtSettings.sliderName(BtSettings.slider(ch)), 12, XemsUi.MUTED, false);
            sl.setGravity(Gravity.CENTER);
            sl.setSingleLine(true);
            cell.addView(sl);
            TextView play = XemsUi.iconButton(a, "▶", XemsUi.GO, 0xFFFFFFFF, 56);
            play.setOnTouchListener(test.touch(ch));
            LinearLayout.LayoutParams pl = new LinearLayout.LayoutParams(XemsUi.dp(a, 56), XemsUi.dp(a, 56));
            pl.topMargin = XemsUi.dp(a, 10);
            cell.addView(play, pl);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (pos > 0) lp.leftMargin = XemsUi.dp(a, 6);
            row.addView(cell, lp);
        }
        sh.body.addView(row);
    }

    static final class Redraw implements Runnable {
        final BtTestMode m;

        Redraw(BtTestMode m) {
            this.m = m;
        }

        @Override
        public void run() {
            m.render();
        }
    }

    static final class Close implements View.OnClickListener {
        final XemsUi.Shell sh;

        Close(XemsUi.Shell sh) {
            this.sh = sh;
        }

        @Override
        public void onClick(View v) {
            try {
                sh.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Stop implements DialogInterface.OnDismissListener {
        final BtTest t;

        Stop(BtTest t) {
            this.t = t;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            t.stop();
        }
    }
}
