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
 * Automatic mode UI (docs/xems-auto-mode-spec.md §2): the "Авто" tile opens a sheet with four short
 * steps — program · client · plan · strength. Only what the system cannot decide is asked; the rest
 * (profile from the client record, phases, zones) stays folded. After Start the sheet hides itself
 * (the tile brings the live board back); at the end the client's report opens.
 * Named listener classes only (dx): every tap goes through {@link Act} with an action code.
 */
public final class AutoUi {
    static final int STEP_PROGRAM = 0;
    static final int STEP_CLIENT = 1;
    static final int STEP_PLAN = 2;
    static final int STEP_CALIB = 3;
    static final int STEP_RUN = 4;
    private static final int SETUP_STEPS = 4;

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
    private static final int A_FINISH_EARLY = 26;
    private static final int A_STOP = 27;
    private static final int A_SEX = 28;
    private static final int A_EDIT_PROFILE = 29;
    private static final int A_HEALTH_OK = 30;
    private static final int A_HEALTH_OPEN = 31;
    private static final int A_DETAILS = 32;
    private static final int A_HIDE = 33;

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
    /** Plan step: phases and zones unfolded. */
    private static boolean details;

    // live refs
    private static TextView runPhase;
    private static TextView runTime;
    private static TextView runHr;
    private static TextView runNotice;
    private static TextView runPause;
    private static TextView runDouble;
    private static TextView runFinish;
    private static View runBar;
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
            healthOk = false;
            healthOpen = hasHealthFlag(in);
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
            case STEP_PLAN: screenPlan(c); break;
            case STEP_CALIB: screenCalib(c); break;
            default: screenRun(c); break;
        }
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
                if (clientBlocker() == null) {
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
            LinearLayout card = XemsUi.card(c);
            card.setBackgroundDrawable(XemsUi.rounded(on ? XemsUi.mix(XemsUi.CARD, goalColor(in.goal), 0.18f) : XemsUi.CARD,
                    XemsUi.dp(c, 16), on ? goalColor(in.goal) : XemsUi.STROKE, XemsUi.dp(c, on ? 2 : 1)));
            LinearLayout head = XemsUi.horizontal(c);
            head.addView(XemsUi.text(c, p.name(), 17, XemsUi.TEXT, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            if (p == rec) {
                head.addView(XemsUi.badge(c, AiText.t("Препоръчана", "Recommended"), XemsUi.GO_TEXT));
            }
            head.addView(XemsUi.text(c, "  " + AutoPlanner.maxSeconds(p, in.goal, in) / 60 + AiText.t(" мин", " min"),
                    14, XemsUi.MUTED, false));
            card.addView(head);
            TextView d = XemsUi.text(c, p.desc(), 13, XemsUi.MUTED, false);
            d.setPadding(0, XemsUi.dp(c, 4), 0, 0);
            card.addView(d);
            card.setOnClickListener(new Act(A_PROGRAM, i));
            XemsUi.pressable(card);
            body.addView(card, XemsUi.matchWrap(c, shown == 0 ? 14 : 10));
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

    // ================================================================ 2 · client

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

        // Profile: from the client record — one line; open only when something is missing or on request.
        LinearLayout prof = XemsUi.card(c);
        if (!profileOpen) {
            LinearLayout line = XemsUi.horizontal(c);
            line.setGravity(Gravity.CENTER_VERTICAL);
            String fit = in.fitness == AiModel.Fitness.LOW ? AiText.t("ниска кондиция", "low fitness")
                    : in.fitness == AiModel.Fitness.HIGH ? AiText.t("висока кондиция", "high fitness")
                    : AiText.t("средна кондиция", "medium fitness");
            line.addView(XemsUi.text(c, (in.sex == AiModel.Sex.FEMALE ? AiText.t("Жена", "Female") : AiText.t("Мъж", "Male"))
                    + " · " + in.age + AiText.t(" г.", " y") + " · " + Math.round(in.weightKg) + " kg · "
                    + in.heightCm + " cm · " + fit, 15, XemsUi.TEXT, false),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView edit = XemsUi.button(c, AiText.t("Промени", "Edit"), XemsUi.GHOST);
            edit.setOnClickListener(new Act(A_EDIT_PROFILE, 0));
            line.addView(edit);
            prof.addView(line);
        } else {
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
        }
        body.addView(prof, XemsUi.matchWrap(c, 4));

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

        // Health: one confirmation; the full list only when something is not fine.
        LinearLayout sc = XemsUi.card(c);
        if (!healthOpen) {
            TextView ok = XemsUi.button(c, (healthOk ? "✓ " : "") + AiText.t("Без противопоказания, добре е днес",
                    "No contraindications, feeling fine today"), healthOk ? XemsUi.PRIMARY : XemsUi.SECONDARY);
            ok.setOnClickListener(new Act(A_HEALTH_OK, 0));
            sc.addView(ok, XemsUi.matchWrap(c, 0));
            TextView more = XemsUi.button(c, AiText.t("Има нещо…", "Something is not fine…"), XemsUi.GHOST);
            more.setOnClickListener(new Act(A_HEALTH_OPEN, 0));
            sc.addView(more, XemsUi.matchWrap(c, 6));
        } else {
            sc.addView(XemsUi.label(c, AiText.t("Отбележи какво важи", "Mark what applies")));
            for (int i = 0; i < AiScreening.CONTRAINDICATIONS.length; i++) {
                String k = AiScreening.CONTRAINDICATIONS[i];
                Boolean v = in.screening.contraindications.get(k);
                sc.addView(XemsUi.toggleRow(c, AiText.contraindication(k), null, v != null && v, new Act(A_CONTRA, i)));
            }
            sc.addView(XemsUi.toggleRow(c, AiText.t("Температура или болест", "Fever or illness"), null,
                    in.screening.feverOrIllness, new Act(A_TODAY, 0)));
            sc.addView(XemsUi.toggleRow(c, AiText.t("Алкохол или силен стрес (48 ч)", "Alcohol or heavy stress (48 h)"), null,
                    in.screening.alcoholOrStress48h, new Act(A_TODAY, 1)));
            sc.addView(XemsUi.toggleRow(c, AiText.t("Известна аритмия", "Known arrhythmia"), null,
                    in.screening.knownArrhythmia, new Act(A_TODAY, 2)));
        }
        body.addView(sc, XemsUi.matchWrap(c, 12));

        String blocker = clientBlocker();
        boolean ready = blocker == null && (healthOk || healthOpen);
        if (blocker != null && (healthOk || healthOpen || in.heightCm <= 0)) {
            body.addView(banner(c, XemsUi.DANGER, blocker), XemsUi.matchWrap(c, 12));
        }
        footer(c, AiText.t("Напред", "Next"), true);
        enable(ready);
    }

    /** Why the client step does not let go, or null. */
    private static String clientBlocker() {
        AutoModel.Input in = AutoSession.getInput();
        if (in.heightCm <= 0) {
            return AiText.t("Въведи ръста.", "Enter the height.");
        }
        if (in.age < 18) {
            return AiText.t("Под 18 г. — не.", "Under 18 — no.");
        }
        if (!healthOk && !healthOpen) {
            return AiText.t("Потвърди здравето.", "Confirm the health check.");
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
        return p != null ? AutoCatalog.blockReason(p, in.goal, in) : AiText.t("Няма програма", "No program");
    }

    // ================================================================ 3 · plan

    private static void screenPlan(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        AutoModel.Input in = AutoSession.getInput();
        shell.title.setText(plan.program.name());
        subtitle(null);
        LinearLayout body = shell.body;

        LinearLayout tiles = XemsUi.horizontal(c);
        tile(c, tiles, AiText.t("Време", "Time"), (plan.totalS / 60) + AiText.t(" мин", " min"), 0);
        tile(c, tiles, AiText.t("Усещане", "Feeling"), plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "")
                + AiText.t(" от 10", " of 10"), 10);
        boolean band = AutoSession.isBandConfigured(host);
        if (plan.hrUse != AutoModel.HrUse.NONE && band) {
            tile(c, tiles, AiText.t("Пулс до", "HR up to"), plan.hrCap + "", 10);
        }
        body.addView(tiles, XemsUi.matchWrap(c, 4));

        LinearLayout opt = XemsUi.card(c);
        opt.addView(labeled(c, AiText.t("Продължителност", "Duration"),
                XemsUi.stepper(c, "" + (plan.totalS / 60), AiText.t("мин", "min"), 20, new Act(A_MINUTES, 0)).view));
        String[] levels = AutoPlanner.intenseAllowed(plan.program, in)
                ? new String[] {AiText.t("Мек", "Soft"), AiText.t("Стандартен", "Standard"), AiText.t("Интензивен", "Intense")}
                : new String[] {AiText.t("Мек", "Soft"), AiText.t("Стандартен", "Standard")};
        opt.addView(XemsUi.segmented(c, levels, Math.min(levels.length - 1, in.intensity.ordinal()),
                new Act(A_INTENSITY, 0)), XemsUi.matchWrap(c, 12));
        if (plan.program.variantsBg != null) {
            String[] v = new String[plan.program.variantsBg.length];
            for (int i = 0; i < v.length; i++) {
                v[i] = AiText.t(plan.program.variantsBg[i], plan.program.variantsEn[i]);
            }
            opt.addView(XemsUi.segmented(c, v, in.variant, new Act(A_VARIANT, 0)), XemsUi.matchWrap(c, 10));
        }
        if (plan.doublePulseAllowed) {
            opt.addView(XemsUi.toggleRow(c, AiText.t("Двоен импулс", "Double impulse"), null,
                    in.doublePulse, new Act(A_DOUBLE, 0)), XemsUi.matchWrap(c, 8));
        }
        body.addView(opt, XemsUi.matchWrap(c, 12));

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
            body.addView(banner(c, XemsUi.AMBER, notes.toString().trim()), XemsUi.matchWrap(c, 12));
        }

        TextView more = XemsUi.button(c, details ? AiText.t("Скрий подробностите", "Hide details")
                : AiText.t("Подробности", "Details"), XemsUi.GHOST);
        more.setOnClickListener(new Act(A_DETAILS, 0));
        body.addView(more, XemsUi.matchWrap(c, 6));
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
        footer(c, AiText.t("Напред", "Next"), true);
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

    // ================================================================ 4 · strength

    private static void screenCalib(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        shell.title.setText(AiText.t("Сила", "Strength"));
        subtitle(AiText.t("До усещане ", "Up to a feeling of ") + plan.cr10Lo
                + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "") + AiText.t(" от 10 · ", " of 10 · ") + cr10Text(plan.cr10Hi));
        LinearLayout body = shell.body;
        if (!calibStarted) {
            body.addView(hint(c, AiText.t("Костюмът е облечен и свързан? Импулсите тръгват с бутона долу.",
                    "Suit on and connected? The pulses start with the button below.")), XemsUi.matchWrap(c, 4));
            footer(c, AiText.t("▶ Пусни импулсите", "▶ Start the pulses"), true);
            return;
        }
        body.addView(hint(c, AiText.t("Качвай силата тук или с + / − на основния екран.",
                "Raise the strength here or with + / − on the main screen.")), XemsUi.matchWrap(c, 4));
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

    private static void screenRun(Context c) {
        AutoModel.Plan plan = AutoSession.getPlan();
        shell.title.setText(plan.program.name());
        subtitle(null);
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
        runHr = XemsUi.text(c, "", 15, XemsUi.TEXT, true);
        top.addView(runHr, XemsUi.matchWrap(c, 8));
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            LinearLayout line = XemsUi.horizontal(c);
            line.addView(XemsUi.text(c, r.name.length() > 0 ? r.name : AiText.t("Участник ", "Participant ") + (i + 1),
                    15, XemsUi.MUTED, false), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView v = XemsUi.text(c, "", 15, XemsUi.TEXT, true);
            rowLabels.add(v);
            line.addView(v);
            top.addView(line, XemsUi.matchWrap(c, 6));
        }
        body.addView(top, XemsUi.matchWrap(c, 4));

        runNotice = hint(c, "");
        body.addView(runNotice, XemsUi.matchWrap(c, 8));

        LinearLayout keys = XemsUi.horizontal(c);
        runPause = XemsUi.button(c, "", XemsUi.SECONDARY);
        runPause.setOnClickListener(new Act(A_PAUSE, 0));
        keys.addView(runPause, XemsUi.weight(1, 0, c));
        TextView minus = XemsUi.button(c, AiText.t("− 10 %", "− 10 %"), XemsUi.SECONDARY);
        minus.setOnClickListener(new Act(A_REDUCE, 0));
        keys.addView(minus, XemsUi.weight(1, 8, c));
        TextView plus = XemsUi.button(c, AiText.t("+ 5 %", "+ 5 %"), XemsUi.SECONDARY);
        plus.setOnClickListener(new Act(A_RAISE, 0));
        keys.addView(plus, XemsUi.weight(1, 8, c));
        body.addView(keys, XemsUi.matchWrap(c, 12));
        runDouble = XemsUi.button(c, "", XemsUi.SECONDARY);
        runDouble.setOnClickListener(new Act(A_DOUBLE_LIVE, 0));
        body.addView(runDouble, XemsUi.matchWrap(c, 8));
        // Finish early: the program goes straight into its recovery (cool-down) part.
        runFinish = XemsUi.button(c, AiText.t("Приключи по-рано · към възстановяване", "Finish early · to recovery"),
                XemsUi.SECONDARY);
        runFinish.setOnClickListener(new Act(A_FINISH_EARLY, 0));
        body.addView(runFinish, XemsUi.matchWrap(c, 8));

        TextView hide = XemsUi.button(c, AiText.t("Скрий", "Hide"), XemsUi.GHOST);
        hide.setOnClickListener(new Act(A_HIDE, 0));
        shell.footer.addView(hide);
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
            state = AiText.t(" · пауза", " · paused");
        } else if (st == AutoEngine.State.HR_PAUSE) {
            state = e.isResumeWaiting() ? AiText.t(" · пулсът спадна", " · HR down")
                    : AiText.t(" · пауза: пулс", " · paused: HR");
        }
        boolean recovery = ph != null && ph.isCooldown();
        runPhase.setText((recovery ? AiText.t("Възстановяване", "Recovery")
                : ph != null ? AiText.t(ph.nameBg, ph.nameEn) : "") + state);
        runTime.setText(AiText.mmss(e.getRemainingS()));
        float share = plan.totalS > 0 ? (float) (e.getElapsedS() / plan.totalS) : 0;
        LinearLayout.LayoutParams lp = (LinearLayout.LayoutParams) runBar.getLayoutParams();
        lp.weight = Math.max(0.001f, share);
        View rest = ((ViewGroup) runBar.getParent()).getChildAt(1);
        ((LinearLayout.LayoutParams) rest.getLayoutParams()).weight = Math.max(0.001f, 1 - share);
        runBar.requestLayout();
        int hr = e.getHr(now);
        String hrText = "";
        if (plan.hrUse != AutoModel.HrUse.NONE && hr > 0) {
            hrText = plan.hrUse == AutoModel.HrUse.CORRIDOR
                    ? "♥ " + hr + AiText.t(" · зона ", " · zone ") + plan.corridorLoHr() + "–" + plan.corridorHiHr()
                    : "♥ " + hr + AiText.t(" · до ", " · up to ") + plan.hrCap;
        }
        runHr.setText(hrText);
        runHr.setVisibility(hrText.length() > 0 ? View.VISIBLE : View.GONE);
        runHr.setTextColor(hr > 0 && hr >= plan.hrCap - 5 ? XemsUi.DANGER : XemsUi.TEXT);
        AutoEngine.Cmd c = e.getCurrent();
        List<AutoSession.Row> rows = AutoSession.getRows();
        for (int i = 0; i < rowLabels.size() && i < rows.size(); i++) {
            AutoSession.Row r = rows.get(i);
            if (r.block != null || r.cal <= 0) {
                rowLabels.get(i).setText(r.block != null ? "⊘" : "—");
                continue;
            }
            AutoModel.Plan rp = r.plan != null ? r.plan : plan;
            int limit = c != null ? (int) Math.floor(r.cal * e.rowCeiling(c, rp.phiMax, rp.envMax) + 1e-9) : 0;
            rowLabels.get(i).setText(Math.max(0, r.writtenStrength) + AiText.t(" · до ", " · up to ") + limit);
        }
        String n = AutoSession.getLastNotice();
        runNotice.setText(n != null ? n : "");
        runNotice.setVisibility(n != null && n.length() > 0 ? View.VISIBLE : View.GONE);
        runPause.setText(e.canResume() ? AiText.t("▶ Продължи", "▶ Resume")
                : st == AutoEngine.State.HR_PAUSE ? AiText.t("… пулсът спада", "… HR coming down")
                : AiText.t("❚❚ Пауза", "❚❚ Pause"));
        boolean dp = e.isDoublePulseAvailable();
        runDouble.setVisibility(dp ? View.VISIBLE : View.GONE);
        runDouble.setText(AiText.t("Двоен импулс: ", "Double impulse: ") + (e.isDoublePulseOn()
                ? AiText.t("вкл.", "on") : AiText.t("изкл.", "off")));
        runFinish.setVisibility(recovery ? View.GONE : View.VISIBLE);
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
            case A_HEALTH_OK: healthOk = !healthOk; break;
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
            case A_FINISH_EARLY: AutoSession.skipToCooldown(); refreshRun(); return;
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
