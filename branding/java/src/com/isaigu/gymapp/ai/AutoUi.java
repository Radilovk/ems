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
 * Automatic mode UI (docs/xems-auto-mode-spec.md §2): the "Авто" tile opens a sheet with
 * goal & kind → program → check → plan → calibration → live board → report.
 * Named listener classes only (dx): every tap goes through {@link Act} with an action code.
 */
public final class AutoUi {
    static final int STEP_GOAL = 0;
    static final int STEP_PROGRAM = 1;
    static final int STEP_CHECK = 2;
    static final int STEP_PLAN = 3;
    static final int STEP_CALIB = 4;
    static final int STEP_RUN = 5;
    static final int STEP_REPORT = 6;
    private static final int SETUP_STEPS = 5;

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
    private static final int A_CALIB_START = 20;
    private static final int A_CALIB_ROW = 21;
    private static final int A_PAUSE = 22;
    private static final int A_REDUCE = 23;
    private static final int A_RAISE = 24;
    private static final int A_DOUBLE_LIVE = 25;
    private static final int A_COOLDOWN = 26;
    private static final int A_STOP = 27;
    private static final int A_SEX = 28;

    private static XemsUi.Shell shell;
    private static Activity host;
    private static int step;
    private static boolean heightTouched;
    private static boolean calibStarted;

    // live refs
    private static TextView runPhase;
    private static TextView runTime;
    private static TextView runParams;
    private static TextView runHint;
    private static TextView runHr;
    private static TextView runNotice;
    private static TextView runPause;
    private static TextView runDouble;
    private static View runBar;
    private static LinearLayout runRows;
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
            heightTouched = AutoSession.getInput().heightCm > 0;
            calibStarted = false;
            show(a, STEP_GOAL);
            return;
        }
        show(a, st == AutoSession.Stage.RUNNING ? STEP_RUN
                : st == AutoSession.Stage.REPORT ? STEP_REPORT
                : st == AutoSession.Stage.CALIB ? STEP_CALIB : STEP_GOAL);
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
        if (shell == null || !shell.dialog.isShowing()) {
            host = a;
            shell = XemsUi.shell(a, "", "", 1180);
            shell.close.setOnClickListener(new Act(A_CLOSE, 0));
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

    static void refresh() {
        if (shell == null || !shell.dialog.isShowing()) {
            return;
        }
        try {
            if (step == STEP_RUN && AutoSession.getStage() == AutoSession.Stage.REPORT) {
                go(STEP_REPORT);
                return;
            }
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
        step = s;
        Context c = shell.dialog.getContext();
        shell.body.removeAllViews();
        shell.footer.removeAllViews();
        rowLabels.clear();
        runPhase = null;
        switch (s) {
            case STEP_GOAL: screenGoal(c); break;
            case STEP_PROGRAM: screenProgram(c); break;
            case STEP_CHECK: screenCheck(c); break;
            case STEP_PLAN: screenPlan(c); break;
            case STEP_CALIB: screenCalib(c); break;
            case STEP_RUN: screenRun(c); break;
            default: screenReport(c); break;
        }
        if (s < SETUP_STEPS) {
            shell.badge.setVisibility(View.VISIBLE);
            XemsUi.setBadge(shell.badge, AiText.t("Стъпка ", "Step ") + (s + 1) + " / " + SETUP_STEPS, XemsUi.GO_TEXT);
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

    private static void next() {
        AutoModel.Input in = AutoSession.getInput();
        switch (step) {
            case STEP_GOAL:
                go(STEP_PROGRAM);
                break;
            case STEP_PROGRAM:
                if (in.programId != null) {
                    go(STEP_CHECK);
                }
                break;
            case STEP_CHECK:
                if (checkBlocker() == null) {
                    if (heightTouched) {
                        AutoSession.saveHeight(host, in.heightCm);
                    }
                    AutoSession.buildPlan();
                    go(STEP_PLAN);
                }
                break;
            case STEP_PLAN:
                go(STEP_CALIB);
                break;
            case STEP_CALIB:
                if (calibStarted && AutoSession.canStart()) {
                    AutoSession.startRun(host);
                    go(STEP_RUN);
                }
                break;
            case STEP_REPORT:
                AutoSession.close();
                dismiss();
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
        if (step > STEP_GOAL && step <= STEP_CALIB) {
            go(step - 1);
        }
    }

    // ================================================================ 1 · goal and kind

    private static void screenGoal(Context c) {
        shell.title.setText(AiText.t("Автоматична тренировка", "Automatic session"));
        subtitle(AiText.t("Цел → вид → програма. Силата я нагласяш ти, останалото е в лимити.",
                "Goal → kind → program. You set the strength, the rest stays within limits."));
        AutoModel.Input in = AutoSession.getInput();
        LinearLayout body = shell.body;
        body.addView(XemsUi.label(c, AiText.t("Цел", "Goal")), XemsUi.matchWrap(c, 8));
        LinearLayout row = XemsUi.horizontal(c);
        Goal[] goals = Goal.values();
        String[][] txt = {
                {AiText.t("Стягане", "Toning"), AiText.t("Форма и тонус", "Shape and tone")},
                {AiText.t("Отслабване", "Weight loss"), AiText.t("Енергоразход, по-дълго", "Energy use, longer")},
                {AiText.t("Здраве", "Health"), AiText.t("Гръб, дренаж, възстановяване", "Back, drainage, recovery")},
        };
        for (int i = 0; i < goals.length; i++) {
            boolean sel = in.goal == goals[i];
            LinearLayout card = choiceCard(c, txt[i][0], txt[i][1], sel, goalColor(goals[i]));
            card.setOnClickListener(new Act(A_GOAL, i));
            row.addView(card, XemsUi.weight(1, i == 0 ? 0 : 10, c));
        }
        body.addView(row, XemsUi.matchWrap(c, 8));

        body.addView(XemsUi.label(c, AiText.t("Вид", "Kind")), XemsUi.matchWrap(c, 18));
        LinearLayout kinds = XemsUi.segmented(c, new String[] {
                AiText.t("Активна · с упражнения", "Active · with exercises"),
                AiText.t("Пасивна · процедура", "Passive · procedure")},
                in.kind == Kind.ACTIVE ? 0 : 1, new Act(A_KIND, 0));
        body.addView(kinds, XemsUi.matchWrap(c, 8));
        body.addView(hint(c, in.kind == Kind.ACTIVE
                ? AiText.t("Движение с всеки импулс; програмите са силови или метаболитни.",
                "Move with every pulse; strength or metabolic programs.")
                : AiText.t("Легнал или седнал, без движение; ниски сили и дълги паузи.",
                "Lying or sitting, no movement; low strength and long pauses.")), XemsUi.matchWrap(c, 6));

        body.addView(XemsUi.label(c, AiText.t("Кой управлява", "Who operates")), XemsUi.matchWrap(c, 18));
        body.addView(XemsUi.segmented(c, new String[] {
                AiText.t("Треньор", "Trainer"), AiText.t("Самостоятелно", "On my own")},
                in.operator == AiModel.Operator.TRAINER ? 0 : 1, new Act(A_OPERATOR, 0)), XemsUi.matchWrap(c, 8));
        if (in.solo()) {
            body.addView(hint(c, AiText.t("Самостоятелно: по-тесни граници — импулс ≤ 4 s, сила ≤ 90 %, таван на пулса −5 %.",
                    "On your own: tighter limits — pulse ≤ 4 s, strength ≤ 90 %, HR ceiling −5 %.")), XemsUi.matchWrap(c, 6));
        }
        footer(c, AiText.t("Избери програма", "Choose a program"), false);
    }

    // ================================================================ 2 · program

    private static void screenProgram(Context c) {
        AutoModel.Input in = AutoSession.getInput();
        shell.title.setText(AiText.t("Програма", "Program"));
        subtitle(goalName(in.goal) + " · " + (in.kind == Kind.ACTIVE ? AiText.t("активна", "active")
                : AiText.t("пасивна", "passive")));
        List<Program> menu = AutoCatalog.menu(in.goal, in.kind);
        Program rec = AutoCatalog.recommended(in.goal, in.kind, in);
        Program chosen = AutoCatalog.get(in.programId);
        if (chosen == null || !menu.contains(chosen) || AutoCatalog.blockReason(chosen, in.goal, in, false) != null) {
            in.programId = AutoCatalog.blockReason(rec, in.goal, in, false) == null ? rec.id : null;
        }
        for (int i = 0; i < menu.size(); i++) {
            Program p = menu.get(i);
            String block = AutoCatalog.blockReason(p, in.goal, in, false);
            boolean sel = p.id.equals(in.programId);
            LinearLayout card = XemsUi.card(c);
            card.setBackgroundDrawable(XemsUi.rounded(sel ? XemsUi.mix(XemsUi.CARD, goalColor(in.goal), 0.18f) : XemsUi.CARD,
                    XemsUi.dp(c, 16), sel ? goalColor(in.goal) : XemsUi.STROKE, XemsUi.dp(c, sel ? 2 : 1)));
            LinearLayout head = XemsUi.horizontal(c);
            head.addView(XemsUi.text(c, p.name(), 17, XemsUi.TEXT, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            if (p == rec && block == null) {
                head.addView(XemsUi.badge(c, AiText.t("Препоръчана", "Recommended"), XemsUi.GO_TEXT));
            }
            card.addView(head);
            TextView d = XemsUi.text(c, p.desc() + " · " + summary(p, in), 13, XemsUi.MUTED, false);
            d.setPadding(0, XemsUi.dp(c, 4), 0, 0);
            card.addView(d);
            if (block != null) {
                TextView b = XemsUi.text(c, "⊘ " + block, 13, XemsUi.DANGER, true);
                b.setPadding(0, XemsUi.dp(c, 6), 0, 0);
                card.addView(b);
                card.setAlpha(0.55f);
            } else {
                card.setOnClickListener(new Act(A_PROGRAM, i));
                XemsUi.pressable(card);
            }
            shell.body.addView(card, XemsUi.matchWrap(c, i == 0 ? 4 : 10));
        }
        footer(c, AiText.t("Проверка", "Check"), true);
    }

    private static String summary(Program p, AutoModel.Input in) {
        int min = AutoPlanner.maxSeconds(p, in.goal, in) / 60;
        String hr;
        switch (AutoCatalog.hrUse(p, in.goal)) {
            case CORRIDOR: hr = AiText.t("пулс в зона", "HR zone"); break;
            default: hr = AiText.t("таван на пулса", "HR ceiling"); break;
        }
        return min + AiText.t(" мин · ", " min · ") + hr;
    }

    // ================================================================ 3 · check

    private static void screenCheck(Context c) {
        AutoModel.Input in = AutoSession.getInput();
        Program p = AutoCatalog.get(in.programId);
        shell.title.setText(AiText.t("Проверка", "Check"));
        subtitle(p != null ? p.name() : "");
        LinearLayout body = shell.body;

        LinearLayout prof = XemsUi.card(c);
        prof.addView(XemsUi.label(c, AiText.t("Клиент", "Client")));
        prof.addView(XemsUi.segmented(c, new String[] {AiText.t("Жена", "Female"), AiText.t("Мъж", "Male")},
                in.sex == AiModel.Sex.FEMALE ? 0 : 1, new Act(A_SEX, 0)), XemsUi.matchWrap(c, 8));
        LinearLayout nums = XemsUi.horizontal(c);
        nums.addView(labeled(c, AiText.t("Възраст", "Age"),
                XemsUi.stepper(c, "" + in.age, AiText.t("г.", "y"), 20, new Act(A_AGE, 0)).view), XemsUi.weight(1, 0, c));
        nums.addView(labeled(c, AiText.t("Тегло", "Weight"),
                XemsUi.stepper(c, "" + Math.round(in.weightKg), "kg", 20, new Act(A_WEIGHT, 0)).view), XemsUi.weight(1, 10, c));
        nums.addView(labeled(c, AiText.t("Ръст · задължително", "Height · required"),
                XemsUi.stepper(c, in.heightCm > 0 ? "" + in.heightCm : "—", "cm", 20, new Act(A_HEIGHT, 0)).view),
                XemsUi.weight(1, 10, c));
        prof.addView(nums, XemsUi.matchWrap(c, 10));
        String bmi = in.heightCm > 0 ? String.format(Locale.US, "%.1f", in.bmi()) : "—";
        String last = in.hoursSinceActive < 0 ? AiText.t("няма", "none")
                : in.hoursSinceActive < 48 ? Math.round(in.hoursSinceActive) + AiText.t(" ч", " h")
                : Math.round(in.hoursSinceActive / 24) + AiText.t(" дни", " days");
        prof.addView(hint(c, AiText.t("ИТМ ", "BMI ") + bmi + AiText.t(" · сесии досега: ", " · sessions so far: ")
                + in.sessions + AiText.t(" · последна активна: ", " · last active: ") + last), XemsUi.matchWrap(c, 8));
        prof.addView(XemsUi.label(c, AiText.t("Кондиция", "Fitness")), XemsUi.matchWrap(c, 10));
        prof.addView(XemsUi.segmented(c, new String[] {AiText.t("Ниска", "Low"), AiText.t("Средна", "Medium"),
                AiText.t("Висока", "High")}, in.fitness.ordinal(), new Act(A_FITNESS, 0)), XemsUi.matchWrap(c, 6));
        body.addView(prof, XemsUi.matchWrap(c, 4));

        if (p != null && p.asksPostpartum) {
            LinearLayout pp = XemsUi.card(c);
            pp.addView(XemsUi.label(c, AiText.t("След раждането", "After birth")));
            pp.addView(labeled(c, AiText.t("Седмици след раждането", "Weeks since birth"),
                    XemsUi.stepper(c, "" + in.extra.weeksSinceBirth, AiText.t("седм.", "wk"), 20, new Act(A_WEEKS, 0)).view),
                    XemsUi.matchWrap(c, 8));
            pp.addView(toggle(c, AiText.t("Цезарово сечение", "Cesarean section"),
                    AiText.t("Най-рано 12 седмици и с разрешение от лекар", "12 weeks at the earliest, doctor's clearance"),
                    in.extra.cesarean, 1));
            pp.addView(toggle(c, AiText.t("Кърми", "Breastfeeding"),
                    AiText.t("Гърдите се изключват", "Chest channel off"), in.extra.breastfeeding, 2));
            pp.addView(toggle(c, AiText.t("Диастаза (≥ 2 пръста между правите мускули)", "Diastasis (≥ 2 fingers)"),
                    AiText.t("Коремът до 40 %", "Abs up to 40 %"), in.extra.diastasis, 3));
            body.addView(pp, XemsUi.matchWrap(c, 12));
        }
        if (p != null && p.asksBack) {
            LinearLayout bk = XemsUi.card(c);
            bk.addView(XemsUi.label(c, AiText.t("Гръб — сигнали за тревога (всяко „да“ → лекар)",
                    "Back — red flags (any yes → doctor)")));
            bk.addView(toggle(c, AiText.t("Остра болка (под 6 седмици)", "Acute pain (under 6 weeks)"), null, in.extra.backAcute, 10));
            bk.addView(toggle(c, AiText.t("Болка към крака, изтръпване, слабост", "Pain down the leg, numbness, weakness"), null, in.extra.backRadiating, 11));
            bk.addView(toggle(c, AiText.t("Скорошна травма", "Recent trauma"), null, in.extra.backTrauma, 12));
            bk.addView(toggle(c, AiText.t("Операция на гръбначния стълб", "Spinal surgery"), null, in.extra.backSurgery, 13));
            bk.addView(toggle(c, AiText.t("Нощна болка или температура", "Night pain or fever"), null, in.extra.backNightPainFever, 14));
            bk.addView(toggle(c, AiText.t("Проблем с уринирането", "Bladder problem"), null, in.extra.backBladder, 15));
            body.addView(bk, XemsUi.matchWrap(c, 12));
        }

        LinearLayout sc = XemsUi.card(c);
        sc.addView(XemsUi.label(c, AiText.t("Противопоказания", "Contraindications")));
        for (int i = 0; i < AiScreening.CONTRAINDICATIONS.length; i++) {
            String k = AiScreening.CONTRAINDICATIONS[i];
            Boolean v = in.screening.contraindications.get(k);
            sc.addView(XemsUi.toggleRow(c, AiText.contraindication(k), null, v != null && v, new Act(A_CONTRA, i)));
        }
        sc.addView(XemsUi.label(c, AiText.t("Днес", "Today")), XemsUi.matchWrap(c, 10));
        sc.addView(XemsUi.toggleRow(c, AiText.t("Температура или болест", "Fever or illness"), null,
                in.screening.feverOrIllness, new Act(A_TODAY, 0)));
        sc.addView(XemsUi.toggleRow(c, AiText.t("Алкохол или силен стрес (48 ч)", "Alcohol or heavy stress (48 h)"), null,
                in.screening.alcoholOrStress48h, new Act(A_TODAY, 1)));
        sc.addView(XemsUi.toggleRow(c, AiText.t("Известна аритмия", "Known arrhythmia"), null,
                in.screening.knownArrhythmia, new Act(A_TODAY, 2)));
        sc.addView(XemsUi.toggleRow(c, AiText.t("Хранене в последните 2 ч", "Ate in the last 2 h"),
                AiText.t("Иначе ≈ 250 kcal въглехидрати преди", "Otherwise ≈ 250 kcal carbs first"),
                in.screening.ateLast2h, new Act(A_TODAY, 3)));
        sc.addView(XemsUi.toggleRow(c, AiText.t("Пил вода (250–500 ml)", "Drank water (250–500 ml)"), null,
                in.screening.hydrated, new Act(A_TODAY, 4)));
        body.addView(sc, XemsUi.matchWrap(c, 12));

        String blocker = checkBlocker();
        body.addView(banner(c, blocker == null ? XemsUi.GO : XemsUi.DANGER, blocker == null
                ? AiText.t("Може да продължиш.", "You may continue.") : blocker), XemsUi.matchWrap(c, 12));
        footer(c, AiText.t("План", "Plan"), true);
        primary.setAlpha(blocker == null ? 1f : 0.45f);
    }

    /** Why the check step does not let go, or null. */
    private static String checkBlocker() {
        AutoModel.Input in = AutoSession.getInput();
        if (in.heightCm <= 0) {
            return AiText.t("Въведи ръста — нужен е за ИТМ и лимитите.", "Enter the height — needed for BMI and the limits.");
        }
        if (in.age < 18) {
            return AiText.t("Под 18 г. — не.", "Under 18 — no.");
        }
        AiScreening.Result r = AiScreening.evaluate(AutoSession.screeningInput(in));
        if (r.isRejected()) {
            StringBuilder sb = new StringBuilder(AiText.t("Не може днес: ", "Not today: "));
            for (int i = 0; i < r.rejects.size(); i++) {
                String code = r.rejects.get(i);
                sb.append(i > 0 ? ", " : "").append(code.startsWith("contra:")
                        ? AiText.contraindication(code.substring(7)) : AiText.screeningCode(code));
            }
            return sb.toString();
        }
        Program p = AutoCatalog.get(in.programId);
        String b = p != null ? AutoCatalog.blockReason(p, in.goal, in) : AiText.t("Няма програма", "No program");
        return b;
    }

    // ================================================================ 4 · plan

    private static void screenPlan(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input in = AutoSession.getInput();
        shell.title.setText(plan.program.name());
        subtitle(AiText.t("План и лимити за ", "Plan and limits for ") + goalName(in.goal).toLowerCase(Locale.ROOT));
        LinearLayout body = shell.body;

        LinearLayout tiles = XemsUi.horizontal(c);
        tile(c, tiles, AiText.t("Време", "Time"), (plan.totalS / 60) + AiText.t(" мин", " min"), 0);
        tile(c, tiles, AiText.t("Сила до", "Strength up to"), Math.round(plan.phiMax * plan.envMax * 100) + " %", 10);
        tile(c, tiles, AiText.t("Усещане", "Feeling"), "CR10 " + plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : ""), 10);
        String hr = plan.hrCap + " bpm";
        if (plan.hrUse == AutoModel.HrUse.CORRIDOR) {
            hr = plan.corridorLoHr() + "–" + plan.corridorHiHr() + " · ≤ " + plan.hrCap;
        }
        tile(c, tiles, plan.hrUse == AutoModel.HrUse.CORRIDOR ? AiText.t("Пулс зона · таван", "HR zone · ceiling")
                : AiText.t("Таван на пулса", "HR ceiling"), hr, 10);
        body.addView(tiles, XemsUi.matchWrap(c, 4));
        if (!plan.hrRestMeasured) {
            body.addView(hint(c, AiText.t("Пулс в покой: 70 (приет — гривната не е подала пулс преди старта).",
                    "Resting HR: 70 (assumed — no band reading before the start).")), XemsUi.matchWrap(c, 6));
        }

        LinearLayout ph = XemsUi.card(c);
        ph.addView(XemsUi.label(c, AiText.t("Фази", "Phases")));
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
                sb.append(" · ").append(s.pwUs).append(" µs");
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
        body.addView(ph, XemsUi.matchWrap(c, 12));

        LinearLayout zc = XemsUi.card(c);
        zc.addView(XemsUi.label(c, AiText.t("Зони (% от силата) · ±", "Zones (% of strength) · ±") + plan.zoneDelta
                + AiText.t(" на живо", " live")));
        zc.addView(zoneBars(c, plan), XemsUi.matchWrap(c, 8));
        body.addView(zc, XemsUi.matchWrap(c, 12));

        LinearLayout opt = XemsUi.card(c);
        opt.addView(XemsUi.label(c, AiText.t("Настройки", "Options")));
        opt.addView(labeled(c, AiText.t("Продължителност", "Duration"),
                XemsUi.stepper(c, "" + (plan.totalS / 60), AiText.t("мин (до ", "min (up to ")
                        + AutoPlanner.maxSeconds(plan.program, in.goal, in) / 60 + ")", 20, new Act(A_MINUTES, 0)).view),
                XemsUi.matchWrap(c, 8));
        String[] levels = AutoPlanner.intenseAllowed(plan.program, in)
                ? new String[] {AiText.t("Мек", "Soft"), AiText.t("Стандартен", "Standard"), AiText.t("Интензивен", "Intense")}
                : new String[] {AiText.t("Мек", "Soft"), AiText.t("Стандартен", "Standard")};
        opt.addView(XemsUi.label(c, AiText.t("Интензитет", "Intensity")), XemsUi.matchWrap(c, 10));
        opt.addView(XemsUi.segmented(c, levels, Math.min(levels.length - 1, in.intensity.ordinal()),
                new Act(A_INTENSITY, 0)), XemsUi.matchWrap(c, 6));
        if (plan.program.variantsBg != null) {
            String[] v = new String[plan.program.variantsBg.length];
            for (int i = 0; i < v.length; i++) {
                v[i] = AiText.t(plan.program.variantsBg[i], plan.program.variantsEn[i]);
            }
            opt.addView(XemsUi.label(c, AiText.t("Вариант", "Variant")), XemsUi.matchWrap(c, 10));
            opt.addView(XemsUi.segmented(c, v, in.variant, new Act(A_VARIANT, 0)), XemsUi.matchWrap(c, 6));
        }
        if (plan.doublePulseAllowed) {
            opt.addView(XemsUi.toggleRow(c, AiText.t("Двоен импулс (активна пауза)", "Double impulse (active pause)"),
                    AiText.t("Лек нискочестотен импулс в паузата — програмата решава къде", "A light low-frequency pulse in the pause — the program decides where"),
                    in.doublePulse, new Act(A_DOUBLE, 0)), XemsUi.matchWrap(c, 8));
        }
        String band = AutoSession.isBandConfigured(host)
                ? (AutoSession.getLastBandHr() > 0 ? AiText.t("Гривна: ", "Band: ") + AutoSession.getLastBandHr() + " bpm"
                : AiText.t("Гривна: свързване…", "Band: connecting…"))
                : AiText.t("Без гривна: таванът на пулса не работи.", "No band: the HR ceiling is off.");
        opt.addView(hint(c, band + AiText.t(" · Музика: само от друго приложение (синхронизацията сменя честотата и паузите).",
                " · Music: from another app only (sync changes frequency and pauses).")), XemsUi.matchWrap(c, 10));
        body.addView(opt, XemsUi.matchWrap(c, 12));

        StringBuilder notes = new StringBuilder();
        List<String> list = AiText.t("x", "y").equals("x") ? plan.notesBg : plan.notesEn;
        for (String n : list) {
            notes.append("• ").append(n).append('\n');
        }
        for (AutoSession.Row r : AutoSession.getRows()) {
            if (r.block != null) {
                notes.append("• ").append(r.name.length() > 0 ? r.name : "?").append(": ").append(r.block)
                        .append(AiText.t(" — няма да получи импулси", " — gets no pulses")).append('\n');
            }
        }
        if (notes.length() > 0) {
            body.addView(hint(c, notes.toString().trim()), XemsUi.matchWrap(c, 10));
        }
        footer(c, AiText.t("Калибриране", "Calibration"), true);
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

    // ================================================================ 5 · calibration

    private static void screenCalib(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        shell.title.setText(AiText.t("Калибриране на силата", "Strength calibration"));
        subtitle(AiText.t("Целево усещане: CR10 ", "Target feeling: CR10 ") + plan.cr10Lo
                + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "") + " · " + cr10Text(plan.cr10Hi));
        LinearLayout body = shell.body;
        body.addView(hint(c, AiText.t(
                "Импулсите са като в основната част на програмата. Качвай силата на всеки клиент до целевото усещане — тук или с + / − и плъзгача на основния екран (най-много +5 в секунда). Зоните може да се местят ±20. После „Старт“: програмата тръгва от загрявката и не минава над калибрирането освен в лимита на фазата.",
                "Pulses are as in the program's main part. Raise each client's strength to the target feeling — here or with + / − and the slider on the main screen (at most +5 per second). Zones may move ±20. Then Start: the program begins with the warm-up and never goes above the calibration except within the phase limit.")),
                XemsUi.matchWrap(c, 4));
        if (!calibStarted) {
            TextView b = XemsUi.button(c, AiText.t("▶ Пусни импулсите за калибриране", "▶ Start calibration pulses"), XemsUi.ACCENT_BTN);
            b.setOnClickListener(new Act(A_CALIB_START, 0));
            body.addView(b, XemsUi.matchWrap(c, 16));
        } else {
            List<AutoSession.Row> rows = AutoSession.getRows();
            for (int i = 0; i < rows.size(); i++) {
                AutoSession.Row r = rows.get(i);
                LinearLayout card = XemsUi.card(c);
                LinearLayout head = XemsUi.horizontal(c);
                head.addView(XemsUi.text(c, r.name.length() > 0 ? r.name : AiText.t("Участник ", "Participant ") + (i + 1),
                        16, XemsUi.TEXT, true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                TextView lbl = XemsUi.text(c, "", 22, XemsUi.GO_TEXT, true);
                rowLabels.add(lbl);
                head.addView(lbl);
                card.addView(head);
                if (r.block != null) {
                    card.addView(XemsUi.text(c, "⊘ " + r.block, 13, XemsUi.DANGER, true));
                } else {
                    LinearLayout keys = XemsUi.horizontal(c);
                    int[] steps = {-5, -1, +1, +5};
                    for (int k = 0; k < steps.length; k++) {
                        TextView key = XemsUi.button(c, (steps[k] > 0 ? "+" : "−") + Math.abs(steps[k]), XemsUi.SECONDARY);
                        key.setOnClickListener(new Act(A_CALIB_ROW, i * 100 + (steps[k] + 50)));
                        keys.addView(key, XemsUi.weight(1, k == 0 ? 0 : 8, c));
                    }
                    card.addView(keys, XemsUi.matchWrap(c, 8));
                }
                body.addView(card, XemsUi.matchWrap(c, 12));
            }
            calibRowsInfo = hint(c, "");
            body.addView(calibRowsInfo, XemsUi.matchWrap(c, 8));
        }
        footer(c, AiText.t("Старт", "Start"), true);
        refreshCalib();
    }

    private static void refreshCalib() {
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rowLabels.size() && i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            rowLabels.get(i).setText(r.block != null ? "—" : r.lastStrength + "");
        }
        if (primary != null) {
            primary.setAlpha(calibStarted && AutoSession.canStart() ? 1f : 0.45f);
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

    // ================================================================ 6 · live

    private static void screenRun(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        shell.title.setText(plan.program.name());
        subtitle(AiText.t("Автоматичен режим · на живо", "Automatic mode · live"));
        LinearLayout body = shell.body;

        LinearLayout top = XemsUi.card(c);
        LinearLayout head = XemsUi.horizontal(c);
        runPhase = XemsUi.text(c, "", 22, XemsUi.TEXT, true);
        head.addView(runPhase, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        runTime = XemsUi.text(c, "", 22, XemsUi.GO_TEXT, true);
        head.addView(runTime);
        top.addView(head);
        LinearLayout track = XemsUi.horizontal(c);
        track.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 4), 0, 0));
        runBar = new View(c);
        runBar.setBackgroundDrawable(XemsUi.rounded(XemsUi.GO, XemsUi.dp(c, 4), 0, 0));
        track.addView(runBar, new LinearLayout.LayoutParams(0, XemsUi.dp(c, 8), 0f));
        track.addView(new View(c), new LinearLayout.LayoutParams(0, XemsUi.dp(c, 8), 1f));
        top.addView(track, XemsUi.matchWrap(c, 10));
        runParams = XemsUi.text(c, "", 14, XemsUi.MUTED, false);
        top.addView(runParams, XemsUi.matchWrap(c, 8));
        runHint = XemsUi.text(c, "", 15, XemsUi.AMBER, true);
        top.addView(runHint, XemsUi.matchWrap(c, 6));
        runHr = XemsUi.text(c, "", 15, XemsUi.TEXT, true);
        top.addView(runHr, XemsUi.matchWrap(c, 6));
        body.addView(top, XemsUi.matchWrap(c, 4));

        runRows = XemsUi.vertical(c);
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            LinearLayout line = XemsUi.horizontal(c);
            line.addView(XemsUi.text(c, r.name.length() > 0 ? r.name : AiText.t("Участник ", "Participant ") + (i + 1),
                    15, XemsUi.TEXT, true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView v = XemsUi.text(c, "", 15, XemsUi.GO_TEXT, true);
            rowLabels.add(v);
            line.addView(v);
            runRows.addView(line, XemsUi.matchWrap(c, 6));
        }
        LinearLayout rc = XemsUi.card(c);
        rc.addView(XemsUi.label(c, AiText.t("Сила · сега / лимит сега (калибриране)", "Strength · now / limit now (calibration)")));
        rc.addView(runRows);
        body.addView(rc, XemsUi.matchWrap(c, 12));

        runNotice = hint(c, "");
        body.addView(runNotice, XemsUi.matchWrap(c, 8));

        LinearLayout keys = XemsUi.horizontal(c);
        runPause = XemsUi.button(c, "", XemsUi.SECONDARY);
        runPause.setOnClickListener(new Act(A_PAUSE, 0));
        keys.addView(runPause, XemsUi.weight(1, 0, c));
        TextView minus = XemsUi.button(c, AiText.t("− Сила 10 %", "− Strength 10 %"), XemsUi.SECONDARY);
        minus.setOnClickListener(new Act(A_REDUCE, 0));
        keys.addView(minus, XemsUi.weight(1, 8, c));
        TextView plus = XemsUi.button(c, AiText.t("+ Сила 5 %", "+ Strength 5 %"), XemsUi.SECONDARY);
        plus.setOnClickListener(new Act(A_RAISE, 0));
        keys.addView(plus, XemsUi.weight(1, 8, c));
        body.addView(keys, XemsUi.matchWrap(c, 12));
        LinearLayout keys2 = XemsUi.horizontal(c);
        runDouble = XemsUi.button(c, "", XemsUi.SECONDARY);
        runDouble.setOnClickListener(new Act(A_DOUBLE_LIVE, 0));
        keys2.addView(runDouble, XemsUi.weight(1, 0, c));
        TextView cool = XemsUi.button(c, AiText.t("Към охлаждане", "To cool-down"), XemsUi.SECONDARY);
        cool.setOnClickListener(new Act(A_COOLDOWN, 0));
        keys2.addView(cool, XemsUi.weight(1, 8, c));
        body.addView(keys2, XemsUi.matchWrap(c, 8));

        shell.footer.addView(XemsUi.spacer(c));
        TextView stop = XemsUi.button(c, AiText.t("■ СТОП", "■ STOP"), XemsUi.ACCENT_BTN);
        stop.setOnClickListener(new Act(A_STOP, 0));
        shell.footer.addView(stop, new LinearLayout.LayoutParams(XemsUi.dp(c, 260), ViewGroup.LayoutParams.WRAP_CONTENT));
        refreshRun();
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
        String state = "";
        if (st == AutoEngine.State.USER_PAUSE) {
            state = AiText.t(" · ПАУЗА", " · PAUSED");
        } else if (st == AutoEngine.State.HR_PAUSE) {
            state = e.isResumeWaiting() ? AiText.t(" · пулсът спадна — продължи", " · HR down — resume")
                    : AiText.t(" · ПАУЗА: пулс", " · PAUSED: HR");
        }
        runPhase.setText((ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "") + state);
        runTime.setText(AiText.mmss(e.getRemainingS()));
        float share = plan.totalS > 0 ? (float) (e.getElapsedS() / plan.totalS) : 0;
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) runBar.getLayoutParams();
        lp.weight = Math.max(0.001f, share);
        View rest = ((ViewGroup) runBar.getParent()).getChildAt(1);
        ((LinearLayout.LayoutParams) rest.getLayoutParams()).weight = Math.max(0.001f, 1 - share);
        runBar.requestLayout();
        AutoEngine.Cmd c = e.getCurrent();
        if (c != null) {
            String ext = e.getOffExtension() > 0 ? " (+" + e.getOffExtension() + " s)" : "";
            String pause = c.pauseHz > 0 ? AiText.t(" · пауза ", " · pause ") + c.pauseHz + " Hz" : "";
            String locked = ph != null && !ph.window.hz && !ph.window.on && !ph.window.off && !ph.window.pw
                    ? AiText.t(" · фиксирани", " · fixed") : "";
            runParams.setText(c.hz + " Hz · " + c.pwUs + " µs · " + c.onS + "/" + c.offS + " s" + ext + pause
                    + AiText.t(" · фаза: ", " · phase: ") + AiText.mmss(e.phaseRemainingS()) + locked);
        }
        runHint.setText(ph != null ? AiText.t(ph.hintBg, ph.hintEn) : "");
        runHint.setVisibility(ph != null && ph.hintBg.length() > 0 ? View.VISIBLE : View.GONE);
        int hr = e.getHr(now);
        String hrText;
        if (plan.hrUse == AutoModel.HrUse.NONE) {
            hrText = "";
        } else if (hr <= 0) {
            hrText = AiText.t("♥ — (няма пулс: таванът не работи)", "♥ — (no HR: ceiling off)");
        } else if (plan.hrUse == AutoModel.HrUse.CORRIDOR) {
            hrText = "♥ " + hr + AiText.t(" · зона ", " · zone ") + plan.corridorLoHr() + "–" + plan.corridorHiHr()
                    + AiText.t(" · таван ", " · ceiling ") + plan.hrCap;
        } else {
            hrText = "♥ " + hr + AiText.t(" · таван ", " · ceiling ") + plan.hrCap;
        }
        runHr.setText(hrText);
        runHr.setTextColor(hr > 0 && hr >= plan.hrCap - 5 ? XemsUi.DANGER : XemsUi.TEXT);
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rowLabels.size() && i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            if (r.block != null || r.cal <= 0) {
                rowLabels.get(i).setText(r.block != null ? "⊘" : "—");
                continue;
            }
            AutoModel.Plan rp = r.plan != null ? r.plan : plan;
            int limit = c != null ? (int) Math.floor(r.cal * e.rowCeiling(c, rp.phiMax, rp.envMax) + 1e-9) : 0;
            rowLabels.get(i).setText(Math.max(0, r.writtenStrength) + " / " + limit + "  (" + r.cal + ")");
        }
        String n = AutoSession.getLastNotice();
        runNotice.setText(n != null ? n : "");
        runPause.setText(e.canResume() ? AiText.t("▶ Продължи", "▶ Resume")
                : st == AutoEngine.State.HR_PAUSE ? AiText.t("… пулсът спада", "… HR coming down")
                : AiText.t("❚❚ Пауза", "❚❚ Pause"));
        boolean dp = e.isDoublePulseAvailable();
        runDouble.setVisibility(dp ? View.VISIBLE : View.INVISIBLE);
        runDouble.setText(AiText.t("Двоен импулс: ", "Double impulse: ") + (e.isDoublePulseOn()
                ? AiText.t("вкл.", "on") : AiText.t("изкл.", "off")));
    }

    // ================================================================ 7 · report

    private static void screenReport(Context c) {
        AutoEngine e = AutoSession.getEngine();
        AutoModel.Plan plan = AutoSession.getPlan();
        shell.title.setText(AiText.t("Отчет", "Report"));
        subtitle(plan != null ? plan.program.name() : "");
        LinearLayout body = shell.body;
        if (e != null && plan != null) {
            LinearLayout tiles = XemsUi.horizontal(c);
            tile(c, tiles, AiText.t("Време", "Time"), AiText.mmss(e.getElapsedS()), 0);
            tile(c, tiles, AiText.t("Ср. / макс. пулс", "Avg / max HR"),
                    e.getHrAvg() > 0 ? e.getHrAvg() + " / " + e.getHrMaxSeen() : "—", 10);
            tile(c, tiles, AiText.t("Пауза по пулс", "HR pauses"), "" + e.getCapHits(), 10);
            tile(c, tiles, AiText.t("Доза", "Dose"), Math.round(e.getDoseRatio() * 100) + " %", 10);
            body.addView(tiles, XemsUi.matchWrap(c, 4));
            if (e.getCorridorShare() >= 0) {
                body.addView(hint(c, AiText.t("В пулсовата зона: ", "In the HR zone: ")
                        + Math.round(e.getCorridorShare() * 100) + " %"), XemsUi.matchWrap(c, 8));
            }
            body.addView(hint(c, AiText.t("Най-висока лична сила спрямо плана: ×", "Highest personal strength vs plan: ×")
                    + String.format(Locale.US, "%.2f", e.getUserScaleMax())
                    + AiText.t(" · паузи общо: ", " · pauses total: ") + AiText.mmss(e.getTotalPauseS())), XemsUi.matchWrap(c, 6));
            LinearLayout lg = XemsUi.card(c);
            lg.addView(XemsUi.label(c, AiText.t("Събития", "Events")));
            List<String> log = e.getLog();
            int from = Math.max(0, log.size() - 14);
            for (int i = from; i < log.size(); i++) {
                lg.addView(XemsUi.text(c, log.get(i), 12.5f, XemsUi.MUTED, false));
            }
            body.addView(lg, XemsUi.matchWrap(c, 12));
        }
        footer(c, AiText.t("Затвори", "Close"), false);
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
            case A_GOAL:
                in.goal = Goal.values()[arg];
                in.programId = null;
                break;
            case A_KIND:
                in.kind = value == 0 ? Kind.ACTIVE : Kind.PASSIVE;
                in.programId = null;
                break;
            case A_OPERATOR:
                in.operator = value == 0 ? AiModel.Operator.TRAINER : AiModel.Operator.SELF;
                break;
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
                int cur = plan != null ? plan.totalS : 1200;
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
            case A_CALIB_START:
                AutoSession.beginCalibration();
                calibStarted = true;
                break;
            case A_CALIB_ROW:
                AutoSession.adjustCalibration(arg / 100, arg % 100 - 50);
                refreshCalib();
                return;
            case A_PAUSE: AutoSession.togglePause(); refreshRun(); return;
            case A_REDUCE: AutoSession.reduceAll(); return;
            case A_RAISE: AutoSession.raiseAll(); return;
            case A_DOUBLE_LIVE: {
                AutoEngine e = AutoSession.getEngine();
                if (e != null) {
                    AutoSession.setDoublePulse(!e.isDoublePulseOn());
                }
                refreshRun();
                return;
            }
            case A_COOLDOWN: AutoSession.skipToCooldown(); return;
            case A_STOP:
                AutoSession.stop();
                go(STEP_REPORT);
                return;
            default:
                return;
        }
        if (step == STEP_CHECK) {
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
