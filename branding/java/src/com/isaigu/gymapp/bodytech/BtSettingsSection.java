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

        Sheet(Activity a) {
            this.a = a;
            XemsUi.init(a);
            sh = XemsUi.shell(a, "Костюм bodytech", "Канали C1–C8 → слайдери на XEMS", 980);
            render();
            TextView reset = XemsUi.button(a, "По подразбиране", XemsUi.SECONDARY);
            reset.setOnClickListener(new Reset(this));
            TextView done = XemsUi.button(a, "Готово", XemsUi.PRIMARY);
            done.setOnClickListener(new Done(sh));
            sh.footer.addView(reset);
            sh.footer.addView(XemsUi.spacer(a));
            sh.footer.addView(done);
        }

        void show() {
            sh.dialog.show();
            XemsUi.fitHeight(a, sh, 0.92f);
        }

        /** Redraw from the saved values (after any change that moves a chip). */
        void render() {
            sh.body.removeAllViews();
            LinearLayout cols = XemsUi.horizontal(a);
            cols.setGravity(Gravity.TOP);
            LinearLayout left = XemsUi.vertical(a);
            LinearLayout right = XemsUi.vertical(a);
            for (int ch = 1; ch <= BtSettings.CHANNELS; ch++) {
                LinearLayout col = ch <= 4 ? left : right;
                col.addView(channel(ch), XemsUi.matchWrap(a, ch == 1 || ch == 5 ? 0 : 10));
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
            s.addView(head);

            LinearLayout.LayoutParams gap = XemsUi.matchWrap(a, 10);
            LinearLayout[] holder = new LinearLayout[1];
            HorizontalScrollView hs = XemsUi.chipRow(a, holder);
            for (int i = -1; i < BtSettings.SLIDERS.length; i++) {
                TextView c = XemsUi.chip(a, BtSettings.sliderName(i), BtSettings.slider(ch) == i, XemsUi.GO_TEXT);
                c.setOnClickListener(new Pick(this, Pick.SLIDER, ch, i));
                XemsUi.addChip(a, holder[0], c);
            }
            s.addView(hs, gap);
            s.addView(XemsUi.segmented(a, BtSettings.GROUPS, BtSettings.group(ch), new Group(this, ch)),
                    XemsUi.matchWrap(a, 10));
            return s;
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
