package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiSession;
import com.isaigu.gymapp.bean.PartStrenthBean;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bodytech.BtBridge;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.CommandSender;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

import java.lang.reflect.Field;
import java.util.List;

/**
 * Settings → "Тест на честоти (XEMS костюм)" (owner, 1.1.411): hold ▶ and ONE channel of an XEMS Pro suit gets the
 * impulse with a Hz / width the normal screens never send (> 120 Hz, SafeLimits does not apply here). Meant for an
 * EMPTY suit on a dummy load (~1 kΩ + oscilloscope) — no person in it.
 * <p>
 * The suit's work PDU carries Hz in ONE byte and the width as µs / 50 in one byte (CommandUtil.getWorkParamsPdu),
 * so 255 Hz is the most the protocol can say; a larger number would silently wrap (1000 → 232), so it is refused.
 * The suit has to be connected on the Train screen and the row not started. Level ≤ {@link #MAX_LEVEL} %.
 */
public final class XemsHzTest {
    static final int MAX_HZ = 255, MIN_HZ = 1, MIN_US = 50, MAX_US = 400, MAX_LEVEL = 30, CHANNELS = 10;
    static final int WORK_S = 8, RENEW_MS = 3000;
    static final int[] LEVELS = {1, 3, 5, 10, 20, 30};
    static final int[] HZ_PRESETS = {85, 120, 150, 200, 255};

    final Activity a;
    final XemsUi.Shell sh;
    final Handler handler = new Handler(Looper.getMainLooper());
    int ch = 1, level = 1, hz = 150, us = 200;
    Hold hold;
    TrainItem live;                 // the row whose suit is on now (for the stop)
    LinearLayout box;

    private XemsHzTest(Activity a) {
        this.a = a;
        XemsUi.init(a);
        sh = XemsUi.shell(a, "Тест на честоти", "XEMS костюм · празен, на товар — без човек в него", 900);
        render();
        TextView done = XemsUi.button(a, "Готово", XemsUi.PRIMARY);
        done.setOnClickListener(new Done(this));
        sh.footer.addView(XemsUi.spacer(a));
        sh.footer.addView(done);
        sh.dialog.setOnDismissListener(new Off(this));
    }

    /** Settings entry. */
    public static void open(Activity a) {
        try {
            XemsHzTest t = new XemsHzTest(a);
            t.sh.dialog.show();
            XemsUi.fitHeight(a, t.sh, 0.92f);
        } catch (Throwable t) {
            XemsGuard.report("XemsHzTest.open", t);
        }
    }

    /** The Settings card (called from BtSettingsSection). */
    public static View card(Activity a) {
        LinearLayout card = XemsUi.card(a);
        card.addView(XemsUi.text(a, "Тест на честоти (XEMS костюм)", 22, XemsUi.TEXT, true));
        TextView hint = XemsUi.text(a, "Само на празен костюм, на товар. До 255 Hz — повече протоколът не побира.", 14,
                XemsUi.MUTED, false);
        hint.setPadding(0, XemsUi.dp(a, 6), 0, XemsUi.dp(a, 12));
        card.addView(hint);
        TextView b = XemsUi.button(a, "Отвори теста", XemsUi.SECONDARY);
        b.setOnClickListener(new Open(a));
        card.addView(b, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(a, 50)));
        return card;
    }

    void render() {
        sh.body.removeAllViews();
        TextView warn = XemsUi.text(a, "⚠ Без човек в костюма. Първо 1 %, на резистор ~1 kΩ с осцилоскоп. "
                + "Костюмът се свързва от екрана Тренировка (редът не е стартиран).", 14, XemsUi.TEXT, true);
        sh.body.addView(warn, XemsUi.matchWrap(a, 0));

        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(android.view.Gravity.CENTER_VERTICAL);
        row.addView(col("Честота", XemsUi.stepper(a, hz + " Hz", null, 20, new HzStep(this)).view));
        row.addView(col("Ширина", XemsUi.stepper(a, us + " µs", null, 20, new UsStep(this)).view));
        row.addView(col("Ниво", XemsUi.stepper(a, level + " %", null, 20, new LvStep(this)).view));
        sh.body.addView(row, XemsUi.matchWrap(a, 12));

        sh.body.addView(chips("Честоти", HZ_PRESETS, hz, "Hz", 0), XemsUi.matchWrap(a, 10));
        sh.body.addView(chips("Ниво", LEVELS, level, "%", 1), XemsUi.matchWrap(a, 6));
        int[] chs = new int[CHANNELS];
        for (int i = 0; i < CHANNELS; i++) chs[i] = i + 1;
        sh.body.addView(chips("Канал", chs, ch, "", 2), XemsUi.matchWrap(a, 6));

        TextView go = XemsUi.button(a, "▶  Дръж за ток на канал " + ch, XemsUi.PRIMARY);
        go.setOnTouchListener(new Touch(this));
        sh.body.addView(go, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(a, 64)));
        box = XemsUi.vertical(a);
        sh.body.addView(box, XemsUi.matchWrap(a, 12));
    }

    View col(String label, View v) {
        LinearLayout c = XemsUi.vertical(a);
        c.addView(XemsUi.label(a, label));
        c.addView(v);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.rightMargin = XemsUi.dp(a, 10);
        LinearLayout w = XemsUi.vertical(a);
        w.addView(c);
        w.setLayoutParams(lp);
        return w;
    }

    View chips(String label, int[] values, int sel, String unit, int kind) {
        LinearLayout c = XemsUi.vertical(a);
        c.addView(XemsUi.label(a, label));
        LinearLayout[] h = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, h);
        for (int i = 0; i < values.length; i++) {
            TextView t = XemsUi.chip(a, values[i] + (unit.length() > 0 ? " " + unit : ""), values[i] == sel,
                    XemsUi.ACCENT);
            t.setOnClickListener(new Chip(this, kind, values[i]));
            XemsUi.addChip(a, h[0], t);
        }
        c.addView(hs);
        return c;
    }

    void say(String s) {
        box.removeAllViews();
        box.addView(XemsUi.text(a, s, 14, XemsUi.TEXT, false));
    }

    /** The first connected, not started, non-bodytech row. */
    static TrainItem pick() {
        TrainItemManager m = AiSession.manager();
        List<TrainItem> list = m != null ? m.getItemList() : null;
        if (list == null) return null;
        for (int i = 0; i < list.size(); i++) {
            TrainItem it = list.get(i);
            if (it == null || it.isEmpty() || it.data == null || !it.data.connected) continue;
            if (BtBridge.isBodytechMac(it.data.macAddress)) continue;
            return it;
        }
        return null;
    }

    static CommandSender senderOf(TrainItem it) throws Exception {
        Field f = TrainItem.class.getDeclaredField("sender");
        f.setAccessible(true);
        return (CommandSender) f.get(it);
    }

    /** One send: the program with this Hz / µs / level on one channel only. */
    String send(boolean first) {
        TrainItem it = pick();
        if (it == null) return "Няма свързан XEMS костюм — свържи го от екрана Тренировка";
        if (it.data.start) return "Редът върви — спри тренировката, за да тестваш";
        try {
            CommandSender s = senderOf(it);
            if (s == null) return "Костюмът още не е готов";
            ProgramDataBean b = new ProgramDataBean();
            b.hz = hz;
            b.pulseWidth = us;
            b.strenth = level;
            b.pulseContinue = 5;
            b.pulsePause = 0;
            b.workLength = WORK_S;
            PartStrenthBean sb = new PartStrenthBean();
            sb.buwei = new int[CHANNELS];
            sb.buwei[ch - 1] = 100;
            b.strenthBean = sb;
            if (first) s.sendStart();
            s.sendDuration(b, new boolean[CHANNELS], WORK_S);
            live = it;
            return null;
        } catch (Throwable t) {
            XemsGuard.report("XemsHzTest.send", t);
            return "Грешка: " + t;
        }
    }

    void stop() {
        if (hold != null) {
            hold.live = false;
            handler.removeCallbacks(hold);
            hold = null;
        }
        TrainItem it = live;
        live = null;
        if (it != null) {
            try {
                CommandSender s = senderOf(it);
                if (s != null) s.sendStop();
            } catch (Throwable t) {
                XemsGuard.report("XemsHzTest.stop", t);
            }
        }
    }

    static final class Hold implements Runnable {
        final XemsHzTest t;
        boolean live = true, first = true;

        Hold(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public void run() {
            if (!live) return;
            String err = t.send(first);
            first = false;
            if (err == null) {
                t.say("Канал " + t.ch + " · " + t.hz + " Hz · " + t.us + " µs · " + t.level + " %  (на жицата: "
                        + (t.hz & 0xFF) + " Hz, " + (t.us / 50) * 50 + " µs)");
                t.handler.postDelayed(this, RENEW_MS);
            } else {
                t.say(err);
                live = false;
            }
        }
    }

    static final class Touch implements View.OnTouchListener {
        final XemsHzTest t;

        Touch(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            int act = e.getActionMasked();
            if (act == MotionEvent.ACTION_DOWN) {
                v.setPressed(true);
                XemsUi.haptic(v);
                t.stop();
                t.hold = new Hold(t);
                t.hold.run();
            } else if (act == MotionEvent.ACTION_UP || act == MotionEvent.ACTION_CANCEL) {
                v.setPressed(false);
                t.stop();
                t.say("Спряно");
            }
            return true;
        }
    }

    static final class HzStep implements XemsUi.OnStep {
        final XemsHzTest t;

        HzStep(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public void onStep(int dir) {
            int step = t.hz < 40 ? 1 : (t.hz < 130 ? 5 : 10);
            t.hz = Math.max(MIN_HZ, Math.min(MAX_HZ, t.hz + dir * step));
            t.redraw();
        }
    }

    static final class UsStep implements XemsUi.OnStep {
        final XemsHzTest t;

        UsStep(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public void onStep(int dir) {
            t.us = Math.max(MIN_US, Math.min(MAX_US, t.us + dir * 50));
            t.redraw();
        }
    }

    static final class LvStep implements XemsUi.OnStep {
        final XemsHzTest t;

        LvStep(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public void onStep(int dir) {
            t.level = Math.max(1, Math.min(MAX_LEVEL, t.level + dir * (t.level < 10 ? 1 : 2)));
            t.redraw();
        }
    }

    /** Redraw without losing a held ▶ (steps are for a stopped test). */
    void redraw() {
        stop();
        render();
    }

    static final class Chip implements View.OnClickListener {
        final XemsHzTest t;
        final int kind, value;

        Chip(XemsHzTest t, int kind, int value) {
            this.t = t;
            this.kind = kind;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (kind == 0) t.hz = value;
            else if (kind == 1) t.level = value;
            else t.ch = value;
            t.redraw();
        }
    }

    static final class Open implements View.OnClickListener {
        final Activity a;

        Open(Activity a) {
            this.a = a;
        }

        @Override
        public void onClick(View v) {
            XemsHzTest.open(a);
        }
    }

    static final class Done implements View.OnClickListener {
        final XemsHzTest t;

        Done(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public void onClick(View v) {
            t.stop();
            t.sh.dialog.dismiss();
        }
    }

    static final class Off implements android.content.DialogInterface.OnDismissListener {
        final XemsHzTest t;

        Off(XemsHzTest t) {
            this.t = t;
        }

        @Override
        public void onDismiss(android.content.DialogInterface d) {
            t.stop();
        }
    }
}
