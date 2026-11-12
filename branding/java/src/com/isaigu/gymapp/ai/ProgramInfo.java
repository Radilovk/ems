package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AutoCatalog.Program;
import com.isaigu.gymapp.ai.AutoModel.Input;
import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Plan;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;

/**
 * The ⓘ of a ready program card in Auto (owner, 1.1.516 — docs/xems-program-info.md): what this training or
 * procedure is and how it works for its goal. Landscape, one glance: left the three lines of how it works
 * ({@link ProgramGuide}), right the phases as one bar — the width is the time, a tap on a phase says what it is for
 * ({@link AutoCues#phaseGoal}) — and under it how often and how long a course is. Tips for after the session are in
 * the report, not here.
 */
public final class ProgramInfo {
    private ProgramInfo() {}

    /** The open window's phase bar and its caption (one window at a time). */
    private static LinearLayout bar;
    private static TextView capName;
    private static TextView capText;
    private static Plan shown;
    private static int[] colors;

    /** Whether this program has an ⓘ. */
    public static boolean has(Program p) {
        return p != null && ProgramGuide.get(p.id) != null;
    }

    public static void open(Activity a, Program p, Input in, String goalName, int goalColor, String levelName,
                            int levelColor) {
        try {
            ProgramGuide.Entry g = ProgramGuide.get(p.id);
            if (a == null || g == null || in == null) {
                return;
            }
            String kind = p.isActive() ? AiText.t("Активна тренировка", "Active training")
                    : AiText.t("Пасивна процедура", "Passive treatment");
            String name = AutoCatalog.isFace(p) ? AiText.t("Лице · естетични процедури", "Face · aesthetic procedures") : p.name();
            XemsUi.Shell s = XemsUi.shell(a, name, kind + " · " + goalName, 1000);
            XemsUi.setBadge(s.badge, levelName, levelColor);
            s.badge.setVisibility(View.VISIBLE);
            Context c = a;

            LinearLayout row = XemsUi.horizontal(c);
            row.setBaselineAligned(false);
            // ---- left: how it works
            LinearLayout how = XemsUi.vertical(c);
            how.addView(XemsUi.label(c, AiText.t("Как действа", "How it works")));
            for (int i = 0; i < 3; i++) {
                LinearLayout line = XemsUi.horizontal(c);
                line.setGravity(Gravity.TOP);
                TextView n = XemsUi.text(c, String.valueOf(i + 1), 14, XemsUi.ON_ACCENT, true);
                n.setGravity(Gravity.CENTER);
                n.setBackgroundDrawable(XemsUi.rounded(goalColor, XemsUi.dp(c, 14), 0, 0));
                line.addView(n, new LinearLayout.LayoutParams(XemsUi.dp(c, 28), XemsUi.dp(c, 28)));
                TextView t = XemsUi.text(c, g.how(i), 15, XemsUi.TEXT, false);
                t.setLineSpacing(XemsUi.dp(c, 2), 1f);
                line.addView(t, XemsUi.weight(1f, 12, c));
                how.addView(line, XemsUi.matchWrap(c, i == 0 ? 12 : 14));
            }
            row.addView(how, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

            // ---- right: the phases, how often, the course
            LinearLayout right = XemsUi.vertical(c);
            right.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 16));
            right.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 18), XemsUi.STROKE, XemsUi.dp(c, 1)));
            Plan plan = plan(p, in);
            int total = 0;
            for (Phase ph : plan.phases) {
                total += ph.durationS;
            }
            LinearLayout head = XemsUi.horizontal(c);
            head.setGravity(Gravity.CENTER_VERTICAL);
            head.addView(XemsUi.label(c, AiText.t("Етапите · докосни", "The stages · tap one")),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            head.addView(XemsUi.text(c, "≈ " + Math.round(total / 60f) + AiText.t(" мин", " min"), 15, XemsUi.TEXT, true));
            right.addView(head);
            colors = phaseColors(plan.phases, goalColor);
            bar = XemsUi.horizontal(c);
            for (int i = 0; i < plan.phases.size(); i++) {
                Phase ph = plan.phases.get(i);
                TextView seg = XemsUi.text(c, Math.max(1, Math.round(ph.durationS / 60f)) + "'", 13, XemsUi.ON_ACCENT, true);
                seg.setGravity(Gravity.CENTER);
                seg.setSingleLine(true);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 48),
                        Math.max(ph.durationS, total / 14f));       // a short stage stays wide enough to tap
                lp.rightMargin = i + 1 < plan.phases.size() ? XemsUi.dp(c, 4) : 0;
                seg.setOnClickListener(new Tap(i));
                XemsUi.pressable(seg);
                bar.addView(seg, lp);
            }
            right.addView(bar, XemsUi.matchWrap(c, 10));
            capName = XemsUi.text(c, "", 16, XemsUi.TEXT, true);
            right.addView(capName, XemsUi.matchWrap(c, 12));
            capText = XemsUi.text(c, "", 14, XemsUi.MUTED, false);
            capText.setLineSpacing(XemsUi.dp(c, 2), 1f);
            capText.setMinLines(3);
            right.addView(capText, XemsUi.matchWrap(c, 4));
            shown = plan;
            select(firstMain(plan.phases));

            LinearLayout facts = XemsUi.horizontal(c);
            facts.setBaselineAligned(false);
            facts.addView(fact(c, "🗓", AiText.t("Колко често", "How often"), g.often(), goalColor),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            facts.addView(fact(c, "◎", AiText.t("Курс", "Course"), g.course(), goalColor), XemsUi.weight(1f, 10, c));
            right.addView(facts, XemsUi.matchWrap(c, 14));
            row.addView(right, XemsUi.weight(1.25f, 22, c));
            s.body.addView(row, XemsUi.matchWrap(c, 6));

            TextView note = XemsUi.text(c, AiText.t("Съветите за преди и след — в отчета след сесията.",
                    "Tips for before and after — in the report after the session."), 13, XemsUi.HINT, false);
            s.footer.addView(note, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView ok = XemsUi.button(c, AiText.t("Разбрах", "Got it"), XemsUi.SECONDARY);
            ok.setOnClickListener(new Close(s));
            s.footer.setGravity(Gravity.CENTER_VERTICAL);
            s.footer.addView(ok, new LinearLayout.LayoutParams(XemsUi.dp(c, 160), XemsUi.dp(c, 52)));
            s.dialog.setOnDismissListener(new Forget());
            s.dialog.show();
            XemsUi.enter(row);
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("ProgramInfo.open", t);
        }
    }

    /** The plan the card shows: this program for this client (its own times), as the run would build it. */
    static Plan plan(Program p, Input in) {
        Plan plan = new Plan();
        plan.program = p;
        plan.input = in;
        plan.phases.addAll(AutoCatalog.phases(p, in.goal, in, AutoPlanner.maxSeconds(p, in.goal, in)));
        return plan;
    }

    /** The first stage that is the work itself (not the warm-up, not the recovery). */
    static int firstMain(List<Phase> ph) {
        for (int i = 0; i < ph.size(); i++) {
            if (!"WARMUP".equals(ph.get(i).id) && !ph.get(i).isCooldown()) {
                return i;
            }
        }
        return 0;
    }

    /** Warm-up amber, the work in the goal's colour and two neighbours of it, the recovery calm blue. */
    static int[] phaseColors(List<Phase> ph, int goalColor) {
        int[] work = {goalColor, XemsUi.mix(goalColor, 0xFF42A5F5, 0.45f), XemsUi.mix(goalColor, 0xFFAB47BC, 0.45f)};
        int[] out = new int[ph.size()];
        int k = 0;
        for (int i = 0; i < ph.size(); i++) {
            Phase x = ph.get(i);
            out[i] = x.isCooldown() ? 0xFF5C8DBF : "WARMUP".equals(x.id) ? XemsUi.AMBER : work[k++ % work.length];
        }
        return out;
    }

    static void select(int i) {
        if (bar == null || shown == null || i < 0 || i >= shown.phases.size()) {
            return;
        }
        Context c = bar.getContext();
        for (int k = 0; k < bar.getChildCount(); k++) {
            View v = bar.getChildAt(k);
            boolean on = k == i;
            v.setBackgroundDrawable(XemsUi.rounded(on ? colors[k] : XemsUi.alpha(colors[k], 0x66), XemsUi.dp(c, 12),
                    on ? XemsUi.TEXT : 0, on ? XemsUi.dp(c, 2) : 0));
        }
        Phase ph = shown.phases.get(i);
        int min = Math.max(1, Math.round(ph.durationS / 60f));
        capName.setText(AiText.t(ph.nameBg, ph.nameEn) + " · " + min + AiText.t(" мин", " min"));
        capName.setTextColor(colors[i]);
        capText.setText(AutoCues.phaseGoal(shown, ph));
    }

    private static View fact(Context c, String icon, String label, String value, int tint) {
        LinearLayout f = XemsUi.vertical(c);
        f.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 10), XemsUi.dp(c, 12), XemsUi.dp(c, 10));
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, tint, 0.12f), XemsUi.dp(c, 14),
                XemsUi.alpha(tint, 0x66), XemsUi.dp(c, 1)));
        f.addView(XemsUi.text(c, icon + "  " + label, 12, XemsUi.MUTED, false));
        TextView v = XemsUi.text(c, value, 14, XemsUi.TEXT, true);
        f.addView(v, XemsUi.matchWrap(c, 4));
        return f;
    }

    static final class Tap implements View.OnClickListener {
        final int i;

        Tap(int i) {
            this.i = i;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            select(i);
        }
    }

    static final class Close implements View.OnClickListener {
        final XemsUi.Shell s;

        Close(XemsUi.Shell s) {
            this.s = s;
        }

        @Override
        public void onClick(View v) {
            try {
                s.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Forget implements android.content.DialogInterface.OnDismissListener {
        @Override
        public void onDismiss(android.content.DialogInterface d) {
            bar = null;
            capName = null;
            capText = null;
            shown = null;
        }
    }
}
