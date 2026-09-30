package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsUi;

/**
 * Hint card on the training screen during an automatic session: a small floating card at the
 * top (not modal — the screen under it stays usable) with the cue for the pulse / pause and its
 * countdown, the exercise of the phase, what comes next, and the latest limit notice.
 * Hidden while the Auto board is open. Tap = open the board. Floating window as in the interval
 * timer overlay (branding/UI-PITFALLS.md §3): transparent, NOT_FOCUSABLE | NOT_TOUCH_MODAL.
 */
public final class AutoHints {
    private static final int WIDTH_DP = 640;
    /** How long a hint stays: a taken change, a limit, a safety event. */
    private static final long[] NOTICE_MS = {4000L, 6000L, 9000L};
    private static final long FEELING_MS = 25000L;

    private static Dialog dialog;
    private static LinearLayout card;
    private static TextView head;
    private static LinearLayout mid;
    private static TextView cue;
    private static TextView count;
    private static TextView hint;
    private static TextView next;
    private static TextView notice;
    /** An example exercise for the program (template programs): its own tempo, not tied to the impulse —
     *  the Smart Session is the mode that follows exercises. It changes every EXAMPLE_S. */
    private static LinearLayout exBox;
    private static ExerciseFigure figure;
    private static TextView exName;
    private static final long EXAMPLE_S = 12;
    private static final long EXAMPLE_T0 = System.currentTimeMillis();
    private static int lastPhase = -1;
    private static long phaseStartMs;
    private static int lastTone = -1;

    private AutoHints() {}

    /** Every tick of the automatic session. */
    static void refresh() {
        try {
            AutoEngine e = AutoSession.getEngine();
            boolean want = AutoSession.getStage() == AutoSession.Stage.RUNNING && e != null
                    && e.getState() != AutoEngine.State.DONE && e.getState() != AutoEngine.State.STOPPED
                    && !AutoUi.isShowing() && com.isaigu.gymapp.widget.XemsNav.isTrainingPage()
                    && (AutoSession.tipsOn() || alertActive(System.currentTimeMillis()));
            if (!want) {
                hide();
                return;
            }
            if (dialog == null || !dialog.isShowing()) {
                Activity a = AiSession.activityOf(AutoSession.getPanelRoot());
                if (a == null || a.isFinishing() || !build(a)) {
                    return;
                }
            }
            update(e, System.currentTimeMillis());
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoHints.refresh", t);
        }
    }

    /** A limit or safety hint is on (shown even with the tips off). */
    static boolean alertActive(long now) {
        int kind = Math.max(0, Math.min(2, AutoSession.getLastNoticeKind()));
        String msg = AutoSession.getLastNotice();
        return kind >= AutoSession.LIMIT && msg != null && msg.length() > 0
                && now - AutoSession.getLastNoticeMs() < NOTICE_MS[kind];
    }

    static boolean isShowing() {
        return dialog != null && dialog.isShowing();
    }

    static void hide() {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        card = null;
        lastPhase = -1;
        lastTone = -1;
    }

    private static boolean build(Activity a) {
        XemsUi.init(a);

        card = XemsUi.vertical(a);
        card.setPadding(XemsUi.dp(a, 18), XemsUi.dp(a, 12), XemsUi.dp(a, 18), XemsUi.dp(a, 12));
        card.setClickable(true);
        card.setOnClickListener(new Open());

        LinearLayout top = XemsUi.horizontal(a);
        head = XemsUi.text(a, "", 13, XemsUi.MUTED, true);
        top.addView(head, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView open = XemsUi.text(a, AiText.t("Авто ›", "Auto ›"), 13, XemsUi.GO_TEXT, true);
        top.addView(open);
        card.addView(top);

        mid = XemsUi.horizontal(a);
        mid.setGravity(Gravity.CENTER_VERTICAL);
        exBox = XemsUi.vertical(a);
        exBox.setGravity(Gravity.CENTER_HORIZONTAL);
        exBox.setVisibility(View.GONE);
        figure = new ExerciseFigure(a);
        figure.setCycle(EXAMPLE_T0, 2, 2);                   // its own calm tempo
        exBox.addView(figure, new LinearLayout.LayoutParams(XemsUi.dp(a, 120), XemsUi.dp(a, 88)));
        exName = XemsUi.text(a, "", 12, XemsUi.MUTED, false);
        exName.setGravity(Gravity.CENTER);
        exName.setMaxLines(2);
        exBox.addView(exName, new LinearLayout.LayoutParams(XemsUi.dp(a, 130), ViewGroup.LayoutParams.WRAP_CONTENT));
        LinearLayout.LayoutParams flp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        flp.rightMargin = XemsUi.dp(a, 12);
        mid.addView(exBox, flp);
        cue = XemsUi.text(a, "", 26, XemsUi.TEXT, true);
        mid.addView(cue, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        count = XemsUi.text(a, "", 30, XemsUi.TEXT, true);
        count.setGravity(Gravity.CENTER);
        mid.addView(count, new LinearLayout.LayoutParams(XemsUi.dp(a, 64), XemsUi.dp(a, 64)));
        card.addView(mid, XemsUi.matchWrap(a, 4));

        hint = XemsUi.text(a, "", 15, XemsUi.AMBER, true);
        card.addView(hint, XemsUi.matchWrap(a, 4));
        next = XemsUi.text(a, "", 13.5f, XemsUi.GO_TEXT, false);
        card.addView(next, XemsUi.matchWrap(a, 4));
        notice = XemsUi.text(a, "", 14, XemsUi.DANGER, true);
        notice.setPadding(XemsUi.dp(a, 10), XemsUi.dp(a, 6), XemsUi.dp(a, 10), XemsUi.dp(a, 6));
        card.addView(notice, XemsUi.matchWrap(a, 4));

        try {
            dialog = new Dialog(a);
            dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
            dialog.setContentView(card);
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            dialog.show();
            Window w = dialog.getWindow();
            if (w == null) {
                hide();
                return false;
            }
            w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            w.setGravity(Gravity.TOP | Gravity.CENTER_HORIZONTAL);
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            int width = Math.min(XemsUi.dp(a, WIDTH_DP), (int) (dm.widthPixels * 0.7f));
            w.setLayout(width, ViewGroup.LayoutParams.WRAP_CONTENT);
            WindowManager.LayoutParams lp = w.getAttributes();
            lp.y = XemsUi.dp(a, 6);
            lp.dimAmount = 0f;
            lp.flags = (lp.flags | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                    | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL)
                    & ~WindowManager.LayoutParams.FLAG_DIM_BEHIND;
            w.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            w.setAttributes(lp);
            return true;
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoHints.build", t);
            hide();
            return false;
        }
    }

    private static void update(AutoEngine e, long now) {
        Context c = card.getContext();
        AutoModel.Plan plan = e.getPlan();
        AutoModel.Phase ph = e.phase();
        AutoEngine.Cmd cmd = e.getCurrent();
        if (e.getPhaseIndex() != lastPhase) {
            lastPhase = e.getPhaseIndex();
            phaseStartMs = now;
        }
        head.setText(plan.program.name() + " · " + (ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "")
                + " · " + AiText.mmss(e.phaseRemainingS()) + AiText.t(" · общо ", " · total ") + AiText.mmss(e.getRemainingS()));

        int tone;                     // 0 pulse, 1 pause, 2 stopped
        String cueText;
        int left = 0;
        AutoEngine.State st = e.getState();
        if (st == AutoEngine.State.HR_PAUSE) {
            tone = 2;
            cueText = e.isResumeWaiting()
                    ? AiText.t("Пулсът спадна — „Продължи“ в Авто", "HR is down — Resume in Auto")
                    : AiText.t("Пауза: пулсът е висок — дишай спокойно", "Paused: HR high — breathe calmly");
        } else if (st == AutoEngine.State.USER_PAUSE) {
            tone = 2;
            cueText = AiText.t("Пауза — „Продължи“ в Авто", "Paused — Resume in Auto");
        } else if (cmd != null) {
            long inCycle = now - cmd.startMs;
            long onMs = cmd.onS * 1000L;
            if (inCycle < onMs) {
                tone = cmd.frac > 0 ? 0 : 1;
                cueText = AutoCues.onCue(plan, ph, cmd);
                left = (int) Math.ceil((onMs - inCycle) / 1000.0);
            } else {
                tone = 1;
                cueText = AutoCues.offCue(plan, ph, cmd);
                left = (int) Math.ceil((cmd.durationMs() - inCycle) / 1000.0);
            }
        } else {
            tone = 1;
            cueText = "";
        }
        boolean tips = AutoSession.tipsOn();
        mid.setVisibility(tips ? View.VISIBLE : View.GONE);
        cue.setText(cueText);
        count.setText(left > 0 ? "" + left : "");
        if (tone != lastTone) {
            lastTone = tone;
            int accent = tone == 0 ? XemsUi.GO : tone == 1 ? 0xFF42A5F5 : XemsUi.AMBER;
            card.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, accent, 0.14f),
                    XemsUi.dp(c, 18), accent, XemsUi.dp(c, 2)));
            cue.setTextColor(tone == 0 ? XemsUi.GO_TEXT : XemsUi.TEXT);
            android.graphics.drawable.GradientDrawable disc = new android.graphics.drawable.GradientDrawable();
            disc.setShape(android.graphics.drawable.GradientDrawable.OVAL);
            disc.setColor(XemsUi.alpha(accent, 0x44));
            count.setBackgroundDrawable(disc);
        }

        // an example exercise of this phase (a suggestion only: own tempo, rotates every EXAMPLE_S)
        String ex = null;
        AutoTemplates.Script sc = AutoSession.getScript();
        int pi = e.getPhaseIndex();
        if (sc != null && pi >= 0 && pi < sc.phase.length && sc.phase[pi] != null && sc.phase[pi].length > 0) {
            String[] l = sc.phase[pi];
            ex = l[(int) (((now - EXAMPLE_T0) / 1000 / EXAMPLE_S) % l.length)];
        }
        exBox.setVisibility(tips && ex != null ? View.VISIBLE : View.GONE);
        if (ex != null) {
            AutoModel.Input lead = AutoSession.getInput();
            figure.setColor(ExerciseFigure.colorFor(lead != null ? lead.sex : null));
            figure.setExercise(ex);
            exName.setText(AiText.t("Пример: ", "Example: ") + AutoTemplates.name(ex));
        }

        String h = AutoCues.phaseHint(plan, ph);
        boolean mainStart = ph != null && !"WARMUP".equals(ph.id) && !ph.isCooldown() && !ph.wave
                && now - phaseStartMs < FEELING_MS && e.getPhaseIndex() <= 2;
        if (mainStart) {
            h = h + "\n" + AutoCues.feeling(plan);
        }
        hint.setText(h);
        hint.setVisibility(tips && h.length() > 0 ? View.VISIBLE : View.GONE);

        String n = AutoCues.next(plan, e.getPhaseIndex(), e.phaseRemainingS());
        next.setText(n);
        next.setVisibility(tips && n.length() > 0 ? View.VISIBLE : View.GONE);

        String msg = AutoSession.getLastNotice();
        int kind = Math.max(0, Math.min(2, AutoSession.getLastNoticeKind()));
        long noticeMs = AutoSession.getLastNoticeMs();
        boolean showNotice = msg != null && msg.length() > 0 && now - noticeMs < NOTICE_MS[kind];
        if (showNotice) {
            String icon = kind == AutoSession.SAFETY ? "⛔ " : kind == AutoSession.LIMIT ? "⚠ " : "✓ ";
            int color = kind == AutoSession.SAFETY ? XemsUi.DANGER : kind == AutoSession.LIMIT ? XemsUi.AMBER : XemsUi.GO_TEXT;
            notice.setText(icon + msg);
            notice.setTextColor(color);
            notice.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(color, 0x22), XemsUi.dp(c, 10),
                    XemsUi.alpha(color, 0x77), XemsUi.dp(c, 1)));
        }
        notice.setVisibility(showNotice ? View.VISIBLE : View.GONE);
    }

    static final class Open implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            hide();
            Activity a = AiSession.activityOf(v);
            if (a != null) {
                AutoUi.open(a);
            }
        }
    }
}
