package com.isaigu.gymapp.wearable.bluetens;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * The manual module of the Bluetens page: the trainer sets every parameter and keeps the result as a program of
 * their own (owner, 2026-10-13). Full screen, landscape: the name on top, the steps side by side (they slide
 * sideways), each with time · Hz · µs on the left and work · pause · pause Hz · rise on the right. Every change is
 * held in the limits at once (the stepper shows what the pad gets, an amber line says why) and saved by itself.
 */
public final class BluetensEditor {
    public interface Listener {
        /** The editor closed; {@code prog} is null when it was deleted. */
        void onClosed(BluetensProgram prog);
    }

    private BluetensEditor() {}

    public static void open(Activity a, BluetensProgram prog, Listener l) {
        try {
            new Ed(a, prog, l).show();
        } catch (Throwable t) {
            XemsGuard.report("BluetensEditor.open", t);
        }
    }

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static String time(int s) {
        return String.format(Locale.ROOT, "%d:%02d", s / 60, s % 60);
    }

    /** Steppers of one step card. */
    static final class Card {
        BluetensProgram.Step step;
        LinearLayout view;
        TextView title;
        XemsUi.Stepper time, hz, us, burst, work, rest, restHz, rise;
        LinearLayout restBox;
        TextView note;
    }

    static final class Ed {
        final Activity a;
        final BluetensProgram prog;
        final Listener listener;
        final Handler main = new Handler(Looper.getMainLooper());
        XemsUi.Shell s;
        EditText name;
        LinearLayout row;
        final List<Card> cards = new ArrayList<Card>();
        TextView delete;
        boolean deleteArmed;
        boolean deleted;

        Ed(Activity a, BluetensProgram prog, Listener l) {
            this.a = a;
            this.prog = prog;
            this.listener = l;
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        void show() {
            XemsUi.init(a);
            s = XemsUi.shell(a, tr("Ръчна програма", "Manual program"), "", 1280);
            XemsUi.fullScreen(s);

            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.CENTER_VERTICAL);
            name = new EditText(a);
            name.setSingleLine(true);
            name.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
            name.setText(prog.name);
            name.setHint(tr("Име на програмата", "Program name"));
            name.setTextColor(XemsUi.TEXT);
            name.setHintTextColor(XemsUi.HINT);
            name.setTextSize(18);
            name.setPadding(dp(16), dp(10), dp(16), dp(10));
            name.setBackground(XemsUi.rounded(XemsUi.SURFACE, dp(14), XemsUi.STROKE, dp(1)));
            top.addView(name, new LinearLayout.LayoutParams(dp(420), dp(52)));
            top.addView(XemsUi.spacer(a));
            TextView add = XemsUi.button(a, tr("＋ Стъпка", "＋ Step"), XemsUi.SECONDARY);
            add.setOnClickListener(new AddStep(this, -1));
            top.addView(add, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(52)));
            s.body.addView(top, XemsUi.matchWrap(a, 4));

            HorizontalScrollView hs = new HorizontalScrollView(a);
            hs.setHorizontalScrollBarEnabled(false);
            hs.setOverScrollMode(View.OVER_SCROLL_NEVER);
            row = XemsUi.horizontal(a);
            hs.addView(row);
            s.body.addView(hs, XemsUi.matchWrap(a, 14));

            delete = XemsUi.button(a, tr("Изтрий програмата", "Delete program"), XemsUi.GHOST);
            delete.setTextColor(XemsUi.DANGER);
            delete.setOnClickListener(new Delete(this));
            s.footer.addView(delete, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(56)));
            s.footer.addView(XemsUi.spacer(a));
            TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
            done.setOnClickListener(new Done(this));
            s.footer.addView(done, new LinearLayout.LayoutParams(dp(260), dp(56)));

            fill();
            s.dialog.setOnDismissListener(new Closed(this));
            s.dialog.show();
        }

        void fill() {
            row.removeAllViews();
            cards.clear();
            for (int i = 0; i < prog.steps.size(); i++) {
                Card c = card(prog.steps.get(i));
                cards.add(c);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(470), ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.rightMargin = dp(14);
                row.addView(c.view, lp);
                render(c, i, null);
            }
            subtitle();
        }

        Card card(BluetensProgram.Step st) {
            Card c = new Card();
            c.step = st;
            c.view = XemsUi.card(a);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            c.title = XemsUi.text(a, "", 17, XemsUi.TEXT, true);
            head.addView(c.title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView dup = XemsUi.iconButton(a, "⧉", XemsUi.SURFACE, XemsUi.TEXT, 44);
            dup.setOnClickListener(new AddStep(this, 0));
            dup.setTag(c);
            head.addView(dup);
            TextView del = XemsUi.iconButton(a, "✕", XemsUi.SURFACE, XemsUi.TEXT, 44);
            LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(dp(44), dp(44));
            dl.leftMargin = dp(8);
            del.setOnClickListener(new RemoveStep(this, c));
            head.addView(del, dl);
            c.view.addView(head);

            LinearLayout cols = XemsUi.horizontal(a);
            LinearLayout left = XemsUi.vertical(a);
            LinearLayout right = XemsUi.vertical(a);
            cols.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            rp.leftMargin = dp(12);
            cols.addView(right, rp);
            c.view.addView(cols, XemsUi.matchWrap(a, 8));

            c.time = field(left, tr("Време", "Time"), new Change(this, c, F_TIME));
            c.hz = field(left, tr("Честота", "Frequency"), new Change(this, c, F_HZ));
            c.us = field(left, tr("Ширина на импулса", "Pulse width"), new Change(this, c, F_US));
            c.burst = field(left, tr("Ток", "Current"), new Change(this, c, F_BURST));
            c.work = field(right, tr("Импулс", "Impulse"), new Change(this, c, F_WORK));
            c.restBox = XemsUi.vertical(a);
            right.addView(c.restBox);
            c.rest = field(c.restBox, tr("Пауза", "Pause"), new Change(this, c, F_REST));
            c.restHz = field(c.restBox, tr("Импулси в паузата", "Pulses in the pause"), new Change(this, c, F_REST_HZ));
            c.rise = field(c.restBox, tr("Плавно качване", "Soft rise"), new Change(this, c, F_RISE));

            c.note = XemsUi.text(a, "", 13, XemsUi.AMBER, true);
            c.note.setVisibility(View.GONE);
            c.view.addView(c.note, XemsUi.matchWrap(a, 8));
            return c;
        }

        XemsUi.Stepper field(LinearLayout col, String label, XemsUi.OnStep cb) {
            TextView l = XemsUi.text(a, label, 12.5f, XemsUi.MUTED, true);
            col.addView(l, XemsUi.matchWrap(a, 8));
            XemsUi.Stepper st = XemsUi.stepper(a, "", "", 22, cb);
            col.addView(st.view, XemsUi.matchWrap(a, 4));
            return st;
        }

        static final int F_TIME = 0, F_HZ = 1, F_US = 2, F_WORK = 3, F_REST = 4, F_REST_HZ = 5, F_RISE = 6, F_BURST = 7;

        void change(Card c, int f, int dir) {
            BluetensProgram.Step st = c.step;
            switch (f) {
                case F_TIME: {
                    int base = dir > 0 ? st.seconds : st.seconds - 1;    // 10 s steps under 2 min, 30 s under 10
                    st.seconds += dir * (base < 120 ? 10 : base < 600 ? 30 : 60);
                    break;
                }
                case F_HZ:
                    st.hz = Math.max(1, Math.min(SAFE_HZ, st.hz + dir));
                    if (st.hz >= 20 && st.continuous()) {
                        st.workS = st.hz >= 50 ? 4 : 6;      // an impulse from 20 Hz: say it with the values
                    }
                    break;
                case F_US:
                    st.us = Math.max(50, Math.min(400, st.us + dir * 10));
                    break;
                case F_WORK:
                    st.workS = Math.max(0, Math.min(BluetensProgram.WORK_MAX, st.workS + dir));
                    break;
                case F_REST:
                    st.restS = Math.max(1, Math.min(BluetensProgram.REST_MAX, st.restS + dir));
                    break;
                case F_REST_HZ:
                    st.restHz = Math.max(0, Math.min(10, st.restHz + dir));
                    break;
                case F_BURST:
                    st.burstMs = Math.max(0, Math.min(BluetensProgram.BURST_MAX_MS, st.burstMs + dir));
                    break;
                default:
                    st.riseMs = Math.max(0, Math.min(BluetensProgram.RISE_MAX_MS, st.riseMs + dir * 100));
                    break;
            }
            String[] why = BluetensProgram.safe(st);
            render(c, cards.indexOf(c), XemsLang.isBg() ? why[0] : why[1]);
            subtitle();
            save();
        }

        static final int SAFE_HZ = 120;

        void render(Card c, int index, String why) {
            BluetensProgram.Step st = c.step;
            boolean b = XemsLang.isBg();
            c.title.setText(tr("Стъпка ", "Step ") + (index + 1));
            c.time.set(time(st.seconds), tr("мин:сек", "min:sec"));
            c.hz.set(String.valueOf(st.hz), st.aussie() ? tr("пакета в секунда", "bursts a second") : "Hz");
            c.burst.set(st.aussie() ? tr("австралийски", "Australian") : tr("обикновен", "ordinary"),
                    st.aussie() ? tr("пакети по ", "bursts of ") + st.burstMs + tr(" мс · 1 kHz", " ms · 1 kHz")
                            : tr("единични импулси", "single pulses"));
            c.us.set(String.valueOf(st.us), "µs");
            c.work.set(st.continuous() ? tr("без пауза", "continuous") : st.workS + " s",
                    st.continuous() ? tr("под 20 Hz", "under 20 Hz") : tr("после пауза", "then a pause"));
            c.restBox.setAlpha(st.continuous() ? 0.35f : 1f);
            c.rest.set(st.restS + " s", "");
            c.restHz.set(st.restHz == 0 ? tr("тишина", "silence") : st.restHz + " Hz", "");
            c.rise.set(String.format(Locale.ROOT, "%.1f s", st.riseMs / 1000f).replace('.', b ? ',' : '.'), "");
            if (why != null && why.length() > 0) {
                c.note.setText("⚠ " + why);
                c.note.setVisibility(View.VISIBLE);
            } else if (why != null) {
                c.note.setVisibility(View.GONE);
            }
        }

        void subtitle() {
            s.subtitle.setVisibility(View.VISIBLE);
            s.subtitle.setText(tr("Общо ", "Total ") + time(prog.seconds()) + " · " + prog.steps.size()
                    + tr(prog.steps.size() == 1 ? " стъпка" : " стъпки", prog.steps.size() == 1 ? " step" : " steps")
                    + tr(" · записва се само", " · saved as you go"));
        }

        void addStep(Card from) {
            BluetensProgram.Step st = from != null ? from.step.copy()
                    : !prog.steps.isEmpty() ? prog.steps.get(prog.steps.size() - 1).copy() : new BluetensProgram.Step();
            int at = from != null ? prog.steps.indexOf(from.step) + 1 : prog.steps.size();
            prog.steps.add(at, st);
            fill();
            save();
        }

        void removeStep(Card c) {
            if (prog.steps.size() <= 1) {
                c.note.setText(tr("Програмата има поне една стъпка.", "A program has at least one step."));
                c.note.setVisibility(View.VISIBLE);
                return;
            }
            prog.steps.remove(c.step);
            fill();
            save();
        }

        void delete() {
            if (!deleteArmed) {
                deleteArmed = true;
                delete.setText(tr("Сигурен ли си? Изтрий", "Sure? Delete"));
                main.postDelayed(new Disarm(this), 3000);
                return;
            }
            deleted = true;
            BluetensStore.delete(a, prog.id);
            s.dialog.dismiss();
        }

        void save() {
            String n = name.getText() != null ? name.getText().toString().trim() : "";
            if (n.length() > 0) {
                prog.name = n;
            }
            BluetensStore.save(a, prog);
        }

        void closed() {
            if (!deleted) {
                save();
            }
            listener.onClosed(deleted ? null : prog);
        }
    }

    // ------------------------------------------------------------------ named listeners (dx: no anonymous classes)

    static final class Change implements XemsUi.OnStep {
        final Ed e;
        final Card c;
        final int f;

        Change(Ed e, Card c, int f) {
            this.e = e;
            this.c = c;
            this.f = f;
        }

        @Override
        public void onStep(int direction) {
            e.change(c, f, direction);
        }
    }

    static final class AddStep implements View.OnClickListener {
        final Ed e;
        final int mode;

        AddStep(Ed e, int mode) {
            this.e = e;
            this.mode = mode;
        }

        @Override
        public void onClick(View v) {
            e.addStep(mode == 0 && v.getTag() instanceof Card ? (Card) v.getTag() : null);
        }
    }

    static final class RemoveStep implements View.OnClickListener {
        final Ed e;
        final Card c;

        RemoveStep(Ed e, Card c) {
            this.e = e;
            this.c = c;
        }

        @Override
        public void onClick(View v) {
            e.removeStep(c);
        }
    }

    static final class Delete implements View.OnClickListener {
        final Ed e;

        Delete(Ed e) {
            this.e = e;
        }

        @Override
        public void onClick(View v) {
            e.delete();
        }
    }

    static final class Disarm implements Runnable {
        final Ed e;

        Disarm(Ed e) {
            this.e = e;
        }

        @Override
        public void run() {
            e.deleteArmed = false;
            e.delete.setText(tr("Изтрий програмата", "Delete program"));
        }
    }

    static final class Done implements View.OnClickListener {
        final Ed e;

        Done(Ed e) {
            this.e = e;
        }

        @Override
        public void onClick(View v) {
            e.s.dialog.dismiss();
        }
    }

    static final class Closed implements DialogInterface.OnDismissListener {
        final Ed e;

        Closed(Ed e) {
            this.e = e;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            try {
                e.closed();
            } catch (Throwable t) {
                XemsGuard.report("BluetensEditor.closed", t);
            }
        }
    }
}
