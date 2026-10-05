package com.isaigu.gymapp.bodytech;

import android.app.Activity;
import android.text.Editable;
import android.text.InputType;
import android.text.TextWatcher;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
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
        int level = 3;                                    // test strength, % (1..30, held to BtTranslator.testCap)
        int tHz = 85, tUs = 360, tWave = -1;              // the test impulse
        final int[] HZ_PRESETS = {1, 10, 30, 50, 85, 120, 200, 400, 700, 1000};
        final int[] US_PRESETS = {50, 100, 200, 360, 450, 511};
        final Handler handler = new Handler(Looper.getMainLooper());
        Hold hold;

        Sheet(Activity a) {
            this.a = a;
            XemsUi.init(a);
            sh = XemsUi.shell(a, "Костюм bodytech", "Канали C1–C8 → слайдери на XEMS", 980);
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

        /** Test of the impulse itself: Hz 1..1000, width 50..511 µs, waveform, level — felt with ▶ held on a channel. */
        View testPanel() {
            LinearLayout box = XemsUi.surface(a);
            box.addView(XemsUi.text(a, "Тест на импулс — дръж ▶ на канал", 16, XemsUi.TEXT, true));
            TextView hint = XemsUi.text(a, "Усещаш как се променят честотата, ширината и формата върху мускула. Само за "
                    + "проба: тренировката остава в границите на програмата. Костюмът трябва да е свързан от екрана "
                    + "Тренировка. Започни от най-ниското ниво.", 12, XemsUi.HINT, false);
            hint.setPadding(0, XemsUi.dp(a, 4), 0, XemsUi.dp(a, 10));
            box.addView(hint);

            int cap = BtTranslator.testCap(tHz, tUs);
            if (level > cap) level = cap;
            LinearLayout r1 = XemsUi.horizontal(a);
            r1.setGravity(Gravity.TOP);
            r1.addView(testField("Честота", tHz + " Hz", new TestStep(this, TestStep.HZ), HZ_PRESETS, tHz, Preset.HZ),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            r1.addView(testField("Ширина", tUs + " µs", new TestStep(this, TestStep.US), US_PRESETS, tUs, Preset.US),
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
            lv.addView(XemsUi.label(a, "Ниво (най-много " + cap + " % при тези Hz и ширина)"));
            lv.addView(XemsUi.stepper(a, level + " %", null, 16, new Level(this)).view);
            r2.addView(lv, XemsUi.weight(1f, 12, a));
            box.addView(r2, XemsUi.matchWrap(a, 10));
            return box;
        }

        View testField(String label, String value, XemsUi.OnStep cb, int[] presets, int cur, int kind) {
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

        void stopHold() {
            if (hold != null) {
                hold.live = false;
                handler.removeCallbacks(hold);
                hold = null;
            }
            BtBridge.test(0, 0, 0, 0, -1, false);
        }

        void show() {
            sh.dialog.show();
            XemsUi.fitHeight(a, sh, 0.92f);
        }

        /** Redraw from the saved values (after any change that moves a chip). */
        void render() {
            sh.body.removeAllViews();
            sh.body.addView(testPanel(), XemsUi.matchWrap(a, 0));
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
            play.setOnTouchListener(new TestTouch(this, ch));
            head.addView(play, ml);
            s.addView(head);

            LinearLayout.LayoutParams gap = XemsUi.matchWrap(a, 10);
            LinearLayout[] holder = new LinearLayout[1];
            HorizontalScrollView hs = XemsUi.chipRow(a, holder);
            for (int k = -1; k < BtSettings.ROW_ORDER.length; k++) {
                int i = k < 0 ? -1 : BtSettings.ROW_ORDER[k];       // the row's order, left to right
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
            TextView note = XemsUi.text(a, "Авто = както в програмата. Hz и ширина могат само да намалят стойността от програмата.",
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
                int w = BtSettings.chWidth(ch);
                if (w == 0) w = dir > 0 ? BtSettings.WIDTH_MIN : 0;
                else if (dir < 0 && w <= BtSettings.WIDTH_MIN) w = 0;
                else w += 10 * dir;
                BtSettings.setChWidth(ch, w);
            } else {
                boolean second = what == HZ_SECOND;
                BtSettings.setChHz(ch, second, BtSettings.chHz(ch, second) + dir);
            }
            sheet.render();
        }
    }

    /** Hold = the channel works at the test level; release (or 1.5 s without a renewal) = off. */
    static final class TestTouch implements View.OnTouchListener {
        final Sheet sheet;
        final int ch;

        TestTouch(Sheet sheet, int ch) {
            this.sheet = sheet;
            this.ch = ch;
        }

        @Override
        public boolean onTouch(View v, MotionEvent e) {
            int act = e.getActionMasked();
            if (act == MotionEvent.ACTION_DOWN) {
                v.setPressed(true);
                XemsUi.haptic(v);
                sheet.stopHold();
                sheet.hold = new Hold(sheet, ch);
                sheet.hold.run();
                return true;
            }
            if (act == MotionEvent.ACTION_UP || act == MotionEvent.ACTION_CANCEL) {
                v.setPressed(false);
                sheet.stopHold();
                return true;
            }
            return true;
        }
    }

    /** While held: renew the test every 500 ms and say what happened. */
    static final class Hold implements Runnable {
        final Sheet sheet;
        final int ch;
        boolean live = true;

        Hold(Sheet sheet, int ch) {
            this.sheet = sheet;
            this.ch = ch;
        }

        @Override
        public void run() {
            if (!live) return;
            String r = BtBridge.test(ch, sheet.level, sheet.tHz, sheet.tUs, sheet.tWave, true);
            if ("ok".equals(r)) {
                sheet.sh.subtitle.setText(BtSettings.name(ch) + " · " + sheet.level + " % · " + sheet.tHz + " Hz · "
                        + sheet.tUs + " µs · " + BtSettings.WAVES[sheet.tWave + 1]);
                sheet.handler.postDelayed(this, 500);
            } else {
                sheet.sh.subtitle.setText("no_suit".equals(r)
                        ? "Няма свързан bodytech костюм — свържи го от екрана Тренировка"
                        : "Тренировка върви на костюма — спри я, за да тестваш");
                live = false;
            }
            sheet.sh.subtitle.setVisibility(View.VISIBLE);
        }
    }

    static final class Level implements XemsUi.OnStep {
        final Sheet sheet;

        Level(Sheet sheet) {
            this.sheet = sheet;
        }

        @Override
        public void onStep(int dir) {
            sheet.level = Math.max(1, Math.min(BtTranslator.testCap(sheet.tHz, sheet.tUs), sheet.level + dir));
            sheet.render();
        }
    }

    /** − / + of the test Hz or width: fine steps low, coarser high. */
    static final class TestStep implements XemsUi.OnStep {
        static final int HZ = 0, US = 1;
        final Sheet sheet;
        final int what;

        TestStep(Sheet sheet, int what) {
            this.sheet = sheet;
            this.what = what;
        }

        @Override
        public void onStep(int dir) {
            if (what == HZ) {
                int h = sheet.tHz;
                int step = h < 20 ? 1 : (h < 100 ? 5 : (h < 300 ? 10 : 50));
                if (dir < 0 && h > 1) step = h - step < 1 ? h - 1 : step;
                sheet.tHz = Math.max(1, Math.min(BtTranslator.TEST_HZ_MAX, h + dir * step));
            } else {
                sheet.tUs = Math.max(BtTranslator.MIN_US, Math.min(BtTranslator.MAX_US, sheet.tUs + 10 * dir));
            }
            sheet.render();
        }
    }

    /** A chip of the test impulse: a Hz or width preset, or a waveform. */
    static final class Preset implements View.OnClickListener {
        static final int HZ = 0, US = 1, WAVE = 2;
        final Sheet sheet;
        final int what, value;

        Preset(Sheet sheet, int what, int value) {
            this.sheet = sheet;
            this.what = what;
            this.value = value;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (what == HZ) sheet.tHz = value;
            else if (what == US) sheet.tUs = value;
            else sheet.tWave = value;
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
