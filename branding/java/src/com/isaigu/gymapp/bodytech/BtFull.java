package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * The row's gear on a bodytech suit → "Пълни параметри": every channel's own strength, Hz, width and waveform, separately
 * for the main and the 2nd impulse, over the suit's whole range (Hz 1–1000, width 50–511 µs, strength up to 300 % of the
 * slider, ≤ 99 % on the suit). "Без ограничения" (on) = the values rule in the training exactly as set, whatever the
 * program says; off = they can only lower the program's. "Авто" = as the program says. Saved at once in
 * {@link BtSettings}; the next command the row sends uses them.
 */
final class BtFull {
    static final int[] HZ_PRESETS = {0, 1, 10, 30, 50, 85, 150, 300, 600, 1000};
    static final int[] US_PRESETS = {0, 100, 200, 360, 450, 511};
    static final int[] GAIN_PRESETS = {0, 50, 100, 150, 200, 300};

    final Activity a;
    final XemsUi.Shell sh;
    int sel;                                 // the channel being edited

    BtFull(Activity a, String mac) {
        this.a = a;
        XemsUi.init(a);
        BtSettings.load(a);
        sel = BtSettings.channelAt(0);
        sh = XemsUi.shell(a, "Пълни параметри · bodytech", "Всеки канал — свои Hz, ширина, форма и сила", 980);
        render();
        TextView done = XemsUi.button(a, "Готово", XemsUi.PRIMARY);
        done.setOnClickListener(new Close(sh));
        sh.footer.addView(XemsUi.spacer(a));
        sh.footer.addView(done);
    }

    void show() {
        sh.dialog.show();
        XemsUi.fitHeight(a, sh, 0.94f);
    }

    void render() {
        sh.body.removeAllViews();
        sh.body.addView(XemsUi.toggleRow(a, "Без ограничения",
                "Вкл: стойностите на канала важат в тренировката точно както са зададени (Hz до 1000, ширина до 511 µs). "
                        + "Изкл: могат само да намалят стойността от програмата.",
                BtSettings.unlimited(), new Unl(this)));

        TextView lab = XemsUi.label(a, "Канал — ляво → дясно");
        lab.setPadding(0, XemsUi.dp(a, 14), 0, XemsUi.dp(a, 8));
        sh.body.addView(lab);
        LinearLayout[] holder = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, holder);
        for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
            int ch = BtSettings.channelAt(pos);
            TextView c = XemsUi.chip(a, "C" + ch + " · " + BtSettings.name(ch), ch == sel, XemsUi.ACCENT);
            c.setOnClickListener(new Pick(this, ch));
            XemsUi.addChip(a, holder[0], c);
        }
        sh.body.addView(hs);

        LinearLayout card = XemsUi.surface(a);
        card.addView(XemsUi.text(a, "C" + sel + " · " + BtSettings.name(sel) + "  →  " + BtSettings.sliderName(BtSettings.slider(sel)),
                17, XemsUi.TEXT, true));
        card.addView(XemsUi.label(a, ""));
        card.addView(field("Сила на канала (върху слайдера)", BtSettings.chGain(sel) + " %", Adj.GAIN, false,
                GAIN_PRESETS, BtSettings.chGain(sel)));

        LinearLayout cols = XemsUi.horizontal(a);
        cols.setGravity(Gravity.TOP);
        cols.addView(impulse("Основен импулс", false), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        cols.addView(impulse("Втори импулс", true), XemsUi.weight(1f, 14, a));
        card.addView(cols, XemsUi.matchWrap(a, 12));

        LinearLayout acts = XemsUi.horizontal(a);
        TextView all = XemsUi.button(a, "Копирай на всички канали", XemsUi.SECONDARY);
        all.setOnClickListener(new Act(this, Act.COPY));
        TextView clr = XemsUi.button(a, "Върни на Авто", XemsUi.SECONDARY);
        clr.setOnClickListener(new Act(this, Act.CLEAR));
        acts.addView(all);
        LinearLayout.LayoutParams cl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        cl.leftMargin = XemsUi.dp(a, 10);
        acts.addView(clr, cl);
        card.addView(acts, XemsUi.matchWrap(a, 14));
        sh.body.addView(card, XemsUi.matchWrap(a, 10));

        TextView note = XemsUi.text(a, "Изпитай стойностите първо в „Тестов режим“. Силата на костюма е най-много 99 %. "
                + "Вторият импулс се включва от настройките на програмата (двоен импулс) — тук само казваш какъв е на този канал.",
                12, XemsUi.HINT, false);
        note.setPadding(0, XemsUi.dp(a, 10), 0, 0);
        sh.body.addView(note);
    }

    /** One impulse's Hz, width and waveform of the selected channel. */
    private View impulse(String title, boolean second) {
        LinearLayout box = XemsUi.vertical(a);
        box.addView(XemsUi.text(a, title, 15, XemsUi.GO_TEXT, true));
        int h = BtSettings.chHz(sel, second);
        box.addView(field("Честота", h == 0 ? "Авто" : h + " Hz", Adj.HZ, second, HZ_PRESETS, h), XemsUi.matchWrap(a, 8));
        int u = BtSettings.chWidth(sel, second);
        box.addView(field("Ширина", u == 0 ? "Авто" : u + " µs", Adj.US, second, US_PRESETS, u), XemsUi.matchWrap(a, 8));
        LinearLayout wv = XemsUi.vertical(a);
        wv.addView(XemsUi.label(a, "Форма"));
        LinearLayout[] holder = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, holder);
        int cur = BtSettings.chWave(sel, second);
        String[] names = {"Авто", "Квадрат", "Синус", "Трапец", "Трапец 2"};
        for (int w = -1; w <= 3; w++) {
            TextView c = XemsUi.chip(a, names[w + 1], cur == w, XemsUi.ACCENT);
            c.setOnClickListener(new Preset(this, Adj.WAVE, second, w));
            XemsUi.addChip(a, holder[0], c);
        }
        wv.addView(hs);
        box.addView(wv, XemsUi.matchWrap(a, 8));
        return box;
    }

    private View field(String label, String value, int kind, boolean second, int[] presets, int cur) {
        LinearLayout f = XemsUi.vertical(a);
        f.addView(XemsUi.label(a, label));
        f.addView(XemsUi.stepper(a, value, null, 16, new Adj(this, kind, second)).view);
        LinearLayout[] holder = new LinearLayout[1];
        HorizontalScrollView hs = XemsUi.chipRow(a, holder);
        for (int i = 0; i < presets.length; i++) {
            String t = presets[i] == 0 && kind != Adj.GAIN ? "Авто" : String.valueOf(presets[i]);
            TextView c = XemsUi.chip(a, t, presets[i] == cur, XemsUi.GO_TEXT);
            c.setOnClickListener(new Preset(this, kind, second, presets[i]));
            XemsUi.addChip(a, holder[0], c);
        }
        f.addView(hs, XemsUi.matchWrap(a, 8));
        return f;
    }

    /** Hz: 0 = Авто; fine steps low, coarse high. */
    static int stepHz(int h, int dir) {
        if (h <= 0) return dir > 0 ? 1 : 0;
        int step = h < 20 ? 1 : (h < 100 ? 5 : (h < 300 ? 10 : 50));
        int n = h + dir * step;
        if (dir < 0 && n < 1) return 0;
        return Math.min(BtSettings.HZ_MAIN_MAX, n);
    }

    /** Width µs: 0 = Авто, then 50..511 in tens. */
    static int stepUs(int w, int dir) {
        if (w <= 0) return dir > 0 ? BtSettings.WIDTH_MIN : 0;
        int n = w + 10 * dir;
        if (dir < 0 && n < BtSettings.WIDTH_MIN) return 0;
        return Math.min(BtSettings.WIDTH_MAX, n);
    }

    static final class Adj implements XemsUi.OnStep {
        static final int GAIN = 0, HZ = 1, US = 2, WAVE = 3;
        final BtFull f;
        final int kind;
        final boolean second;

        Adj(BtFull f, int kind, boolean second) {
            this.f = f;
            this.kind = kind;
            this.second = second;
        }

        @Override
        public void onStep(int dir) {
            int ch = f.sel;
            if (kind == GAIN) BtSettings.setChGain(ch, BtSettings.chGain(ch) + 5 * dir);
            else if (kind == HZ) BtSettings.setChHz(ch, second, stepHz(BtSettings.chHz(ch, second), dir));
            else BtSettings.setChWidth(ch, second, stepUs(BtSettings.chWidth(ch, second), dir));
            f.render();
        }
    }

    static final class Preset implements View.OnClickListener {
        final BtFull f;
        final int kind, value;
        final boolean second;

        Preset(BtFull f, int kind, boolean second, int value) {
            this.f = f;
            this.kind = kind;
            this.second = second;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            int ch = f.sel;
            if (kind == Adj.GAIN) BtSettings.setChGain(ch, value);
            else if (kind == Adj.HZ) BtSettings.setChHz(ch, second, value);
            else if (kind == Adj.US) BtSettings.setChWidth(ch, second, value);
            else BtSettings.setChWave(ch, second, value);
            f.render();
        }
    }

    static final class Pick implements View.OnClickListener {
        final BtFull f;
        final int ch;

        Pick(BtFull f, int ch) {
            this.f = f;
            this.ch = ch;
        }

        @Override
        public void onClick(View v) {
            f.sel = ch;
            f.render();
        }
    }

    static final class Act implements View.OnClickListener {
        static final int COPY = 0, CLEAR = 1;
        final BtFull f;
        final int what;

        Act(BtFull f, int what) {
            this.f = f;
            this.what = what;
        }

        @Override
        public void onClick(View v) {
            if (what == COPY) BtSettings.copyToAll(f.sel);
            else BtSettings.clearChannel(f.sel);
            f.render();
        }
    }

    static final class Unl implements XemsUi.OnToggle {
        final BtFull f;

        Unl(BtFull f) {
            this.f = f;
        }

        @Override
        public void onToggle(boolean on) {
            BtSettings.setUnlimited(on);
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
}
