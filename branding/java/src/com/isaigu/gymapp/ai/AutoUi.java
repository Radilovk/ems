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
    static final int STEP_CALIB = 2;
    static final int STEP_RUN = 3;
    private static final int SETUP_STEPS = 3;

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
    private static final int A_MINUTES = 16;
    private static final int A_INTENSITY = 17;
    private static final int A_VARIANT = 18;
    private static final int A_DOUBLE = 19;
    private static final int A_CALIB_ROW = 21;
    private static final int A_HOW = 40;
    private static final int A_SEX = 28;
    private static final int A_EDIT_PROFILE = 29;
    private static final int A_HEALTH_OPEN = 31;
    private static final int A_DETAILS = 32;
    private static final int A_HIDE = 33;
    private static final int A_TIPS = 36;
    private static final int A_INFO = 37;
    private static final int A_STATE = 38;

    private static XemsUi.Shell shell;
    private static Activity host;
    private static int step;
    private static boolean heightTouched;
    private static boolean calibStarted;
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
    private static android.widget.FrameLayout runNextStage;
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
    private static TextView calibRowsInfo;
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
            calibStarted = false;
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
        show(a, st == AutoSession.Stage.RUNNING ? STEP_RUN
                : st == AutoSession.Stage.CALIB ? STEP_CALIB : STEP_PROGRAM);
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
        runPhase = null;
        boardSub = null;
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
                refreshRun();
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.refreshRun", t);
        }
        if (shell == null || !shell.dialog.isShowing()) {
            return;
        }
        try {
            if (step == STEP_CALIB) {
                refreshCalib();
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.widget.XemsGuard.report("AutoUi.refresh", t);
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
        calibRowsInfo = null;
        switch (s) {
            case STEP_PROGRAM: screenProgram(c); break;
            case STEP_CLIENT: screenClient(c); break;
            case STEP_CALIB: screenCalib(c); break;
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
                return AiText.t("Показват се само програмите, позволени за този клиент. „Препоръчана“ е по профила.",
                        "Only the programs allowed for this client are shown. \u201cRecommended\u201d follows the profile.");
            case STEP_CLIENT:
                return AiText.t("Профилът е от клиентския запис, планът се смята от него. Може да скъсиш времето и да смениш "
                        + "интензитета, не и да минеш лимитите. „Днес“ — как е клиентът сега (недоспал, стрес, цикъл…): "
                        + "не спира тренировката, планът се нагласява сам.",
                        "The profile comes from the client record and the plan from the profile. You may shorten the time and "
                        + "change the intensity, not pass the limits. \u201cToday\u201d — how the client is now (short on sleep, "
                        + "stress, period…): it never stops the session, the plan adapts by itself.");
            case STEP_CALIB:
                return AiText.t("Качи силата на всеки клиент до целевото усещане. „Старт“ започва от загрявката с 60 % от нея.",
                        "Raise each client's strength to the target feeling. Start begins with the warm-up at 60 % of it.");
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
                if (in.programId != null) {
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
                    go(STEP_CALIB);
                } else {
                    go(STEP_CLIENT);
                }
                break;
            case STEP_CALIB:
                if (!calibStarted) {
                    AutoSession.beginCalibration();
                    calibStarted = true;
                    go(STEP_CALIB);
                } else if (AutoSession.canStart()) {
                    AutoSession.startRun(host);
                    // The program runs by itself: the sheet steps aside, the tile brings it back.
                    dismiss();
                }
                break;
            default:
                break;
        }
    }

    private static void back() {
        if (step == STEP_CALIB && AutoSession.getStage() == AutoSession.Stage.CALIB) {
            AutoSession.stop();
            calibStarted = false;
        }
        if (step > STEP_PROGRAM && step <= STEP_CALIB) {
            go(step - 1);
        }
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
        body.addView(XemsUi.segmented(c, names, sel, new Act(A_GOAL, 0)), XemsUi.matchWrap(c, 4));
        // Active / passive only where the goal has both.
        boolean both = !AutoCatalog.menu(in.goal, Kind.ACTIVE).isEmpty() && !AutoCatalog.menu(in.goal, Kind.PASSIVE).isEmpty();
        if (both) {
            body.addView(XemsUi.segmented(c, new String[] {
                    AiText.t("С движение", "With movement"), AiText.t("Процедура в покой", "Procedure at rest")},
                    in.kind == Kind.ACTIVE ? 0 : 1, new Act(A_KIND, 0)), XemsUi.matchWrap(c, 10));
        }

        List<Program> menu = AutoCatalog.menu(in.goal, in.kind);
        Program rec = AutoCatalog.recommended(in.goal, in.kind, in);
        Program chosen = AutoCatalog.get(in.programId);
        if (chosen == null || !menu.contains(chosen) || AutoCatalog.blockReason(chosen, in.goal, in, false) != null) {
            in.programId = AutoCatalog.blockReason(rec, in.goal, in, false) == null ? rec.id : null;
        }
        String firstBlock = null;
        int shown = 0;
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
            LinearLayout outer = XemsUi.card(c);
            outer.setOrientation(LinearLayout.HORIZONTAL);
            outer.setGravity(Gravity.CENTER_VERTICAL);
            outer.setBackgroundDrawable(XemsUi.rounded(on ? XemsUi.mix(XemsUi.CARD, goalColor(in.goal), 0.18f) : XemsUi.CARD,
                    XemsUi.dp(c, 16), on ? goalColor(in.goal) : XemsUi.STROKE, XemsUi.dp(c, on ? 2 : 1)));
            // the program's picture (by what it trains and the client's sex), then name and line
            LinearLayout.LayoutParams alp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            alp.rightMargin = XemsUi.dp(c, 14);
            outer.addView(ProgramArt.tile(c, p.id, p.isActive(), in.sex, 128, 96), alp);
            LinearLayout card = XemsUi.vertical(c);
            outer.addView(card, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            LinearLayout head = XemsUi.horizontal(c);
            head.addView(XemsUi.text(c, p.name(), 17, XemsUi.TEXT, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            if (p == rec) {
                head.addView(XemsUi.badge(c, AiText.t("Препоръчана", "Recommended"), XemsUi.GO_TEXT));
            }
            head.addView(XemsUi.text(c, "  " + AutoPlanner.maxSeconds(p, in.goal, in) / 60 + " + "
                    + AutoPlanner.RECOVERY_S / 60 + AiText.t(" мин", " min"),
                    14, XemsUi.MUTED, false));
            card.addView(head);
            TextView d = XemsUi.text(c, p.desc(), 13, XemsUi.MUTED, false);
            d.setPadding(0, XemsUi.dp(c, 4), 0, 0);
            card.addView(d);
            outer.setOnClickListener(new Act(A_PROGRAM, i));
            XemsUi.pressable(outer);
            body.addView(outer, XemsUi.matchWrap(c, shown == 0 ? 14 : 10));
            shown++;
        }
        if (shown == 0) {
            body.addView(banner(c, XemsUi.AMBER, firstBlock != null ? firstBlock
                    : AiText.t("Няма програма за този избор.", "No program for this choice.")), XemsUi.matchWrap(c, 14));
        }
        // Who operates: remembered, so only a quiet line.
        TextView op = XemsUi.text(c, AiText.t("Управлява: ", "Operated by: ") + (in.solo()
                ? AiText.t("клиентът сам · смени", "the client alone · change")
                : AiText.t("треньор · смени", "trainer · change")), 13, XemsUi.MUTED, false);
        op.setPadding(0, XemsUi.dp(c, 6), 0, XemsUi.dp(c, 6));
        op.setOnClickListener(new Act(A_OPERATOR, 0));
        body.addView(op, XemsUi.matchWrap(c, 16));
        footer(c, AiText.t("Напред", "Next"), false);
        enable(in.programId != null);
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
        LinearLayout body = shell.body;
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
            planBlock(c, body);
        } else {
            body.addView(banner(c, in.heightCm <= 0 ? XemsUi.AMBER : XemsUi.DANGER, pb), XemsUi.matchWrap(c, 14));
        }

        // How the client is today: one tap each; never blocks, the plan adapts quietly (AiPersonal)
        LinearLayout todayRow = XemsUi.horizontal(c);
        todayRow.setGravity(Gravity.CENTER_VERTICAL);
        TextView cap = XemsUi.text(c, AiText.t("Днес", "Today"), 15, XemsUi.MUTED, true);
        cap.setPadding(XemsUi.dp(c, 4), 0, XemsUi.dp(c, 12), 0);
        todayRow.addView(cap);
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
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.rightMargin = XemsUi.dp(c, 8);
            todayRow.addView(chip, lp);
        }
        android.widget.HorizontalScrollView todayScroll = new android.widget.HorizontalScrollView(c);
        todayScroll.setHorizontalScrollBarEnabled(false);
        todayScroll.addView(todayRow);
        body.addView(todayScroll, XemsUi.matchWrap(c, 12));

        boolean ready = pb == null;
        footer(c, AiText.t("Към силата  ›", "To strength  ›"), true);
        enable(ready);
    }

    /** The plan on the client step: time, feeling, HR; duration, intensity, options; notes; details folded. */
    private static void planBlock(Context c, LinearLayout body) {
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input in = AutoSession.getInput();
        if (plan == null) {
            return;
        }
        LinearLayout tiles = XemsUi.horizontal(c);
        // the active part (≤ 20 min of impulses) + the passive recovery (10 min)
        tile(c, tiles, AiText.t("Време", "Time"), (plan.activeS / 60) + (plan.recoveryS > 0 ? " + " + plan.recoveryS / 60 : "")
                + AiText.t(" мин", " min"), 0);
        tile(c, tiles, AiText.t("Усещане", "Feeling"), plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "")
                + AiText.t(" от 10", " of 10"), 10);
        boolean band = AutoSession.isBandConfigured(host);
        if (plan.hrUse != AutoModel.HrUse.NONE && band) {
            tile(c, tiles, AiText.t("Пулс до", "HR up to"), plan.hrCap + "", 10);
        }
        body.addView(tiles, XemsUi.matchWrap(c, 14));

        LinearLayout opt = XemsUi.card(c);
        LinearLayout r1 = XemsUi.horizontal(c);
        r1.setGravity(Gravity.CENTER_VERTICAL);
        r1.addView(XemsUi.stepper(c, "" + (plan.activeS / 60), AiText.t("мин активни", "min active"), 20,
                new Act(A_MINUTES, 0)).view);
        String[] levels = AutoPlanner.intenseAllowed(plan.program, in)
                ? new String[] {AiText.t("Мек", "Soft"), AiText.t("Стандартен", "Standard"), AiText.t("Интензивен", "Intense")}
                : new String[] {AiText.t("Мек", "Soft"), AiText.t("Стандартен", "Standard")};
        r1.addView(XemsUi.segmented(c, levels, Math.min(levels.length - 1, in.intensity.ordinal()),
                new Act(A_INTENSITY, 0)), XemsUi.weight(1, 14, c));
        opt.addView(r1);
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
        body.addView(opt, XemsUi.matchWrap(c, 10));

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

    private static void screenCalib(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        shell.title.setText(AiText.t("Сила", "Strength"));
        subtitle(AiText.t("До усещане ", "Up to a feeling of ") + plan.cr10Lo
                + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "") + AiText.t(" от 10 · ", " of 10 · ") + cr10Text(plan.cr10Hi));
        LinearLayout body = shell.body;
        if (!calibStarted) {
            footer(c, AiText.t("▶ Пусни импулсите", "▶ Start the pulses"), true);
            return;
        }
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            LinearLayout card = XemsUi.card(c);
            LinearLayout head = XemsUi.horizontal(c);
            head.setGravity(Gravity.CENTER_VERTICAL);
            head.addView(XemsUi.text(c, r.name.length() > 0 ? r.name : AiText.t("Участник ", "Participant ") + (i + 1),
                    16, XemsUi.TEXT, true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView lbl = XemsUi.text(c, "", 22, XemsUi.GO_TEXT, true);
            rowLabels.add(lbl);
            if (r.block != null) {
                head.addView(lbl);
                card.addView(head);
                card.addView(XemsUi.text(c, "⊘ " + r.block, 13, XemsUi.DANGER, true));
            } else {
                int[] steps = {-5, -1};
                for (int k = 0; k < steps.length; k++) {
                    TextView key = XemsUi.button(c, "−" + Math.abs(steps[k]), XemsUi.SECONDARY);
                    key.setOnClickListener(new Act(A_CALIB_ROW, i * 100 + (steps[k] + 50)));
                    head.addView(key, new LinearLayout.LayoutParams(XemsUi.dp(c, 72), ViewGroup.LayoutParams.WRAP_CONTENT));
                }
                lbl.setGravity(Gravity.CENTER);
                head.addView(lbl, new LinearLayout.LayoutParams(XemsUi.dp(c, 80), ViewGroup.LayoutParams.WRAP_CONTENT));
                int[] up = {+1, +5};
                for (int k = 0; k < up.length; k++) {
                    TextView key = XemsUi.button(c, "+" + up[k], XemsUi.SECONDARY);
                    key.setOnClickListener(new Act(A_CALIB_ROW, i * 100 + (up[k] + 50)));
                    head.addView(key, new LinearLayout.LayoutParams(XemsUi.dp(c, 72), ViewGroup.LayoutParams.WRAP_CONTENT));
                }
                card.addView(head);
            }
            body.addView(card, XemsUi.matchWrap(c, 12));
        }
        calibRowsInfo = hint(c, "");
        body.addView(calibRowsInfo, XemsUi.matchWrap(c, 8));
        footer(c, AiText.t("Старт", "Start"), true);
        refreshCalib();
    }

    private static void refreshCalib() {
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rowLabels.size() && i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            rowLabels.get(i).setText(r.block != null ? "—" : r.lastStrength + "");
        }
        if (calibStarted) {
            enable(AutoSession.canStart());
        }
        if (calibRowsInfo != null) {
            String n = AutoSession.getLastNotice();
            calibRowsInfo.setText(n != null ? n : "");
        }
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
        // left half of the exercise card: goal + timer on top, the rings under them
        LinearLayout exLeft = XemsUi.vertical(c);
        android.widget.FrameLayout headBar = new android.widget.FrameLayout(c);
        TextView goal = XemsUi.badge(c, goalName(plan.input.goal), goalColor(plan.input.goal));
        headBar.addView(goal, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.START | Gravity.CENTER_VERTICAL));
        LinearLayout clock = XemsUi.horizontal(c);
        clock.setGravity(Gravity.CENTER_VERTICAL);
        runTime = XemsUi.text(c, "", 32, XemsUi.TEXT, true);
        runTime.setTypeface(android.graphics.Typeface.create("sans-serif-condensed", android.graphics.Typeface.BOLD));
        runTime.setIncludeFontPadding(false);
        clock.addView(runTime);
        runDots = new AutoViews.Dots(c);
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(XemsUi.dp(c, 90), XemsUi.dp(c, 22));
        dlp.leftMargin = XemsUi.dp(c, 10);
        clock.addView(runDots, dlp);
        headBar.addView(clock, new android.widget.FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.END | Gravity.CENTER_VERTICAL));
        exLeft.addView(headBar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 34)));
        LinearLayout rings = XemsUi.horizontal(c);
        rings.setGravity(Gravity.CENTER);
        android.widget.FrameLayout stage = new android.widget.FrameLayout(c);
        runFigure = new ExerciseFigure(c);
        runFigure.setCycle(System.currentTimeMillis(), 2, 2);
        android.widget.FrameLayout.LayoutParams flp = new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        int inset = XemsUi.dp(c, 23);
        flp.setMargins(inset, inset, inset, inset);
        stage.addView(runFigure, flp);
        runArt = ProgramArt.tile(c, plan.program.id, plan.program.isActive(), lead != null ? lead.sex : null, 88, 66);
        stage.addView(runArt, new android.widget.FrameLayout.LayoutParams(XemsUi.dp(c, 88), XemsUi.dp(c, 66),
                Gravity.CENTER));
        runRing = new AutoViews.SetRing(c);
        stage.addView(runRing, new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        stage.setOnClickListener(new Act(A_HOW, 0));
        rings.addView(stage, new LinearLayout.LayoutParams(XemsUi.dp(c, 146), XemsUi.dp(c, 146)));
        runArrow = XemsUi.text(c, "→", 22, XemsUi.MUTED, false);
        runArrow.setGravity(Gravity.CENTER);
        rings.addView(runArrow, new LinearLayout.LayoutParams(XemsUi.dp(c, 30), ViewGroup.LayoutParams.WRAP_CONTENT));
        runNextStage = new android.widget.FrameLayout(c);
        runNextRing = new AutoViews.SetRing(c);
        runNextFig = new ExerciseFigure(c);
        runNextFig.setCycle(System.currentTimeMillis(), 2, 2);
        android.widget.FrameLayout.LayoutParams nfp = new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        int ni = XemsUi.dp(c, 15);
        nfp.setMargins(ni, ni, ni, ni);
        runNextStage.addView(runNextFig, nfp);
        runNextStage.addView(runNextRing, new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        rings.addView(runNextStage, new LinearLayout.LayoutParams(XemsUi.dp(c, 84), XemsUi.dp(c, 84)));
        exLeft.addView(rings, XemsUi.matchWrap(c, 0));
        exRow.addView(exLeft, new LinearLayout.LayoutParams(XemsUi.dp(c, 290), ViewGroup.LayoutParams.MATCH_PARENT));
        // right half: the name and every step (or the program's phases when it has no exercises)
        LinearLayout exRight = XemsUi.vertical(c);
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
        top.addView(infoCorner(c, ex, INFO_SET), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.75f));

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
        tl.addView(runTimeline, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 60)));
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
                        + "Последните 10 s: → следващото упражнение. В почивката допир на упражнението дава друго.\n"
                        + "Управление — с главните ▶ / ❚❚ и ■: ■ работи от пауза; първият — към възстановяване, вторият — край.",
                        "The ring is the set: 30–40 s, the dots are the impulses.\n"
                        + "After the set the impulses stop by themselves. The rest lasts as long as the muscles need to "
                        + "refill (by the load and fitness) and the HR to come down; then ▶ lights up.\n"
                        + "Every start counts 3 s: three short beeps and a long one with the first impulse.\n"
                        + "Last 10 s: → the next exercise. In the rest a tap on the exercise gives another one.\n"
                        + "Control — the main ▶ / ❚❚ and ■: ■ works from a pause; the first goes to the recovery, the second ends.");
            case INFO_BODY:
                return AiText.t("Цветът на зона е натрупаното ѝ натоварване: синьо — леко, червено — границата на тежка серия.\n"
                        + "Сметка: сила × честота × % на зоната + работата на упражнението; спада с почивката.\n"
                        + "Сърцето бие с пулса, цветът е пулсовата зона.\n"
                        + "Триъгълникът — каквото е по-близо до границата си: мускул или сърцето (♥).",
                        "A zone's colour is its accumulated load: blue — light, red — the limit of a hard set.\n"
                        + "Sum: strength × frequency × zone % + the exercise's work; it falls in the rest.\n"
                        + "The heart beats with the HR, its colour is the HR zone.\n"
                        + "The triangle — whatever is nearer its limit: a muscle or the heart (♥).");
            default:
                return AiText.t("Цялата тренировка: височина — силата на импулсите, цвят — натоварването.\n"
                        + "Миналото е ярко, предстоящото — прогноза. Дълбока долина — пауза над 45 s или спиране по пулса.\n"
                        + "Червена линия — пулсът, пунктир — таванът.\n"
                        + "Часовникът брои импулсите и задължителните почивки; ръчната пауза не се брои.",
                        "The whole session: height — the impulse strength, colour — the load.\n"
                        + "The past is bright, what comes is the forecast. A deep valley — a pause over 45 s or an HR stop.\n"
                        + "Red line — the HR, dashed — the ceiling.\n"
                        + "The clock counts impulses and the required rests; a manual pause does not count.");
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

    /** A phase's hint as steps (programs without exercises, the recovery). */
    private static String[] hintSteps(AutoModel.Plan plan, AutoModel.Phase ph) {
        String h = ph != null ? AutoCues.phaseHint(plan, ph) : null;
        if (h == null || h.trim().length() == 0) {
            return new String[0];
        }
        String[] parts = h.split("\\s+—\\s+|(?<=[.!?])\\s+");
        java.util.List<String> out = new java.util.ArrayList<String>();
        for (String p : parts) {
            String q = p.trim();
            if (q.length() > 0) {
                out.add(Character.toUpperCase(q.charAt(0)) + q.substring(1));
            }
        }
        return out.toArray(new String[0]);
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
            runFigure.setAlpha(st == AutoEngine.State.RUN ? 1f : 0.5f);
            // the name stays the running exercise; the next one is the grey figure beside (coloured near the end);
            // the recovery coming next is said in the name in the last seconds
            if (soon && nx.length() == 0) {
                runPhase.setText(AutoTemplates.name(ex) + "   →  " + AiText.t("Възстановяване", "Recovery"));
            } else {
                runPhase.setText((rest || cd > 0 ? "→  " : "") + AutoTemplates.name(ex));
            }
            runPhase.setTextColor(XemsUi.TEXT);
            showHow(ex, howSteps(runHow.getContext(), ex));
        } else {
            AutoModel.Phase about = beforeRecovery ? plan.phases.get(plan.phases.size() - 1) : ph;
            runPhase.setText(beforeRecovery ? "→  " + AiText.t("Възстановяване", "Recovery")
                    : recovery ? AiText.t("Възстановяване", "Recovery") : ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "");
            runPhase.setTextColor(XemsUi.TEXT);
            showHow("phase:" + (about != null ? about.id : ""), hintSteps(plan, about));
        }

        // ---- the ring and the timer beside it
        float prog;
        int mode;
        int[] dots = {0, 0};
        String time;
        int timeColor = XemsUi.TEXT;
        if (rest) {
            int min = Math.max(1, e.getRestMinS());
            int left = e.getRestLeftS(now);
            boolean ok = AutoSession.startReady();
            prog = beforeRecovery ? 1f : (float) Math.min(1.0, e.getRestS(now) / min);
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
            time = AiText.mmss(e.phaseRemainingS());
        } else if (e.isStationPhase(e.getPhaseIndex())) {
            prog = (float) (e.getStationS() / Math.max(1, e.getSetTargetS()));
            mode = st == AutoEngine.State.RUN ? AutoViews.SetRing.WORK : AutoViews.SetRing.IDLE;
            dots = e.getSetImpulses();
            time = AiText.mmss(Math.max(0, e.getSetTargetS() - e.getStationS()));
            if (soon) {
                timeColor = XemsUi.GO_TEXT;
            }
        } else {
            prog = ph != null && ph.durationS > 0 ? (float) (e.phaseElapsed() / ph.durationS) : 0;
            mode = st == AutoEngine.State.RUN ? AutoViews.SetRing.WORK : AutoViews.SetRing.IDLE;
            time = AiText.mmss(e.phaseRemainingS());
        }
        if (st == AutoEngine.State.USER_PAUSE || (st == AutoEngine.State.HR_PAUSE)) {
            timeColor = XemsUi.AMBER;
            time = st == AutoEngine.State.HR_PAUSE && !e.canResume() ? "♥" : "❚❚";
        }
        runRing.set(prog, mode, cd);
        runDots.set(dots[0], dots[1]);
        runDots.setVisibility(dots[1] > 0 ? View.VISIBLE : View.INVISIBLE);
        runTime.setText(time);
        runTime.setTextColor(timeColor);

        // ---- the body: zones, the client, the pulse, the load scale
        int[] lz = e.getLiveZones();
        boolean[] off = new boolean[AutoModel.CHANNELS];
        for (int k = 0; k < off.length; k++) {
            off[k] = (lz != null && k < lz.length ? lz[k] : plan.zones[k]) <= 0;
        }
        runBody.set(lead != null ? lead.sex : AiModel.Sex.MALE, e.getChannelLoad(now), off);
        double cardio = e.getCardioLoad(now);
        runPeak.set(e.getSystemLoad(now), cardio >= 0 && e.isCardioLimiting(now));
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
        double left = f != null ? Math.max(0, f.totalS - f.sessionAt(e.getElapsedS())) : e.getRemainingS();
        runClock.setText(AiText.mmss(sNow) + "  /  " + AiText.mmss(sNow + left));
        if (boardSub != null) {
            boardSub.setText(ph != null ? (recovery ? AiText.t("Възстановяване", "Recovery") : AiText.t(ph.nameBg, ph.nameEn)) : "");
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
            case A_KIND:
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
            case A_MINUTES: {
                AutoModel.Plan plan = AutoSession.getPlan();
                int cur = plan != null ? plan.activeS : AutoPlanner.ACTIVE_MAX_S;
                in.totalSeconds = AutoPlanner.clampSeconds(AutoCatalog.get(in.programId), in.goal, in, cur + 60 * value);
                AutoSession.buildPlan();
                break;
            }
            case A_INTENSITY:
                in.intensity = AutoModel.Intensity.values()[Math.min(2, value)];
                AutoSession.buildPlan();
                break;
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
            case A_CALIB_ROW:
                AutoSession.tip("calib_keys", AiText.t("±1 / ±5 на реда. Качването е плавно: най-много +5 в секунда.",
                        "±1 / ±5 per row. Raising is gradual: at most +5 per second."), now);
                AutoSession.adjustCalibration(arg / 100, arg % 100 - 50);
                refreshCalib();
                return;
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
        LinearLayout t = XemsUi.surface(c);
        t.addView(XemsUi.text(c, label, 12, XemsUi.MUTED, false));
        TextView v = XemsUi.text(c, value, 19, XemsUi.TEXT, true);
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

    private static String goalName(Goal g) {
        switch (g) {
            case SLIM: return AiText.t("Отслабване", "Weight loss");
            case HEALTH: return AiText.t("Здраве", "Health");
            default: return AiText.t("Стягане", "Toning");
        }
    }

    private static int goalColor(Goal g) {
        switch (g) {
            case SLIM: return XemsUi.ORANGE;
            case HEALTH: return 0xFF26A69A;
            default: return XemsUi.GO;
        }
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
