package com.isaigu.gymapp.dialog;

import android.content.Context;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.ai.PulseAdvice;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * "Препоръка" in the row's ⚙, on top of every mode tab (Основен · Мускули · Кардио · Масаж): the impulse the
 * client's profile and the scale suggest for that mode (ai/PulseAdvice — frequency, depth, impulse : pause, double
 * impulse) and one tap to put it into the mode. Strength, the channels and their spread are never touched: they are
 * what the person feels now (owner, 1.1.458). Nothing changes by itself (1.1.323). Only for one client — ⚙ Master
 * sets the base for everyone and gets none. ⓘ unfolds why.
 * Hook: EditUserProgramDataDialog.onStart (scripts/apply-program-fit.py), after ParamDialogUi has laid out the tabs.
 */
public final class ParamAdvice {
    private static final String TAG = "xems_param_advice";
    /** The mode colours of the tabs (ParamDialogUi). */
    private static final int[] COLORS = {0xFF2E9E5B, 0xFFD32F2F, 0xFFF57C00, 0xFF1976D2};

    private ParamAdvice() {}

    public static void attach(EditUserProgramDataDialog dialog) {
        try {
            if (dialog == null || Boolean.TRUE.equals(field(dialog, "multiEdit"))) {
                return;
            }
            Object w = field(dialog, "wrapper");
            TrainUser u = w instanceof TrainUserProgramDataWrapper ? ((TrainUserProgramDataWrapper) w).trainUser : null;
            Object tp = field(dialog, "trainProgram");
            Object anchor = field(dialog, "inputramp");
            if (u == null || !(tp instanceof TrainProgram) || !(anchor instanceof View)) {
                return;
            }
            View root = ((View) anchor).getRootView();
            Context c = root.getContext();
            if (root.findViewWithTag(TAG + 0) != null) {
                return;
            }
            AiProfile p = AiProfile.of(u);
            long[] t = com.isaigu.gymapp.wearable.NextPlan.trainings(c, u.id);
            double hours = t[1] > 0 ? (System.currentTimeMillis() - t[1]) / 3600000.0 : -1;
            PulseAdvice.Rec[] recs = PulseAdvice.all(from(p, (int) t[0], hours));
            XemsUi.init(c);
            for (int k = 0; k < PulseAdvice.MODES; k++) {
                ViewGroup col = column(root, k);
                if (col != null && RampSetting.bean((TrainProgram) tp, k) != null) {
                    col.addView(strip(c, dialog, recs[k]), Math.min(1, col.getChildCount()), XemsUi.matchWrap(c, 0));
                }
            }
        } catch (Throwable t) {
            XemsGuard.report("ParamAdvice.attach", t);
        }
    }

    /** The settings column of mode {@code k}: Основен's card, or the mode's own column (ParamDialogUi). */
    static ViewGroup column(View root, int k) {
        if (k == 0) {
            View v = root.findViewWithTag(ParamDialogUi.MAIN_CARD);
            return v instanceof ViewGroup ? (ViewGroup) v : null;
        }
        View v = ParamDialogUi.find(root, "frequencyview" + k);
        for (int up = 0; up < 3 && v != null && v.getParent() instanceof View; up++) {
            v = (View) v.getParent();
        }
        return v instanceof LinearLayout ? (ViewGroup) v : null;
    }

    /** "✦ Препоръка  85 Hz · 350 µs · 4 : 4 s   ⓘ   [Приложи]", the reasons folded under it. */
    private static View strip(Context c, EditUserProgramDataDialog dialog, PulseAdvice.Rec r) {
        boolean bg = XemsLang.isBg();
        LinearLayout box = XemsUi.vertical(c);
        box.setTag(TAG + r.mode);
        int tint = COLORS[r.mode];
        box.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(tint, 0x1F), XemsUi.dp(c, 14), XemsUi.alpha(tint, 0x66),
                XemsUi.dp(c, 1)));
        box.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 8));

        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout texts = XemsUi.vertical(c);
        texts.addView(XemsUi.text(c, XemsLang.tr("✦ Препоръка по профила", "✦ Suggested by the profile"), 13,
                XemsUi.MUTED, false));
        texts.addView(XemsUi.text(c, r.line(bg), 17, XemsUi.TEXT, true));
        row.addView(texts, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        TextView why = XemsUi.text(c, reasons(r, bg), 13, XemsUi.MUTED, false);
        why.setVisibility(View.GONE);
        why.setPadding(0, XemsUi.dp(c, 6), XemsUi.dp(c, 8), 0);
        TextView info = XemsUi.iconButton(c, "i", XemsUi.SURFACE, XemsUi.MUTED, 48);
        info.setContentDescription(XemsLang.tr("Защо", "Why"));
        info.setOnClickListener(new Fold(why));
        row.addView(info);

        TextView apply = XemsUi.button(c, XemsLang.tr("Приложи", "Apply"), XemsUi.SECONDARY);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = XemsUi.dp(c, 8);
        row.addView(apply, lp);
        Apply a = new Apply(dialog, r, apply);
        apply.setOnClickListener(a);
        a.show();
        box.addView(row);
        box.addView(why);
        LinearLayout.LayoutParams bp = XemsUi.matchWrap(c, 0);
        bp.bottomMargin = XemsUi.dp(c, 10);
        box.setLayoutParams(bp);
        return box;
    }

    private static String reasons(PulseAdvice.Rec r, boolean bg) {
        StringBuilder b = new StringBuilder();
        java.util.List<String> xs = bg ? r.whyBg : r.whyEn;
        for (int i = 0; i < xs.size(); i++) {
            b.append("• ").append(xs.get(i)).append('\n');
        }
        if (xs.isEmpty()) {
            b.append(XemsLang.tr("• Основните стойности за режима", "• The mode's base values")).append('\n');
        }
        b.append(XemsLang.tr("Силата и каналите не се препоръчват — те са по усещане в момента.",
                "Strength and channels are not suggested — they follow what the person feels now."));
        return b.toString();
    }

    /** Puts the advice into the mode's bean (no strength) and redraws the dialog's fields. */
    static boolean put(EditUserProgramDataDialog dialog, PulseAdvice.Rec r) {
        Object tp = field(dialog, "trainProgram");
        ProgramDataBean b = tp instanceof TrainProgram ? RampSetting.bean((TrainProgram) tp, r.mode) : null;
        if (b == null) {
            return false;
        }
        b.hz = r.hz;
        b.pulseWidth = r.pw;
        b.pulseContinue = r.on;
        b.pulsePause = r.off;
        if (r.mode != PulseAdvice.MUSCLE) {
            b.activePause = r.ap;
            if (r.ap) {
                b.pauseHz = r.phz;
                if (b.pauseStrenthPercent <= 0) {
                    b.pauseStrenthPercent = Math.max(10, Math.min(100, b.strenth)); // as the switch: by feel later
                }
            }
        }
        try {
            Method m = EditUserProgramDataDialog.class.getDeclaredMethod("initSetData");
            m.setAccessible(true);
            m.invoke(dialog);
        } catch (Throwable t) {
            XemsGuard.report("ParamAdvice.redraw", t);
        }
        return true;
    }

    static boolean same(EditUserProgramDataDialog dialog, PulseAdvice.Rec r) {
        Object tp = field(dialog, "trainProgram");
        ProgramDataBean b = tp instanceof TrainProgram ? RampSetting.bean((TrainProgram) tp, r.mode) : null;
        return b != null && b.hz == r.hz && b.pulseWidth == r.pw && b.pulseContinue == r.on && b.pulsePause == r.off
                && (r.mode == PulseAdvice.MUSCLE || b.activePause == r.ap && (!r.ap || b.pauseHz == r.phz));
    }

    /** The input from the client's profile (AiProfile: record, form, fresh weigh-in, today's readiness). */
    static PulseAdvice.Input from(AiProfile p, int sessions, double hoursSinceLast) {
        PulseAdvice.Input in = new PulseAdvice.Input();
        if (p == null) {
            return in;
        }
        in.female = p.sex == AiModel.Sex.FEMALE;
        in.age = p.age != null ? p.age : -1;
        in.weightKg = p.weightKg != null ? p.weightKg : -1;
        in.heightCm = p.heightCm;
        in.fitness = p.fitness;
        in.goal = p.goal;
        in.sessions = sessions;
        in.hoursSinceLast = hoursSinceLast;
        in.fatPct = p.fatPct != null ? p.fatPct : Double.NaN;
        in.muscleLow = p.muscleLow;
        in.fatObese = p.fatObese;
        in.readiness = p.readiness;
        in.measured = p.measured;
        in.sensitive = p.cond.contains("sensitive");
        return in;
    }

    static Object field(Object o, String name) {
        try {
            Field f = EditUserProgramDataDialog.class.getDeclaredField(name);
            f.setAccessible(true);
            return f.get(o);
        } catch (Throwable t) {
            return null;
        }
    }

    static final class Apply implements View.OnClickListener {
        private final EditUserProgramDataDialog dialog;
        private final PulseAdvice.Rec r;
        private final TextView button;

        Apply(EditUserProgramDataDialog dialog, PulseAdvice.Rec r, TextView button) {
            this.dialog = dialog;
            this.r = r;
            this.button = button;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (!same(dialog, r)) {
                put(dialog, r);
            }
            show();
        }

        /** "Приложи", or "✓ Приложено" (green) while the mode holds the advice. */
        void show() {
            boolean on = same(dialog, r);
            button.setText(on ? XemsLang.tr("✓ Приложено", "✓ Applied") : XemsLang.tr("Приложи", "Apply"));
            button.setTextColor(on ? XemsUi.GO_TEXT : XemsUi.TEXT);
        }
    }

    static final class Fold implements View.OnClickListener {
        private final View body;

        Fold(View body) {
            this.body = body;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            body.setVisibility(body.getVisibility() == View.VISIBLE ? View.GONE : View.VISIBLE);
        }
    }
}
