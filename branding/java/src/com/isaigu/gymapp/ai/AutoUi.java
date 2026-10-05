package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AutoCatalog.Program;
import com.isaigu.gymapp.ai.AutoModel.Goal;
import com.isaigu.gymapp.ai.AutoModel.Kind;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Automatic mode UI (docs/xems-auto-mode-spec.md §2): the "Авто" tile opens a sheet with three short
 * steps — program · client and plan · strength. Only what the system cannot decide is asked; the rest
 * (profile from the client record, phases, zones) stays folded; the plan is rebuilt live on the client step
 * and the health confirmation is the step's primary button (docs/xems-ux-golden-rules.md). After Start the sheet hides itself
 * (the tile brings the live board back); at the end the client's report opens.
 * Named listener classes only (dx): every tap goes through {@link Act} with an action code.
 */
public final class AutoUi {
    static final int STEP_PROGRAM = 0;
    /** Client and plan: who, what the plan is, the health confirmation. */
    static final int STEP_CLIENT = 1;
    /** The run (and the setting-up before it) lives in the training screen (AutoBoard), not in a sheet. */
    static final int STEP_RUN = 3;
    private static final int SETUP_STEPS = 2;

    // action codes
    private static final int A_CLOSE = 1;
    private static final int A_NEXT = 2;
    private static final int A_BACK = 3;
    private static final int A_GOAL = 4;
    private static final int A_KIND = 5;
    private static final int A_OPERATOR = 6;
    private static final int A_PROGRAM = 7;
    private static final int A_FITNESS = 8;
    private static final int A_AGE = 9;
    private static final int A_WEIGHT = 10;
    private static final int A_HEIGHT = 11;
    private static final int A_CONTRA = 12;
    private static final int A_TODAY = 13;
    private static final int A_EXTRA = 14;
    private static final int A_WEEKS = 15;
    private static final int A_VARIANT = 18;
    private static final int A_DOUBLE = 19;
    private static final int A_WORKOUT = 42;
    private static final int A_SETUP_GO = 43;
    private static final int A_SETUP_BACK = 44;
    private static final int A_HOW = 40;
    private static final int A_SEX = 28;
    private static final int A_EDIT_PROFILE = 29;
    private static final int A_HEALTH_OPEN = 31;
    private static final int A_DETAILS = 32;
    private static final int A_HIDE = 33;
    private static final int A_TIPS = 36;
    private static final int A_INFO = 37;
    private static final int A_STATE = 38;
    private static final int A_EXERCISES = 41;

    private static XemsUi.Shell shell;
    private static Activity host;
    private static int step;
    private static boolean heightTouched;
    /** Client step: the profile editors are open (else one summary line). */
    private static boolean profileOpen;
    /** Client step: "no contraindications, fine today" confirmed. */
    private static boolean healthOk;
    /** Client step: the full list of contraindications / today is open. */
    private static boolean healthOpen;
    /** Client step: phases and zones unfolded. */
    private static boolean details;
    /** The step's explanation is open (the ⓘ in the header). */
    private static boolean infoOpen;

    // live refs
    private static TextView runPhase;
    private static TextView runTime;
    private static TextView runNotice;
    private static TextView runClock;
    private static ExerciseFigure runFigure;
    private static AutoViews.SetRing runRing;
    /** Amber frame over the exercise card: flashes when a set ends (with the long tone). */
    private static View runFlash;
    private static AutoViews.BodyHeat runBody;
    private static AutoViews.PeakBar runPeak;
    private static AutoViews.Vital runVital;
    private static TextView runClient;
    private static TextView boardSub;
    private static LinearLayout runPhases;
    private static int phasesShownFor = -2;
    private static final int INFO_BOARD = 3;
    /** The Auto module's colour (its tile in the module bar): the board's ⓘ wear it. */
    static final int AUTO_TEAL = 0xFF26A69A;
    private static AutoViews.Dots runDots;
    private static View runArt;
    private static ExerciseFigure runNextFig;
    private static AutoViews.RingStage runNextStage;
    private static AutoViews.SetRing runNextRing;
    private static TextView runArrow;
    private static View runStage;
    private static LinearLayout runHow;
    /** The steps on screen are for this exercise ("" = none). */
    private static String howShownFor = "";
    private static android.widget.PopupWindow infoPop;
    /** The next exercise shows this long before the set ends. */
    private static final double NEXT_SOON_S = 10;
    private static final int INFO_SET = 0;
    private static final int INFO_BODY = 1;
    private static final int INFO_TIMELINE = 2;
    private static AutoViews.Timeline runTimeline;
    private static TextView primary;
    private static final List<TextView> rowLabels = new ArrayList<TextView>();

    private AutoUi() {}

    // ================================================================ open / close

    public static void open(Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        AutoSession.Stage st = AutoSession.getStage();
        if (st == AutoSession.Stage.IDLE) {
            String conflict = AutoSession.conflict();
            if (conflict != null) {
                toast(a, conflict);
                return;
            }
            AutoSession.beginSetup(a);
            AutoModel.Input in = AutoSession.getInput();
            heightTouched = in.heightCm > 0;
            profileOpen = in.heightCm <= 0;
            healthOk = true;                          // contraindications belong to the registration, not here
            healthOpen = false;
            in.today.clear();                         // how the client is today: asked fresh each time
            details = false;
            show(a, STEP_PROGRAM);
            return;
        }
        if (st == AutoSession.Stage.REPORT) {
            onFinished();
            return;
        }
        show(a, st == AutoSession.Stage.RUNNING || st == AutoSession.Stage.CALIB ? STEP_RUN : STEP_PROGRAM);
    }

    /** Bring the board back (HR pause, stop from the main screen). */
    static void show() {
        try {
            if (shell != null && shell.dialog.isShowing()) {
                return;
            }
            Activity a = AiSession.activityOf(AutoSession.getPanelRoot());
            if (a != null) {
                open(a);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void show(Activity a, int s) {
        AutoHints.hide();
        if (s == STEP_RUN) {
            // the running session is the board built into the training screen, not a sheet
            dismiss();
            host = a;
            AutoBoard.sync(AutoSession.getPanelRoot() != null ? AutoSession.getPanelRoot() : a.getWindow().getDecorView());
            return;
        }
        if (shell == null || !shell.dialog.isShowing()) {
            host = a;
            shell = XemsUi.shell(a, "", "", 1180);
            shell.close.setOnClickListener(new Act(A_CLOSE, 0));
            shell.info.setOnClickListener(new Act(A_INFO, 0));
            shell.dialog.setCancelable(false);
            shell.dialog.show();
        }
        go(s);
    }

    private static void dismiss() {
        if (shell != null) {
            try {
                shell.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        shell = null;
    }

    /** The board left the screen: drop its views. */
    static void onBoardDetached() {
        setupLabels.clear();
        setupGo = null;
        setupNote = null;
        runPhase = null;
        runFlash = null;
        boardSub = null;
    }

    /** A set ended (the rest begins): the exercise card flashes amber twice — seen even when the music is loud. */
    static void flashSetEnd() {
        View f = runFlash;
        if (f == null) {
            return;
        }
        try {
            android.animation.ObjectAnimator a = android.animation.ObjectAnimator.ofFloat(f, "alpha", 0f, 1f, 0.2f, 1f, 0f);
            a.setDuration(1400);
            a.start();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.flash", t);
        }
    }

    /** The run ended (time, STOP, or from the main screen): close the board, open the client's report. */
    static void onFinished() {
        dismiss();
        try {
            com.isaigu.gymapp.wearable.SessionRecorder.finishAssisted();
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.onFinished", t);
        }
        AutoSession.close();
    }

    static boolean isShowing() {
        return shell != null && shell.dialog.isShowing();
    }

    static void refresh() {
        try {
            if (AutoBoard.isAttached()) {
                if (AutoSession.getStage() == AutoSession.Stage.CALIB) {
                    refreshSetup();
                } else {
                    refreshRun();
                }
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.refreshRun", t);
        }
    }

    // ================================================================ navigation

    private static void go(int s) {
        int keepY = shell.scroll != null && s == step ? shell.scroll.getScrollY() : 0;
        if (s != step) {
            infoOpen = false;
        }
        step = s;
        Context c = shell.dialog.getContext();
        shell.body.removeAllViews();
        shell.footer.removeAllViews();
        shell.footer.setVisibility(View.VISIBLE);
        rowLabels.clear();
        runPhase = null;
        switch (s) {
            case STEP_PROGRAM: screenProgram(c); break;
            case STEP_CLIENT: screenClient(c); break;
            default: break;                                   // the run lives in the training screen (AutoBoard)
        }
        stepTip(c, s);
        shell.info.setVisibility(stepTipText(s) != null ? View.VISIBLE : View.GONE);
        if (s < SETUP_STEPS) {
            shell.badge.setVisibility(View.VISIBLE);
            XemsUi.setBadge(shell.badge, (s + 1) + " / " + SETUP_STEPS, XemsUi.GO_TEXT);
        } else {
            shell.badge.setVisibility(View.GONE);
        }
        XemsUi.fitHeight(host, shell, 0.94f);
        shell.scroll.post(new ScrollTo(keepY));
    }

    /** The program row and where it was slid to (kept when a card is picked and the screen rebuilds). */
    private static android.widget.HorizontalScrollView programStrip;
    private static int stripX;

    static final class StripTo implements Runnable {
        private final android.widget.HorizontalScrollView v;
        private final int x;

        StripTo(android.widget.HorizontalScrollView v, int x) {
            this.v = v;
            this.x = x;
        }

        @Override
        public void run() {
            v.scrollTo(x, 0);
        }
    }

    static final class ScrollTo implements Runnable {
        private final int y;

        ScrollTo(int y) {
            this.y = y;
        }

        @Override
        public void run() {
            if (shell != null) {
                shell.scroll.scrollTo(0, y);
            }
        }
    }

    /** The step's explanation — only on the ⓘ in the header (the screen itself stays free of it). */
    private static void stepTip(Context c, int s) {
        String text = stepTipText(s);
        if (text == null || !infoOpen) {
            return;
        }
        LinearLayout card = XemsUi.card(c);
        card.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f), XemsUi.dp(c, 14),
                0xFF42A5F5, XemsUi.dp(c, 1)));
        card.addView(XemsUi.text(c, text, 14, XemsUi.TEXT, false));
        card.setOnClickListener(new Act(A_INFO, 0));
        shell.body.addView(card, 0, XemsUi.matchWrap(c, 0));
    }

    private static String stepTipText(int s) {
        switch (s) {
            case STEP_PROGRAM:
                return AiText.t("Цветът е трудността: зелено — лесна, жълто — средна, червено — трудна. Под името са "
                        + "загрявка · основна част · възстановяване. „С упражнения“ показва програмите от Програми, "
                        + "свързани с целта. ★ — препоръчана по профила.",
                        "The colour is the difficulty: green easy, amber medium, red hard. Under the name: warm-up · main "
                        + "part · recovery. \u201cWith exercises\u201d shows the programs from Programs linked to the goal. "
                        + "★ — recommended by the profile.");
            case STEP_CLIENT:
                return AiText.t("Профилът е от клиентския запис, планът се смята от него — времето и интензитетът са на "
                        + "програмата, не се сменят. „Днес“ — как е клиентът сега (недоспал, стрес, цикъл…): "
                        + "не спира тренировката, планът се нагласява сам. Силата се настройва на главния екран.",
                        "The profile comes from the client record and the plan from the profile — the time and the "
                        + "intensity are the program's, not changed. \u201cToday\u201d — how the client is now (short on sleep, "
                        + "stress, period…): it never stops the session, the plan adapts by itself. The strength is set on "
                        + "the main screen.");
            case STEP_RUN:
                return AiText.t("Управлява се с главните ▶ / ❚❚ и ■. ■ действа от пауза: първият — към 10 мин възстановяване, "
                        + "вторият — край. Импулсите са най-много 20 мин. ✕ скрива таблото — сесията продължава. "
                        + "ⓘ на всяка част казва какво показва.",
                        "Driven by the main ▶ / ❚❚ and ■. ■ works from a pause: the first — to the 10 min recovery, the "
                        + "second — the end. Impulses at most 20 min. ✕ hides the board — the session goes on. "
                        + "Each part's ⓘ says what it shows.");
            default:
                return null;
        }
    }

    private static View tipsToggle(Context c) {
        return XemsUi.toggleRow(c, AiText.t("Подсказки", "Tips"),
                AiText.t("При първото ползване на бутоните и менютата. Лимитите и защитите се показват винаги.",
                        "On the first use of buttons and menus. Limits and safety always show."),
                AutoSession.tipsOn(), new Act(A_TIPS, 0));
    }

    private static void footer(Context c, String next, boolean back) {
        if (back) {
            TextView b = XemsUi.button(c, AiText.t("Назад", "Back"), XemsUi.GHOST);
            b.setOnClickListener(new Act(A_BACK, 0));
            shell.footer.addView(b);
        }
        shell.footer.addView(XemsUi.spacer(c));
        primary = XemsUi.button(c, next, XemsUi.PRIMARY);
        primary.setOnClickListener(new Act(A_NEXT, 0));
        shell.footer.addView(primary);
    }

    private static void enable(boolean on) {
        if (primary != null) {
            primary.setAlpha(on ? 1f : 0.45f);
        }
    }

    private static void next() {
        AutoModel.Input in = AutoSession.getInput();
        switch (step) {
            case STEP_PROGRAM:
                if (in.kind == Kind.ACTIVE && in.exercises) {
                    setupWorkout();                   // ready → the client step; own map → calibrated on the screen
                } else if (in.programId != null) {
                    go(STEP_CLIENT);
                }
                break;
            case STEP_CLIENT:
                if (planBlocker() != null) {
                    break;
                }
                if (!healthOpen) {
                    healthOk = true;                  // the primary button is the confirmation itself
                }
                if (clientBlocker() == null) {
                    if (heightTouched) {
                        AutoSession.saveHeight(host, in.heightCm);
                    }
                    AutoSession.buildPlan();
                    // The strength is set on the training screen itself (owner, 1.1.336): the sheet steps aside,
                    // the impulses run at the calibration, the board waits for ▶ Старт.
                    AutoSession.beginCalibration();
                    dismiss();
                    AutoBoard.sync(AutoSession.getPanelRoot() != null ? AutoSession.getPanelRoot()
                            : host.getWindow().getDecorView());
                } else {
                    go(STEP_CLIENT);
                }
                break;
            default:
                break;
        }
    }

    /** "С упражнения": the chosen made program is armed on the training screen (the card has ▶ Старт). */
    private static void setupWorkout() {
        Workout w = null;
        for (Workout x : pickList) {
            if (x.id.equals(workoutId)) {
                w = x;
            }
        }
        if (w == null) {
            return;
        }
        Program rp = presetProgram(w);
        if (rp != null) {
            // a ready one is the automatic program itself with its exercises: the client step, the same setting-up
            // and the automatic mode's limits (HR, dose, recovery) — nothing lost against "С упражнения" before
            AutoSession.getInput().programId = rp.id;
            go(STEP_CLIENT);
            return;
        }
        Activity a = host;
        AutoSession.close();                          // the map owns the output from here
        dismiss();
        String why = MapRunner.arm(a, w);
        if (why != null) {
            toast(a, why);
            open(a);
        }
    }

    private static void back() {
        if (step > STEP_PROGRAM && step < STEP_RUN) {
            go(step - 1);
        }
    }

    /** From the setting-up board: back to the client step (the impulses stop). */
    private static void setupBack() {
        AutoSession.stop();                           // CALIB → SETUP, the board goes
        AutoBoard.detach();
        if (host != null) {
            show(host, STEP_CLIENT);
        }
    }

    /** From the setting-up board: ▶ Старт — the program begins (the countdown, then the warm-up). */
    private static void setupGo() {
        if (!AutoSession.canStart()) {
            toast(host, AiText.t("Първо задай сила на реда.", "Set a strength on the row first."));
            return;
        }
        AutoSession.startRun(host);
        AutoBoard.sync(AutoSession.getPanelRoot() != null ? AutoSession.getPanelRoot()
                : host.getWindow().getDecorView());
    }

    // ================================================================ 1 · program

    private static void screenProgram(Context c) {
        AutoModel.Input in = AutoSession.getInput();
        shell.title.setText(AiText.t("Какво правим днес?", "What are we doing today?"));
        subtitle(null);
        LinearLayout body = shell.body;
        Goal[] goals = Goal.values();
        String[] names = new String[goals.length];
        int sel = 0;
        for (int i = 0; i < goals.length; i++) {
            names[i] = goalName(goals[i]);
            if (goals[i] == in.goal) {
                sel = i;
            }
        }
        // goal and kind side by side (landscape): one row of choices
        LinearLayout choose = XemsUi.horizontal(c);
        choose.setGravity(Gravity.CENTER_VERTICAL);
        choose.addView(XemsUi.segmented(c, names, sel, new Act(A_GOAL, 0)),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.6f));
        // Active / passive (owner, 1.1.336) — only where the goal has both
        boolean both = !AutoCatalog.menu(in.goal, Kind.ACTIVE).isEmpty() && !AutoCatalog.menu(in.goal, Kind.PASSIVE).isEmpty();
        if (both) {
            choose.addView(XemsUi.segmented(c, new String[] {
                    AiText.t("Активна", "Active"), AiText.t("Пасивна", "Passive")},
                    in.kind == Kind.ACTIVE ? 0 : 1, new Act(A_KIND, 0)), XemsUi.weight(1f, 14, c));
        }
        body.addView(choose, XemsUi.matchWrap(c, 4));
        // "Шаблон" / "С упражнения" (owner, 1.1.325 / 1.1.336): the ready template alone, or the programs made in
        // Програми (with exercises) that are linked to this goal
        boolean withEx = in.kind == Kind.ACTIVE && in.exercises;
        if (in.kind == Kind.ACTIVE) {
            body.addView(XemsUi.segmented(c, new String[] {AiText.t("Шаблон", "Template"),
                    AiText.t("С упражнения", "With exercises")}, in.exercises ? 1 : 0, new Act(A_EXERCISES, 0)),
                    XemsUi.matchWrap(c, 12));
        }

        LinearLayout strip = XemsUi.horizontal(c);
        strip.setPadding(0, XemsUi.dp(c, 4), XemsUi.dp(c, 8), XemsUi.dp(c, 4));
        String firstBlock = null;
        int shown = 0;
        String pickedLine = null;
        if (withEx) {
            // the programs of this goal: the studio's own, then the ready ones
            pickList = new ArrayList<Workout>();
            for (Workout w : WorkoutStore.own(c)) {
                addPick(w, in);
            }
            for (Workout w : WorkoutStore.presets()) {
                addPick(w, in);
            }
            boolean has = false;
            for (Workout w : pickList) {
                has |= w.id.equals(workoutId);
            }
            if (!has) {
                workoutId = pickList.isEmpty() ? null : pickList.get(0).id;
            }
            for (int i = 0; i < pickList.size(); i++) {
                Workout w = pickList.get(i);
                boolean on = w.id.equals(workoutId);
                int mins = Math.max(1, Math.round(w.totalSeconds() / 60f));
                String meta = w.distinctExercises() + AiText.t(" упр. · ", " ex. · ") + w.exerciseBlocks()
                        + AiText.t(" серии", " sets");
                Program rp = presetProgram(w);
                // a ready one runs as the automatic program with its exercises: its plan's three times
                strip.addView(programCard(c, on, w.effectiveLevel(), ProgramArt.templateKey(in.sex), w.name,
                        (w.preset ? "" : "★ ") + meta, rp != null ? AutoCatalog.times(rp, in.goal, in) : null,
                        rp != null ? null : "≈ " + mins + AiText.t(" мин", " min"), new Act(A_WORKOUT, i)),
                        cardParams(c));
                if (on) {
                    pickedLine = WorkoutsUi.focusLine(w);
                }
                shown++;
            }
            if (shown == 0) {
                body.addView(banner(c, XemsUi.AMBER, AiText.t("Няма програми с упражнения за „", "No exercise programs for \u201c")
                        + goalName(in.goal) + AiText.t("“. Направи ги в Програми — отбележи им цел и трудност.",
                        "\u201d. Make them in Programs — mark their goal and level.")), XemsUi.matchWrap(c, 14));
            }
        } else {
            List<Program> menu = AutoCatalog.menu(in.goal, in.kind);
            Program rec = AutoCatalog.recommended(in.goal, in.kind, in);
            Program chosen = AutoCatalog.get(in.programId);
            if (chosen == null || !menu.contains(chosen) || AutoCatalog.blockReason(chosen, in.goal, in, false) != null) {
                in.programId = AutoCatalog.blockReason(rec, in.goal, in, false) == null ? rec.id : null;
            }
            // every template of the goal as a card: the colour is the difficulty, the three times the plan
            for (int i = 0; i < menu.size(); i++) {
                Program p = menu.get(i);
                String block = AutoCatalog.blockReason(p, in.goal, in, false);
                if (block != null) {
                    // Not for this client today: not offered at all.
                    if (firstBlock == null) {
                        firstBlock = block;
                    }
                    continue;
                }
                boolean on = p.id.equals(in.programId);
                if (on) {
                    pickedLine = p.desc();
                }
                String art = p.isActive() ? ProgramArt.templateKey(in.sex) : ProgramArt.passiveKey(in.sex);
                strip.addView(programCard(c, on, p.level, art, (p == rec ? "★ " : "") + p.name(), null,
                        AutoCatalog.times(p, in.goal, in), null, new Act(A_PROGRAM, i)), cardParams(c));
                shown++;
            }
            if (shown == 0) {
                body.addView(banner(c, XemsUi.AMBER, firstBlock != null ? firstBlock
                        : AiText.t("Няма програма за този избор.", "No program for this choice.")), XemsUi.matchWrap(c, 14));
            }
        }
        if (shown > 0) {
            programStrip = new android.widget.HorizontalScrollView(c);
            programStrip.setHorizontalScrollBarEnabled(false);
            programStrip.setOverScrollMode(View.OVER_SCROLL_NEVER);
            programStrip.addView(strip);
            body.addView(programStrip, XemsUi.matchWrap(c, 14));
            programStrip.post(new StripTo(programStrip, stripX));
            if (pickedLine != null && pickedLine.length() > 0) {
                TextView d = XemsUi.text(c, pickedLine, 14, XemsUi.MUTED, false);
                d.setMaxLines(2);
                d.setEllipsize(android.text.TextUtils.TruncateAt.END);
                body.addView(d, XemsUi.matchWrap(c, 10));
            }
        }
        // Who operates: remembered, so only a quiet line.
        TextView op = XemsUi.text(c, AiText.t("Управлява: ", "Operated by: ") + (in.solo()
                ? AiText.t("клиентът сам · смени", "the client alone · change")
                : AiText.t("треньор · смени", "trainer · change")), 13, XemsUi.MUTED, false);
        op.setPadding(0, XemsUi.dp(c, 6), 0, XemsUi.dp(c, 6));
        op.setOnClickListener(new Act(A_OPERATOR, 0));
        body.addView(op, XemsUi.matchWrap(c, 16));
        boolean ownMap = false;
        for (Workout w : withEx ? pickList : new ArrayList<Workout>()) {
            ownMap |= w.id.equals(workoutId) && presetProgram(w) == null;
        }
        footer(c, ownMap ? AiText.t("Към настройване  ›", "To setup  ›") : AiText.t("Напред", "Next"), false);
        enable(withEx ? workoutId != null : in.programId != null);
    }

    /** The programs of "С упражнения" on screen (the card index is the position here) and the chosen one. */
    private static List<Workout> pickList = new ArrayList<Workout>();
    private static String workoutId;

    /** The automatic program behind a ready map ("preset:<id>"), null for the studio's own. */
    private static Program presetProgram(Workout w) {
        return w.preset && w.id != null && w.id.startsWith("preset:") ? AutoCatalog.get(w.id.substring(7)) : null;
    }

    /** A made program is offered when it is linked to the goal, is active, and is not for the other sex. */
    private static void addPick(Workout w, AutoModel.Input in) {
        if (w.blocks.isEmpty() || !w.fits(in.goal, Kind.ACTIVE)) {
            return;
        }
        Program rp = presetProgram(w);
        if (rp != null && AutoCatalog.blockReason(rp, in.goal, in, false) != null) {
            return;                                   // not for this client today
        }
        if (w.sex != null && !w.sex.equals(in.sex == AiModel.Sex.MALE ? "m" : "f")) {
            return;
        }
        pickList.add(w);
    }

    private static LinearLayout.LayoutParams cardParams(Context c) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(XemsUi.dp(c, 250), ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.rightMargin = XemsUi.dp(c, 12);
        return lp;
    }

    /**
     * One program card (owner, 1.1.336): the whole card wears the difficulty — green easy, amber medium, red hard —
     * its badge names it; under the name either the three times (warm-up · main · recovery) or, for a made
     * program, its size and total time.
     */
    private static LinearLayout programCard(Context c, boolean on, int level, String artKey, String name, String meta,
                                            int[] times, String total, Act click) {
        int lc = levelColor(level);
        LinearLayout card = XemsUi.vertical(c);
        int pad = XemsUi.dp(c, 10);
        card.setPadding(pad, pad, pad, XemsUi.dp(c, 12));
        card.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, lc, on ? 0.26f : 0.12f),
                XemsUi.dp(c, 18), on ? lc : XemsUi.alpha(lc, 0x99), XemsUi.dp(c, on ? 3f : 1.5f)));
        android.widget.FrameLayout art = new android.widget.FrameLayout(c);
        art.addView(ProgramArt.tileKey(c, artKey, 210, 150), new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView lv = XemsUi.badge(c, levelName(level), lc);
        android.widget.FrameLayout.LayoutParams sl = new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.TOP | Gravity.START);
        sl.setMargins(XemsUi.dp(c, 6), XemsUi.dp(c, 6), 0, 0);
        art.addView(lv, sl);
        if (on) {
            TextView tick = XemsUi.text(c, "✓", 16, XemsUi.ON_ACCENT, true);
            tick.setGravity(Gravity.CENTER);
            tick.setBackgroundDrawable(XemsUi.rounded(lc, XemsUi.dp(c, 14), 0, 0));
            android.widget.FrameLayout.LayoutParams tl = new android.widget.FrameLayout.LayoutParams(
                    XemsUi.dp(c, 28), XemsUi.dp(c, 28), Gravity.TOP | Gravity.END);
            tl.setMargins(0, XemsUi.dp(c, 6), XemsUi.dp(c, 6), 0);
            art.addView(tick, tl);
        }
        card.addView(art);
        TextView nm = XemsUi.text(c, name, 16, XemsUi.TEXT, true);
        nm.setMaxLines(2);
        card.addView(nm, XemsUi.matchWrap(c, 10));
        if (meta != null) {
            card.addView(XemsUi.text(c, meta, 13, XemsUi.MUTED, false), XemsUi.matchWrap(c, 2));
        }
        if (total != null) {
            card.addView(XemsUi.text(c, total, 15, on ? lc : XemsUi.MUTED, true), XemsUi.matchWrap(c, 4));
        }
        if (times != null) {
            LinearLayout row = XemsUi.horizontal(c);
            String[] cap = {AiText.t("Загрявка", "Warm-up"), AiText.t("Основна", "Main"), AiText.t("Възстанов.", "Recovery")};
            for (int k = 0; k < 3; k++) {
                LinearLayout cell = XemsUi.vertical(c);
                TextView v = XemsUi.text(c, times[k] > 0 ? Math.round(times[k] / 60f) + AiText.t(" мин", " min") : "—",
                        15, on ? lc : XemsUi.TEXT, true);
                cell.addView(v);
                cell.addView(XemsUi.text(c, cap[k], 11, XemsUi.MUTED, false));
                row.addView(cell, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            }
            card.addView(row, XemsUi.matchWrap(c, 6));
        }
        card.setOnClickListener(click);
        XemsUi.pressable(card);
        return card;
    }

    // ================================================================ 2 · client and plan

    private static boolean hasHealthFlag(AutoModel.Input in) {
        for (Boolean v : in.screening.contraindications.values()) {
            if (v != null && v) {
                return true;
            }
        }
        return in.screening.feverOrIllness || in.screening.alcoholOrStress48h || in.screening.knownArrhythmia;
    }

    private static void screenClient(Context c) {
        AutoModel.Input in = AutoSession.getInput();
        Program p = AutoCatalog.get(in.programId);
        shell.title.setText(AutoSession.getRows().isEmpty() || AutoSession.getRows().get(0).name.length() == 0
                ? AiText.t("Клиент", "Client") : AutoSession.getRows().get(0).name);
        subtitle(p != null ? p.name() : null);
        // landscape: the client on the left, what will happen on the right — no tall stack
        LinearLayout cols = XemsUi.horizontal(c);
        LinearLayout body = XemsUi.vertical(c);
        LinearLayout right = XemsUi.vertical(c);
        cols.addView(body, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout.LayoutParams rlp0 = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.15f);
        rlp0.leftMargin = XemsUi.dp(c, 22);
        cols.addView(right, rlp0);
        shell.body.addView(cols, XemsUi.matchWrap(c, 0));
        String pb = planBlocker();
        if (pb == null) {
            AutoSession.buildPlan();              // live: every answer below re-plans at once
        }

        // Who: one line from the client record; the editors only when something is missing or on request.
        if (profileOpen) {
            LinearLayout prof = XemsUi.card(c);
            prof.addView(XemsUi.segmented(c, new String[] {AiText.t("Жена", "Female"), AiText.t("Мъж", "Male")},
                    in.sex == AiModel.Sex.FEMALE ? 0 : 1, new Act(A_SEX, 0)));
            LinearLayout nums = XemsUi.horizontal(c);
            nums.addView(labeled(c, AiText.t("Възраст", "Age"),
                    XemsUi.stepper(c, "" + in.age, AiText.t("г.", "y"), 20, new Act(A_AGE, 0)).view), XemsUi.weight(1, 0, c));
            nums.addView(labeled(c, AiText.t("Тегло", "Weight"),
                    XemsUi.stepper(c, "" + Math.round(in.weightKg), "kg", 20, new Act(A_WEIGHT, 0)).view), XemsUi.weight(1, 10, c));
            nums.addView(labeled(c, AiText.t("Ръст", "Height"),
                    XemsUi.stepper(c, in.heightCm > 0 ? "" + in.heightCm : "—", "cm", 20, new Act(A_HEIGHT, 0)).view),
                    XemsUi.weight(1, 10, c));
            prof.addView(nums, XemsUi.matchWrap(c, 10));
            prof.addView(XemsUi.segmented(c, new String[] {AiText.t("Ниска кондиция", "Low fitness"),
                    AiText.t("Средна", "Medium"), AiText.t("Висока", "High")}, in.fitness.ordinal(),
                    new Act(A_FITNESS, 0)), XemsUi.matchWrap(c, 10));
            body.addView(prof, XemsUi.matchWrap(c, 4));
        } else {
            LinearLayout line = XemsUi.horizontal(c);
            line.setGravity(Gravity.CENTER_VERTICAL);
            String fit = in.fitness == AiModel.Fitness.LOW ? AiText.t("ниска кондиция", "low fitness")
                    : in.fitness == AiModel.Fitness.HIGH ? AiText.t("висока кондиция", "high fitness")
                    : AiText.t("средна кондиция", "medium fitness");
            line.addView(XemsUi.text(c, (in.sex == AiModel.Sex.FEMALE ? AiText.t("Жена", "Female") : AiText.t("Мъж", "Male"))
                    + " · " + in.age + AiText.t(" г.", " y") + " · " + Math.round(in.weightKg) + " kg · "
                    + in.heightCm + " cm · " + fit, 14, XemsUi.MUTED, false),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView edit = XemsUi.button(c, "✎  " + AiText.t("Промени", "Edit"), XemsUi.GHOST);
            edit.setOnClickListener(new Act(A_EDIT_PROFILE, 0));
            line.addView(edit);
            body.addView(line, XemsUi.matchWrap(c, 0));
        }

        // The program's own questions: only where the program needs them.
        if (p != null && p.asksPostpartum) {
            LinearLayout pp = XemsUi.card(c);
            pp.addView(labeled(c, AiText.t("Седмици след раждането", "Weeks since birth"),
                    XemsUi.stepper(c, "" + in.extra.weeksSinceBirth, AiText.t("седм.", "wk"), 20, new Act(A_WEEKS, 0)).view));
            pp.addView(toggle(c, AiText.t("Цезарово сечение", "Cesarean section"), null, in.extra.cesarean, 1));
            pp.addView(toggle(c, AiText.t("Кърми", "Breastfeeding"), null, in.extra.breastfeeding, 2));
            pp.addView(toggle(c, AiText.t("Диастаза (≥ 2 пръста)", "Diastasis (≥ 2 fingers)"), null, in.extra.diastasis, 3));
            body.addView(pp, XemsUi.matchWrap(c, 12));
        }
        if (p != null && p.asksBack) {
            LinearLayout bk = XemsUi.card(c);
            bk.addView(XemsUi.label(c, AiText.t("Гръб: има ли някое от тези?", "Back: any of these?")));
            bk.addView(toggle(c, AiText.t("Остра болка (под 6 седмици)", "Acute pain (under 6 weeks)"), null, in.extra.backAcute, 10));
            bk.addView(toggle(c, AiText.t("Болка към крака, изтръпване, слабост", "Pain down the leg, numbness, weakness"), null, in.extra.backRadiating, 11));
            bk.addView(toggle(c, AiText.t("Скорошна травма", "Recent trauma"), null, in.extra.backTrauma, 12));
            bk.addView(toggle(c, AiText.t("Операция на гръбначния стълб", "Spinal surgery"), null, in.extra.backSurgery, 13));
            bk.addView(toggle(c, AiText.t("Нощна болка или температура", "Night pain or fever"), null, in.extra.backNightPainFever, 14));
            bk.addView(toggle(c, AiText.t("Проблем с уринирането", "Bladder problem"), null, in.extra.backBladder, 15));
            body.addView(bk, XemsUi.matchWrap(c, 12));
        }

        // What will happen: the plan, computed from the answers above.
        if (pb == null) {
            planBlock(c, right);
        } else {
            right.addView(banner(c, in.heightCm <= 0 ? XemsUi.AMBER : XemsUi.DANGER, pb), XemsUi.matchWrap(c, 0));
        }

        // How the client is today: one tap each; never blocks, the plan adapts quietly (AiPersonal)
        TextView cap = XemsUi.text(c, AiText.t("Как е днес", "How is today"), 13, XemsUi.MUTED, true);
        body.addView(cap, XemsUi.matchWrap(c, 16));
        LinearLayout todayGrid = XemsUi.vertical(c);
        LinearLayout todayRow = null;
        int inRow = 0;
        for (int i = 0; i < AiPersonal.TODAY.length; i++) {
            String k = AiPersonal.TODAY[i];
            if ("t_period".equals(k) && !AiPersonal.periodApplies(in.sex, in.age, in.cond)) {
                in.today.remove(k);
                continue;
            }
            boolean on = in.today.contains(k);
            TextView chip = XemsUi.chip(c, (on ? "✓ " : "") + AiPersonal.todayName(k, in.sex), on, XemsUi.AMBER);
            chip.setOnClickListener(new Act(A_STATE, i));
            XemsUi.pressable(chip);
            if (todayRow == null || inRow == 3) {
                todayRow = XemsUi.horizontal(c);
                todayGrid.addView(todayRow, XemsUi.matchWrap(c, todayGrid.getChildCount() == 0 ? 0 : 8));
                inRow = 0;
            }
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            lp.rightMargin = XemsUi.dp(c, 8);
            todayRow.addView(chip, lp);
            inRow++;
        }
        if (todayRow != null) {
            while (inRow++ < 3) {                         // keep the last row's cells the same width
                todayRow.addView(new View(c), new LinearLayout.LayoutParams(0, 1, 1f));
            }
        }
        body.addView(todayGrid, XemsUi.matchWrap(c, 6));

        boolean ready = pb == null;
        footer(c, AiText.t("Към настройване  ›", "To setup  ›"), true);
        enable(ready);
    }

    /** The plan on the client step: the three times, HR; options; notes; details folded. Time and intensity are the
     *  program's (owner, 1.1.336): not chosen, only shown. */
    private static void planBlock(Context c, LinearLayout body) {
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input in = AutoSession.getInput();
        if (plan == null) {
            return;
        }
        LinearLayout tiles = XemsUi.horizontal(c);
        // warm-up · main part (together ≤ 20 min of impulses) · the passive recovery (10 min)
        int[] tm = AutoCatalog.times(plan.program, in.goal, in);
        tile(c, tiles, AiText.t("Трудност", "Level"), levelName(plan.program.level), 0, levelColor(plan.program.level));
        tile(c, tiles, AiText.t("Загрявка", "Warm-up"), tm[0] / 60 + AiText.t(" мин", " min"), 10);
        tile(c, tiles, AiText.t("Основна", "Main"), tm[1] / 60 + AiText.t(" мин", " min"), 10);
        tile(c, tiles, AiText.t("Възстановяване", "Recovery"), tm[2] / 60 + AiText.t(" мин", " min"), 10);
        boolean band = AutoSession.isBandConfigured(host);
        if (plan.hrUse != AutoModel.HrUse.NONE && band) {
            tile(c, tiles, AiText.t("Пулс до", "HR up to"), plan.hrCap + "", 10);
        }
        body.addView(tiles, XemsUi.matchWrap(c, 0));

        LinearLayout opt = XemsUi.card(c);
        if (plan.program.variantsBg != null) {
            String[] v = new String[plan.program.variantsBg.length];
            for (int i = 0; i < v.length; i++) {
                v[i] = AiText.t(plan.program.variantsBg[i], plan.program.variantsEn[i]);
            }
            opt.addView(XemsUi.segmented(c, v, in.variant, new Act(A_VARIANT, 0)), XemsUi.matchWrap(c, 10));
        }
        if (plan.doublePulseAllowed) {
            opt.addView(XemsUi.toggleRow(c, AiText.t("Двоен импулс", "Double impulse"),
                    AiText.t("лек импулс и в паузата", "a light pulse in the pause too"),
                    in.doublePulse, new Act(A_DOUBLE, 0)), XemsUi.matchWrap(c, 8));
        }
        if (opt.getChildCount() > 0) {
            body.addView(opt, XemsUi.matchWrap(c, 10));
        }

        // Only what needs attention.
        StringBuilder notes = new StringBuilder();
        if (plan.hrUse != AutoModel.HrUse.NONE && !band) {
            notes.append("• ").append(AiText.t("Без гривна — пулсът не се следи.", "No band — heart rate is not watched.")).append('\n');
        }
        for (AutoSession.Row r : AutoSession.getRows()) {
            if (r.block != null) {
                notes.append("• ").append(r.name.length() > 0 ? r.name : "?").append(": ").append(r.block)
                        .append(AiText.t(" — няма да получи импулси", " — gets no pulses")).append('\n');
            }
        }
        if (notes.length() > 0) {
            body.addView(banner(c, XemsUi.AMBER, notes.toString().trim()), XemsUi.matchWrap(c, 10));
        }

        TextView more = XemsUi.button(c, details ? AiText.t("▴  Скрий фазите", "▴  Hide the phases")
                : AiText.t("▾  Фази и зони", "▾  Phases and zones"), XemsUi.GHOST);
        more.setOnClickListener(new Act(A_DETAILS, 0));
        body.addView(more, XemsUi.matchWrap(c, 4));
        if (details) {
            LinearLayout ph = XemsUi.card(c);
            for (AutoModel.Phase p : plan.phases) {
                AutoModel.Step s = p.steps.get(0);
                StringBuilder sb = new StringBuilder();
                sb.append(Math.round(p.durationS / 60.0)).append(AiText.t(" мин · ", " min · "));
                if (p.wave) {
                    sb.append(AiText.t("вълна по зоните · ", "wave through the zones · ")).append(s.hz).append(" Hz");
                } else {
                    for (int i = 0; i < p.steps.size(); i++) {
                        AutoModel.Step st = p.steps.get(i);
                        sb.append(i > 0 ? " ↔ " : "").append(st.hz).append(" Hz ").append(st.onS).append("/").append(st.offS).append(" s");
                    }
                }
                sb.append(" · ").append(Math.round(Math.min(plan.phiMax, p.phiStart) * 100));
                if (Math.abs(p.phiEnd - p.phiStart) > 0.01) {
                    sb.append("→").append(Math.round(Math.min(plan.phiMax, p.phiEnd) * 100));
                }
                sb.append(" %");
                LinearLayout r = XemsUi.horizontal(c);
                r.addView(XemsUi.text(c, AiText.t(p.nameBg, p.nameEn), 14, XemsUi.TEXT, true),
                        new LinearLayout.LayoutParams(XemsUi.dp(c, 170), ViewGroup.LayoutParams.WRAP_CONTENT));
                r.addView(XemsUi.text(c, sb.toString(), 13, XemsUi.MUTED, false),
                        new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                ph.addView(r, XemsUi.matchWrap(c, 6));
            }
            ph.addView(zoneBars(c, plan), XemsUi.matchWrap(c, 14));
            StringBuilder pn = new StringBuilder();
            List<String> list = AiText.t("x", "y").equals("x") ? plan.notesBg : plan.notesEn;
            for (String n : list) {
                pn.append("• ").append(n).append('\n');
            }
            if (pn.length() > 0) {
                ph.addView(hint(c, pn.toString().trim()), XemsUi.matchWrap(c, 10));
            }
            body.addView(ph, XemsUi.matchWrap(c, 8));
        }
    }

    /** Why the plan cannot be made yet (profile, age, the program's own limits), or null. Health is separate. */
    private static String planBlocker() {
        AutoModel.Input in = AutoSession.getInput();
        if (in.heightCm <= 0) {
            return AiText.t("Въведи ръста — от него се смята планът.", "Enter the height — the plan depends on it.");
        }
        if (in.age < 18) {
            return AiText.t("Под 18 г. — не.", "Under 18 — no.");
        }
        Program p = AutoCatalog.get(in.programId);
        return p != null ? AutoCatalog.blockReason(p, in.goal, in) : AiText.t("Няма програма", "No program");
    }

    /** Why the client step does not let go, or null. */
    private static String clientBlocker() {
        AutoModel.Input in = AutoSession.getInput();
        String pb = planBlocker();
        if (pb != null) {
            return pb;
        }
        return null;                                  // contraindications: the registration's, not the session's
    }

    private static View zoneBars(Context c, AutoModel.Plan plan) {
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.BOTTOM);
        String[] names = zoneNames();
        for (int k = 0; k < AutoModel.DISPLAY_ORDER.length; k++) {
            int ch = AutoModel.DISPLAY_ORDER[k];
            LinearLayout col = XemsUi.vertical(c);
            col.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.BOTTOM);
            int v = plan.zones[ch];
            TextView val = XemsUi.text(c, plan.zoneLocked[ch] ? "🔒" + v : "" + v, 12, XemsUi.TEXT, true);
            val.setGravity(Gravity.CENTER);
            col.addView(val);
            View bar = new View(c);
            GradientDrawable g = new GradientDrawable();
            g.setColor(XemsUi.mix(XemsUi.SURFACE, XemsUi.GO, 0.25f + 0.75f * v / 100f));
            g.setCornerRadius(XemsUi.dp(c, 5));
            bar.setBackgroundDrawable(g);
            LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(XemsUi.dp(c, 26), XemsUi.dp(c, 4 + 70 * v / 100f));
            bp.topMargin = XemsUi.dp(c, 3);
            col.addView(bar, bp);
            TextView n = XemsUi.text(c, names[ch], 11, XemsUi.MUTED, false);
            n.setGravity(Gravity.CENTER);
            col.addView(n);
            row.addView(col, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
        return row;
    }

    static String[] zoneNames() {
        String[] n = new String[AutoModel.CHANNELS];
        n[AutoModel.CALF] = AiText.t("Прасец", "Calf");
        n[AutoModel.FRONT_THIGH] = AiText.t("Пр. бедро", "Quads");
        n[AutoModel.BACK_THIGH] = AiText.t("Зад. бедро", "Hamstr.");
        n[AutoModel.GLUTES] = AiText.t("Седалище", "Glutes");
        n[AutoModel.ABS] = AiText.t("Корем", "Abs");
        n[AutoModel.LOWER_BACK] = AiText.t("Кръст", "Low back");
        n[AutoModel.BACK] = AiText.t("Гръб", "Back");
        n[AutoModel.TRAPS] = AiText.t("Трапец", "Traps");
        n[AutoModel.CHEST] = AiText.t("Гърди", "Chest");
        n[AutoModel.ARMS] = AiText.t("Ръце", "Arms");
        return n;
    }

    // ================================================================ 3 · strength

    /** CR-10 as ten cells: the target band lit in green and named under it (the feeling to reach). */
    private static View cr10Scale(Context c, int lo, int hi) {
        LinearLayout box = XemsUi.vertical(c);
        LinearLayout row = XemsUi.horizontal(c);
        for (int v = 1; v <= 10; v++) {
            boolean in = v >= lo && v <= hi;
            int base = v <= 3 ? XemsUi.GO : v <= 6 ? XemsUi.AMBER : XemsUi.DANGER;
            TextView t = XemsUi.text(c, String.valueOf(v), in ? 18 : 14, in ? XemsUi.ON_ACCENT : XemsUi.MUTED, in);
            t.setGravity(Gravity.CENTER);
            t.setBackgroundDrawable(XemsUi.rounded(in ? XemsUi.GO : XemsUi.alpha(base, 0x22), XemsUi.dp(c, 10),
                    in ? XemsUi.GO_TEXT : 0, in ? XemsUi.dp(c, 2) : 0));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, in ? 46 : 38), 1f);
            lp.setMargins(XemsUi.dp(c, 3), 0, XemsUi.dp(c, 3), 0);
            lp.gravity = Gravity.CENTER_VERTICAL;
            row.addView(t, lp);
        }
        row.setGravity(Gravity.CENTER_VERTICAL);
        box.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 48)));
        return box;
    }

    private static String cr10Text(int v) {
        if (v <= 3) {
            return AiText.t("ясно, леко", "clear, light");
        }
        if (v <= 5) {
            return AiText.t("силно, но приятно", "strong but pleasant");
        }
        return AiText.t("много силно, издържимо", "very strong, bearable");
    }

    // ================================================================ live board (from the tile)

    /**
     * The live board (owner, 1.1.278; docs/xems-auto-mode-spec.md §12), built into the training screen itself by
     * {@link AutoBoard}: under the client's own row (channels, avatar, settings), in place of the rows for adding
     * participants, down to the module bar. Wide and short (≈ 1170 × 440 dp), so everything sits side by side:
     * <pre>
     *  program · phase                                                         ⓘ
     *  ┌ exercise ─────────────────────────────────┐┌ body ───────────────────────┐
     *  │ [goal]   0:23 ● ● ○ ○  │ Name              ││ front | back    client       │
     *  │  ◯ active  →  ◯ next   │ ① … ⑥ steps       ││                 ♥ 151        │
     *  │                        │ (or the phases)   ││                 Натоварване ▽│
     *  └───────────────────────────────────────────┘└──────────────────────────────┘
     *  ┌ the whole session, edge to edge ─────────────────────────────────────────┐
     * </pre>
     * No keys: the main panel's ▶/❚❚ and ■ drive Auto.
     */
    static void buildBoard(Context c, LinearLayout body) {
        XemsUi.init(c);
        host = c instanceof Activity ? (Activity) c : host;
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input lead = AutoSession.getInput();
        rowLabels.clear();

        // no header: the program is on the AUTO sign of the client's row, the phase on the card and the timeline
        boardSub = null;

        // ---- the two cards
        LinearLayout top = XemsUi.horizontal(c);
        LinearLayout ex = nativeCard(c);
        LinearLayout exRow = XemsUi.horizontal(c);
        android.widget.FrameLayout headBar = new android.widget.FrameLayout(c);
        TextView goal = XemsUi.badge(c, goalName(plan.input.goal), goalColor(plan.input.goal));
        headBar.addView(goal, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.START | Gravity.CENTER_VERTICAL));
        LinearLayout clock = XemsUi.horizontal(c);
        clock.setGravity(Gravity.CENTER_VERTICAL);
        runTime = XemsUi.text(c, "", 40, XemsUi.TEXT, true);
        runTime.setTypeface(android.graphics.Typeface.create("sans-serif-condensed", android.graphics.Typeface.BOLD));
        runTime.setIncludeFontPadding(false);
        clock.addView(runTime);
        runDots = new AutoViews.Dots(c);
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(XemsUi.dp(c, 90), XemsUi.dp(c, 22));
        dlp.leftMargin = XemsUi.dp(c, 10);
        clock.addView(runDots, dlp);
        headBar.addView(clock, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.END | Gravity.CENTER_VERTICAL));
        // the figures twice as big (owner, 1.1.290): the ring as high as the card, the next one beside at 46 %;
        // the goal and the timer go above the name on the right
        AutoViews.StagePair rings = new AutoViews.StagePair(c, XemsUi.dp(c, 300), XemsUi.dp(c, 26));
        AutoViews.RingStage stage = new AutoViews.RingStage(c, 0.05f, XemsUi.dp(c, 2000));
        runFigure = new ExerciseFigure(c);
        runFigure.setCycle(System.currentTimeMillis(), 2, 2);
        stage.addView(runFigure);
        runArt = ProgramArt.ring(c, ringKey(plan.program, false, lead != null ? lead.sex : null));
        stage.addView(runArt);
        runRing = new AutoViews.SetRing(c);
        stage.addView(runRing);
        stage.setOnClickListener(new Act(A_HOW, 0));
        rings.addView(stage);
        runArrow = XemsUi.text(c, "→", 22, XemsUi.MUTED, false);
        runArrow.setGravity(Gravity.CENTER);
        rings.addView(runArrow);
        runNextStage = new AutoViews.RingStage(c, 0.06f, XemsUi.dp(c, 2000));
        runNextRing = new AutoViews.SetRing(c);
        runNextFig = new ExerciseFigure(c);
        runNextFig.setCycle(System.currentTimeMillis(), 2, 2);
        runNextStage.addView(runNextFig);
        runNextStage.addView(runNextRing);
        rings.addView(runNextStage);
        exRow.addView(rings, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        // right half: the name and every step (or the program's phases when it has no exercises)
        LinearLayout exRight = XemsUi.vertical(c);
        exRight.addView(headBar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 44)));
        runPhase = XemsUi.text(c, "", 18, XemsUi.TEXT, true);
        runPhase.setMaxLines(1);
        runPhase.setEllipsize(android.text.TextUtils.TruncateAt.END);
        runPhase.setOnClickListener(new Act(A_HOW, 0));
        exRight.addView(runPhase, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        runHow = XemsUi.vertical(c);
        exRight.addView(runHow, XemsUi.matchWrap(c, 6));
        runPhases = XemsUi.vertical(c);
        exRight.addView(runPhases, XemsUi.matchWrap(c, 12));
        LinearLayout.LayoutParams erp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        erp.leftMargin = XemsUi.dp(c, 18);
        erp.rightMargin = XemsUi.dp(c, 26);
        exRow.addView(exRight, erp);
        ex.addView(exRow, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        howShownFor = "-";
        phasesShownFor = -2;
        View exFrame = infoCorner(c, ex, INFO_SET);
        runFlash = new View(c);
        runFlash.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.AMBER, 0x2E), XemsUi.dp(c, 12), XemsUi.AMBER,
                XemsUi.dp(c, 3)));
        runFlash.setAlpha(0f);
        runFlash.setClickable(false);
        ((android.widget.FrameLayout) exFrame).addView(runFlash, new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        top.addView(exFrame, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 2.3f));

        LinearLayout right = nativeCard(c);
        LinearLayout figs = XemsUi.horizontal(c);
        runBody = new AutoViews.BodyHeat(c);
        figs.addView(runBody, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        LinearLayout side = XemsUi.vertical(c);
        side.setGravity(Gravity.CENTER_HORIZONTAL);
        runClient = XemsUi.text(c, "", 15, XemsUi.TEXT, true);
        runClient.setGravity(Gravity.END);
        runClient.setMaxLines(2);
        runClient.setEllipsize(android.text.TextUtils.TruncateAt.END);
        side.addView(runClient, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        runVital = new AutoViews.Vital(c);
        side.addView(runVital, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 62)));
        TextView loadLabel = XemsUi.text(c, AiText.t("Натоварване", "Load"), 12, XemsUi.MUTED, true);
        loadLabel.setGravity(Gravity.CENTER);
        side.addView(loadLabel, XemsUi.matchWrap(c, 4));
        runPeak = new AutoViews.PeakBar(c);
        side.addView(runPeak, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(XemsUi.dp(c, 100), ViewGroup.LayoutParams.MATCH_PARENT);
        slp.leftMargin = XemsUi.dp(c, 6);
        figs.addView(side, slp);
        right.addView(figs, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        rlp.leftMargin = XemsUi.dp(c, 10);
        top.addView(infoCorner(c, right, INFO_BODY), rlp);
        body.addView(top, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        // ---- the whole session, edge to edge: the line, then one row — the clock and the latest notice
        LinearLayout tl = nativeCard(c);
        runTimeline = new AutoViews.Timeline(c);
        tl.addView(runTimeline, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 92)));
        LinearLayout foot = XemsUi.horizontal(c);
        foot.setGravity(Gravity.CENTER_VERTICAL);
        runClock = XemsUi.text(c, "", 14, XemsUi.TEXT, true);
        ImpulseGlyph glyph = new ImpulseGlyph(ImpulseGlyph.TIME, XemsUi.MUTED, XemsUi.dp(c, 1.8f));
        glyph.setBounds(0, 0, XemsUi.dp(c, 15), XemsUi.dp(c, 15));
        runClock.setCompoundDrawables(glyph, null, null, null);
        runClock.setCompoundDrawablePadding(XemsUi.dp(c, 8));
        foot.addView(runClock);
        runNotice = XemsUi.text(c, "", 14, XemsUi.AMBER, true);
        runNotice.setGravity(Gravity.END);
        runNotice.setMaxLines(1);
        runNotice.setEllipsize(android.text.TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams nlp2 = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        nlp2.leftMargin = XemsUi.dp(c, 16);
        nlp2.rightMargin = XemsUi.dp(c, 28);
        foot.addView(runNotice, nlp2);
        tl.addView(foot, XemsUi.matchWrap(c, 2));
        body.addView(infoCorner(c, tl, INFO_TIMELINE), XemsUi.matchWrap(c, 6));
        refreshRun();
    }

    // ================================================================ setting up (owner, 1.1.336)

    private static final List<TextView> setupLabels = new ArrayList<TextView>();
    private static TextView setupGo;
    private static TextView setupNote;

    /**
     * The setting-up board on the training screen, in place of the old strength sheet: the program (picture, level,
     * the three times), what to do — the total strength with the row's own slider and each channel with the channel
     * sliders, up to the target feeling — each row's strength now, and ▶ Старт, which begins the program.
     */
    static void buildSetupBoard(Context c, LinearLayout body) {
        XemsUi.init(c);
        host = c instanceof Activity ? (Activity) c : host;
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input lead = AutoSession.getInput();
        setupLabels.clear();
        LinearLayout card = nativeCard(c);
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);

        AiModel.Sex sx = lead != null ? lead.sex : null;
        String key = plan.program.isActive() ? ProgramArt.templateKey(sx) : ProgramArt.passiveKey(sx);
        row.addView(ProgramArt.ring(c, key), new LinearLayout.LayoutParams(XemsUi.dp(c, 200), XemsUi.dp(c, 200)));

        LinearLayout mid = XemsUi.vertical(c);
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(c, AiText.t("Настройване", "Setting up"), 26, XemsUi.TEXT, true));
        TextView lv = XemsUi.badge(c, levelName(plan.program.level), levelColor(plan.program.level));
        LinearLayout.LayoutParams lvp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lvp.leftMargin = XemsUi.dp(c, 12);
        head.addView(lv, lvp);
        mid.addView(head);
        mid.addView(XemsUi.text(c, plan.program.name() + " · " + goalName(plan.input.goal), 15, XemsUi.MUTED, true),
                XemsUi.matchWrap(c, 2));
        LinearLayout tiles = XemsUi.horizontal(c);
        int[] tm = AutoCatalog.times(plan.program, plan.input.goal, plan.input);
        tile(c, tiles, AiText.t("Загрявка", "Warm-up"), tm[0] / 60 + AiText.t(" мин", " min"), 0);
        tile(c, tiles, AiText.t("Основна", "Main"), tm[1] / 60 + AiText.t(" мин", " min"), 10);
        tile(c, tiles, AiText.t("Възстановяване", "Recovery"), tm[2] / 60 + AiText.t(" мин", " min"), 10);
        mid.addView(tiles, XemsUi.matchWrap(c, 8));
        mid.addView(XemsUi.text(c, AiText.t("① Обща сила — плъзгачът на реда   ② Сила на всеки канал — каналите на реда   ③ ▶ Старт",
                "① Total strength — the row's slider   ② Each channel — the row's channels   ③ ▶ Start"),
                14, XemsUi.TEXT, false), XemsUi.matchWrap(c, 10));
        mid.addView(XemsUi.text(c, AiText.t("До усещане ", "Up to a feeling of ") + plan.cr10Lo
                + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "") + AiText.t(" от 10 · ", " of 10 · ")
                + cr10Text(plan.cr10Hi), 13, XemsUi.MUTED, true), XemsUi.matchWrap(c, 8));
        mid.addView(cr10Scale(c, plan.cr10Lo, plan.cr10Hi), XemsUi.matchWrap(c, 2));
        LinearLayout.LayoutParams mlp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        mlp.leftMargin = XemsUi.dp(c, 18);
        mlp.rightMargin = XemsUi.dp(c, 18);
        row.addView(mid, mlp);

        LinearLayout right = XemsUi.vertical(c);
        right.setGravity(Gravity.CENTER_VERTICAL);
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            LinearLayout line = XemsUi.horizontal(c);
            line.setGravity(Gravity.CENTER_VERTICAL);
            line.addView(XemsUi.text(c, r.name.length() > 0 ? r.name : AiText.t("Участник ", "Participant ") + (i + 1),
                    15, XemsUi.TEXT, true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView lbl = XemsUi.text(c, "", 24, XemsUi.GO_TEXT, true);
            setupLabels.add(lbl);
            line.addView(lbl);
            right.addView(line, XemsUi.matchWrap(c, i == 0 ? 0 : 4));
            if (r.block != null) {
                right.addView(XemsUi.text(c, "⊘ " + r.block, 12, XemsUi.DANGER, true));
            }
        }
        setupNote = XemsUi.text(c, "", 13, XemsUi.AMBER, true);
        setupNote.setMaxLines(3);
        setupNote.setEllipsize(android.text.TextUtils.TruncateAt.END);
        right.addView(setupNote, XemsUi.matchWrap(c, 8));
        setupGo = XemsUi.button(c, AiText.t("▶  Старт", "▶  Start"), XemsUi.PRIMARY);
        setupGo.setOnClickListener(new Act(A_SETUP_GO, 0));
        right.addView(setupGo, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 66)));
        TextView back = XemsUi.button(c, AiText.t("‹  Назад", "‹  Back"), XemsUi.GHOST);
        back.setOnClickListener(new Act(A_SETUP_BACK, 0));
        right.addView(back, XemsUi.matchWrap(c, 8));
        row.addView(right, new LinearLayout.LayoutParams(XemsUi.dp(c, 260), ViewGroup.LayoutParams.WRAP_CONTENT));
        card.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        body.addView(card, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        refreshSetup();
    }

    /** Each row's strength now; ▶ Старт wakes once a strength is set; the latest notice. */
    private static void refreshSetup() {
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < setupLabels.size() && i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            setupLabels.get(i).setText(r.block != null ? "—" : String.valueOf(Math.max(0, r.lastStrength)));
        }
        boolean ok = AutoSession.canStart();
        if (setupGo != null) {
            setupGo.setAlpha(ok ? 1f : 0.45f);
        }
        if (setupNote != null) {
            String n = AutoSession.getLastNotice();
            setupNote.setText(n != null && n.length() > 0 ? n
                    : ok ? "" : AiText.t("Качи силата от главния екран — Старт се отключва.",
                    "Raise the strength on the main screen — Start unlocks."));
        }
    }

    /** A card exactly like the training screen's own rows (the app's ui_card_background), else the kit's card. */
    static LinearLayout nativeCard(Context c) {
        LinearLayout card = XemsUi.card(c);
        try {
            int id = c.getResources().getIdentifier("ui_card_background", "drawable", c.getPackageName());
            if (id != 0) {
                card.setBackgroundResource(id);
            }
        } catch (Throwable ignored) {
        }
        int p = XemsUi.dp(c, 10);
        card.setPadding(p, p, p, p);
        return card;
    }

    /** The program's phases as a line of chips (programs without exercises): done dimmed, now bright, next plain. */
    private static void showPhases(AutoEngine e, boolean on) {
        int key = on ? e.getPhaseIndex() : -1;
        if (key == phasesShownFor) {
            return;
        }
        phasesShownFor = key;
        runPhases.removeAllViews();
        runPhases.setVisibility(on ? View.VISIBLE : View.GONE);
        if (!on) {
            return;
        }
        Context c = runPhases.getContext();
        AutoModel.Plan plan = e.getPlan();
        LinearLayout row = XemsUi.horizontal(c);
        for (int i = 0; i < plan.phases.size(); i++) {
            AutoModel.Phase p = plan.phases.get(i);
            boolean now = i == e.getPhaseIndex();
            boolean done = i < e.getPhaseIndex();
            int col = p.isCooldown() ? AutoViews.HEAT_COL[1] : now ? XemsUi.GO : XemsUi.MUTED;
            TextView chip = XemsUi.text(c, (p.isCooldown() ? AiText.t("Възстановяване", "Recovery")
                    : AiText.t(p.nameBg, p.nameEn)) + "  " + Math.round(p.durationS / 60.0) + "′", 13,
                    now ? XemsUi.TEXT : XemsUi.MUTED, now);
            chip.setPadding(XemsUi.dp(c, 10), XemsUi.dp(c, 5), XemsUi.dp(c, 10), XemsUi.dp(c, 5));
            chip.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(col, now ? 0x30 : 0x14), XemsUi.dp(c, 14),
                    now ? col : 0, now ? XemsUi.dp(c, 1.2f) : 0));
            chip.setAlpha(done ? 0.45f : 1f);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.rightMargin = XemsUi.dp(c, 6);
            row.addView(chip, lp);
        }
        android.widget.HorizontalScrollView hs = new android.widget.HorizontalScrollView(c);
        hs.setHorizontalScrollBarEnabled(false);
        hs.addView(row);
        runPhases.addView(hs);
    }

    /**
     * A card with its own ⓘ in the top-right corner: a tap shows what this part means and how it is worked out —
     * a few lines next to it, gone with the next tap anywhere (docs/xems-ux-golden-rules.md: info behind ⓘ).
     */
    private static View infoCorner(Context c, LinearLayout card, int which) {
        android.widget.FrameLayout f = new android.widget.FrameLayout(c);
        f.addView(card, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        TextView i = XemsUi.text(c, "i", 13, AUTO_TEAL, true);
        i.setGravity(Gravity.CENTER);
        i.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(AUTO_TEAL, 0x1A), XemsUi.dp(c, 12), XemsUi.alpha(AUTO_TEAL, 0xCC),
                XemsUi.dp(c, 1.4f)));
        i.setContentDescription(AiText.t("Как работи", "How it works"));
        i.setOnClickListener(new InfoTap(which));
        XemsUi.pressable(i);
        // the body card has the pulse column on the right: its ⓘ sits in the empty top-left corner
        boolean leftSide = which == INFO_BODY;
        android.widget.FrameLayout.LayoutParams lp = new android.widget.FrameLayout.LayoutParams(XemsUi.dp(c, 24),
                XemsUi.dp(c, 24), Gravity.TOP | (leftSide ? Gravity.START : Gravity.END));
        lp.setMargins(leftSide ? XemsUi.dp(c, 10) : 0, XemsUi.dp(c, 10), leftSide ? 0 : XemsUi.dp(c, 10), 0);
        f.addView(i, lp);
        return f;
    }

    static String infoText(int which) {
        switch (which) {
            case INFO_BOARD:
                return stepTipText(STEP_RUN);
            case INFO_SET:
                return AiText.t("Пръстенът е серията: 30–40 s, точките са импулсите.\n"
                        + "След серията импулсите спират сами. Почивката е колкото мускулите искат, за да възстановят "
                        + "енергията си (по натоварването и кондицията), и пулсът да спадне. Тогава ▶ светва.\n"
                        + "Всеки старт брои 3 s: три къси сигнала и дълъг с първия импулс.\n"
                        + "Сивото вдясно е следващото; последните 10 s се оцветява. ⏭ в панела вдясно (между ▶ и +) — "
                        + "пропуска: серията (или идващата серия) отпада и тренировката става толкова по-кратка; следва "
                        + "следващото по ред.\n"
                        + "Управление — с главните ▶ / ❚❚ и ■: ■ работи от пауза; първият — към възстановяване, вторият — край.",
                        "The ring is the set: 30–40 s, the dots are the impulses.\n"
                        + "After the set the impulses stop by themselves. The rest lasts as long as the muscles need to "
                        + "refill (by the load and fitness) and the HR to come down; then ▶ lights up.\n"
                        + "Every start counts 3 s: three short beeps and a long one with the first impulse.\n"
                        + "The grey one on the right is the next; it lights up in the last 10 s. ⏭ on the right panel "
                        + "(between ▶ and +) skips: the set (or the coming one) is dropped and the session is that much "
                        + "shorter; the next in order follows.\n"
                        + "Control — the main ▶ / ❚❚ and ■: ■ works from a pause; the first goes to the recovery, the second ends.");
            case INFO_BODY:
                return AiText.t("Всяка зона се оцветява с работата, която е получила досега, спрямо най-натоварената зона на "
                        + "тази тренировка: тя стига пълния цвят (жена — magenta, мъж — cyan) в края на плана; другите остават "
                        + "толкова по-бледи, колкото по-малко получават. Канал на 0 — само работата от упражнението. "
                        + "Над целта цветът става оранжев, после червен. Зона, която работи в момента, светва по-ярко.\n"                        + "Сметка: сила × ширина на импулса × честота × % на зоната + работата на упражнението.\n"
                        + "Червеното сърце бие с пулса; числото е в цвета на пулсовата зона.\n"
                        + "Натоварване — цялото тяло: мускулите по импулса и упражнението, кислородът и пулсът, свършената работа; по данните на клиента.",
                        "Each zone is coloured by the work it has had so far against the most worked zone of this session: "
                        + "that one reaches full colour (woman — magenta, man — cyan) at the end of the plan; the others stay as "
                        + "much paler as they get less. A channel at 0 — the exercise's work only. Past the target the colour "
                        + "turns orange, then red. A zone working now glows brighter.\n"                        + "Sum: strength × pulse width × frequency × zone % + the exercise's work.\n"
                        + "The red heart beats with the HR; the number is in the HR zone's colour.\n"
                        + "Load — the whole body: the muscles by impulse and exercise, oxygen and HR, the work done; by the client's data.");
            default:
                return AiText.t("Цялата тренировка по реалния часовник: височина и цвят — общото натоварване (горе = 100 %, "
                        + "здравословният максимум на клиента).\n"
                        + "Серията (ЕМС + упражнението) стои високо, почивката и всяка пауза падат с натоварването, докато траят. "
                        + "Възстановяването накрая е отделна, ниска част.\n"
                        + "Миналото е ярко, предстоящото — прогноза от сегашното състояние.\n"
                        + "Червена линия — пулсът, пунктир — таванът. Часовникът брои и паузите.",
                        "The whole session on the real clock: height and colour — the total load (top = 100 %, the client's "
                        + "healthy maximum).\n"
                        + "A set (EMS + the exercise) stands high, the rest and any pause fall with the load as long as they last. "
                        + "The recovery at the end is its own low part.\n"
                        + "The past is bright, what comes is forecast from the state now.\n"
                        + "Red line — the HR, dashed — the ceiling. The clock counts the pauses too.");
        }
    }

    static final class InfoTap implements View.OnClickListener {
        private final int which;

        InfoTap(int which) {
            this.which = which;
        }

        @Override
        public void onClick(View v) {
            showInfo(v, which);
        }
    }

    private static void showInfo(View anchor, int which) {
        try {
            if (infoPop != null && infoPop.isShowing()) {
                infoPop.dismiss();
                infoPop = null;
                return;
            }
            Context c = anchor.getContext();
            TextView t = XemsUi.text(c, infoText(which), 14, XemsUi.TEXT, false);
            t.setLineSpacing(XemsUi.dp(c, 3), 1f);
            t.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 12), XemsUi.dp(c, 16), XemsUi.dp(c, 12));
            t.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f), XemsUi.dp(c, 14),
                    0xFF42A5F5, XemsUi.dp(c, 1)));
            infoPop = new android.widget.PopupWindow(t, XemsUi.dp(c, 380), ViewGroup.LayoutParams.WRAP_CONTENT, true);
            infoPop.setOutsideTouchable(true);
            infoPop.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
            infoPop.setElevation(XemsUi.dp(c, 8));
            infoPop.showAsDropDown(anchor, which == INFO_BODY ? 0 : -XemsUi.dp(c, 356), XemsUi.dp(c, 6));
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.info", t);
        }
    }

    /** Every step of how the exercise (or the phase) is done, numbered; null hides them. */
    private static void showHow(String key, String[] steps) {
        String k = key != null ? key : "";
        if (k.equals(howShownFor)) {
            return;
        }
        howShownFor = k;
        Context c = runHow.getContext();
        runHow.removeAllViews();
        if (steps == null) {
            steps = new String[0];
        }
        for (int i = 0; i < steps.length; i++) {
            LinearLayout row = XemsUi.horizontal(c);
            row.setGravity(Gravity.TOP);
            TextView n = XemsUi.text(c, String.valueOf(i + 1), 12, XemsUi.GO_TEXT, true);
            n.setGravity(Gravity.CENTER);
            n.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(XemsUi.GO, 0x26), XemsUi.dp(c, 11), 0, 0));
            LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(XemsUi.dp(c, 22), XemsUi.dp(c, 22));
            nlp.rightMargin = XemsUi.dp(c, 12);
            row.addView(n, nlp);
            TextView t = XemsUi.text(c, steps[i], 13, XemsUi.TEXT, false);
            t.setLineSpacing(XemsUi.dp(c, 1), 1f);
            t.setMaxLines(2);
            t.setEllipsize(android.text.TextUtils.TruncateAt.END);
            row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            runHow.addView(row, XemsUi.matchWrap(c, i == 0 ? 0 : 5));
        }
        runHow.setAlpha(0f);
        runHow.animate().alpha(1f).setDuration(220).start();
    }

    /**
     * Labelled lines in the exercise card's place (programs without exercises, the recovery): Goal · Effect · You.
     * Empty texts are left out; same key = no rebuild.
     */
    private static void showLabelled(String key, String[] labels, String[] texts) {
        if (key.equals(howShownFor)) {
            return;
        }
        howShownFor = key;
        Context c = runHow.getContext();
        runHow.removeAllViews();
        int[] cols = {AUTO_TEAL, XemsUi.AMBER, XemsUi.GO_TEXT};
        int n = 0;
        for (int i = 0; i < texts.length; i++) {
            if (texts[i] == null || texts[i].trim().length() == 0) {
                continue;
            }
            LinearLayout row = XemsUi.horizontal(c);
            row.setGravity(Gravity.TOP);
            int col = cols[i % cols.length];
            TextView l = XemsUi.text(c, labels[i], 11, col, true);
            l.setGravity(Gravity.CENTER);
            l.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(col, 0x22), XemsUi.dp(c, 10), 0, 0));
            LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(XemsUi.dp(c, 54), XemsUi.dp(c, 22));
            llp.rightMargin = XemsUi.dp(c, 12);
            row.addView(l, llp);
            TextView t = XemsUi.text(c, texts[i], 14, XemsUi.TEXT, false);
            t.setLineSpacing(XemsUi.dp(c, 2), 1f);
            t.setMaxLines(4);
            t.setEllipsize(android.text.TextUtils.TruncateAt.END);
            row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            runHow.addView(row, XemsUi.matchWrap(c, n == 0 ? 2 : 10));
            n++;
        }
        runHow.setAlpha(0f);
        runHow.animate().alpha(1f).setDuration(220).start();
    }

    /** The library's "how" of an exercise as at most 6 steps (one sentence each). */
    static String[] howSteps(Context c, String id) {
        try {
            ExerciseLibrary.Entry e = ExerciseLibrary.get(c, id);
            String how = e != null ? e.howText() : null;
            if (how == null || how.trim().length() == 0) {
                return new String[0];
            }
            String[] parts = how.trim().split("(?<=[.!?])\\s+");
            java.util.List<String> out = new java.util.ArrayList<String>();
            for (String p : parts) {
                String q = p.trim();
                if (q.endsWith(".")) {
                    q = q.substring(0, q.length() - 1);
                }
                if (q.length() > 0) {
                    out.add(q);
                }
            }
            while (out.size() > 5) {                            // keep 5 (the card's height): the last ones join
                out.set(3, out.get(3) + ". " + out.remove(4));
            }
            return out.toArray(new String[0]);
        } catch (Throwable t) {
            return new String[0];
        }
    }

    /** The ring's picture without an exercise figure (owner, 1.1.336): the active template is the standing figure
     *  with the dumbbell; the passive procedure and every recovery, the figure lying back. */
    private static String ringKey(AutoCatalog.Program p, boolean relax, AiModel.Sex sx) {
        return relax || !p.isActive() ? ProgramArt.passiveKey(sx) : ProgramArt.templateKey(sx);
    }

    private static void refreshRun() {
        AutoEngine e = AutoSession.getEngine();
        if (e == null || runPhase == null) {
            return;
        }
        long now = System.currentTimeMillis();
        AutoModel.Plan plan = e.getPlan();
        AutoModel.Phase ph = e.phase();
        AutoEngine.State st = e.getState();
        boolean recovery = ph != null && ph.isCooldown();
        boolean beforeRecovery = e.isRestBeforeCooldown();
        AutoModel.Input lead = AutoSession.getInput();
        boolean rest = st == AutoEngine.State.REST;
        int cd = st == AutoEngine.State.COUNTDOWN ? Math.max(1, e.getCountdownLeftS(now)) : 0;

        // ---- the exercise: figure (or the program's picture), name, every step
        String ex = e.getExercise();
        boolean fig = ex != null && !beforeRecovery;
        int figColor = ExerciseFigure.colorFor(lead != null ? lead.sex : null);
        runFigure.setVisibility(fig ? View.VISIBLE : View.INVISIBLE);
        runArt.setVisibility(fig ? View.GONE : View.VISIBLE);
        runArt.setAlpha(st == AutoEngine.State.RUN ? 1f : 0.6f);
        if (!fig) {
            // the passive recovery: the figure lying back on the couch, not the program's picture
            boolean relax = recovery || beforeRecovery;
            AiModel.Sex sx = lead != null ? lead.sex : null;
            ProgramArt.showRing(runArt, ringKey(plan.program, relax, sx));
        }
        String nx = e.getNextExercise();
        boolean soon = st == AutoEngine.State.RUN && nx != null && e.getSetLeftS() <= NEXT_SOON_S;
        // the next exercise beside: grey and smaller while it waits, in colour in the set's last seconds
        boolean nextFig = fig && nx != null && nx.length() > 0;
        runNextStage.setVisibility(nextFig ? View.VISIBLE : View.GONE);
        runArrow.setVisibility(nextFig ? View.VISIBLE : View.GONE);
        if (nextFig) {
            runNextFig.setExercise(nx);
            runNextFig.setColor(soon ? figColor : XemsUi.alpha(XemsUi.MUTED, 0x99));
            runNextFig.setAlpha(soon ? 1f : 0.75f);
            runNextRing.set(0, AutoViews.SetRing.IDLE, 0);
            runArrow.setTextColor(soon ? XemsUi.GO_TEXT : XemsUi.alpha(XemsUi.MUTED, 0x99));
        }
        if (fig) {
            runFigure.setColor(figColor);
            runFigure.setExercise(ex);
            // in the rest the coming exercise is the big one, full colour, moving — what the client needs now
            boolean comingUp = rest || cd > 0;
            runFigure.setAlpha(st == AutoEngine.State.RUN || comingUp ? 1f : 0.5f);
            // the name stays the running exercise; the next one is the grey figure beside (coloured near the end);
            // the recovery coming next is said in the name in the last seconds
            if (soon && nx.length() == 0) {
                runPhase.setText(AutoTemplates.name(ex) + "   →  " + AiText.t("Възстановяване", "Recovery"));
            } else {
                runPhase.setText((comingUp ? AiText.t("Следва:  ", "Next:  ") : "") + AutoTemplates.name(ex));
            }
            runPhase.setTextColor(comingUp ? XemsUi.GO_TEXT : XemsUi.TEXT);
            showHow(ex, howSteps(runHow.getContext(), ex));
        } else {
            AutoModel.Phase about = beforeRecovery ? plan.phases.get(plan.phases.size() - 1) : ph;
            runPhase.setText(beforeRecovery ? "→  " + AiText.t("Възстановяване", "Recovery")
                    : recovery ? AiText.t("Възстановяване", "Recovery") + (e.getImpulseName().length() > 0
                    ? "  ·  " + e.getImpulseName() : "") : ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "");
            runPhase.setTextColor(XemsUi.TEXT);
            // no exercise (passive program, recovery): what this part is for and what the current does now
            AutoEngine.Cmd now1 = beforeRecovery ? null : AutoSession.getWritten();
            String goal = AutoCues.phaseGoal(plan, about);
            String eff = now1 != null ? AutoCues.effect(about, now1, e.isDoublePulseOn()) : "";
            String hint = about != null ? AutoCues.phaseHint(plan, about) : "";
            showLabelled("phase:" + (about != null ? about.id : "") + ":" + (now1 != null ? now1.hz + ":" + (now1.frac > 0)
                    + ":" + now1.pauseHz : "-"), new String[] {AiText.t("Цел", "Goal"), AiText.t("Ефект", "Effect"),
                    AiText.t("Ти", "You")}, new String[] {goal, eff, hint});
        }

        // ---- the ring and the timer beside it
        float prog;
        float rate = 0f;                                        // share per second the ring runs on between refreshes
        boolean running = st == AutoEngine.State.RUN;
        int mode;
        int[] dots = {0, 0};
        String time;
        int timeColor = XemsUi.TEXT;
        if (rest) {
            int min = Math.max(1, e.getRestMinS());
            int left = e.getRestLeftS(now);
            boolean ok = AutoSession.startReady();
            prog = beforeRecovery ? 1f : (float) Math.min(1.0, e.getRestS(now) / min);
            rate = beforeRecovery || prog >= 1f ? 0f : 1f / min;
            mode = ok ? AutoViews.SetRing.READY : AutoViews.SetRing.REST;
            if (beforeRecovery) {
                time = AiText.mmss(plan.recoveryS);
                timeColor = XemsUi.GO_TEXT;
            } else if (left > 0) {
                time = AiText.mmss(left);                       // the rest still needed
                timeColor = XemsUi.AMBER;
            } else {
                time = ok ? "▶" : "♥";                          // ready: the main ▶; or the pulse is still high
                timeColor = ok ? XemsUi.GO_TEXT : XemsUi.AMBER;
            }
        } else if (recovery) {
            prog = ph.durationS > 0 ? (float) (e.phaseElapsed() / ph.durationS) : 0;
            mode = AutoViews.SetRing.RECOVERY;
            rate = running && ph.durationS > 0 ? (float) (1.0 / ph.durationS) : 0f;
            time = AiText.mmss(e.phaseRemainingS());
        } else if (e.isStationPhase(e.getPhaseIndex())) {
            prog = (float) (e.getStationS() / Math.max(1, e.getSetTargetS()));
            mode = st == AutoEngine.State.RUN ? AutoViews.SetRing.WORK : AutoViews.SetRing.IDLE;
            rate = running ? (float) (1.0 / Math.max(1.0, e.getSetTargetS())) : 0f;
            dots = e.getSetImpulses();
            time = AiText.mmss(Math.max(0, e.getSetTargetS() - e.getStationS()));
            if (soon) {
                timeColor = XemsUi.GO_TEXT;
            }
        } else {
            prog = ph != null && ph.durationS > 0 ? (float) (e.phaseElapsed() / ph.durationS) : 0;
            mode = st == AutoEngine.State.RUN ? AutoViews.SetRing.WORK : AutoViews.SetRing.IDLE;
            rate = running && ph != null && ph.durationS > 0 ? (float) (1.0 / ph.durationS) : 0f;
            time = AiText.mmss(e.phaseRemainingS());
        }
        if (st == AutoEngine.State.USER_PAUSE || (st == AutoEngine.State.HR_PAUSE)) {
            timeColor = XemsUi.AMBER;
            time = st == AutoEngine.State.HR_PAUSE && !e.canResume() ? "♥" : "❚❚";
        }
        runRing.set(prog, mode, cd, cd > 0 ? 0f : rate);
        runDots.set(dots[0], dots[1]);
        runDots.setVisibility(dots[1] > 0 ? View.VISIBLE : View.INVISIBLE);
        runTime.setText(time);
        runTime.setTextColor(timeColor);

        // ---- the body: zones, the client, the pulse, the load scale
        // a channel at 0 still shows what the exercises give that zone (its progress); a zone the plan never
        // loads has no progress (−1) and stays plain
        boolean[] off = new boolean[AutoModel.CHANNELS];
        // a working zone glows the same whatever the strength (owner): current on + the exercise's muscle =
        // brightest, one of the two = softer; its colour moves on after the set (1.1.313)
        runBody.set(lead != null ? lead.sex : AiModel.Sex.MALE, e.getZoneProgress(now), e.getZoneLive(now), off,
                e.getZoneActive(now));
        runPeak.set(e.getSystemLoad(now));                     // the total load: muscles (peak + body) and heart
        boolean hrUsed = plan.hrUse != AutoModel.HrUse.NONE && AutoSession.isBandConfigured(host);
        runVital.setVisibility(hrUsed ? View.VISIBLE : View.GONE);
        if (hrUsed) {
            int hrNow = e.getHr(now);
            runVital.set(hrNow, com.isaigu.gymapp.wearable.HrGuard.zoneColor(hrNow, plan.hrMax));
        }
        List<AutoSession.Row> rows = AutoSession.getRows();
        String who = "";
        int more = 0;
        for (AutoSession.Row r : rows) {
            if (r.block != null) {
                continue;
            }
            if (who.length() == 0) {
                who = r.name;
            } else {
                more++;
            }
        }
        runClient.setText(who + (more > 0 ? "  +" + more : ""));

        // ---- the session
        String[] names = new String[plan.phases.size()];
        for (int i = 0; i < names.length; i++) {
            AutoModel.Phase p = plan.phases.get(i);
            names[i] = p.isCooldown() ? AiText.t("Възстановяване", "Recovery") : AiText.t(p.nameBg, p.nameEn);
        }
        double sNow = e.getSessionS(now);
        AutoEngine.Forecast f = AutoSession.getForecast();
        runTimeline.setHrScale(plan.hrRest, hrUsed ? plan.hrCap : 0);
        runTimeline.set(e.getTrace(), f, e.getElapsedS(), sNow, names);
        double left = f != null ? f.leftS(sNow, e.getElapsedS()) : e.getRemainingS();
        runClock.setText(AiText.mmss(sNow) + "  /  " + AiText.mmss(sNow + left));
        if (boardSub != null) {
            String imp = e.getImpulseName();                   // the set's approach / the recovery's sector
            boardSub.setText(ph != null ? (recovery ? AiText.t("Възстановяване", "Recovery") : AiText.t(ph.nameBg, ph.nameEn))
                    + (imp.length() > 0 ? "  ·  " + imp : "") : "");
        }
        showPhases(e, !fig && !e.isStationPhase(e.getPhaseIndex()));

        String n = AutoSession.getLastNotice();
        boolean fresh = n != null && n.length() > 0 && now - AutoSession.getLastNoticeMs() < 12000L;
        runNotice.setText(fresh ? n : "");
        runNotice.setVisibility(fresh ? View.VISIBLE : View.GONE);
    }

    /** The ▶ / ❚❚ key: what pressing it does now (after an exercise: how long the rest still is). */
    static String startLabel(AutoEngine e, long now) {
        AutoEngine.State st = e.getState();
        if (st == AutoEngine.State.REST) {
            String what = e.isRestBeforeCooldown() ? AiText.t("възстановяване", "recovery")
                    : AiText.t("следваща серия", "next set");
            int left = e.getRestLeftS(now);
            if (left > 0) {
                return AiText.t("▶ Старт след ", "▶ Start in ") + AiText.mmss(left);
            }
            return e.isRestHrHigh(now) ? AiText.t("▶ Старт · чака пулса ≤ ", "▶ Start · waits for HR ≤ ") + e.getRestHrLimit()
                    : AiText.t("▶ Старт · ", "▶ Start · ") + what;
        }
        if (st == AutoEngine.State.COUNTDOWN) {
            return e.getCountdownLeftS(now) + AiText.t(" …  (отказ)", " …  (cancel)");
        }
        if (e.canResume()) {
            return AiText.t("▶ Продължи", "▶ Resume");
        }
        return st == AutoEngine.State.HR_PAUSE ? AiText.t("… пулсът спада", "… HR coming down")
                : AiText.t("❚❚ Пауза", "❚❚ Pause");
    }

    // ================================================================ actions

    static void action(int code, int arg, int value) {
        AutoModel.Input in = AutoSession.getInput();
        long now = System.currentTimeMillis();
        switch (code) {
            case A_CLOSE:
                if (AutoSession.getStage() == AutoSession.Stage.RUNNING) {
                    dismiss();                // the session keeps running; the tile brings it back
                } else {
                    AutoSession.close();
                    dismiss();
                }
                return;
            case A_NEXT: next(); return;
            case A_BACK: back(); return;
            case A_HIDE: dismiss(); return;     // the session keeps running; the tile brings it back
            case A_GOAL: {
                stripX = 0;
                Goal g = Goal.values()[value];
                if (g != in.goal) {
                    in.goal = g;
                    if (AutoCatalog.menu(g, in.kind).isEmpty()) {
                        in.kind = in.kind == Kind.ACTIVE ? Kind.PASSIVE : Kind.ACTIVE;
                    }
                    in.programId = null;
                }
                break;
            }
            case A_EXERCISES:
                stripX = 0;
                in.exercises = value == 1;
                break;
            case A_KIND:
                stripX = 0;
                in.kind = value == 0 ? Kind.ACTIVE : Kind.PASSIVE;
                in.programId = null;
                break;
            case A_OPERATOR:
                in.operator = in.solo() ? AiModel.Operator.TRAINER : AiModel.Operator.SELF;
                break;
            case A_EDIT_PROFILE: profileOpen = true; break;
            case A_HEALTH_OPEN: healthOpen = true; healthOk = false; break;
            case A_DETAILS: details = !details; break;
            case A_PROGRAM: {
                stripX = programStrip != null ? programStrip.getScrollX() : 0;
                List<Program> menu = AutoCatalog.menu(in.goal, in.kind);
                if (arg < menu.size()) {
                    in.programId = menu.get(arg).id;
                }
                break;
            }
            case A_SEX: in.sex = value == 0 ? AiModel.Sex.FEMALE : AiModel.Sex.MALE; break;
            case A_FITNESS: in.fitness = AiModel.Fitness.values()[value]; break;
            case A_AGE: in.age = Math.max(14, Math.min(95, in.age + value)); break;
            case A_WEIGHT: in.weightKg = Math.max(35, Math.min(220, Math.round(in.weightKg) + value)); break;
            case A_HEIGHT:
                in.heightCm = in.heightCm <= 0 ? 170 : Math.max(120, Math.min(220, in.heightCm + value));
                heightTouched = true;
                break;
            case A_CONTRA:
                in.screening.contraindications.put(AiScreening.CONTRAINDICATIONS[arg], value == 1);
                break;
            case A_STATE: {
                String k = AiPersonal.TODAY[Math.max(0, Math.min(AiPersonal.TODAY.length - 1, arg))];
                if (!in.today.remove(k)) {
                    in.today.add(k);
                }
                break;
            }
            case A_TODAY:
                boolean on = value == 1;
                switch (arg) {
                    case 0: in.screening.feverOrIllness = on; break;
                    case 1: in.screening.alcoholOrStress48h = on; break;
                    case 2: in.screening.knownArrhythmia = on; break;
                    case 3: in.screening.ateLast2h = on; break;
                    default: in.screening.hydrated = on; break;
                }
                break;
            case A_EXTRA: {
                boolean v = value == 1;
                switch (arg) {
                    case 1: in.extra.cesarean = v; break;
                    case 2: in.extra.breastfeeding = v; break;
                    case 3: in.extra.diastasis = v; break;
                    case 10: in.extra.backAcute = v; break;
                    case 11: in.extra.backRadiating = v; break;
                    case 12: in.extra.backTrauma = v; break;
                    case 13: in.extra.backSurgery = v; break;
                    case 14: in.extra.backNightPainFever = v; break;
                    default: in.extra.backBladder = v; break;
                }
                break;
            }
            case A_WEEKS: in.extra.weeksSinceBirth = Math.max(0, Math.min(104, in.extra.weeksSinceBirth + value)); break;
            case A_VARIANT:
                in.variant = value;
                AutoSession.buildPlan();
                break;
            case A_DOUBLE:
                in.doublePulse = value == 1;
                AutoSession.buildPlan();
                return;
            case A_INFO:
                infoOpen = !infoOpen;
                break;
            case A_TIPS:
                AutoSession.setTips(host, value == 1);
                return;
            case A_SETUP_GO:
                setupGo();
                return;
            case A_SETUP_BACK:
                setupBack();
                return;
            case A_WORKOUT:
                stripX = programStrip != null ? programStrip.getScrollX() : 0;
                if (arg < pickList.size()) {
                    workoutId = pickList.get(arg).id;
                }
                break;
            case A_HOW: {
                // the steps are always on screen; in the rest a tap on the exercise gives the next one instead
                AutoEngine e = AutoSession.getEngine();
                if (e != null && e.getState() == AutoEngine.State.REST) {
                    AutoSession.next();
                }
                refreshRun();
                return;
            }
            default:
                return;
        }
        if (step == STEP_CLIENT) {
            AutoSession.syncLeaderInput();
        }
        go(step);
    }

    /** One listener class for every control (dx: no anonymous classes). */
    static final class Act implements View.OnClickListener, XemsUi.OnStep, XemsUi.OnIndex, XemsUi.OnToggle {
        final int code;
        final int arg;

        Act(int code, int arg) {
            this.code = code;
            this.arg = arg;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            run(0);
        }

        @Override
        public void onStep(int direction) {
            run(direction);
        }

        @Override
        public void onIndex(int index) {
            run(index);
        }

        @Override
        public void onToggle(boolean on) {
            run(on ? 1 : 0);
        }

        private void run(int value) {
            try {
                action(code, arg, value);
            } catch (Throwable t) {
                com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.action", t);
            }
        }
    }

    // ================================================================ bits

    private static void subtitle(String s) {
        shell.subtitle.setText(s);
        shell.subtitle.setVisibility(s != null && s.length() > 0 ? View.VISIBLE : View.GONE);
    }

    private static LinearLayout choiceCard(Context c, String title, String sub, boolean sel, int tint) {
        LinearLayout card = XemsUi.card(c);
        card.setBackgroundDrawable(XemsUi.rounded(sel ? XemsUi.mix(XemsUi.CARD, tint, 0.22f) : XemsUi.CARD,
                XemsUi.dp(c, 16), sel ? tint : XemsUi.STROKE, XemsUi.dp(c, sel ? 2 : 1)));
        card.addView(XemsUi.text(c, title, 18, sel ? tint : XemsUi.TEXT, true));
        TextView s = XemsUi.text(c, sub, 13, XemsUi.MUTED, false);
        s.setPadding(0, XemsUi.dp(c, 4), 0, 0);
        card.addView(s);
        XemsUi.pressable(card);
        return card;
    }

    private static View toggle(Context c, String title, String sub, boolean on, int arg) {
        return XemsUi.toggleRow(c, title, sub, on, new Act(A_EXTRA, arg));
    }

    private static TextView hint(Context c, String s) {
        return XemsUi.text(c, s, 13, XemsUi.MUTED, false);
    }

    private static LinearLayout labeled(Context c, String label, View v) {
        LinearLayout l = XemsUi.vertical(c);
        l.addView(XemsUi.label(c, label));
        LinearLayout.LayoutParams lp = XemsUi.matchWrap(c, 6);
        l.addView(v, lp);
        return l;
    }

    private static void tile(Context c, LinearLayout row, String label, String value, int left) {
        tile(c, row, label, value, left, XemsUi.TEXT);
    }

    private static void tile(Context c, LinearLayout row, String label, String value, int left, int color) {
        LinearLayout t = XemsUi.surface(c);
        t.addView(XemsUi.text(c, label, 12, XemsUi.MUTED, false));
        TextView v = XemsUi.text(c, value, 24, color, true);
        v.setPadding(0, XemsUi.dp(c, 4), 0, 0);
        t.addView(v);
        row.addView(t, XemsUi.weight(1, left, c));
    }

    private static View banner(Context c, int color, String msg) {
        TextView t = XemsUi.text(c, msg, 14, color, true);
        t.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 10), XemsUi.dp(c, 14), XemsUi.dp(c, 10));
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(color, 0x22), XemsUi.dp(c, 12), XemsUi.alpha(color, 0x88), XemsUi.dp(c, 1)));
        return t;
    }

    static String goalName(Goal g) {
        switch (g) {
            case SLIM: return AiText.t("Отслабване", "Weight loss");
            case HEALTH: return AiText.t("Здраве", "Health");
            default: return AiText.t("Стягане", "Toning");
        }
    }

    static int goalColor(Goal g) {
        switch (g) {
            case SLIM: return XemsUi.ORANGE;
            case HEALTH: return 0xFF26A69A;
            default: return XemsUi.GO;
        }
    }

    /** Difficulty (owner, 1.1.336): easy green · medium amber · hard red — the same on every card. */
    static String levelName(int level) {
        return level <= 1 ? AiText.t("Лесна", "Easy") : level == 2 ? AiText.t("Средна", "Medium") : AiText.t("Трудна", "Hard");
    }

    static int levelColor(int level) {
        return level <= 1 ? XemsUi.GO : level == 2 ? XemsUi.AMBER : XemsUi.DANGER;
    }

    private static void toast(Context c, String s) {
        try {
            android.widget.Toast.makeText(c, s, android.widget.Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    /** Tile status line for the module bar. */
    public static String status() {
        AutoSession.Stage st = AutoSession.getStage();
        AutoEngine e = AutoSession.getEngine();
        if (st == AutoSession.Stage.RUNNING && e != null) {
            AutoModel.Phase ph = e.phase();
            return "● " + (ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "") + " · " + AiText.mmss(e.getRemainingS());
        }
        if (st == AutoSession.Stage.IDLE) {
            return AiText.t("Готови програми", "Ready programs");
        }
        return st == AutoSession.Stage.REPORT ? AiText.t("Отчет", "Report") : AiText.t("Подготовка", "Setting up");
    }
}
