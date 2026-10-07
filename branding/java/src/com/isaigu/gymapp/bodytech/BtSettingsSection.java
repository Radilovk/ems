package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * Settings → "Костюм bodytech": which XEMS slider (muscle) drives each channel C1..C8 of a bodytech suit, which
 * impulse it works in when the double impulse is on, the impulse waveform and a strength scale. Landscape sheet:
 * the eight channels in two columns. Hooked after the Band section in SettingFragment.onCreateView
 * (scripts/apply-bodytech.py). Every change is saved at once ({@link BtSettings}) and used by the next command
 * the row sends — no restart, nothing to apply.
 */
public final class BtSettingsSection {
    private static final String TAG = "xems_bodytech_settings";

    private BtSettingsSection() {}

    public static void attach(Activity activity, View root) {
        try {
            build(activity, root);
        } catch (Throwable t) {
            XemsGuard.report("BtSettingsSection.attach", t);
        }
    }

    private static void build(Activity a, View root) {
        if (a == null || !(root instanceof ViewGroup)) return;
        BtSettings.load(a);
        ViewGroup parent = XemsUi.scrollContent(a, root);
        if (parent == null) return;
        View old = parent.findViewWithTag(TAG);
        if (old != null && old.getParent() instanceof ViewGroup) ((ViewGroup) old.getParent()).removeView(old);
        XemsUi.init(a);

        LinearLayout card = XemsUi.card(a);
        card.setTag(TAG);
        card.addView(XemsUi.text(a, "Костюм bodytech", 22, XemsUi.TEXT, true));
        TextView hint = XemsUi.text(a, "Само ако работиш с bodytech костюм: кой слайдер управлява кой канал.", 14,
                XemsUi.MUTED, false);
        hint.setPadding(0, XemsUi.dp(a, 6), 0, XemsUi.dp(a, 12));
        card.addView(hint);
        TextView open = XemsUi.button(a, "Настрой каналите", XemsUi.SECONDARY);
        open.setOnClickListener(new Open(a));
        card.addView(open, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                XemsUi.dp(a, 50)));
        parent.addView(card, XemsUi.matchWrap(a, 28));
    }

    static final class Open implements View.OnClickListener {
        final Activity a;

        Open(Activity a) {
            this.a = a;
        }

        @Override
        public void onClick(View v) {
            try {
                new Sheet(a).show();
            } catch (Throwable t) {
                XemsGuard.report("BtSettingsSection.open", t);
            }
        }
    }

    /** The sheet. */
    static final class Sheet {
        final Activity a;
        final XemsUi.Shell sh;
        final boolean[] open = new boolean[BtSettings.CHANNELS + 1];
        final BtTest test;

        Sheet(Activity a) {
            this.a = a;
            XemsUi.init(a);
            sh = XemsUi.shell(a, "Костюм bodytech", "Канал на bodytech → канал на XEMS", 980);
            test = new BtTest(a, null, sh, new Redraw(this));
            render();
            TextView reset = XemsUi.button(a, "По подразбиране", XemsUi.SECONDARY);
            reset.setOnClickListener(new Reset(this));
            TextView done = XemsUi.button(a, "Готово", XemsUi.PRIMARY);
            done.setOnClickListener(new Done(sh));
            TextView sort = XemsUi.button(a, "Подреди ляво → дясно", XemsUi.SECONDARY);
            sort.setOnClickListener(new Sort(this));
            sh.footer.addView(reset);
            LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            sp.leftMargin = XemsUi.dp(a, 10);
            sh.footer.addView(sort, sp);
            sh.dialog.setOnDismissListener(new Stop(this));
            sh.footer.addView(XemsUi.spacer(a));
            sh.footer.addView(done);
        }

        void stopHold() {
            test.stop();
        }

        void show() {
            sh.dialog.show();
            XemsUi.fitHeight(a, sh, 0.92f);
        }

        /** Redraw from the saved values (after any change that moves a chip). */
        void render() {
            sh.body.removeAllViews();
            sh.body.addView(test.panel(), XemsUi.matchWrap(a, 0));
            LinearLayout legs = XemsUi.horizontal(a);
            legs.setGravity(Gravity.TOP);
            legs.addView(leg(false), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            legs.addView(leg(true), XemsUi.weight(1f, 12, a));
            sh.body.addView(legs, XemsUi.matchWrap(a, 12));
            LinearLayout cols = XemsUi.horizontal(a);
            cols.setGravity(Gravity.TOP);
            LinearLayout left = XemsUi.vertical(a);
            LinearLayout right = XemsUi.vertical(a);
            for (int pos = 0; pos < BtSettings.CHANNELS; pos++) {
                LinearLayout col = pos < 4 ? left : right;
                col.addView(channel(BtSettings.channelAt(pos)), XemsUi.matchWrap(a, pos == 0 || pos == 4 ? 0 : 10));
            }
            cols.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            cols.addView(right, XemsUi.weight(1f, 12, a));
            sh.body.addView(cols);

            LinearLayout extra = XemsUi.horizontal(a);
            extra.setGravity(Gravity.TOP);
            LinearLayout wave = XemsUi.vertical(a);
            wave.addView(XemsUi.label(a, "Форма на импулса"));
            LinearLayout[] holder = new LinearLayout[1];
            HorizontalScrollView hs = XemsUi.chipRow(a, holder);
            for (int w = -1; w <= 3; w++) {
                TextView c = XemsUi.chip(a, BtSettings.WAVES[w + 1], BtSettings.wave() == w, XemsUi.ACCENT);
                c.setOnClickListener(new Pick(this, Pick.WAVE, 0, w));
                XemsUi.addChip(a, holder[0], c);
            }
            wave.addView(hs);
            LinearLayout gain = XemsUi.vertical(a);
            gain.addView(XemsUi.label(a, "Сила (всички канали)"));
            XemsUi.Stepper st = XemsUi.stepper(a, BtSettings.gain() + " %", "от силата на слайдера", 20,
                    new Gain(this));
            gain.addView(st.view);
            extra.addView(wave, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            extra.addView(gain, XemsUi.weight(1f, 12, a));
            sh.body.addView(extra, XemsUi.matchWrap(a, 16));
            sh.body.addView(XemsUi.toggleRow(a, "Разделени импулси",
                    "Вкл: каналите бият по ред, всеки на свое място в периода — утечката към съседите е слаба и равна "
                            + "към двата електрода. Изкл: бият заедно — утечката отива силно към един електрод. "
                            + "Всички канали тогава са на една честота.",
                    BtSettings.slots(), new Slots()), XemsUi.matchWrap(a, 16));
        }

        /**
         * «Ляв крак» / «Десен крак» (owner, 1.1.386): which channel of the suit is this leg — one tap on C1..C8. The leg
         * (its slider, name and own values) moves to the picked channel, what that channel was moves to the old one
         * ({@link BtSettings#setLegChannel}). Hold ▶ to feel the leg's channel.
         */
        View leg(boolean right) {
            LinearLayout s = XemsUi.surface(a);
            int cur = BtSettings.legChannel(right);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            head.addView(XemsUi.text(a, right ? "Дясно бедро" : "Ляво бедро", 17, XemsUi.TEXT, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            int xs = BtSettings.slider(cur);
            head.addView(XemsUi.text(a, "C" + cur + " → " + BtSettings.sliderName(xs), 14,
                    xs < 0 ? XemsUi.HINT : XemsUi.GO_TEXT, true));
            if (cur != 0) {
                TextView play = XemsUi.iconButton(a, "▶", XemsUi.GO, 0xFFFFFFFF, 34);
                play.setOnTouchListener(test.touch(cur));
                LinearLayout.LayoutParams ml = new LinearLayout.LayoutParams(XemsUi.dp(a, 34), XemsUi.dp(a, 34));
                ml.leftMargin = XemsUi.dp(a, 10);
                head.addView(play, ml);
            }
            s.addView(head);
            LinearLayout[] holder = new LinearLayout[1];
            HorizontalScrollView hs = XemsUi.chipRow(a, holder);
            for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
                TextView c = XemsUi.chip(a, "C" + ch, ch == cur, XemsUi.GO_TEXT);
                c.setOnClickListener(new Leg(this, right, ch));
                XemsUi.addChip(a, holder[0], c);
            }
            s.addView(hs, XemsUi.matchWrap(a, 10));
            return s;
        }

        View channel(int ch) {
            LinearLayout s = XemsUi.surface(a);
            LinearLayout head = XemsUi.horizontal(a);
            head.addView(XemsUi.badge(a, "C" + ch, XemsUi.GO_TEXT));
            EditText name = new EditText(a);
            name.setText(BtSettings.name(ch).equals("C" + ch) ? "" : BtSettings.name(ch));
            name.setHint("Име на канала");
            name.setSingleLine(true);
            name.setInputType(InputType.TYPE_CLASS_TEXT);
            name.setTextSize(16);
            name.setTextColor(XemsUi.TEXT);
            name.setHintTextColor(XemsUi.HINT);
            name.setBackgroundDrawable(null);
            name.setPadding(XemsUi.dp(a, 12), 0, 0, 0);
            name.addTextChangedListener(new Name(ch));
            head.addView(name, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            int pos = BtSettings.positionOf(ch);
            TextView up = XemsUi.iconButton(a, "▲", XemsUi.SURFACE, pos > 0 ? XemsUi.TEXT : XemsUi.HINT, 34);
            up.setOnClickListener(new Move(this, ch, -1));
            TextView down = XemsUi.iconButton(a, "▼", XemsUi.SURFACE,
                    pos < BtSettings.CHANNELS - 1 ? XemsUi.TEXT : XemsUi.HINT, 34);
            down.setOnClickListener(new Move(this, ch, +1));
            LinearLayout.LayoutParams ml = new LinearLayout.LayoutParams(XemsUi.dp(a, 34), XemsUi.dp(a, 34));
            ml.leftMargin = XemsUi.dp(a, 6);
            head.addView(up, ml);
            head.addView(down, ml);
            TextView play = XemsUi.iconButton(a, "▶", XemsUi.GO, 0xFFFFFFFF, 34);
            play.setOnTouchListener(test.touch(ch));
            head.addView(play, ml);
            s.addView(head);

            LinearLayout.LayoutParams gap = XemsUi.matchWrap(a, 10);
            LinearLayout[] holder = new LinearLayout[1];
            HorizontalScrollView hs = XemsUi.chipRow(a, holder);
            for (int k = -1; k < BtSettings.ROW_ORDER.length; k++) {
                int i = k < 0 ? -1 : BtSettings.ROW_ORDER[k];       // the row's order, left to right
                // all ten XEMS channels, chest and calf too (owner, 1.1.388)
                TextView c = XemsUi.chip(a, BtSettings.sliderName(i), BtSettings.slider(ch) == i, XemsUi.GO_TEXT);
                c.setOnClickListener(new Pick(this, Pick.SLIDER, ch, i));
                XemsUi.addChip(a, holder[0], c);
            }
            s.addView(hs, gap);
            TextView in = XemsUi.label(a, "Работи в импулс");
            in.setPadding(0, XemsUi.dp(a, 10), 0, XemsUi.dp(a, 6));
            s.addView(in);
            s.addView(XemsUi.segmented(a, BtSettings.GROUPS, BtSettings.group(ch), new Group(this, ch)));

            TextView more = XemsUi.chip(a, open[ch] ? "Параметри ▴" : "Параметри ▾", open[ch], XemsUi.ACCENT);
            more.setOnClickListener(new Toggle(this, ch));
            LinearLayout.LayoutParams mp = XemsUi.matchWrap(a, 10);
            mp.width = ViewGroup.LayoutParams.WRAP_CONTENT;
            s.addView(more, mp);
            if (open[ch]) s.addView(params(ch), XemsUi.matchWrap(a, 8));
            return s;
        }

        /** The channel's own strength, width and Hz — 2 × 2 steppers. */
        View params(int ch) {
            LinearLayout box = XemsUi.vertical(a);
            LinearLayout r1 = XemsUi.horizontal(a);
            r1.setGravity(Gravity.TOP);
            r1.addView(field("Сила", String.valueOf(BtSettings.chGain(ch)) + " %", new Param(this, ch, Param.GAIN)),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            int w = BtSettings.chWidth(ch);
            r1.addView(field("Ширина", w == 0 ? "Авто" : w + " µs", new Param(this, ch, Param.WIDTH)),
                    XemsUi.weight(1f, 8, a));
            box.addView(r1);
            LinearLayout r2 = XemsUi.horizontal(a);
            r2.setGravity(Gravity.TOP);
            int hm = BtSettings.chHz(ch, false);
            int hs = BtSettings.chHz(ch, true);
            r2.addView(field("Hz основен", hm == 0 ? "Авто" : hm + " Hz", new Param(this, ch, Param.HZ_MAIN)),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            r2.addView(field("Hz втори", hs == 0 ? "Авто" : hs + " Hz", new Param(this, ch, Param.HZ_SECOND)),
                    XemsUi.weight(1f, 8, a));
            box.addView(r2, XemsUi.matchWrap(a, 8));
            TextView note = XemsUi.text(a, "Авто = както в програмата. Пълните параметри (отделно за втория импулс, форма, без ограничения) — от зъбчатото колело на реда.",
                    12, XemsUi.HINT, false);
            note.setPadding(0, XemsUi.dp(a, 8), 0, 0);
            box.addView(note);
            return box;
        }

        View field(String label, String value, XemsUi.OnStep cb) {
            LinearLayout f = XemsUi.vertical(a);
            f.addView(XemsUi.label(a, label));
            f.addView(XemsUi.stepper(a, value, null, 16, cb).view);
            return f;
        }
    }

    /** ▲ / ▼: the channel one place up / down in the sheet. */
    static final class Move implements View.OnClickListener {
        final Sheet sheet;
        final int ch, dir;

        Move(Sheet sheet, int ch, int dir) {
            this.sheet = sheet;
            this.ch = ch;
            this.dir = dir;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            BtSettings.move(ch, dir);
            sheet.render();
        }
    }

    static final class Toggle implements View.OnClickListener {
        final Sheet sheet;
        final int ch;

        Toggle(Sheet sheet, int ch) {
            this.sheet = sheet;
            this.ch = ch;
        }

        @Override
        public void onClick(View v) {
            sheet.open[ch] = !sheet.open[ch];
            sheet.render();
        }
    }

    /** − / + of one channel parameter. Width and Hz: 0 = "Авто" (the program's). */
    static final class Param implements XemsUi.OnStep {
        static final int GAIN = 0, WIDTH = 1, HZ_MAIN = 2, HZ_SECOND = 3;
        final Sheet sheet;
        final int ch, what;

        Param(Sheet sheet, int ch, int what) {
            this.sheet = sheet;
            this.ch = ch;
            this.what = what;
        }

        @Override
        public void onStep(int dir) {
            if (what == GAIN) {
                BtSettings.setChGain(ch, BtSettings.chGain(ch) + 5 * dir);
            } else if (what == WIDTH) {
                BtSettings.setChWidth(ch, BtFull.stepUs(BtSettings.chWidth(ch), dir));
            } else {
                boolean second = what == HZ_SECOND;
                BtSettings.setChHz(ch, second, BtFull.stepHz(BtSettings.chHz(ch, second), dir));
            }
            sheet.render();
        }
    }

    static final class Redraw implements Runnable {
        final Sheet sheet;

        Redraw(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void run() {
            sheet.render();
        }
    }

    static final class Sort implements View.OnClickListener {
        final Sheet sheet;

        Sort(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void onClick(View v) {
            BtSettings.sortLeftToRight();
            sheet.render();
        }
    }

    static final class Stop implements android.content.DialogInterface.OnDismissListener {
        final Sheet sheet;

        Stop(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void onDismiss(android.content.DialogInterface d) {
            sheet.stopHold();
        }
    }

    static final class Name implements TextWatcher {
        final int ch;

        Name(int ch) {
            this.ch = ch;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int st, int c, int af) {}

        @Override
        public void onTextChanged(CharSequence s, int st, int b, int c) {}

        @Override
        public void afterTextChanged(Editable e) {
            BtSettings.setName(ch, e.toString());
        }
    }

    /** A chip: a channel's slider or the waveform. */
    static final class Pick implements View.OnClickListener {
        static final int SLIDER = 0, WAVE = 1;
        final Sheet sheet;
        final int what, ch, value;

        Pick(Sheet sheet, int what, int ch, int value) {
            this.sheet = sheet;
            this.what = what;
            this.ch = ch;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (what == SLIDER) BtSettings.setSlider(ch, value);
            else BtSettings.setWave(value);
            sheet.render();
        }
    }

    /** A channel chip of «Ляв крак» / «Десен крак»: that channel is the leg now. */
    static final class Leg implements View.OnClickListener {
        final Sheet sheet;
        final boolean right;
        final int ch;

        Leg(Sheet sheet, boolean right, int ch) {
            this.sheet = sheet;
            this.right = right;
            this.ch = ch;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            sheet.stopHold();
            BtSettings.setLegChannel(right, ch);
            sheet.render();
        }
    }

    static final class Group implements XemsUi.OnIndex {
        final Sheet sheet;
        final int ch;

        Group(Sheet sheet, int ch) {
            this.sheet = sheet;
            this.ch = ch;
        }

        @Override
        public void onIndex(int index) {
            BtSettings.setGroup(ch, index);
            sheet.render();
        }
    }

    static final class Gain implements XemsUi.OnStep {
        final Sheet sheet;

        Gain(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void onStep(int direction) {
            BtSettings.setGain(BtSettings.gain() + 5 * direction);
            sheet.render();
        }
    }

    static final class Slots implements XemsUi.OnToggle {
        @Override
        public void onToggle(boolean on) {
            BtSettings.setSlots(on);
        }
    }

    static final class Reset implements View.OnClickListener {
        final Sheet sheet;

        Reset(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void onClick(View v) {
            BtSettings.reset();
            sheet.render();
        }
    }

    static final class Done implements View.OnClickListener {
        final XemsUi.Shell sh;

        Done(XemsUi.Shell sh) {
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
