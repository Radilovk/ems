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
    private static final int A_PAUSE = 22;
    private static final int A_REDUCE = 23;
    private static final int A_RAISE = 24;
    private static final int A_DOUBLE_LIVE = 25;
    private static final int A_STOP = 27;
    private static final int A_NEXT_SET = 39;
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
    private static TextView runPause;
    private static TextView runDouble;
    private static TextView runStop;
    private static TextView runPauseLabel;
    private static TextView runNextLabel;
    private static TextView runStopLabel;
    private static TextView runNext;
    private static TextView runClock;
    private static TextView runRows;
    private static ExerciseFigure runFigure;
    private static AutoViews.SetRing runRing;
    private static AutoViews.BodyHeat runBody;
    private static AutoViews.PeakBar runPeak;
    private static AutoViews.Vital runVital;
    private static AutoViews.Dots runDots;
    private static View runArt;
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
        runPhase = null;
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
        if (shell == null || !shell.dialog.isShowing()) {
            return;
        }
        try {
            if (step == STEP_RUN) {
                refreshRun();
            } else if (step == STEP_CALIB) {
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
        rowLabels.clear();
        runPhase = null;
        calibRowsInfo = null;
        switch (s) {
            case STEP_PROGRAM: screenProgram(c); break;
            case STEP_CLIENT: screenClient(c); break;
            case STEP_CALIB: screenCalib(c); break;
            default: screenRun(c); break;
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
                return AiText.t("„Скрий“ или ✕ скрива таблото — сесията продължава. Лимитите и защитите се показват винаги.",
                        "Hide or ✕ hides the board — the session goes on. Limits and safety always show.");
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
     * The live board (owner, 1.1.271–272; docs/xems-auto-mode-spec.md §12), landscape, three levels, few words:
     * left — the exercise (or the program's picture) in the ring of its set, impulses as dots; right — the body,
     * each zone in its load colour, and beside it the pulse (a heart beating at the HR in its zone colour, only with
     * a band) over the system-load triangle; bottom — the whole session as a mountain and the dock ▶ / ❚❚ · ⏭ ·
     * ■ (■ only while paused). Secondary keys in one slim strip.
     */
    private static void screenRun(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input lead = AutoSession.getInput();
        shell.title.setText(plan.program.name());
        subtitle("");
        LinearLayout body = shell.body;

        // ---- top: exercise | body + pulse
        LinearLayout top = XemsUi.horizontal(c);
        LinearLayout left = XemsUi.card(c);
        left.setGravity(Gravity.CENTER_HORIZONTAL);
        android.widget.FrameLayout stage = new android.widget.FrameLayout(c);
        runFigure = new ExerciseFigure(c);
        runFigure.setCycle(System.currentTimeMillis(), 2, 2);
        android.widget.FrameLayout.LayoutParams flp = new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        int inset = XemsUi.dp(c, 42);
        flp.setMargins(inset, inset, inset, inset);
        stage.addView(runFigure, flp);
        runArt = ProgramArt.tile(c, plan.program.id, plan.program.isActive(), lead != null ? lead.sex : null, 128, 96);
        stage.addView(runArt, new android.widget.FrameLayout.LayoutParams(XemsUi.dp(c, 128), XemsUi.dp(c, 96),
                Gravity.CENTER));
        runRing = new AutoViews.SetRing(c);
        stage.addView(runRing, new android.widget.FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        left.addView(stage, new LinearLayout.LayoutParams(XemsUi.dp(c, 244), XemsUi.dp(c, 244)));
        runPhase = XemsUi.text(c, "", 21, XemsUi.TEXT, true);
        runPhase.setGravity(Gravity.CENTER);
        runPhase.setMaxLines(1);
        runPhase.setEllipsize(android.text.TextUtils.TruncateAt.END);
        left.addView(runPhase, XemsUi.matchWrap(c, 4));
        LinearLayout meta = XemsUi.horizontal(c);
        meta.setGravity(Gravity.CENTER);
        runDots = new AutoViews.Dots(c);
        meta.addView(runDots, new LinearLayout.LayoutParams(XemsUi.dp(c, 120), XemsUi.dp(c, 20)));
        runTime = XemsUi.text(c, "", 15, XemsUi.MUTED, true);
        meta.addView(runTime);
        left.addView(meta, XemsUi.matchWrap(c, 6));
        top.addView(left, new LinearLayout.LayoutParams(0, XemsUi.dp(c, 340), 1f));

        LinearLayout right = XemsUi.card(c);
        LinearLayout figs = XemsUi.horizontal(c);
        runBody = new AutoViews.BodyHeat(c);
        figs.addView(runBody, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        LinearLayout side = XemsUi.vertical(c);
        side.setGravity(Gravity.CENTER_HORIZONTAL);
        runVital = new AutoViews.Vital(c);
        side.addView(runVital, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 112)));
        runPeak = new AutoViews.PeakBar(c);
        side.addView(runPeak, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(XemsUi.dp(c, 92), ViewGroup.LayoutParams.MATCH_PARENT);
        slp.leftMargin = XemsUi.dp(c, 8);
        figs.addView(side, slp);
        right.addView(figs, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 340), 1.35f);
        rlp.leftMargin = XemsUi.dp(c, 12);
        top.addView(right, rlp);
        body.addView(top, XemsUi.matchWrap(c, 2));

        runNotice = hint(c, "");
        body.addView(runNotice, XemsUi.matchWrap(c, 8));

        // ---- bottom: timeline | dock
        LinearLayout bottom = XemsUi.horizontal(c);
        bottom.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout tl = XemsUi.card(c);
        runTimeline = new AutoViews.Timeline(c);
        tl.addView(runTimeline, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 112)));
        runClock = XemsUi.text(c, "", 15, XemsUi.TEXT, true);
        ImpulseGlyph clock = new ImpulseGlyph(ImpulseGlyph.TIME, XemsUi.MUTED, XemsUi.dp(c, 1.8f));
        clock.setBounds(0, 0, XemsUi.dp(c, 16), XemsUi.dp(c, 16));
        runClock.setCompoundDrawables(clock, null, null, null);
        runClock.setCompoundDrawablePadding(XemsUi.dp(c, 8));
        tl.addView(runClock, XemsUi.matchWrap(c, 6));
        bottom.addView(tl, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        LinearLayout dock = XemsUi.horizontal(c);
        dock.setGravity(Gravity.CENTER);
        runPause = neon(c, A_PAUSE);
        runPauseLabel = dockKey(c, dock, runPause);
        runNext = neon(c, A_NEXT_SET);
        runNextLabel = dockKey(c, dock, runNext);
        runStop = neon(c, A_STOP);
        runStopLabel = dockKey(c, dock, runStop);
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(XemsUi.dp(c, 330), ViewGroup.LayoutParams.WRAP_CONTENT);
        dlp.leftMargin = XemsUi.dp(c, 12);
        bottom.addView(dock, dlp);
        body.addView(bottom, XemsUi.matchWrap(c, 8));

        // ---- slim strip: rows, −10 %, +5 %, double impulse
        LinearLayout strip = XemsUi.horizontal(c);
        strip.setGravity(Gravity.CENTER_VERTICAL);
        runRows = XemsUi.text(c, "", 14, XemsUi.MUTED, true);
        runRows.setMaxLines(1);
        runRows.setEllipsize(android.text.TextUtils.TruncateAt.END);
        strip.addView(runRows, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView minus = XemsUi.button(c, "− 10 %", XemsUi.SECONDARY);
        minus.setOnClickListener(new Act(A_REDUCE, 0));
        strip.addView(minus, XemsUi.weight(0, 8, c));
        TextView plus = XemsUi.button(c, "+ 5 %", XemsUi.SECONDARY);
        plus.setOnClickListener(new Act(A_RAISE, 0));
        strip.addView(plus, XemsUi.weight(0, 8, c));
        runDouble = XemsUi.button(c, "", XemsUi.SECONDARY);
        ImpulseGlyph dbl = new ImpulseGlyph(ImpulseGlyph.DOUBLE, XemsUi.TEXT, XemsUi.dp(c, 1.8f));
        dbl.setBounds(0, 0, XemsUi.dp(c, 22), XemsUi.dp(c, 16));
        runDouble.setCompoundDrawables(dbl, null, null, null);
        runDouble.setCompoundDrawablePadding(XemsUi.dp(c, 8));
        runDouble.setOnClickListener(new Act(A_DOUBLE_LIVE, 0));
        strip.addView(runDouble, XemsUi.weight(0, 8, c));
        body.addView(strip, XemsUi.matchWrap(c, 10));

        TextView hide = XemsUi.button(c, AiText.t("Скрий", "Hide"), XemsUi.GHOST);
        hide.setOnClickListener(new Act(A_HIDE, 0));
        shell.footer.addView(hide);
        shell.footer.addView(XemsUi.spacer(c));
        shell.footer.addView(tipsToggle(c));
        refreshRun();
    }

    /** A dock key: an outline circle in the kit's colour (no heavy fill), the symbol inside. */
    private static TextView neon(Context c, int action) {
        TextView k = XemsUi.text(c, "", 30, XemsUi.TEXT, true);
        k.setGravity(Gravity.CENTER);
        k.setOnClickListener(new Act(action, 0));
        XemsUi.pressable(k);
        return k;
    }

    /** The key and, under it, a short value only when it matters (the rest still to wait). */
    private static TextView dockKey(Context c, LinearLayout dock, TextView key) {
        LinearLayout col = XemsUi.vertical(c);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        col.addView(key, new LinearLayout.LayoutParams(XemsUi.dp(c, 84), XemsUi.dp(c, 84)));
        TextView l = XemsUi.text(c, "", 14, XemsUi.MUTED, true);
        l.setGravity(Gravity.CENTER);
        col.addView(l, new LinearLayout.LayoutParams(XemsUi.dp(c, 96), XemsUi.dp(c, 22)));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = XemsUi.dp(c, 6);
        lp.rightMargin = XemsUi.dp(c, 6);
        dock.addView(col, lp);
        return l;
    }

    /** glyph in the key, value under it ("" = none), the action's name for TalkBack. */
    private static void styleKey(TextView k, TextView label, String glyph, String value, String name, int color,
                                 boolean enabled, boolean visible) {
        View col = (View) k.getParent();
        col.setVisibility(visible ? View.VISIBLE : View.GONE);
        if (!visible) {
            return;
        }
        Context c = k.getContext();
        if (!glyph.equals(k.getText().toString()) || k.getTag() == null || (Integer) k.getTag() != color) {
            k.setText(glyph);
            k.setTag(color);
            android.graphics.drawable.GradientDrawable d = new android.graphics.drawable.GradientDrawable();
            d.setShape(android.graphics.drawable.GradientDrawable.OVAL);
            d.setColor(XemsUi.alpha(color, 0x1C));
            d.setStroke(XemsUi.dp(c, 2.5f), color);
            k.setBackgroundDrawable(d);
            k.setTextColor(color);
        }
        k.setContentDescription(name);
        k.setAlpha(enabled ? 1f : 0.42f);
        label.setText(value);
        label.setTextColor(color);
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

        // ---- left: the exercise (or the program's picture) in its ring
        String ex = e.getExercise();
        boolean rest = st == AutoEngine.State.REST;
        int cd = st == AutoEngine.State.COUNTDOWN ? Math.max(1, e.getCountdownLeftS(now)) : 0;
        boolean fig = ex != null && !beforeRecovery;
        runFigure.setVisibility(fig ? View.VISIBLE : View.INVISIBLE);
        runArt.setVisibility(fig ? View.GONE : View.VISIBLE);
        runArt.setAlpha(st == AutoEngine.State.RUN ? 1f : 0.6f);
        if (fig) {
            runFigure.setColor(ExerciseFigure.colorFor(lead != null ? lead.sex : null));
            runFigure.setExercise(ex);
            runFigure.setAlpha(st == AutoEngine.State.RUN ? 1f : 0.5f);
            runPhase.setText(AutoTemplates.name(ex));
            runPhase.setTextColor(rest || cd > 0 ? XemsUi.MUTED : XemsUi.TEXT);
        } else {
            runPhase.setText(beforeRecovery || recovery ? AiText.t("Възстановяване", "Recovery")
                    : ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "");
            runPhase.setTextColor(XemsUi.TEXT);
        }
        String line;
        float prog;
        int mode;
        int[] dots = {0, 0};
        if (rest) {
            int min = Math.max(1, e.getRestMinS());
            prog = beforeRecovery ? 1f : (float) Math.min(1.0, e.getRestS(now) / min);
            mode = AutoSession.startReady() ? AutoViews.SetRing.READY : AutoViews.SetRing.REST;
            line = beforeRecovery ? plan.recoveryS / 60 + AiText.t(" мин", " min") : AiText.mmss(e.getRestS(now));
        } else if (recovery) {
            prog = ph.durationS > 0 ? (float) (e.phaseElapsed() / ph.durationS) : 0;
            mode = AutoViews.SetRing.RECOVERY;
            line = AiText.mmss(e.phaseRemainingS());
        } else if (e.isStationPhase(e.getPhaseIndex())) {
            prog = (float) (e.getStationS() / Math.max(1, e.getSetTargetS()));
            mode = st == AutoEngine.State.RUN ? AutoViews.SetRing.WORK : AutoViews.SetRing.IDLE;
            dots = e.getSetImpulses();
            line = AiText.mmss(Math.max(0, e.getSetTargetS() - e.getStationS()));
        } else {
            prog = ph != null && ph.durationS > 0 ? (float) (e.phaseElapsed() / ph.durationS) : 0;
            mode = st == AutoEngine.State.RUN ? AutoViews.SetRing.WORK : AutoViews.SetRing.IDLE;
            line = AiText.mmss(e.phaseRemainingS());
        }
        runRing.set(prog, mode, cd);
        runDots.set(dots[0], dots[1]);
        runDots.setVisibility(dots[1] > 0 ? View.VISIBLE : View.GONE);
        runTime.setText((dots[1] > 0 ? "   " : "") + line);

        // ---- right: the body, the pulse, the system load
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
        int hrNow = e.getHr(now);
        if (hrUsed) {
            runVital.set(hrNow, com.isaigu.gymapp.wearable.HrGuard.zoneColor(hrNow, plan.hrMax));
        }

        // ---- bottom: timeline and clock
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

        // ---- dock: ▶ / ❚❚ · ⏭ · ■ (■ only while paused); a value under a key only when it matters
        boolean paused = st != AutoEngine.State.RUN && st != AutoEngine.State.COUNTDOWN;
        if (st == AutoEngine.State.RUN) {
            styleKey(runPause, runPauseLabel, "❚❚", "", AiText.t("Пауза", "Pause"), XemsUi.AMBER, true, true);
        } else if (st == AutoEngine.State.COUNTDOWN) {
            styleKey(runPause, runPauseLabel, "" + cd, "", AiText.t("Отказ", "Cancel"), XemsUi.GO, true, true);
        } else if (rest) {
            boolean ok = AutoSession.startReady();
            int lft = e.getRestLeftS(now);
            styleKey(runPause, runPauseLabel, "▶", ok ? "" : lft > 0 ? AiText.mmss(lft) : "♥ ≤ " + e.getRestHrLimit(),
                    AiText.t("Старт", "Start"), XemsUi.GO, ok, true);
        } else if (e.canResume()) {
            styleKey(runPause, runPauseLabel, "▶", "", AiText.t("Продължи", "Resume"), XemsUi.GO, true, true);
        } else {
            styleKey(runPause, runPauseLabel, "▶", "♥ ↓", AiText.t("Пулсът спада", "HR coming down"), XemsUi.AMBER,
                    false, true);
        }
        boolean canNext = !recovery && !beforeRecovery && (st == AutoEngine.State.RUN || rest);
        styleKey(runNext, runNextLabel, "⏭", "", AiText.t("Следващо", "Next"), XemsUi.MUTED, canNext, true);
        styleKey(runStop, runStopLabel, "■", "", recovery || beforeRecovery ? AiText.t("Край", "End")
                : AiText.t("Към възстановяване", "To recovery"), XemsUi.ACCENT, true, paused);

        subtitle(ph != null ? (recovery ? AiText.t("Възстановяване", "Recovery") : AiText.t(ph.nameBg, ph.nameEn)) : "");

        // ---- strip: rows (name and strength), notice, double impulse
        List<AutoSession.Row> rows = AutoSession.getRows();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            if (sb.length() > 0) {
                sb.append("    ");
            }
            String n = r.name.length() > 0 ? r.name : "" + (i + 1);
            sb.append(n).append("  ").append(r.block != null ? "⊘" : r.cal <= 0 ? "—" : "" + Math.max(0, r.writtenStrength));
        }
        runRows.setText(sb.toString());
        String n = AutoSession.getLastNotice();
        boolean fresh = n != null && n.length() > 0 && now - AutoSession.getLastNoticeMs() < 12000L;
        runNotice.setText(fresh ? n : "");
        runNotice.setVisibility(fresh ? View.VISIBLE : View.GONE);
        boolean dp = e.isDoublePulseAvailable();
        runDouble.setVisibility(dp ? View.VISIBLE : View.GONE);
        runDouble.setText(e.isDoublePulseOn() ? AiText.t("вкл.", "on") : AiText.t("изкл.", "off"));
        runDouble.setTextColor(e.isDoublePulseOn() ? XemsUi.AMBER : XemsUi.MUTED);
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
            case A_PAUSE:
                AutoSession.tip("btn_pause", AiText.t("Пауза: изходът е 0 и часовникът на плана спира. След пауза над 30 s импулсите тръгват по-меко.",
                        "Pause: output 0 and the plan clock stops. After more than 30 s the pulses restart softer."), now);
                AutoSession.togglePause();
                refreshRun();
                return;
            case A_REDUCE: AutoSession.reduceAll(); return;
            case A_RAISE: AutoSession.raiseAll(); return;
            case A_DOUBLE_LIVE: {
                AutoSession.tip("btn_double", AiText.t("Двоен импулс: лек нискочестотен импулс в паузата — само във фазите, където програмата го има.",
                        "Double impulse: a light low-frequency pulse in the pause — only in the phases where the program has it."), now);
                AutoEngine e = AutoSession.getEngine();
                if (e != null) {
                    AutoSession.setDoublePulse(!e.isDoublePulseOn());
                }
                refreshRun();
                return;
            }
            case A_NEXT_SET:
                AutoSession.next();
                refreshRun();
                return;
            case A_STOP:
                AutoSession.stop();             // → report stage → onFinished
                return;
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
