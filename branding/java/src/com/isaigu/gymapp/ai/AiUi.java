package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.ai.AiModel.Goal;
import com.isaigu.gymapp.ai.AiModel.Mode;
import com.isaigu.gymapp.ai.AiModel.Operator;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 * Smart Session UI: sidebar "AI" button → full-screen card with a 6-step setup
 * (goal · profile · check · resting HR · plan · calibration), a live dashboard and a report.
 * Built entirely in code; colours in {@link AiViews}.
 */
final class AiUi {
    private static final int SIDEBAR_ID = 0x7f090155;
    private static final int HEART_BTN_ID = 0x7f090297;
    private static final String BTN_TAG = "xems_ai_button";

    static final int STEP_GOAL = 0;
    static final int STEP_PROFILE = 1;
    static final int STEP_CHECK = 2;
    static final int STEP_REST = 3;
    static final int STEP_PLAN = 4;
    static final int STEP_CALIB = 5;
    static final int STEP_RUN = 6;
    static final int STEP_REPORT = 7;
    private static final int SETUP_STEPS = 6;

    private static Dialog dialog;
    private static int step;
    private static TextView titleView;
    private static TextView subtitleView;
    private static LinearLayout dotsView;
    private static FrameLayout body;
    private static TextView backBtn;
    private static TextView primaryBtn;
    private static LinearLayout footer;
    private static TextView sideButton;

    // dynamic refs (rebuilt with each screen)
    private static final List<Runnable> refreshers = new ArrayList<Runnable>();

    private AiUi() {}

    // ================================================================ sidebar button

    static void attachButton(View root) {
        if (root == null) {
            return;
        }
        View sidebarView = root.findViewById(SIDEBAR_ID);
        if (!(sidebarView instanceof LinearLayout)) {
            return;
        }
        LinearLayout sidebar = (LinearLayout) sidebarView;
        if (sidebar.findViewWithTag(BTN_TAG) != null) {
            sideButton = (TextView) sidebar.findViewWithTag(BTN_TAG);
            styleSideButton();
            return;
        }
        Context c = sidebar.getContext();
        AiViews.applyTheme(c);
        TextView b = new TextView(c);
        b.setTag(BTN_TAG);
        b.setText("AI");
        b.setGravity(Gravity.CENTER);
        b.setTextColor(AiViews.VIOLET);
        b.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        b.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        b.setLetterSpacing(0.04f);
        b.setOnClickListener(new OpenListener());
        sideButton = b;
        styleSideButton();
        int size = dp(c, 50);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(size, size);
        lp.gravity = Gravity.CENTER_HORIZONTAL;
        View spacer = new View(c);
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 0.08f);
        int index = sidebar.getChildCount();
        View heart = sidebar.findViewById(HEART_BTN_ID);
        if (heart != null) {
            int hi = sidebar.indexOfChild(heart);
            if (hi >= 0) {
                index = hi + 1;
            }
        }
        sidebar.addView(spacer, index, sp);
        sidebar.addView(b, index + 1, lp);
    }

    private static void styleSideButton() {
        if (sideButton == null) {
            return;
        }
        boolean live = AiSession.getStage() == AiSession.Stage.RUNNING;
        // Same look as the other sidebar buttons: white disc, coloured glyph; green ring while live.
        GradientDrawable g = new GradientDrawable();
        g.setColor(0xFFFFFFFF);
        g.setShape(GradientDrawable.OVAL);
        g.setStroke(dp(sideButton.getContext(), live ? 3 : 1), live ? AiViews.CYAN : 0x33000000);
        sideButton.setTextColor(AiViews.VIOLET);
        sideButton.setBackgroundDrawable(g);
    }

    static final class OpenListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            open(AiSession.activityOf(v));
        }
    }

    static void open(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        AiSession.Stage st = AiSession.getStage();
        if (st == AiSession.Stage.RUNNING) {
            show(activity, STEP_RUN);
            return;
        }
        if (st == AiSession.Stage.REPORT) {
            show(activity, STEP_REPORT);
            return;
        }
        if (st == AiSession.Stage.IDLE) {
            String conflict = AiSession.conflict();
            if (conflict != null) {
                toast(activity, conflict);
                return;
            }
            AiSession.beginSetup(activity);
            show(activity, STEP_GOAL);
            return;
        }
        show(activity, stepForStage(st));
    }

    /** Bring the dashboard back (e.g. after the main screen paused the session). */
    static void show() {
        try {
            if (dialog != null && dialog.isShowing()) {
                return;
            }
            open(AiSession.activityOf(null));
        } catch (Throwable ignored) {
        }
    }

    private static int stepForStage(AiSession.Stage st) {
        switch (st) {
            case REST_HR: return STEP_REST;
            case PLAN: return STEP_PLAN;
            case CALIB: return STEP_CALIB;
            default: return STEP_GOAL;
        }
    }

    // ================================================================ shell

    private static void show(Activity a, int s) {
        if (dialog == null || !dialog.isShowing()) {
            buildShell(a);
        }
        go(s);
    }

    private static void buildShell(Activity a) {
        AiViews.applyTheme(a);
        dialog = new Dialog(a);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dialog.setCancelable(false);

        LinearLayout root = new LinearLayout(a);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundDrawable(rounded(AiViews.BG, dp(a, 26), AiViews.STROKE, 1));
        int pad = dp(a, 26);
        root.setPadding(pad, dp(a, 20), pad, dp(a, 20));

        // Header: [AI pill] title/subtitle ........ step dots [✕]
        LinearLayout header = new LinearLayout(a);
        header.setOrientation(LinearLayout.HORIZONTAL);
        header.setGravity(Gravity.CENTER_VERTICAL);
        TextView pill = text(a, "AI", 15, AiViews.ON_ACCENT, true);
        pill.setGravity(Gravity.CENTER);
        GradientDrawable pg = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                new int[] {AiViews.VIOLET, AiViews.ACCENT_DARK});
        pg.setCornerRadius(dp(a, 12));
        pill.setBackgroundDrawable(pg);
        pill.setPadding(dp(a, 12), dp(a, 5), dp(a, 12), dp(a, 5));
        header.addView(pill);
        LinearLayout titles = new LinearLayout(a);
        titles.setOrientation(LinearLayout.VERTICAL);
        titles.setPadding(dp(a, 14), 0, 0, 0);
        titleView = text(a, "", 22, AiViews.TEXT, true);
        subtitleView = text(a, "", 13, AiViews.MUTED, false);
        titles.addView(titleView);
        titles.addView(subtitleView);
        header.addView(titles, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        dotsView = new LinearLayout(a);
        dotsView.setOrientation(LinearLayout.HORIZONTAL);
        dotsView.setGravity(Gravity.CENTER_VERTICAL);
        header.addView(dotsView);
        TextView close = text(a, "✕", 20, AiViews.MUTED, false);
        close.setGravity(Gravity.CENTER);
        close.setPadding(dp(a, 18), dp(a, 4), dp(a, 4), dp(a, 4));
        close.setOnClickListener(new CloseListener());
        header.addView(close);
        root.addView(header);

        body = new FrameLayout(a);
        LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        bp.topMargin = dp(a, 18);
        bp.bottomMargin = dp(a, 16);
        root.addView(body, bp);

        footer = new LinearLayout(a);
        footer.setOrientation(LinearLayout.HORIZONTAL);
        footer.setGravity(Gravity.CENTER_VERTICAL);
        root.addView(footer);

        dialog.setContentView(root);
        Window w = dialog.getWindow();
        if (w != null) {
            w.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            int width = Math.min((int) (dm.widthPixels * 0.94f), dp(a, 1500));
            int height = (int) (dm.heightPixels * 0.9f);
            w.setLayout(width, height);
            w.setGravity(Gravity.CENTER);
            WindowManager.LayoutParams lp = w.getAttributes();
            lp.dimAmount = 0.72f;
            w.setAttributes(lp);
            w.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
        }
        dialog.show();
    }

    static final class CloseListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            AiSession.Stage st = AiSession.getStage();
            if (st == AiSession.Stage.RUNNING) {
                // The session keeps running; the AI button (green ring) brings the dashboard back.
                dismiss();
                return;
            }
            AiSession.close();
            dismiss();
            styleSideButton();
        }
    }

    private static void dismiss() {
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        dialog = null;
        refreshers.clear();
        styleSideButton();
    }

    static void refresh() {
        styleSideButton();
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        if (step == STEP_RUN && AiSession.getStage() == AiSession.Stage.REPORT) {
            go(STEP_REPORT);
            return;
        }
        for (int i = 0; i < refreshers.size(); i++) {
            try {
                refreshers.get(i).run();
            } catch (Throwable ignored) {
            }
        }
    }

    private static void go(int s) {
        step = s;
        refreshers.clear();
        body.removeAllViews();
        footer.removeAllViews();
        Context a = body.getContext();
        backBtn = ghostButton(a, AiText.t("Назад", "Back"));
        backBtn.setOnClickListener(new StepListener(-1));
        primaryBtn = primaryButton(a, "");
        primaryBtn.setOnClickListener(new StepListener(+1));
        switch (s) {
            case STEP_GOAL: screenGoal(a); break;
            case STEP_PROFILE: screenProfile(a); break;
            case STEP_CHECK: screenCheck(a); break;
            case STEP_REST: screenRest(a); break;
            case STEP_PLAN: screenPlan(a); break;
            case STEP_CALIB: screenCalib(a); break;
            case STEP_RUN: screenRun(a); break;
            default: screenReport(a); break;
        }
        renderDots(a);
        refresh();
    }

    private static void setupFooter(Context a, String primary, boolean showBack) {
        if (showBack) {
            footer.addView(backBtn, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, dp(a, 54)));
        }
        footer.addView(new View(a), new LinearLayout.LayoutParams(0, 1, 1f));
        primaryBtn.setText(primary);
        footer.addView(primaryBtn, new LinearLayout.LayoutParams(dp(a, 300), dp(a, 58)));
    }

    private static void renderDots(Context a) {
        dotsView.removeAllViews();
        if (step >= SETUP_STEPS) {
            return;
        }
        for (int i = 0; i < SETUP_STEPS; i++) {
            View d = new View(a);
            boolean cur = i == step;
            GradientDrawable g = cur
                    ? new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,
                    new int[] {AiViews.VIOLET, AiViews.ORANGE})
                    : new GradientDrawable();
            if (!cur) {
                g.setColor(i < step ? AiViews.CYAN : AiViews.alpha(AiViews.TEXT, 0x30));
            }
            g.setCornerRadius(dp(a, 4));
            d.setBackgroundDrawable(g);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(a, cur ? 28 : 8), dp(a, 8));
            lp.leftMargin = dp(a, 6);
            dotsView.addView(d, lp);
        }
    }

    static final class StepListener implements View.OnClickListener {
        private final int dir;

        StepListener(int dir) {
            this.dir = dir;
        }

        @Override
        public void onClick(View v) {
            onStep(v.getContext(), dir);
        }
    }

    private static void onStep(Context a, int dir) {
        if (dir < 0) {
            if (step == STEP_CALIB && AiSession.isCalibStimOn()) {
                AiSession.stop();
            }
            if (step > STEP_GOAL && step < STEP_RUN) {
                go(step == STEP_PLAN ? STEP_CHECK : step - 1);
            }
            return;
        }
        switch (step) {
            case STEP_GOAL: go(STEP_PROFILE); break;
            case STEP_PROFILE: go(STEP_CHECK); break;
            case STEP_CHECK:
                if (!AiScreening.evaluate(AiSession.getInput()).isRejected()) {
                    go(STEP_REST);
                }
                break;
            case STEP_REST: finishRest(a); break;
            case STEP_PLAN:
                AiSession.beginCalibration();
                go(STEP_CALIB);
                break;
            case STEP_CALIB:
                if (AiSession.isCalibStimOn() && AiSession.getCalibPercent() > 0
                        && !AiSession.isSoloRamping()) {
                    AiSession.startRun(a);
                    go(STEP_RUN);
                }
                break;
            case STEP_REPORT:
                AiSession.close();
                dismiss();
                break;
            default:
                break;
        }
    }

    // ================================================================ 1 · goal

    private static void screenGoal(Context a) {
        titleView.setText(AiText.t("Каква е целта днес?", "What is today's goal?"));
        subtitleView.setText(AiText.t("Стъпка 1 от 6 · програмата се изгражда от целта",
                "Step 1 of 6 · the program is built from the goal"));
        final AiModel.SessionInput in = AiSession.getInput();
        LinearLayout col = vertical(a);
        LinearLayout row = horizontal(a);
        final List<View> cards = new ArrayList<View>();
        for (final Goal g : Goal.values()) {
            LinearLayout card = vertical(a);
            card.setPadding(dp(a, 18), dp(a, 18), dp(a, 18), dp(a, 18));
            View accent = new View(a);
            GradientDrawable ag = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,
                    new int[] {goalColor(g), lighten(goalColor(g))});
            ag.setCornerRadius(dp(a, 3));
            accent.setBackgroundDrawable(ag);
            card.addView(accent, new LinearLayout.LayoutParams(dp(a, 40), dp(a, 5)));
            TextView name = text(a, AiText.goal(g), 22, AiViews.TEXT, true);
            name.setPadding(0, dp(a, 14), 0, dp(a, 6));
            card.addView(name);
            card.addView(text(a, AiText.goalHint(g), 13, AiViews.MUTED, false));
            TextView tag = text(a, (g == Goal.TONE || g == Goal.FAT)
                    ? AiText.t("Активно · Пасивно", "Active · Passive")
                    : AiText.t("Пасивно", "Passive"), 11, AiViews.MUTED, true);
            tag.setPadding(0, dp(a, 14), 0, 0);
            tag.setAllCaps(true);
            card.addView(tag);
            card.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    in.goal = g;
                    if (!AiModel.isAllowed(g, in.mode)) {
                        in.mode = Mode.PASSIVE;
                    }
                    if (g == Goal.TONE || g == Goal.FAT) {
                        in.mode = Mode.ACTIVE;
                    }
                    in.totalSeconds = null;
                    go(STEP_GOAL);
                }
            });
            boolean sel = in.goal == g;
            card.setBackgroundDrawable(sel
                    ? gradientStroke(a, AiViews.CARD2, 18)
                    : rounded(AiViews.CARD, dp(a, 18), AiViews.STROKE, 1));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.MATCH_PARENT, 1f);
            if (!cards.isEmpty()) {
                lp.leftMargin = dp(a, 12);
            }
            row.addView(card, lp);
            cards.add(card);
        }
        col.addView(row, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(a, 190)));

        LinearLayout opts = horizontal(a);
        LinearLayout modeBox = labeled(a, AiText.t("Режим", "Mode"),
                segmented(a, new String[] {AiText.t("Активно · с упражнения", "Active · exercises"),
                        AiText.t("Пасивно · без движение", "Passive · no movement")},
                        in.mode == Mode.ACTIVE ? 0 : 1,
                        new boolean[] {AiModel.isAllowed(in.goal, Mode.ACTIVE), true},
                        new SegmentCallback() {
                            @Override
                            public void onSelect(int i) {
                                in.mode = i == 0 ? Mode.ACTIVE : Mode.PASSIVE;
                                go(STEP_GOAL);
                            }
                        }));
        LinearLayout opBox = labeled(a, AiText.t("Кой управлява", "Who operates"),
                segmented(a, new String[] {AiText.t("Треньор", "Trainer"),
                        AiText.t("Самостоятелно", "Self")},
                        in.operator == Operator.TRAINER ? 0 : 1, null,
                        new SegmentCallback() {
                            @Override
                            public void onSelect(int i) {
                                in.operator = i == 0 ? Operator.TRAINER : Operator.SELF;
                                go(STEP_GOAL);
                            }
                        }));
        TextView opHint = text(a, in.operator == Operator.TRAINER
                ? AiText.t("Треньорът калибрира и потвърждава продължаването.",
                "The trainer calibrates and confirms continuation.")
                : AiText.t("По-тесни граници, задължителни контролни точки, таван 90%.",
                "Tighter limits, mandatory checkpoints, 90% ceiling."), 12, AiViews.MUTED, false);
        opHint.setPadding(dp(a, 4), dp(a, 8), 0, 0);
        opBox.addView(opHint);
        // Mode only when the goal allows both (massage, drainage, cellulite are passive only).
        boolean modeChoice = AiModel.isAllowed(in.goal, Mode.ACTIVE) && AiModel.isAllowed(in.goal, Mode.PASSIVE);
        if (modeChoice) {
            opts.addView(modeBox, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
        LinearLayout.LayoutParams op = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        if (modeChoice) {
            op.leftMargin = dp(a, 16);
        }
        opts.addView(opBox, op);
        LinearLayout.LayoutParams olp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        olp.topMargin = dp(a, 22);
        col.addView(opts, olp);

        // Double impulse (active pause): only where the AI can program it; one switch, the
        // frequency / strength / phases are the AI's decision.
        if (AiModel.activePauseAllowed(in.goal)) {
            if (in.pause == AiModel.PauseMode.ACTIVE) {
                in.pause = AiModel.PauseMode.AUTO;
            }
            LinearLayout pauseBox = vertical(a);
            pauseBox.addView(toggleRow(a, AiText.t("Двоен импулс (активна пауза)", "Double impulse (active pause)"),
                    in.pause != AiModel.PauseMode.PASSIVE, new ToggleCallback() {
                        @Override
                        public void onToggle(boolean on) {
                            in.pause = on ? AiModel.PauseMode.AUTO : AiModel.PauseMode.PASSIVE;
                        }
                    }));
            TextView pauseHint = text(a, AiText.pauseHint(in.goal), 12, AiViews.MUTED, false);
            pauseBox.addView(pauseHint);
            LinearLayout.LayoutParams plp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            plp.topMargin = dp(a, 14);
            col.addView(pauseBox, plp);
        }
        body.addView(scroll(a, col));
        setupFooter(a, AiText.t("Напред", "Next"), false);
    }

    // ================================================================ 2 · profile

    private static void screenProfile(Context a) {
        final AiModel.SessionInput in = AiSession.getInput();
        titleView.setText(AiText.t("Профил", "Profile"));
        subtitleView.setText(AiText.t("Стъпка 2 от 6 · от профила идват максималният пулс и зоните",
                "Step 2 of 6 · max HR and zones come from the profile"));
        LinearLayout col = vertical(a);
        LinearLayout r1 = horizontal(a);
        r1.addView(labeled(a, AiText.t("Пол", "Sex"), segmented(a,
                new String[] {AiText.t("Мъж", "Male"), AiText.t("Жена", "Female")},
                in.sex == AiModel.Sex.MALE ? 0 : 1, null, new SegmentCallback() {
                    @Override
                    public void onSelect(int i) {
                        in.sex = i == 0 ? AiModel.Sex.MALE : AiModel.Sex.FEMALE;
                        go(STEP_PROFILE);
                    }
                })), weight(a, 0));
        r1.addView(labeled(a, AiText.t("Кондиция", "Fitness"), segmented(a,
                new String[] {AiText.t("Ниска", "Low"), AiText.t("Средна", "Mid"), AiText.t("Висока", "High")},
                in.fitness.ordinal(), null, new SegmentCallback() {
                    @Override
                    public void onSelect(int i) {
                        in.fitness = AiModel.Fitness.values()[i];
                        go(STEP_PROFILE);
                    }
                })), weight(a, 16));
        col.addView(r1);

        LinearLayout r2 = horizontal(a);
        r2.addView(labeled(a, AiText.t("Възраст", "Age"), stepper(a, in.age + "", AiText.t("години", "years"),
                new StepperCallback() {
                    @Override
                    public void onDelta(int d) {
                        in.age = Math.max(14, Math.min(90, in.age + d));
                        go(STEP_PROFILE);
                    }
                })), weight(a, 0));
        r2.addView(labeled(a, AiText.t("Тегло", "Weight"), stepper(a, Math.round(in.weightKg) + "", "kg",
                new StepperCallback() {
                    @Override
                    public void onDelta(int d) {
                        in.weightKg = Math.max(35, Math.min(200, Math.round(in.weightKg) + d));
                        go(STEP_PROFILE);
                    }
                })), weight(a, 16));
        final int total = in.totalSeconds != null ? in.totalSeconds : AiPlanner.defaultSeconds(in.goal);
        r2.addView(labeled(a, AiText.t("Продължителност", "Duration"),
                stepper(a, (total / 60) + "", AiText.t("минути", "minutes"), new StepperCallback() {
                    @Override
                    public void onDelta(int d) {
                        int nt = AiPlanner.clampSeconds(in.goal, total + d * 60);
                        in.totalSeconds = nt;
                        go(STEP_PROFILE);
                    }
                })), weight(a, 16));
        LinearLayout.LayoutParams r2p = matchWrap(a, 22);
        col.addView(r2, r2p);

        int hrMax = AiPlanner.hrMax(in.sex, in.age);
        LinearLayout info = card(a);
        info.setOrientation(LinearLayout.HORIZONTAL);
        info.setGravity(Gravity.CENTER_VERTICAL);
        info.addView(text(a, AiText.t("Максимален пулс по формула", "Formula max HR"), 14, AiViews.MUTED, false),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        info.addView(text(a, hrMax + " " + AiText.t("уд/мин", "bpm"), 22, AiViews.TEXT, true));
        col.addView(info, matchWrap(a, 22));
        if (in.age < 18) {
            col.addView(banner(a, AiViews.DANGER,
                    AiText.t("AI сесията е само за пълнолетни.", "AI sessions are for adults only.")),
                    matchWrap(a, 12));
        }
        body.addView(scroll(a, col));
        setupFooter(a, AiText.t("Напред", "Next"), true);
        primaryBtn.setEnabled(in.age >= 18);
        primaryBtn.setAlpha(in.age >= 18 ? 1f : 0.4f);
    }

    // ================================================================ 3 · screening

    private static void screenCheck(Context a) {
        final AiModel.SessionInput in = AiSession.getInput();
        titleView.setText(AiText.t("Проверка преди сесия", "Pre-session check"));
        subtitleView.setText(AiText.t("Стъпка 3 от 6 · отговаря се всеки път",
                "Step 3 of 6 · answered every time"));
        LinearLayout col = vertical(a);
        final LinearLayout verdict = vertical(a);
        col.addView(verdict);
        LinearLayout cols = horizontal(a);
        LinearLayout contra = card(a);
        contra.addView(sectionLabel(a, AiText.t("Противопоказания", "Contraindications")));
        for (final String key : AiScreening.CONTRAINDICATIONS) {
            Boolean v = in.screening.contraindications.get(key);
            contra.addView(toggleRow(a, AiText.contraindication(key), v != null && v,
                    new ToggleCallback() {
                        @Override
                        public void onToggle(boolean on) {
                            in.screening.contraindications.put(key, on);
                            renderVerdict(verdict);
                        }
                    }));
        }
        LinearLayout today = card(a);
        today.addView(sectionLabel(a, AiText.t("Днес", "Today")));
        today.addView(toggleRow(a, AiText.t("Температура или заболяване", "Fever or illness"),
                in.screening.feverOrIllness, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.feverOrIllness = on;
                        renderVerdict(verdict);
                    }
                }));
        today.addView(toggleRow(a, AiText.t("Алкохол или силен стрес (48 ч)", "Alcohol or heavy stress (48 h)"),
                in.screening.alcoholOrStress48h, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.alcoholOrStress48h = on;
                        renderVerdict(verdict);
                    }
                }));
        today.addView(toggleRow(a, AiText.t("Известна аритмия", "Known arrhythmia"),
                in.screening.knownArrhythmia, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.knownArrhythmia = on;
                        renderVerdict(verdict);
                    }
                }));
        today.addView(toggleRow(a, AiText.t("Лекарства, понижаващи пулса", "HR-lowering medication"),
                in.screening.hrLoweringMedication, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.hrLoweringMedication = on;
                        renderVerdict(verdict);
                    }
                }));
        today.addView(toggleRow(a, AiText.t("Хранене в последните 2 ч", "Ate in the last 2 h"),
                in.screening.ateLast2h, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.ateLast2h = on;
                        renderVerdict(verdict);
                    }
                }));
        today.addView(toggleRow(a, AiText.t("Пил вода преди сесията", "Drank water before"),
                in.screening.hydrated, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.hydrated = on;
                        renderVerdict(verdict);
                    }
                }));
        today.addView(toggleRow(a, AiText.t("Почивал поне 10 мин", "Rested at least 10 min"),
                in.screening.restedLast10min, new ToggleCallback() {
                    @Override
                    public void onToggle(boolean on) {
                        in.screening.restedLast10min = on;
                        renderVerdict(verdict);
                    }
                }));
        cols.addView(contra, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        cols.addView(today, weight(a, 16));
        col.addView(cols, matchWrap(a, 14));
        body.addView(scroll(a, col));
        setupFooter(a, AiText.t("Измери пулса в покой", "Measure resting HR"), true);
        renderVerdict(verdict);
    }

    private static void renderVerdict(LinearLayout verdict) {
        Context a = verdict.getContext();
        verdict.removeAllViews();
        AiScreening.Result r = AiScreening.evaluate(AiSession.getInput());
        if (r.isRejected()) {
            StringBuilder sb = new StringBuilder(AiText.t("Сесията не може да започне: ", "Session cannot start: "));
            for (int i = 0; i < r.rejects.size(); i++) {
                sb.append(i > 0 ? " · " : "").append(AiText.screeningCode(r.rejects.get(i)));
            }
            verdict.addView(banner(a, AiViews.DANGER, sb.toString()));
        } else if (!r.warns.isEmpty()) {
            StringBuilder sb = new StringBuilder(AiText.t("Може да продължи. ", "OK to continue. "));
            for (int i = 0; i < r.warns.size(); i++) {
                sb.append(i > 0 ? " · " : "").append(AiText.screeningCode(r.warns.get(i)));
            }
            verdict.addView(banner(a, AiViews.WARN, sb.toString()));
        } else {
            verdict.addView(banner(a, AiViews.OK, AiText.t("Всичко е наред — може да продължи.",
                    "All clear — OK to continue.")));
        }
        if (primaryBtn != null && step == STEP_CHECK) {
            primaryBtn.setEnabled(!r.isRejected());
            primaryBtn.setAlpha(r.isRejected() ? 0.4f : 1f);
        }
    }

    // ================================================================ 4 · resting HR

    private static void screenRest(final Context a) {
        titleView.setText(AiText.t("Пулс в покой", "Resting heart rate"));
        subtitleView.setText(AiText.t("Стъпка 4 от 6 · седни или легни спокойно, без стимулация",
                "Step 4 of 6 · sit or lie still, no stimulation"));
        final boolean self = AiSession.getInput().operator == Operator.SELF;
        LinearLayout row = horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);

        FrameLayout ringBox = new FrameLayout(a);
        final AiViews.Ring ring = new AiViews.Ring(a, 14);
        ringBox.addView(ring, new FrameLayout.LayoutParams(dp(a, 300), dp(a, 300)));
        LinearLayout center = vertical(a);
        center.setGravity(Gravity.CENTER);
        final TextView bpm = text(a, "--", 64, AiViews.TEXT, true);
        bpm.setGravity(Gravity.CENTER);
        center.addView(bpm);
        center.addView(centered(text(a, AiText.t("уд/мин", "bpm"), 14, AiViews.MUTED, false)));
        final TextView timeLeft = text(a, "", 15, AiViews.CYAN, true);
        timeLeft.setGravity(Gravity.CENTER);
        timeLeft.setPadding(0, dp(a, 8), 0, 0);
        center.addView(timeLeft);
        ringBox.addView(center, new FrameLayout.LayoutParams(dp(a, 300), dp(a, 300)));
        row.addView(ringBox);

        final LinearLayout side = vertical(a);
        side.setPadding(dp(a, 30), 0, 0, 0);
        final TextView status = text(a, "", 20, AiViews.TEXT, true);
        side.addView(status);
        final TextView detail = text(a, "", 14, AiViews.MUTED, false);
        detail.setPadding(0, dp(a, 8), 0, dp(a, 16));
        side.addView(detail);
        final LinearLayout stats = horizontal(a);
        final TextView sMedian = statTile(a, stats, AiText.t("Медиана", "Median"));
        final TextView sSigma = statTile(a, stats, AiText.t("Разсейване", "Spread"));
        final TextView sDt = statTile(a, stats, AiText.t("Интервал", "Interval"));
        side.addView(stats);
        final LinearLayout actions = horizontal(a);
        actions.setPadding(0, dp(a, 18), 0, 0);
        side.addView(actions);
        row.addView(side, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        body.addView(scroll(a, row));
        setupFooter(a, AiText.t("Към плана", "To the plan"), true);
        // The band comes from Settings → Band; no need to start the HR dial first.
        final boolean configured = AiSession.isBandConfigured(a);
        if (configured && !AiSession.isBandStreaming()) {
            AiSession.acquireBand(AiSession.activityOf(body));
        }

        refreshers.add(new Runnable() {
            @Override
            public void run() {
                boolean streaming = AiSession.isBandStreaming();
                AiRestHr r = AiSession.getRestHr();
                if (r == null && streaming) {
                    AiSession.beginRestHr();
                    r = AiSession.getRestHr();
                }
                String key = r == null ? (configured ? "noband" : "nocfg") : r.getStatus().name();
                if (!key.equals(actions.getTag())) {
                    actions.setTag(key);
                    actions.removeAllViews();
                    if (r == null) {
                        if (configured) {
                            TextView connect = pillButton(a, AiText.t("Свържи отново", "Reconnect"), AiViews.CYAN);
                            connect.setOnClickListener(new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {
                                    AiSession.reconnectBand(AiSession.activityOf(v));
                                }
                            });
                            actions.addView(connect);
                        }
                        if (!self) {
                            TextView noBand = pillButton(a, AiText.t("Без гривна", "Without band"), AiViews.MUTED);
                            noBand.setOnClickListener(new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {
                                    AiSession.buildPlan(0, 0, 0);
                                    go(STEP_PLAN);
                                }
                            });
                            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                            lp.leftMargin = configured ? dp(a, 12) : 0;
                            actions.addView(noBand, lp);
                        }
                    } else if (r.getStatus() == AiRestHr.Status.UNSTABLE) {
                        TextView accept = pillButton(a, AiText.t("Приеми", "Accept"), AiViews.WARN);
                        accept.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                AiRestHr rr = AiSession.getRestHr();
                                if (rr != null) {
                                    rr.acceptUnstable();
                                }
                            }
                        });
                        actions.addView(accept);
                    }
                }
                int live = AiSession.getLastBandHr();
                bpm.setText(live > 0 && streaming ? String.valueOf(live) : "--");
                boolean done = false;
                if (r == null) {
                    ring.setValue(0);
                    if (!configured) {
                        status.setText(AiText.t("Гривната не е настроена", "Band not set up"));
                        detail.setText(AiText.t("Въведи MAC и ключа веднъж в Настройки → Гривна.",
                                "Enter the MAC and key once in Settings → Band.")
                                + (self ? "" : AiText.t(" Или продължи без пулс — управлява само планът.",
                                " Or continue without HR — then only the plan controls.")));
                    } else {
                        status.setText(AiSession.isBandLinkUp()
                                ? AiText.t("Свързване с гривната…", "Connecting to the band…")
                                : AiText.t("Чакам пулс от гривната", "Waiting for band HR"));
                        detail.setText(self
                                ? AiText.t("Самостоятелната сесия изисква гривна. Първият пулс идва до ~15 s.",
                                "A self session requires the band. First HR within ~15 s.")
                                : AiText.t("Първият пулс идва до ~15 s. Или продължи без пулс — управлява само планът.",
                                "First HR within ~15 s. Or continue without HR — then only the plan controls."));
                    }
                    timeLeft.setText("");
                } else {
                    ring.setValue(r.getMeasuredMs() / (float) r.getTargetMs());
                    timeLeft.setText(AiText.mmss((r.getTargetMs() - r.getMeasuredMs()) / 1000.0));
                    AiRestHr.Status st = r.getStatus();
                    int med = r.liveMedian();
                    sMedian.setText(med > 0 ? med + "" : "—");
                    sSigma.setText(r.getStatus() == AiRestHr.Status.DONE || r.getStatus() == AiRestHr.Status.UNSTABLE
                            ? String.format(Locale.US, "±%.1f", r.getSigma()) : "—");
                    sDt.setText(r.getDtHrMs() > 0 ? String.format(Locale.US, "%.1f s", r.getDtHrMs() / 1000.0) : "~3 s");
                    if (st == AiRestHr.Status.DONE) {
                        done = true;
                        status.setText(AiText.t("Готово · ", "Done · ") + r.getHrRest() + " " + AiText.t("уд/мин", "bpm"));
                        timeLeft.setText("✓");
                        String note = "";
                        if (r.getHrRest() >= 100) {
                            note = self ? AiText.t("Пулс в покой ≥ 100 — самостоятелна сесия не е разрешена.",
                                    "Resting HR ≥ 100 — self session not allowed.")
                                    : AiText.t("Пулс в покой ≥ 100 — продължи само ако треньорът прецени.",
                                    "Resting HR ≥ 100 — continue only on the trainer's judgement.");
                            if (self) {
                                done = false;
                            }
                        } else if (r.getHrRest() < 40) {
                            note = AiText.t("Пулс в покой < 40 — може да е норма при спортисти.",
                                    "Resting HR < 40 — may be normal for athletes.");
                        }
                        detail.setText(note.length() > 0 ? note
                                : AiText.t("Стабилно измерване. Следва планът.", "Stable measurement. The plan is next."));
                    } else if (st == AiRestHr.Status.UNSTABLE) {
                        status.setText(AiText.t("Нестабилен пулс", "Unstable HR"));
                        detail.setText(AiText.t("Разсейването остава над 3 уд/мин. Приеми или изчакай още.",
                                "Spread stays above 3 bpm. Accept or wait longer."));
                    } else if (st == AiRestHr.Status.STALE) {
                        status.setText(AiText.t("Гривната замлъкна", "Band went quiet"));
                        detail.setText(AiText.t("Таймерът е спрян, докато пулсът се върне.", "Timer paused until HR returns."));
                    } else {
                        status.setText(AiText.t("Измервам…", "Measuring…"));
                        detail.setText(AiText.t("Дишай спокойно. Не говори и не се движи.",
                                "Breathe calmly. Don't talk or move."));
                    }
                }
                primaryBtn.setEnabled(done);
                primaryBtn.setAlpha(done ? 1f : 0.4f);
            }
        });
    }

    private static void finishRest(Context a) {
        AiRestHr r = AiSession.getRestHr();
        if (r == null || r.getStatus() != AiRestHr.Status.DONE) {
            return;
        }
        if (AiSession.getInput().operator == Operator.SELF && r.getHrRest() >= 100) {
            return;
        }
        AiSession.buildPlan(r.getHrRest(), r.getSigma(), r.getDtHrMs());
        go(STEP_PLAN);
    }

    // ================================================================ 5 · plan

    private static void screenPlan(Context a) {
        AiModel.Plan plan = AiSession.getPlan();
        AiModel.Profile p = AiSession.getProfile();
        AiModel.SessionInput in = AiSession.getInput();
        titleView.setText(AiText.t("Твоят план", "Your plan"));
        subtitleView.setText(AiText.t("Стъпка 5 от 6 · ", "Step 5 of 6 · ") + AiText.goal(in.goal)
                + " · " + (in.mode == Mode.ACTIVE ? AiText.t("активно", "active") : AiText.t("пасивно", "passive"))
                + " · " + AiText.mmss(plan.totalS));
        LinearLayout col = vertical(a);
        LinearLayout tiles = horizontal(a);
        String bpmU = " " + AiText.t("уд/мин", "bpm");
        bigTile(a, tiles, AiText.t("Покой", "Rest"), p.hrAvailable ? p.hrRest + "" : "—", p.hrAvailable ? bpmU : "");
        bigTile(a, tiles, AiText.t("Максимум", "Max"), p.hrMax + "", bpmU);
        String corridor = p.hrAvailable
                ? (Double.isNaN(p.xLo) ? "≤ " + p.hrAt(p.xHi) : p.hrAt(p.xLo) + "–" + p.hrAt(p.xHi))
                : "—";
        bigTile(a, tiles, AiText.t("Коридор", "Corridor"), corridor, p.hrAvailable ? bpmU : "");
        bigTile(a, tiles, AiText.t("Таван", "Ceiling"), p.hrAvailable ? p.hrCap + "" : "—", p.hrAvailable ? bpmU : "");
        bigTile(a, tiles, AiText.t("Време", "Time"), AiText.mmss(plan.totalS), "");
        col.addView(tiles);

        LinearLayout tl = card(a);
        tl.addView(sectionLabel(a, AiText.t("Структура", "Structure")));
        AiViews.Timeline timeline = new AiViews.Timeline(a);
        timeline.setPlan(plan);
        tl.addView(timeline, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(a, 34)));
        LinearLayout labels = horizontal(a);
        labels.setPadding(0, dp(a, 12), 0, 0);
        for (AiModel.Phase ph : plan.phases) {
            LinearLayout pl = vertical(a);
            TextView n = text(a, AiText.phase(ph.id) + " · " + AiText.mmss(ph.durationS), 15,
                    AiViews.phaseColor(ph.id), true);
            pl.addView(n);
            String cyc = ph.a.hz + " Hz · " + ph.a.pwUs + " µs · " + ph.a.onS + "/" + ph.a.offS + " s";
            if (ph.b != null) {
                cyc += "  ↔  " + ph.b.hz + " Hz";
            }
            pl.addView(text(a, cyc, 12, AiViews.MUTED, false));
            pl.addView(text(a, (ph.blockMode == AiModel.BlockMode.FATIGUE_DRIVEN
                    ? AiText.t("блокове по умора", "fatigue-driven blocks")
                    : AiText.t("непрекъснато", "continuous"))
                    + " · " + Math.round(ph.phiStart * 100)
                    + (ph.phiEnd != ph.phiStart ? "→" + Math.round(ph.phiEnd * 100) : "") + "%", 12, AiViews.MUTED, false));
            labels.addView(pl, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT,
                    Math.max(0.12f, ph.durationS / (float) plan.totalS)));
        }
        tl.addView(labels);
        col.addView(tl, matchWrap(a, 16));

        LinearLayout guards = card(a);
        guards.addView(sectionLabel(a, AiText.t("Защита по време на сесията", "Protection during the session")));
        FlowRow chips = new FlowRow(a);
        chips.add(chip(a, AiText.t("Стоп с един допир", "One-tap stop"), AiViews.DANGER));
        if (p.hrAvailable) {
            chips.add(chip(a, AiText.t("Таван ", "Ceiling ") + p.hrCap + AiText.t(" → пауза", " → pause"), AiViews.DANGER));
        }
        boolean fatigueRest = false;
        for (AiModel.Phase ph : plan.phases) {
            fatigueRest |= ph.blockMode == AiModel.BlockMode.FATIGUE_DRIVEN;
        }
        if (fatigueRest) {
            chips.add(chip(a, AiText.t("Почивка по мускулна умора", "Rest on muscle fatigue"), AiViews.VIOLET));
        }
        if (plan.pauseOn) {
            chips.add(chip(a, AiText.t("Двоен импулс", "Double impulse"), AiViews.CYAN));
        }
        chips.add(chip(a, AiText.t("3 контролни точки", "3 checkpoints"), AiViews.VIOLET));
        if (p.hrAvailable && !p.safetyOnly) {
            chips.add(chip(a, AiText.t("Корекции по пулса", "HR corrections"), AiViews.OK));
        }
        guards.addView(chips);
        if (p.safetyOnly) {
            TextView n = text(a, p.hrAvailable
                    ? AiText.t("Пасивна програма — пулсът служи само за тавана.", "Passive program — HR only guards the ceiling.")
                    : AiText.t("Без гривна — управлява само планът и моделът на умората.", "No band — plan and fatigue model only."),
                    13, AiViews.MUTED, false);
            n.setPadding(0, dp(a, 10), 0, 0);
            guards.addView(n);
        }
        for (String f : p.flags) {
            if (!"NO_BAND".equals(f)) {
                guards.addView(banner(a, AiViews.WARN, AiText.flag(f)), matchWrap(a, 10));
            }
        }
        col.addView(guards, matchWrap(a, 16));
        body.addView(scroll(a, col));
        setupFooter(a, AiText.t("Калибриране на силата", "Calibrate strength"), true);
    }

    // ================================================================ 6 · calibration

    private static void screenCalib(final Context a) {
        final AiModel.Plan plan = AiSession.getPlan();
        final boolean self = AiSession.getInput().operator == Operator.SELF;
        titleView.setText(AiText.t("Калибриране на силата", "Strength calibration"));
        subtitleView.setText(AiText.t("Стъпка 6 от 6 · цел: усещане ", "Step 6 of 6 · target sensation ")
                + plan.cr10Lo + "–" + plan.cr10Hi + AiText.t(" от 10", " of 10"));
        LinearLayout row = horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);
        FrameLayout ringBox = new FrameLayout(a);
        final AiViews.Ring ring = new AiViews.Ring(a, 16);
        ringBox.addView(ring, new FrameLayout.LayoutParams(dp(a, 300), dp(a, 300)));
        LinearLayout center = vertical(a);
        center.setGravity(Gravity.CENTER);
        final TextView pct = text(a, "0%", 60, AiViews.TEXT, true);
        pct.setGravity(Gravity.CENTER);
        center.addView(pct);
        final TextView sub = text(a, "", 13, AiViews.MUTED, false);
        sub.setGravity(Gravity.CENTER);
        center.addView(sub);
        ringBox.addView(center, new FrameLayout.LayoutParams(dp(a, 300), dp(a, 300)));
        row.addView(ringBox);

        LinearLayout side = vertical(a);
        side.setPadding(dp(a, 30), 0, 0, 0);
        side.addView(text(a, self
                ? AiText.t("Силата расте плавно сама. Натисни „Достатъчно“, когато усещането стигне целта.",
                "Strength rises smoothly by itself. Tap “Enough” when the sensation reaches the target.")
                : AiText.t("Настрой мускулите с плъзгачите както обикновено, после вдигай общата сила до целевото усещане.",
                "Set the muscles with the sliders as usual, then raise overall strength to the target sensation."),
                15, AiViews.TEXT, false));
        side.addView(cr10Scale(a, plan.cr10Lo, plan.cr10Hi, null), matchWrap(a, 18));
        final LinearLayout ctrls = horizontal(a);
        ctrls.setPadding(0, dp(a, 20), 0, 0);
        side.addView(ctrls);
        row.addView(side, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        body.addView(scroll(a, row));
        setupFooter(a, AiText.t("Започни сесията", "Start session"), true);

        refreshers.add(new Runnable() {
            @Override
            public void run() {
                int c = AiSession.getCalibPercent();
                pct.setText(c + "%");
                ring.setValue(c / 100f);
                ring.setCap((float) plan.phiMax);
                boolean on = AiSession.isCalibStimOn();
                sub.setText(on ? AiText.t("импулси · 85 Hz · 4/4 s", "pulses · 85 Hz · 4/4 s")
                        : AiText.t("стимулацията е спряна", "stimulation off"));
                String mode = !on ? "off" : AiSession.isSoloRamping() ? "ramp" : "on";
                if (!mode.equals(ctrls.getTag())) {
                    ctrls.setTag(mode);
                    ctrls.removeAllViews();
                    if (!on) {
                        TextView start = pillButton(a, AiText.t("▶  Старт на импулсите", "▶  Start pulses"), AiViews.OK);
                        start.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                AiSession.startCalibrationStim(v.getContext());
                            }
                        });
                        ctrls.addView(start);
                    } else if ("ramp".equals(mode)) {
                        TextView enough = pillButton(a, AiText.t("Достатъчно", "Enough"), AiViews.WARN);
                        enough.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
                        enough.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                AiSession.stopSoloRamp();
                            }
                        });
                        ctrls.addView(enough);
                    } else {
                        int[] deltas = self ? new int[] {-5, -1} : new int[] {-5, -1, +1, +5};
                        for (int i = 0; i < deltas.length; i++) {
                            final int d = deltas[i];
                            TextView b = pillButton(a, (d > 0 ? "+" : "−") + Math.abs(d),
                                    d > 0 ? AiViews.CYAN : AiViews.MUTED);
                            b.setMinWidth(dp(a, 76));
                            b.setOnClickListener(new View.OnClickListener() {
                                @Override
                                public void onClick(View v) {
                                    AiSession.adjustCalibration(d);
                                }
                            });
                            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                            if (i > 0) {
                                lp.leftMargin = dp(a, 10);
                            }
                            ctrls.addView(b, lp);
                        }
                    }
                }
                boolean ready = on && c > 0 && !AiSession.isSoloRamping();
                primaryBtn.setEnabled(ready);
                primaryBtn.setAlpha(ready ? 1f : 0.4f);
            }
        });
    }

    // ================================================================ 7 · live dashboard

    private static void screenRun(final Context a) {
        final AiEngine e = AiSession.getEngine();
        if (e == null) {
            go(STEP_GOAL);
            return;
        }
        final AiModel.Plan plan = e.getPlan();
        final AiModel.Profile p = e.getProfile();
        titleView.setText(AiText.goal(e.getInput().goal) + " · " + AiText.t("на живо", "live"));
        subtitleView.setText(AiText.t("AI управлява силата, паузите и почивките. Стопът е винаги наличен.",
                "AI manages strength, pauses and rests. Stop is always available."));

        FrameLayout stack = new FrameLayout(a);
        LinearLayout col = vertical(a);
        LinearLayout top = horizontal(a);

        // Column 1: phase
        LinearLayout phaseCard = card(a);
        final TextView phaseName = text(a, "", 30, AiViews.TEXT, true);
        final TextView phaseLeft = text(a, "", 16, AiViews.MUTED, false);
        final TextView stateChip = text(a, "", 13, AiViews.ON_ACCENT, true);
        stateChip.setPadding(dp(a, 12), dp(a, 5), dp(a, 12), dp(a, 5));
        phaseCard.addView(stateChip, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        phaseName.setPadding(0, dp(a, 14), 0, dp(a, 2));
        phaseCard.addView(phaseName);
        phaseCard.addView(phaseLeft);
        final AiViews.Timeline tl = new AiViews.Timeline(a);
        tl.setPlan(plan);
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(a, 22));
        tlp.topMargin = dp(a, 22);
        phaseCard.addView(tl, tlp);
        final TextView total = text(a, "", 13, AiViews.MUTED, false);
        total.setPadding(0, dp(a, 10), 0, 0);
        phaseCard.addView(total);
        top.addView(phaseCard, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.1f));

        // Column 2: HR gauge
        FrameLayout gauge = new FrameLayout(a);
        gauge.setBackgroundDrawable(rounded(AiViews.CARD, dp(a, 20), AiViews.STROKE, 1));
        final AiViews.Ring ring = new AiViews.Ring(a, 16);
        FrameLayout.LayoutParams rlp = new FrameLayout.LayoutParams(dp(a, 270), dp(a, 270), Gravity.CENTER);
        gauge.addView(ring, rlp);
        LinearLayout hrCenter = vertical(a);
        hrCenter.setGravity(Gravity.CENTER);
        final TextView hrVal = text(a, "--", 62, AiViews.TEXT, true);
        hrVal.setGravity(Gravity.CENTER);
        hrCenter.addView(hrVal);
        hrCenter.addView(centered(text(a, AiText.t("уд/мин", "bpm"), 14, AiViews.MUTED, false)));
        final TextView zone = text(a, "", 13, AiViews.MUTED, true);
        zone.setGravity(Gravity.CENTER);
        zone.setPadding(0, dp(a, 6), 0, 0);
        hrCenter.addView(zone);
        gauge.addView(hrCenter, new FrameLayout.LayoutParams(dp(a, 270), dp(a, 270), Gravity.CENTER));
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(0, dp(a, 320), 1f);
        gp.leftMargin = dp(a, 14);
        top.addView(gauge, gp);

        // Column 3: meters
        LinearLayout meters = card(a);
        final AiViews.Bar strengthBar = new AiViews.Bar(a);
        final TextView strengthVal = meter(a, meters, AiText.t("Сила", "Strength"), strengthBar);
        final AiViews.Bar fatigueBar = new AiViews.Bar(a);
        final TextView fatigueVal = meter(a, meters, AiText.t("Мускулна умора", "Muscle fatigue"), fatigueBar);
        final AiViews.Bar doseBar = new AiViews.Bar(a);
        final TextView doseVal = meter(a, meters, AiText.t("Доза", "Dose"), doseBar);
        final TextView kcalVal = text(a, "", 20, AiViews.TEXT, true);
        kcalVal.setPadding(0, dp(a, 10), 0, 0);
        meters.addView(kcalVal);
        final TextView ctrlVal = text(a, "", 13, AiViews.MUTED, false);
        ctrlVal.setPadding(0, dp(a, 6), 0, 0);
        meters.addView(ctrlVal);
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        mp.leftMargin = dp(a, 14);
        top.addView(meters, mp);
        col.addView(top, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(a, 320)));

        // Decision ticker
        LinearLayout ticker = card(a);
        ticker.setOrientation(LinearLayout.HORIZONTAL);
        ticker.setGravity(Gravity.CENTER_VERTICAL);
        View dot = new View(a);
        GradientDrawable dg = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,
                new int[] {AiViews.VIOLET, AiViews.ORANGE});
        dg.setShape(GradientDrawable.OVAL);
        dot.setBackgroundDrawable(dg);
        ticker.addView(dot, new LinearLayout.LayoutParams(dp(a, 12), dp(a, 12)));
        final TextView actionText = text(a, "", 17, AiViews.TEXT, true);
        actionText.setPadding(dp(a, 14), 0, 0, 0);
        ticker.addView(actionText, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        final TextView actionAge = text(a, "", 13, AiViews.MUTED, false);
        ticker.addView(actionAge);
        col.addView(ticker, matchWrap(a, 14));
        stack.addView(scroll(a, col));

        // Overlay layer for checkpoints and stimulation pauses.
        final FrameLayout overlay = new FrameLayout(a);
        overlay.setBackgroundColor(AiViews.alpha(AiViews.BG, 0xE6));
        overlay.setVisibility(View.GONE);
        overlay.setClickable(true);
        stack.addView(overlay, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        body.addView(stack);

        // Footer: only the actions that make sense right now for this strategy (refreshed live):
        // pause / resume · strength − · strength + · double impulse on/off · STOP.
        final TextView pauseBtn = pillButton(a, "", AiViews.MUTED);
        pauseBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        pauseBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AiSession.togglePause();
            }
        });
        final TextView reduceBtn = pillButton(a, AiText.t("−  Сила", "−  Strength"), AiViews.WARN);
        reduceBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        reduceBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AiSession.reduce();
            }
        });
        final TextView increaseBtn = pillButton(a, AiText.t("+  Сила", "+  Strength"), AiViews.OK);
        increaseBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 18);
        increaseBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AiSession.increase();
            }
        });
        final TextView doubleBtn = pillButton(a, "", AiViews.CYAN);
        doubleBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        doubleBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AiSession.setActivePause(!e.isActivePauseOn());
            }
        });
        TextView stopBtn = text(a, AiText.t("СТОП", "STOP"), 22, AiViews.ON_ACCENT, true);
        stopBtn.setGravity(Gravity.CENTER);
        stopBtn.setBackgroundDrawable(rounded(AiViews.DANGER, dp(a, 29), 0, 0));
        stopBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AiSession.stop();
                go(STEP_REPORT);
            }
        });
        footer.addView(pauseBtn, new LinearLayout.LayoutParams(dp(a, 190), dp(a, 58)));
        for (TextView t : new TextView[] {reduceBtn, increaseBtn, doubleBtn}) {
            LinearLayout.LayoutParams lp2 = new LinearLayout.LayoutParams(dp(a, t == doubleBtn ? 250 : 160), dp(a, 58));
            lp2.leftMargin = dp(a, 12);
            footer.addView(t, lp2);
        }
        footer.addView(new View(a), new LinearLayout.LayoutParams(0, 1, 1f));
        footer.addView(stopBtn, new LinearLayout.LayoutParams(dp(a, 260), dp(a, 58)));

        refreshers.add(new Runnable() {
            @Override
            public void run() {
                long now = System.currentTimeMillis();
                AiEngine.State st = e.getState();
                AiModel.Phase ph = e.phase();
                int pc = AiViews.phaseColor(ph.id);
                phaseName.setText(AiText.phase(ph.id));
                phaseName.setTextColor(pc);
                phaseLeft.setText(AiText.t("остават ", "remaining ") + AiText.mmss(ph.durationS - e.getPhaseElapsedS())
                        + (e.isInBlock() ? AiText.t(" · блок ", " · block ") + (e.getBlocks().size() + 1) : ""));
                stateChip.setText(AiText.state(st, e.getPauseReason()));
                // App semantics: green = impulse, amber = pause, red = stop.
                int chipCol = st == AiEngine.State.RUN ? AiViews.CYAN
                        : st == AiEngine.State.REST ? AiViews.WARN
                        : st == AiEngine.State.STIM_PAUSE ? AiViews.DANGER : AiViews.MUTED;
                stateChip.setBackgroundDrawable(rounded(chipCol, dp(a, 14), 0, 0));
                tl.setProgress((float) (e.getElapsedPlanS() / Math.max(1, plan.totalS)));
                total.setText(AiText.mmss(e.getElapsedPlanS()) + " / " + AiText.mmss(plan.totalS));

                double hr = e.getHrS();
                boolean fresh = hr > 0 && e.getHrAgeMs(now) < 10000L;
                if (p.hrAvailable && fresh) {
                    hrVal.setText(String.valueOf((int) Math.round(hr)));
                    float x = (float) p.xOf(hr);
                    ring.setValue(x);
                    ring.setBand(Double.isNaN(p.xLo) ? 0f : (float) p.xLo, (float) p.xHi);
                    ring.setCap((float) p.xCap);
                    boolean over = x > p.xHi;
                    boolean under = !Double.isNaN(p.xLo) && x < p.xLo;
                    zone.setText(over ? AiText.t("над коридора", "above corridor")
                            : under ? AiText.t("под коридора", "below corridor")
                            : AiText.t("в коридора", "in corridor"));
                    zone.setTextColor(over ? AiViews.WARN : under ? AiViews.CYAN : AiViews.OK);
                    hrVal.setTextColor(hr >= p.hrCap ? AiViews.DANGER : AiViews.TEXT);
                } else {
                    hrVal.setText("--");
                    hrVal.setTextColor(AiViews.MUTED);
                    ring.setValue(0);
                    zone.setText(p.hrAvailable ? AiText.t("няма свеж пулс", "no fresh HR")
                            : AiText.t("без гривна", "no band"));
                    zone.setTextColor(AiViews.MUTED);
                }
                double frac = e.getCurrentFrac();
                strengthBar.set((float) frac, AiViews.VIOLET);
                strengthVal.setText(Math.round(frac * AiSession.getCalibPercent()) + "%  ·  "
                        + Math.round(frac * 100) + AiText.t("% от калибр.", "% of calib."));
                double fr = e.getFatigue() / Math.max(1e-6, e.getFatigueMax());
                fatigueBar.set((float) Math.min(1, fr), fr > 0.85 ? AiViews.WARN : AiViews.CYAN);
                fatigueVal.setText(Math.round(fr * 100) + "%");
                double dq = e.getQUsed() / Math.max(1e-6, e.getQBudget());
                doseBar.set((float) Math.min(1, dq), AiViews.phaseColor(ph.id));
                doseBar.setMarker((float) (plan.qPlan / Math.max(1e-6, e.getQBudget())));
                doseVal.setText(Math.round(100 * e.getQUsed() / Math.max(1e-6, plan.qPlan)) + AiText.t("% от плана", "% of plan"));
                double kcal = AiSession.getKcal();
                kcalVal.setText(kcal >= 0 ? Math.round(kcal) + " kcal  ·  "
                        + AiText.t("активни ", "active ") + Math.round(AiSession.getActiveKcal()) : "");
                boolean corrected = e.getU() < 0.995 || e.getUUser() < 1 || e.getCeilingScale() < 1;
                ctrlVal.setVisibility(corrected ? View.VISIBLE : View.GONE);
                ctrlVal.setText(AiText.t("Корекция по пулса ", "HR correction ") + Math.round(e.getU() * 100) + "%"
                        + (e.getUUser() < 1 ? AiText.t(" · ръчно ", " · manual ") + Math.round(e.getUUser() * 100) + "%" : "")
                        + (e.getCeilingScale() < 1 ? AiText.t(" · усещане ", " · sensation ") + Math.round(e.getCeilingScale() * 100) + "%" : ""));
                actionText.setText(AiText.action(e.getLastAction()));
                actionAge.setText(AiText.mmss((now - e.getLastActionMs()) / 1000.0));
                pauseBtn.setText(st == AiEngine.State.USER_PAUSE ? AiText.t("▶  Продължи", "▶  Resume")
                        : AiText.t("❚❚  Пауза", "❚❚  Pause"));
                // Checkpoints and HR-ceiling pauses have their own card; nothing else to press.
                boolean live = st == AiEngine.State.RUN || st == AiEngine.State.REST;
                pauseBtn.setVisibility(live || st == AiEngine.State.USER_PAUSE ? View.VISIBLE : View.GONE);
                reduceBtn.setVisibility(live && e.canReduce() ? View.VISIBLE : View.GONE);
                increaseBtn.setVisibility(live && e.canIncrease() ? View.VISIBLE : View.GONE);
                boolean dbl = live && e.isActivePauseAvailable();
                doubleBtn.setVisibility(dbl ? View.VISIBLE : View.GONE);
                if (dbl) {
                    doubleBtn.setText(e.isActivePauseOn()
                            ? AiText.t("Двоен импулс: вкл.", "Double impulse: on")
                            : AiText.t("Двоен импулс: изкл.", "Double impulse: off"));
                    doubleBtn.setAlpha(e.isActivePauseOn() ? 1f : 0.7f);
                }
                renderOverlay(a, overlay, e, now);
            }
        });
    }

    // ACTIVE rest card (updated every refresh)
    private static AiViews.Ring restRing;
    private static TextView restTime;
    private static TextView restNote;
    private static TextView restHr;

    private static void renderOverlay(final Context a, FrameLayout overlay, final AiEngine e, long now) {
        AiEngine.State st = e.getState();
        boolean activeRest = st == AiEngine.State.REST && e.isManualContinue();
        String key = st == AiEngine.State.CHECKPOINT ? "cp"
                : st == AiEngine.State.STIM_PAUSE ? ("checkpoint".equals(e.getPauseReason()) ? "cp" : "sp" + e.canResume())
                : activeRest ? "rest" + e.isRestReady()
                : null;
        if (key == null) {
            overlay.setVisibility(View.GONE);
            overlay.setTag(null);
            return;
        }
        overlay.setVisibility(View.VISIBLE);
        if (key.equals(overlay.getTag())) {
            if (activeRest) {
                updateRestCard(e, now);
            }
            return;
        }
        if (activeRest) {
            overlay.setTag(key);
            overlay.removeAllViews();
            buildRestCard(a, overlay, e);
            updateRestCard(e, now);
            return;
        }
        overlay.setTag(key);
        overlay.removeAllViews();
        LinearLayout box = vertical(a);
        box.setGravity(Gravity.CENTER_HORIZONTAL);
        box.setPadding(dp(a, 36), dp(a, 30), dp(a, 36), dp(a, 30));
        box.setBackgroundDrawable(gradientStroke(a, AiViews.CARD, 24));
        if ("cp".equals(key)) {
            AiModel.Plan plan = e.getPlan();
            box.addView(centered(text(a, AiText.t("Как е усещането сега?", "How does it feel now?"), 26, AiViews.TEXT, true)));
            box.addView(centered(text(a, AiText.t("0 = нищо · 10 = максимално. Цел: ", "0 = nothing · 10 = maximal. Target: ")
                    + plan.cr10Lo + "–" + plan.cr10Hi, 14, AiViews.MUTED, false)));
            box.addView(cr10Scale(a, plan.cr10Lo, plan.cr10Hi, new SegmentCallback() {
                @Override
                public void onSelect(int i) {
                    AiSession.answerCheckpoint(i);
                }
            }), matchWrap(a, 22));
        } else {
            boolean can = e.canResume();
            box.addView(centered(text(a, AiText.t("Пулсът достигна тавана", "Heart rate reached the ceiling"), 26,
                    AiViews.DANGER, true)));
            box.addView(centered(text(a, can
                    ? AiText.t("Пулсът е под зоната за възстановяване повече от 30 s. Можеш да продължиш.",
                    "HR has been below the recovery level for over 30 s. You may continue.")
                    : AiText.t("Стимулацията е спряна. Продължаването се отключва, когато пулсът падне под ",
                    "Stimulation is off. Continue unlocks when HR stays below ")
                    + e.getProfile().hrAt(e.getProfile().xRec) + AiText.t(" за 30 s.", " for 30 s."), 15, AiViews.MUTED, false)));
            TextView resume = primaryButton(a, AiText.t("Продължи", "Continue"));
            resume.setEnabled(can);
            resume.setAlpha(can ? 1f : 0.35f);
            resume.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    AiSession.togglePause();
                }
            });
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(a, 280), dp(a, 56));
            lp.topMargin = dp(a, 22);
            box.addView(resume, lp);
        }
        overlay.addView(box, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
    }

    /**
     * ACTIVE: rest between blocks. Starts by itself; the next block starts only by hand and only
     * once the rest threshold is met (time, muscle recovery and HR). Waiting longer is fine —
     * the plan clock stands still and the first cycles after a long pause are softer.
     */
    private static void buildRestCard(final Context a, FrameLayout overlay, final AiEngine e) {
        boolean ready = e.isRestReady();
        LinearLayout box = horizontal(a);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(a, 36), dp(a, 28), dp(a, 36), dp(a, 28));
        box.setBackgroundDrawable(gradientStroke(a, AiViews.CARD, 24));
        FrameLayout ringBox = new FrameLayout(a);
        restRing = new AiViews.Ring(a, 12);
        restRing.setColor(ready ? AiViews.OK : AiViews.CYAN, !ready);
        ringBox.addView(restRing, new FrameLayout.LayoutParams(dp(a, 210), dp(a, 210)));
        LinearLayout c = vertical(a);
        c.setGravity(Gravity.CENTER);
        restTime = text(a, "", 44, AiViews.TEXT, true);
        restTime.setGravity(Gravity.CENTER);
        c.addView(restTime);
        restHr = text(a, "", 14, AiViews.MUTED, false);
        restHr.setGravity(Gravity.CENTER);
        c.addView(restHr);
        ringBox.addView(c, new FrameLayout.LayoutParams(dp(a, 210), dp(a, 210)));
        box.addView(ringBox);
        LinearLayout side = vertical(a);
        side.setPadding(dp(a, 30), 0, 0, 0);
        side.addView(text(a, ready ? AiText.t("Готово за следващия блок", "Ready for the next block")
                : AiText.t("Почивка между блоковете", "Rest between blocks"), 26,
                ready ? AiViews.OK : AiViews.TEXT, true));
        restNote = text(a, "", 15, AiViews.MUTED, false);
        restNote.setPadding(0, dp(a, 8), 0, 0);
        side.addView(restNote);
        TextView go = primaryButton(a, AiText.t("▶  Следващ блок", "▶  Next block"));
        go.setEnabled(ready);
        go.setAlpha(ready ? 1f : 0.35f);
        go.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                AiSession.continueBlock();
            }
        });
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(a, 300), dp(a, 58));
        lp.topMargin = dp(a, 22);
        side.addView(go, lp);
        box.addView(side, new LinearLayout.LayoutParams(dp(a, 440), ViewGroup.LayoutParams.WRAP_CONTENT));
        overlay.addView(box, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
    }

    private static void updateRestCard(AiEngine e, long now) {
        if (restRing == null) {
            return;
        }
        double restS = e.getRestS(now);
        double hr = e.getHrS();
        boolean fresh = hr > 0 && e.getHrAgeMs(now) < 10000L;
        restHr.setText(fresh ? Math.round(hr) + " " + AiText.t("уд/мин", "bpm") : "");
        if (e.isRestReady()) {
            double over = e.getRestOverS(now);
            restRing.setValue(1f);
            restTime.setText("+" + AiText.mmss(over));
            restNote.setText(over >= AiEngine.LONG_PAUSE_S
                    ? AiText.t("Дълга пауза — AI ще започне по-меко и ще вдигне силата за няколко импулса. Времето на плана стои.",
                    "Long pause — AI starts softer and ramps back over a few pulses. The plan clock is on hold.")
                    : AiText.t("Мускулите и пулсът са възстановени. Натисни, когато си в позиция.",
                    "Muscles and HR have recovered. Tap when in position."));
            return;
        }
        double left = e.getRestRemainingS(now);
        restRing.setValue((float) (restS / Math.max(1.0, restS + left)));
        restTime.setText(AiText.mmss(left));
        String note = AiText.t("Мускулна умора ", "Muscle fatigue ")
                + Math.round(100 * e.getFatigue() / Math.max(1e-6, e.getFatigueMax())) + "%";
        if (!e.isRestHrOk()) {
            note += AiText.t(" · чакам пулсът да падне под ", " · waiting for HR below ")
                    + e.getProfile().hrAt(e.getProfile().xRec);
        }
        restNote.setText(note + AiText.t(". Следващият блок се пуска само ръчно.", ". The next block starts only by hand."));
    }

    // ================================================================ 8 · report

    private static void screenReport(final Context a) {
        final AiEngine e = AiSession.getEngine();
        titleView.setText(AiText.t("Отчет", "Report"));
        if (e == null) {
            subtitleView.setText("");
            setupFooter(a, AiText.t("Затвори", "Close"), false);
            return;
        }
        subtitleView.setText(AiText.goal(e.getInput().goal) + " · " + AiText.state(e.getState(), ""));
        final LinearLayout col = vertical(a);
        final LinearLayout tiles = horizontal(a);
        col.addView(tiles);
        final LinearLayout extra = vertical(a);
        col.addView(extra, matchWrap(a, 16));
        body.addView(scroll(a, col));

        TextView share = ghostButton(a, AiText.t("Сподели отчета", "Share report"));
        share.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                shareReport(AiSession.activityOf(v), e);
            }
        });
        footer.addView(share, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(a, 54)));
        footer.addView(new View(a), new LinearLayout.LayoutParams(0, 1, 1f));
        primaryBtn.setText(AiText.t("Затвори", "Close"));
        footer.addView(primaryBtn, new LinearLayout.LayoutParams(dp(a, 300), dp(a, 58)));

        refreshers.add(new Runnable() {
            @Override
            public void run() {
                String key = e.getState() + ":" + (e.getState() == AiEngine.State.RECOVERY
                        ? e.getRecoveryRemainingMs(System.currentTimeMillis()) / 1000 : 0);
                if (key.equals(col.getTag())) {
                    return;
                }
                col.setTag(key);
                tiles.removeAllViews();
                extra.removeAllViews();
                long end = e.getEndMs() > 0 ? e.getEndMs() : System.currentTimeMillis();
                bigTile(a, tiles, AiText.t("Продължителност", "Duration"), AiText.mmss((end - e.getStartMs()) / 1000.0), "");
                bigTile(a, tiles, AiText.t("Блокове", "Blocks"), e.getBlocks().size() + "", "");
                double cs = e.getCorridorShare();
                bigTile(a, tiles, AiText.t("В коридора", "In corridor"), Double.isNaN(cs) ? "—" : Math.round(cs * 100) + "", Double.isNaN(cs) ? "" : "%");
                double mx = e.getSessionMaxX();
                bigTile(a, tiles, AiText.t("Макс. пулс", "Max HR"), mx > -5 ? e.getProfile().hrAt(mx) + "" : "—", mx > -5 ? " " + AiText.t("уд/мин", "bpm") : "");
                String hrr;
                if (e.getState() == AiEngine.State.RECOVERY) {
                    hrr = AiText.mmss(e.getRecoveryRemainingMs(System.currentTimeMillis()) / 1000.0);
                } else {
                    hrr = Double.isNaN(e.getHrr60()) ? "—" : "−" + Math.round(e.getHrr60());
                }
                bigTile(a, tiles, AiText.t("Възстановяване 60 s", "Recovery 60 s"), hrr, "");
                bigTile(a, tiles, AiText.t("Доза", "Dose"), Math.round(100 * e.getQUsed() / Math.max(1e-6, e.getPlan().qPlan)) + "", "%");
                double kc = AiSession.getKcal();
                bigTile(a, tiles, AiText.t("Калории", "Calories"), kc >= 0 ? Math.round(kc) + "" : "—",
                        kc >= 0 ? " kcal · " + AiText.t("акт. ", "act. ") + Math.round(AiSession.getActiveKcal()) : "");

                LinearLayout ctl = card(a);
                ctl.addView(sectionLabel(a, AiText.t("Решения на AI", "AI decisions")));
                FlowRow chips = new FlowRow(a);
                chips.add(chip(a, AiText.t("По-дълги паузи ×", "Longer pauses ×") + e.getLCount(3), AiViews.CYAN));
                chips.add(chip(a, AiText.t("По-мек сегмент B ×", "Softer B ×") + e.getLCount(4), AiViews.CYAN));
                chips.add(chip(a, AiText.t("По-къси блокове ×", "Shorter blocks ×") + e.getLCount(2), AiViews.VIOLET));
                chips.add(chip(a, AiText.t("Намалена доза ×", "Dose cut ×") + e.getLCount(1), AiViews.VIOLET));
                chips.add(chip(a, AiText.t("По-ниска сила ×", "Lower strength ×") + e.getLCount(5), AiViews.WARN));
                chips.add(chip(a, AiText.t("Таван на пулса ×", "HR ceiling ×") + e.getCapHits(), AiViews.DANGER));
                for (String f : e.getFlags()) {
                    chips.add(chip(a, AiText.flag(f), AiViews.WARN));
                }
                ctl.addView(chips);
                extra.addView(ctl);

                if (!e.getBlocks().isEmpty()) {
                    LinearLayout table = card(a);
                    table.addView(sectionLabel(a, AiText.t("Блокове", "Blocks")));
                    table.addView(tableRow(a, true, "#", AiText.t("Фаза", "Phase"), AiText.t("Работа", "Work"),
                            AiText.t("Почивка", "Rest"), "ΔHR", "D", "V"));
                    for (AiEngine.BlockStat b : e.getBlocks()) {
                        table.addView(tableRow(a, false, b.index + "", AiText.phase(b.phase),
                                Math.round(b.tBlockS) + " s", b.tRestS > 0 ? Math.round(b.tRestS) + " s" : "—",
                                Double.isNaN(b.dHr) ? "—" : "+" + Math.round(b.dHr),
                                Double.isNaN(b.d) ? "—" : String.format(Locale.US, "%.2f", b.d),
                                Double.isNaN(b.v) ? "—" : String.format(Locale.US, "%.2f", b.v)));
                    }
                    extra.addView(table, matchWrap(a, 14));
                }
            }
        });
    }

    private static void shareReport(Activity a, AiEngine e) {
        if (a == null || e == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        AiModel.SessionInput in = e.getInput();
        AiModel.Profile p = e.getProfile();
        sb.append("XEMS AI — ").append(AiText.goal(in.goal)).append(" · ").append(in.mode).append(" · ")
                .append(in.operator).append('\n');
        sb.append(AiText.t("Пулс покой ", "HR rest ")).append(p.hrRest).append(" · max ").append(p.hrMax)
                .append(AiText.t(" · таван ", " · cap ")).append(p.hrCap)
                .append(AiText.t(" · коридор x ", " · corridor x ")).append(Double.isNaN(p.xLo) ? "-" : String.format(Locale.US, "%.2f", p.xLo))
                .append("–").append(String.format(Locale.US, "%.2f", p.xHi)).append('\n');
        sb.append(AiText.t("Време ", "Duration ")).append(AiText.mmss(((e.getEndMs() > 0 ? e.getEndMs() : System.currentTimeMillis()) - e.getStartMs()) / 1000.0))
                .append(AiText.t(" · доза ", " · dose ")).append(Math.round(100 * e.getQUsed() / Math.max(1e-6, e.getPlan().qPlan))).append(AiText.t("% от плана", "% of plan"))
                .append(AiText.t(" · в коридора ", " · corridor ")).append(Double.isNaN(e.getCorridorShare()) ? "-" : Math.round(100 * e.getCorridorShare()) + "%")
                .append(" · HRR60 ").append(Double.isNaN(e.getHrr60()) ? "-" : Math.round(e.getHrr60()))
                .append(" · kcal ").append(AiSession.getKcal() >= 0 ? Math.round(AiSession.getKcal()) + "" : "-")
                .append(AiText.t(" (активни ", " (active ")).append(Math.round(Math.max(0, AiSession.getActiveKcal())))
                .append(AiSession.getEnergy() != null ? String.format(Locale.US, ", VO2max %.0f, %.0f kg",
                        AiSession.getEnergy().getVo2max(), AiSession.getEnergy().getWeightKg()) : "")
                .append(")\n");
        sb.append("L1 ").append(e.getLCount(1)).append(" L2 ").append(e.getLCount(2)).append(" L3 ").append(e.getLCount(3))
                .append(" L4 ").append(e.getLCount(4)).append(" u ").append(e.getLCount(5)).append(" cap ").append(e.getCapHits())
                .append(" flags ").append(e.getFlags()).append("\n\nblocks: #,phase,t_block,t_rest,q,F_end,dHR,R,D,tau,V\n");
        for (AiEngine.BlockStat b : e.getBlocks()) {
            sb.append(String.format(Locale.US, "%d,%s,%.0f,%.0f,%.0f,%.1f,%.1f,%.2f,%.2f,%.1f,%.2f%n",
                    b.index, b.phase, b.tBlockS, b.tRestS, b.q, b.fEnd, b.dHr, b.r, b.d, b.tauHr, b.v));
        }
        sb.append("\nlog:\n");
        for (String l : e.getLog()) {
            sb.append(l).append('\n');
        }
        Intent send = new Intent(Intent.ACTION_SEND);
        send.setType("text/plain");
        send.putExtra(Intent.EXTRA_SUBJECT, AiText.t("XEMS AI отчет", "XEMS AI report"));
        send.putExtra(Intent.EXTRA_TEXT, sb.toString());
        try {
            a.startActivity(Intent.createChooser(send, AiText.t("Сподели отчета", "Share report")));
        } catch (Throwable ignored) {
        }
    }

    // ================================================================ building blocks

    interface SegmentCallback {
        void onSelect(int index);
    }

    interface StepperCallback {
        void onDelta(int delta);
    }

    interface ToggleCallback {
        void onToggle(boolean on);
    }

    /** Wrapping row of chips. */
    static final class FlowRow extends ViewGroup {
        FlowRow(Context c) {
            super(c);
        }

        void add(View v) {
            addView(v);
        }

        @Override
        protected void onMeasure(int wSpec, int hSpec) {
            int maxW = MeasureSpec.getSize(wSpec);
            int gap = dp(getContext(), 8);
            int x = 0;
            int y = 0;
            int rowH = 0;
            for (int i = 0; i < getChildCount(); i++) {
                View c = getChildAt(i);
                c.measure(MeasureSpec.makeMeasureSpec(maxW, MeasureSpec.AT_MOST),
                        MeasureSpec.makeMeasureSpec(0, MeasureSpec.UNSPECIFIED));
                if (x > 0 && x + c.getMeasuredWidth() > maxW) {
                    x = 0;
                    y += rowH + gap;
                    rowH = 0;
                }
                x += c.getMeasuredWidth() + gap;
                rowH = Math.max(rowH, c.getMeasuredHeight());
            }
            setMeasuredDimension(maxW, y + rowH);
        }

        @Override
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            int maxW = r - l;
            int gap = dp(getContext(), 8);
            int x = 0;
            int y = 0;
            int rowH = 0;
            for (int i = 0; i < getChildCount(); i++) {
                View c = getChildAt(i);
                if (x > 0 && x + c.getMeasuredWidth() > maxW) {
                    x = 0;
                    y += rowH + gap;
                    rowH = 0;
                }
                c.layout(x, y, x + c.getMeasuredWidth(), y + c.getMeasuredHeight());
                x += c.getMeasuredWidth() + gap;
                rowH = Math.max(rowH, c.getMeasuredHeight());
            }
        }
    }

    private static View segmented(Context a, String[] labels, int selected, boolean[] enabled,
            final SegmentCallback cb) {
        LinearLayout row = horizontal(a);
        row.setBackgroundDrawable(rounded(AiViews.CARD, dp(a, 16), AiViews.STROKE, 1));
        row.setPadding(dp(a, 5), dp(a, 5), dp(a, 5), dp(a, 5));
        for (int i = 0; i < labels.length; i++) {
            final int idx = i;
            boolean en = enabled == null || enabled[i];
            boolean sel = i == selected;
            TextView t = text(a, labels[i], 15, sel ? AiViews.ON_ACCENT
                    : (en ? AiViews.TEXT : AiViews.alpha(AiViews.TEXT, 0x55)), sel);
            t.setGravity(Gravity.CENTER);
            t.setPadding(dp(a, 14), dp(a, 13), dp(a, 14), dp(a, 13));
            if (sel) {
                GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                        new int[] {AiViews.VIOLET, AiViews.ACCENT_DARK});
                g.setCornerRadius(dp(a, 12));
                t.setBackgroundDrawable(g);
            }
            if (en && !sel) {
                t.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        cb.onSelect(idx);
                    }
                });
            }
            row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
        return row;
    }

    private static View stepper(Context a, String value, String unit, final StepperCallback cb) {
        LinearLayout row = horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setBackgroundDrawable(rounded(AiViews.CARD, dp(a, 16), AiViews.STROKE, 1));
        row.setPadding(dp(a, 8), dp(a, 8), dp(a, 8), dp(a, 8));
        TextView minus = roundKey(a, "−");
        minus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                cb.onDelta(-1);
            }
        });
        TextView plus = roundKey(a, "+");
        plus.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                cb.onDelta(+1);
            }
        });
        LinearLayout mid = vertical(a);
        mid.setGravity(Gravity.CENTER);
        TextView v = text(a, value, 34, AiViews.TEXT, true);
        v.setGravity(Gravity.CENTER);
        mid.addView(v);
        mid.addView(centered(text(a, unit, 12, AiViews.MUTED, false)));
        row.addView(minus, new LinearLayout.LayoutParams(dp(a, 60), dp(a, 60)));
        row.addView(mid, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        row.addView(plus, new LinearLayout.LayoutParams(dp(a, 60), dp(a, 60)));
        return row;
    }

    private static TextView roundKey(Context a, String label) {
        TextView t = text(a, label, 26, AiViews.TEXT, true);
        t.setGravity(Gravity.CENTER);
        GradientDrawable g = new GradientDrawable();
        g.setShape(GradientDrawable.OVAL);
        g.setColor(AiViews.CARD2);
        t.setBackgroundDrawable(g);
        return t;
    }

    private static View toggleRow(Context a, String label, boolean on, final ToggleCallback cb) {
        LinearLayout row = horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, dp(a, 7), 0, dp(a, 7));
        row.addView(text(a, label, 15, AiViews.TEXT, false),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        Switch sw = new Switch(a);
        sw.setChecked(on);
        sw.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton b, boolean isChecked) {
                cb.onToggle(isChecked);
            }
        });
        row.addView(sw);
        return row;
    }

    /** CR10 row 0..10; target band highlighted; tappable when cb != null. */
    private static View cr10Scale(Context a, int lo, int hi, final SegmentCallback cb) {
        LinearLayout row = horizontal(a);
        for (int i = 0; i <= 10; i++) {
            final int v = i;
            boolean target = i >= lo && i <= hi;
            // Each value carries its place on the app's heat scale (green → red).
            int heat = heat(i / 10f);
            TextView t = text(a, String.valueOf(i), cb != null ? 20 : 15, target ? AiViews.ON_ACCENT : AiViews.TEXT, true);
            t.setGravity(Gravity.CENTER);
            GradientDrawable g = new GradientDrawable();
            if (target) {
                g.setColor(heat);
            } else {
                g.setColor(AiViews.alpha(heat, 0x22));
                g.setStroke(dp(a, 1), AiViews.alpha(heat, 0x88));
            }
            g.setShape(GradientDrawable.OVAL);
            t.setBackgroundDrawable(g);
            if (cb != null) {
                t.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View vv) {
                        cb.onSelect(v);
                    }
                });
            }
            int size = dp(a, cb != null ? 58 : 38);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(size, size);
            lp.leftMargin = i > 0 ? dp(a, cb != null ? 8 : 5) : 0;
            row.addView(t, lp);
        }
        return row;
    }

    private static TextView meter(Context a, LinearLayout parent, String label, AiViews.Bar bar) {
        LinearLayout head = horizontal(a);
        head.setPadding(0, parent.getChildCount() > 0 ? dp(a, 14) : 0, 0, dp(a, 8));
        head.addView(text(a, label, 13, AiViews.MUTED, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView v = text(a, "", 13, AiViews.TEXT, true);
        head.addView(v);
        parent.addView(head);
        parent.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(a, 10)));
        return v;
    }

    private static TextView statTile(Context a, LinearLayout parent, String label) {
        LinearLayout t = vertical(a);
        t.setBackgroundDrawable(rounded(AiViews.CARD, dp(a, 14), AiViews.STROKE, 1));
        t.setPadding(dp(a, 16), dp(a, 12), dp(a, 16), dp(a, 12));
        t.addView(text(a, label, 12, AiViews.MUTED, true));
        TextView v = text(a, "—", 22, AiViews.TEXT, true);
        t.addView(v);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        if (parent.getChildCount() > 0) {
            lp.leftMargin = dp(a, 10);
        }
        parent.addView(t, lp);
        return v;
    }

    private static void bigTile(Context a, LinearLayout parent, String label, String value, String unit) {
        LinearLayout t = vertical(a);
        t.setBackgroundDrawable(rounded(AiViews.CARD, dp(a, 18), AiViews.STROKE, 1));
        t.setPadding(dp(a, 18), dp(a, 16), dp(a, 18), dp(a, 16));
        t.addView(text(a, label, 12, AiViews.MUTED, true));
        LinearLayout vr = horizontal(a);
        vr.setGravity(Gravity.BOTTOM);
        vr.addView(text(a, value, 30, AiViews.TEXT, true));
        if (unit.length() > 0) {
            TextView u = text(a, unit, 13, AiViews.MUTED, false);
            u.setPadding(dp(a, 4), 0, 0, dp(a, 5));
            vr.addView(u);
        }
        t.addView(vr);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        if (parent.getChildCount() > 0) {
            lp.leftMargin = dp(a, 12);
        }
        parent.addView(t, lp);
    }

    private static View tableRow(Context a, boolean head, String... cells) {
        LinearLayout row = horizontal(a);
        row.setPadding(0, dp(a, 6), 0, dp(a, 6));
        float[] w = {0.5f, 1.4f, 1f, 1f, 1f, 1f, 1f};
        for (int i = 0; i < cells.length; i++) {
            TextView t = text(a, cells[i], head ? 12 : 14, head ? AiViews.MUTED : AiViews.TEXT, head);
            row.addView(t, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, w[Math.min(i, w.length - 1)]));
        }
        return row;
    }

    private static TextView chip(Context a, String label, int color) {
        TextView t = text(a, label, 13, color, true);
        t.setPadding(dp(a, 12), dp(a, 7), dp(a, 12), dp(a, 7));
        t.setBackgroundDrawable(rounded((color & 0x00FFFFFF) | 0x22000000, dp(a, 14), 0, 0));
        return t;
    }

    private static View banner(Context a, int color, String msg) {
        TextView t = text(a, msg, 15, AiViews.TEXT, true);
        t.setPadding(dp(a, 16), dp(a, 13), dp(a, 16), dp(a, 13));
        GradientDrawable g = new GradientDrawable();
        g.setColor((color & 0x00FFFFFF) | 0x2A000000);
        g.setStroke(dp(a, 1), (color & 0x00FFFFFF) | 0x88000000);
        g.setCornerRadius(dp(a, 14));
        t.setBackgroundDrawable(g);
        return t;
    }

    private static TextView sectionLabel(Context a, String label) {
        TextView t = text(a, label, 12, AiViews.MUTED, true);
        t.setAllCaps(true);
        t.setLetterSpacing(0.08f);
        t.setPadding(0, 0, 0, dp(a, 10));
        return t;
    }

    private static LinearLayout labeled(Context a, String label, View content) {
        LinearLayout col = vertical(a);
        col.addView(sectionLabel(a, label));
        col.addView(content);
        return col;
    }

    private static LinearLayout card(Context a) {
        LinearLayout c = vertical(a);
        c.setBackgroundDrawable(rounded(AiViews.CARD, dp(a, 20), AiViews.STROKE, 1));
        c.setPadding(dp(a, 20), dp(a, 18), dp(a, 20), dp(a, 18));
        return c;
    }

    private static TextView primaryButton(Context a, String label) {
        // As the app's active tab: solid red pill.
        TextView b = text(a, label, 17, AiViews.ON_ACCENT, true);
        b.setGravity(Gravity.CENTER);
        GradientDrawable g = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                new int[] {AiViews.VIOLET, AiViews.ACCENT_DARK});
        g.setCornerRadius(dp(a, 29));
        b.setBackgroundDrawable(g);
        return b;
    }

    private static TextView ghostButton(Context a, String label) {
        TextView b = text(a, label, 16, AiViews.TEXT, true);
        b.setGravity(Gravity.CENTER);
        b.setPadding(dp(a, 26), 0, dp(a, 26), 0);
        // As the app's other tabs: surface pill with a hairline.
        b.setBackgroundDrawable(rounded(AiViews.CARD2, dp(a, 27), AiViews.STROKE, 1));
        return b;
    }

    private static TextView pillButton(Context a, String label, int color) {
        TextView b = text(a, label, 16, AiViews.TEXT, true);
        b.setGravity(Gravity.CENTER);
        b.setPadding(dp(a, 22), dp(a, 14), dp(a, 22), dp(a, 14));
        GradientDrawable g = new GradientDrawable();
        g.setColor((color & 0x00FFFFFF) | 0x2E000000);
        g.setStroke(dp(a, 1), (color & 0x00FFFFFF) | 0x99000000);
        g.setCornerRadius(dp(a, 26));
        b.setBackgroundDrawable(g);
        return b;
    }

    private static GradientDrawable rounded(int color, int radius, int stroke, int strokeDp) {
        GradientDrawable g = new GradientDrawable();
        g.setColor(color);
        g.setCornerRadius(radius);
        if (strokeDp > 0) {
            g.setStroke(strokeDp * 2, stroke);
        }
        return g;
    }

    /** Card with a red → orange border (selected state). */
    private static android.graphics.drawable.Drawable gradientStroke(Context a, int fill, int radiusDp) {
        GradientDrawable outer = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                new int[] {AiViews.VIOLET, AiViews.ORANGE});
        outer.setCornerRadius(dp(a, radiusDp));
        GradientDrawable inner = new GradientDrawable();
        inner.setColor(fill);
        inner.setCornerRadius(dp(a, radiusDp - 2));
        android.graphics.drawable.LayerDrawable ld = new android.graphics.drawable.LayerDrawable(
                new android.graphics.drawable.Drawable[] {outer, inner});
        int s = dp(a, 2);
        ld.setLayerInset(1, s, s, s, s);
        return ld;
    }

    private static int goalColor(Goal g) {
        switch (g) {
            case TONE: return AiViews.VIOLET;
            case FAT: return AiViews.ORANGE;
            case MASSAGE: return AiViews.CYAN;
            case DRAIN: return 0xFF42A5F5;
            default: return AiViews.PINK;
        }
    }

    /** 0..1 on the app's heat scale: green → yellow → orange → red. */
    private static int heat(float f) {
        int[] c = AiViews.heatGradient();
        f = Math.max(0f, Math.min(1f, f)) * (c.length - 1);
        int i = Math.min(c.length - 2, (int) f);
        float t = f - i;
        return mix(c[i], c[i + 1], t);
    }

    private static int mix(int a, int b, float t) {
        int r = (int) (((a >> 16) & 0xFF) * (1 - t) + ((b >> 16) & 0xFF) * t);
        int g = (int) (((a >> 8) & 0xFF) * (1 - t) + ((b >> 8) & 0xFF) * t);
        int bl = (int) ((a & 0xFF) * (1 - t) + (b & 0xFF) * t);
        return 0xFF000000 | (r << 16) | (g << 8) | bl;
    }

    private static int lighten(int c) {
        int r = Math.min(255, ((c >> 16) & 0xFF) + 60);
        int g = Math.min(255, ((c >> 8) & 0xFF) + 60);
        int b = Math.min(255, (c & 0xFF) + 60);
        return 0xFF000000 | (r << 16) | (g << 8) | b;
    }

    private static TextView text(Context a, String s, float sp, int color, boolean bold) {
        TextView t = new TextView(a);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        t.setIncludeFontPadding(true);
        if (bold) {
            t.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        }
        return t;
    }

    private static TextView centered(TextView t) {
        t.setGravity(Gravity.CENTER);
        return t;
    }

    private static LinearLayout vertical(Context a) {
        LinearLayout l = new LinearLayout(a);
        l.setOrientation(LinearLayout.VERTICAL);
        return l;
    }

    private static LinearLayout horizontal(Context a) {
        LinearLayout l = new LinearLayout(a);
        l.setOrientation(LinearLayout.HORIZONTAL);
        return l;
    }

    private static ScrollView scroll(Context a, View content) {
        ScrollView s = new ScrollView(a);
        s.setFillViewport(true);
        s.setVerticalScrollBarEnabled(false);
        s.addView(content);
        return s;
    }

    private static LinearLayout.LayoutParams weight(Context a, int leftMarginDp) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.leftMargin = dp(a, leftMarginDp);
        return lp;
    }

    private static LinearLayout.LayoutParams matchWrap(Context a, int topDp) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.topMargin = dp(a, topDp);
        return lp;
    }

    static int dp(Context c, float v) {
        return (int) (v * c.getResources().getDisplayMetrics().density + 0.5f);
    }

    private static void toast(Context c, String msg) {
        try {
            Toast.makeText(c, msg, Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }
}
