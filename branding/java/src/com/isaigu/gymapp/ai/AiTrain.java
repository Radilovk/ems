package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.isaigu.gymapp.ai.AutoModel.Goal;
import com.isaigu.gymapp.ai.AutoModel.Input;
import com.isaigu.gymapp.ai.AutoModel.Kind;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;
import java.util.Locale;

/**
 * The AI training (owner, 1.1.537 — docs/xems-ai-coach.md): the automatic mode's ready programs, engine and limits,
 * with the AI coach on top. It lives in the training screen itself — the place of the rows 2 and 3, between the
 * client's row and the bottom dock (AutoBoard) — never a full-screen window.
 * <ol>
 * <li><b>Intake</b>: client (sex, age, height, weight → BMI, EMS experience) · training (goal, active / passive,
 *     health Нямам / Имам → chips) · one line of words or 🎤 → ✦ Нагласи.</li>
 * <li><b>Summary</b>: everything that comes — the program, its three times, the impulse (Hz, impulse / pause, width,
 *     double impulse), the target feel; the advice (exercises, load, rests, weights, before / during / after);
 *     the chat (its question as buttons); ▶ Старт. No strength is set before: every row starts at 0, + raises it.</li>
 * <li><b>Run</b>: the Auto board; its ✦ AI opens the chat in the same place — words or 🎤 change the session now.</li>
 * </ol>
 */
public final class AiTrain {
    private AiTrain() {}

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    static final int INTAKE = 0;
    static final int SUMMARY = 1;
    private static int view = INTAKE;
    private static boolean liveChat;
    private static boolean busy;
    private static boolean healthOpen;
    private static String draft = "";
    private static String lastChanges = "";
    private static String[] pending;
    private static int seq;
    /** "Нова от AI" (owner, 1.1.538): the AI writes its own workout, no template; its exercises are described only. */
    private static boolean free;
    private static AiWorkout.Plan freePlan;
    /** The intake's line (its words go with ✦ Нагласи even when not sent with the keyboard). */
    private static EditText intakeField;

    // ================================================================ open / close

    /** The AI tile: an AI training on the training screen. */
    public static void open(Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        AutoSession.Stage st = AutoSession.getStage();
        if (st != AutoSession.Stage.IDLE) {
            if (AutoSession.aiMode) {
                AutoBoard.sync(root(a));                   // already here: the board comes back
            } else {
                toast(a, AiText.t("Тече автоматична тренировка.", "An automatic session is running."));
            }
            return;
        }
        String conflict = AutoSession.conflict();
        if (conflict != null) {
            toast(a, conflict);
            return;
        }
        AutoSession.beginSetup(a);
        AutoSession.aiMode = true;
        Input in = AutoSession.getInput();
        in.today.clear();
        in.exercises = true;
        if (in.heightCm <= 0) {
            in.heightCm = in.sex == AiModel.Sex.FEMALE ? 166 : 178;   // a starting value, never a blocker
        }
        if (AutoSession.isGuest()) {
            in.sessions = 0;
        }
        AutoSession.syncLeaderInput();
        AiCoach.resetAuto(in);
        WakeListener.start(a);                           // "Тренер, …" — hands-free (owner, 1.1.540)
        view = INTAKE;
        free = false;
        freePlan = null;
        liveChat = false;
        busy = false;
        healthOpen = false;
        draft = "";
        lastChanges = "";
        pending = null;
        seq++;
        AutoBoard.sync(root(a));
    }

    /**
     * A spoken command after "тренер" (WakeListener): before the start "старт" starts and anything else goes to the
     * chat; during the session the tablet reads the command itself, only what is none goes to the AI. True = taken.
     */
    static boolean voice(Context c, String cmd) {
        if (!AutoSession.aiMode || c == null || cmd == null || cmd.trim().length() == 0) {
            return false;
        }
        boolean running = AutoSession.getStage() == AutoSession.Stage.RUNNING && AutoSession.getEngine() != null;
        AiVoiceCmd.Result vc = AiVoiceCmd.parse(cmd);
        if (!running) {
            if (vc.actions.contains("resume") && vc.commands.isEmpty()) {
                if (view == INTAKE) {
                    tune(c);
                } else {
                    start(c, AiSession.activityOf(AutoSession.getPanelRoot()));
                }
                return true;
            }
            if (vc.actions.contains("stop")) {
                close();
                return true;
            }
            if (view == INTAKE) {
                draft = (draft != null && draft.trim().length() > 0 ? draft.trim() + ", " : "") + cmd;
                rebuild();
                return true;
            }
            send(c, cmd, false, false);
            return true;
        }
        if (!vc.isEmpty()) {
            commandsDone(vc, cmd);
            return true;
        }
        send(c, cmd, true, false);
        return true;
    }

    /** ✕ before the start: the AI training goes, the screen is as before. */
    static void close() {
        AutoSession.close();
    }

    static boolean liveChatOpen() {
        return liveChat;
    }

    private static View root(Activity a) {
        View r = AutoSession.getPanelRoot();
        return r != null ? r : a.getWindow().getDecorView();
    }

    private static void rebuild() {
        AutoBoard.rebuild();
    }

    // ================================================================ the board's content

    /** AutoBoard: the AI training before the start (intake or summary). */
    static void build(Context c, LinearLayout content) {
        XemsUi.init(c);
        ScrollView sc = new ScrollView(c);
        sc.setFillViewport(true);
        LinearLayout card = AutoUi.nativeCard(c);
        LinearLayout row = XemsUi.horizontal(c);
        if (view == SUMMARY && AutoSession.getPlan() != null) {
            summary(c, row);
        } else {
            intake(c, row);
        }
        card.addView(row, XemsUi.matchWrap(c, 0));
        sc.addView(card);
        content.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
    }

    private static void intake(Context c, LinearLayout row) {
        Input in = AutoSession.getInput();
        LinearLayout col1 = XemsUi.vertical(c);
        col1.addView(XemsUi.label(c, AiText.t("Клиент", "Client")));
        col1.addView(XemsUi.segmented(c, new String[] {AiText.t("Мъж", "Male"), AiText.t("Жена", "Female")},
                in.sex == AiModel.Sex.MALE ? 0 : 1, new Pick(P_SEX)), XemsUi.matchWrap(c, 4));
        LinearLayout nums = XemsUi.horizontal(c);
        nums.addView(labeled(c, AiText.t("Възраст", "Age"),
                XemsUi.stepper(c, "" + in.age, AiText.t("г.", "y"), 20, new Step(S_AGE)).view), XemsUi.weight(1, 0, c));
        nums.addView(labeled(c, AiText.t("Ръст", "Height"),
                XemsUi.stepper(c, "" + in.heightCm, "cm", 20, new Step(S_HEIGHT)).view), XemsUi.weight(1, 8, c));
        nums.addView(labeled(c, AiText.t("Тегло", "Weight"),
                XemsUi.stepper(c, "" + Math.round(in.weightKg), "kg", 20, new Step(S_WEIGHT)).view), XemsUi.weight(1, 8, c));
        col1.addView(nums, XemsUi.matchWrap(c, 8));
        double bmi = AiCoach.bmi(in);
        if (bmi > 0) {
            col1.addView(XemsUi.text(c, AiText.t("ИТМ ", "BMI ") + String.format(Locale.ROOT, "%.1f", bmi) + " · "
                    + AiCoach.bmiClass(bmi), 13, bmi >= 30 ? XemsUi.AMBER : XemsUi.MUTED, true), XemsUi.matchWrap(c, 6));
        }
        col1.addView(XemsUi.segmented(c, new String[] {AiText.t("Първи път EMS", "First EMS"),
                AiText.t("Няколко пъти", "A few times"), AiText.t("Редовно", "Regularly")},
                AiCoach.experienceOf(in), new Pick(P_EXP)), XemsUi.matchWrap(c, 8));
        row.addView(col1, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        LinearLayout col2 = XemsUi.vertical(c);
        col2.addView(XemsUi.label(c, AiText.t("Тренировка", "Training")));
        col2.addView(XemsUi.segmented(c, new String[] {AutoUi.goalName(Goal.TONE), AutoUi.goalName(Goal.SLIM),
                AutoUi.goalName(Goal.HEALTH)}, in.goal.ordinal(), new Pick(P_GOAL)), XemsUi.matchWrap(c, 4));
        boolean both = !AutoCatalog.menu(in.goal, Kind.ACTIVE).isEmpty() && !AutoCatalog.menu(in.goal, Kind.PASSIVE).isEmpty();
        if (both) {
            col2.addView(XemsUi.segmented(c, new String[] {AiText.t("Активна", "Active"), AiText.t("Пасивна", "Passive")},
                    in.kind == Kind.ACTIVE ? 0 : 1, new Pick(P_KIND)), XemsUi.matchWrap(c, 8));
        }
        boolean any = AiCoach.anyHealth(in) || healthOpen;
        col2.addView(XemsUi.segmented(c, new String[] {AiText.t("Здрав", "Healthy"),
                AiText.t("Има проблем", "Has an issue")}, any ? 1 : 0, new Pick(P_HEALTH)), XemsUi.matchWrap(c, 8));
        if (any) {
            AiUi.FlowRow flow = new AiUi.FlowRow(c);
            for (int i = 0; i < AiCoach.HEALTH.length; i++) {
                String k = AiCoach.HEALTH[i];
                if (in.sex == AiModel.Sex.MALE && ("postpartum".equals(k) || "diastasis".equals(k) || "menopause".equals(k))) {
                    continue;
                }
                boolean on = AiCoach.healthOn(in, k);
                TextView ch = XemsUi.chip(c, (on ? "✓ " : "") + AiCoach.HEALTH_BG[i], on, XemsUi.AMBER);
                ch.setOnClickListener(new Health(k));
                flow.add(ch);
            }
            for (int i = 0; i < AiCoach.CONTRA.length; i++) {
                String k = AiCoach.CONTRA[i];
                if (in.sex == AiModel.Sex.MALE && "pregnancy".equals(k)) {
                    continue;
                }
                boolean on = AiCoach.healthOn(in, k);
                TextView ch = XemsUi.chip(c, (on ? "⊘ " : "") + AiCoach.CONTRA_BG[i], on, XemsUi.DANGER);
                ch.setOnClickListener(new Health(k));
                flow.add(ch);
            }
            col2.addView(flow, XemsUi.matchWrap(c, 6));
        }
        row.addView(col2, colParams(c, 1.25f));

        LinearLayout col3 = XemsUi.vertical(c);
        col3.addView(XemsUi.label(c, "✦ " + AiText.t("Още нещо за клиента?", "Anything else about the client?")));
        col3.addView(inputRow(c, false), XemsUi.matchWrap(c, 4));
        TextView go = XemsUi.button(c, "✦  " + AiText.t("Нагласи с AI", "Tune with AI"), XemsUi.PRIMARY);
        go.setOnClickListener(new Act(A_TUNE));
        col3.addView(go, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, XemsUi.dp(c, 60)));
        TextView x = XemsUi.button(c, AiText.t("Затвори", "Close"), XemsUi.GHOST);
        x.setOnClickListener(new Act(A_CLOSE));
        col3.addView(x, XemsUi.matchWrap(c, 6));
        row.addView(col3, colParams(c, 1f));
    }

    private static void summary(Context c, LinearLayout row) {
        Input in = AutoSession.getInput();
        AutoModel.Plan plan = AutoSession.getPlan();
        // ---- 1 · the training: program, times, impulse, the target feel
        LinearLayout col1 = XemsUi.vertical(c);
        col1.addView(XemsUi.segmented(c, new String[] {AiText.t("Готова програма", "Ready program"),
                AiText.t("✦ Нова от AI", "✦ New by the AI")}, free ? 1 : 0, new Pick(P_FREE)), XemsUi.matchWrap(c, 0));
        if (free) {
            freeColumn(c, col1);
            row.addView(col1, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.05f));
            adviceAndChat(c, row);
            return;
        }
        LinearLayout head = XemsUi.horizontal(c);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(c, plan.program.name(), 20, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        head.addView(XemsUi.badge(c, AutoUi.levelName(plan.program.level), AutoUi.levelColor(plan.program.level)));
        col1.addView(head, XemsUi.matchWrap(c, 8));
        col1.addView(XemsUi.text(c, AutoUi.goalName(in.goal) + " · " + (plan.program.isActive()
                ? AiText.t("активна", "active") : AiText.t("пасивна", "passive")), 13, XemsUi.MUTED, true), XemsUi.matchWrap(c, 2));
        int[] tm = AutoCatalog.times(plan.program, in.goal, in);
        col1.addView(line(c, AiText.t("Време", "Time"), tm[0] / 60 + " + " + tm[1] / 60 + AiText.t(" мин активна · ", " min active · ")
                + tm[2] / 60 + AiText.t(" мин възстановяване", " min recovery")), XemsUi.matchWrap(c, 8));
        AutoModel.Step s = mainStep(plan);
        if (s != null) {
            int hz = AutoSession.vetoHz > 0 ? Math.min(AutoSession.vetoHz, SafeLimits.hzMax(in.age)) : s.hz;
            int on = AutoSession.vetoOn > 0 ? AutoSession.vetoOn : s.onS;
            int off = AutoSession.vetoOff > 0 ? AutoSession.vetoOff : s.offS;
            col1.addView(line(c, AiText.t("Импулс", "Impulse"), hz + " Hz · " + on + " s " + AiText.t("импулс", "on")
                    + " / " + off + " s " + AiText.t("пауза", "pause") + " · " + s.pwUs + " µs"), XemsUi.matchWrap(c, 4));
            if (AutoSession.vetoReason != null) {
                col1.addView(XemsUi.text(c, "✦ " + AiText.t("AI промени импулса на програмата (беше ", "The AI changed the program's impulse (was ")
                        + s.hz + " Hz · " + s.onS + "/" + s.offS + " s): " + AutoSession.vetoReason, 13, XemsUi.AMBER, true),
                        XemsUi.matchWrap(c, 4));
            }
        }
        col1.addView(line(c, AiText.t("Двоен импулс", "Double impulse"), plan.doublePulseAllowed && in.doublePulse
                ? AiText.t("да, в паузите", "yes, in the pauses") : AiText.t("не", "no")), XemsUi.matchWrap(c, 4));
        col1.addView(line(c, AiText.t("Усещане", "Feel"), plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "")
                + AiText.t(" от 10", " of 10")), XemsUi.matchWrap(c, 4));
        col1.addView(line(c, AiText.t("Сила", "Strength"), AiText.t("от 0 — качваш я с + по време на тренировката",
                "from 0 — you raise it with + during the session")), XemsUi.matchWrap(c, 4));
        if (lastChanges.length() > 0) {
            col1.addView(XemsUi.text(c, "✦ " + lastChanges, 13, XemsUi.GO_TEXT, true), XemsUi.matchWrap(c, 8));
        }
        row.addView(col1, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.05f));
        adviceAndChat(c, row);
    }

    /** "Нова от AI": the AI's exercises, each described, with its sets, time and load; the time of the whole. */
    private static void freeColumn(Context c, LinearLayout col1) {
        Input in = AutoSession.getInput();
        if (freePlan == null) {
            col1.addView(XemsUi.text(c, busy ? AiText.t("✦ AI съставя тренировката…", "✦ The AI is writing the workout…")
                    : AiText.t("Натисни ✦ Състави или напиши какво искаш.", "Tap ✦ Write it or say what you want."),
                    14, XemsUi.MUTED, false), XemsUi.matchWrap(c, 10));
            TextView make = XemsUi.button(c, "✦  " + AiText.t("Състави", "Write it"), XemsUi.ACCENT_BTN);
            make.setOnClickListener(new Act(A_MAKE));
            col1.addView(make, XemsUi.matchWrap(c, 8));
            return;
        }
        Workout w = AiWorkout.toWorkout(freePlan, in);
        int act = 0;
        for (Workout.Block b : w.blocks) {
            act += b.seconds();
        }
        act -= AiWorkout.RECOVERY_S;
        col1.addView(XemsUi.text(c, freePlan.title.length() > 0 ? freePlan.title : AiText.t("AI тренировка", "AI workout"),
                20, XemsUi.TEXT, true), XemsUi.matchWrap(c, 8));
        col1.addView(line(c, AiText.t("Време", "Time"), Math.round(act / 60f) + AiText.t(" мин активна · 10 мин възстановяване",
                " min active · 10 min recovery")), XemsUi.matchWrap(c, 4));
        col1.addView(line(c, AiText.t("Сила", "Strength"), AiText.t("от 0 — качваш я с +", "from 0 — raise it with +")),
                XemsUi.matchWrap(c, 4));
        List<String> ls = AiWorkout.lines(freePlan);
        for (int i = 0; i < ls.size(); i++) {
            AiWorkout.Item it = freePlan.items.get(i);
            col1.addView(XemsUi.text(c, (i + 1) + ". " + ls.get(i), 14, XemsUi.TEXT, true), XemsUi.matchWrap(c, 8));
            if (it.how.length() > 0) {
                col1.addView(XemsUi.text(c, it.how, 13, XemsUi.MUTED, false), XemsUi.matchWrap(c, 1));
            }
        }
    }

    private static void adviceAndChat(Context c, LinearLayout row) {
        // ---- 2 · the advice
        LinearLayout col2 = XemsUi.vertical(c);
        col2.addView(XemsUi.label(c, AiText.t("Препоръки", "Advice")));
        String[] adv = AiCoach.advice();
        if (adv == null) {
            col2.addView(XemsUi.text(c, busy ? AiText.t("✦ AI подготвя препоръките…", "✦ The AI is preparing the advice…")
                    : AiText.t("Още няма — напиши нещо на AI или натисни ✦.", "None yet — write to the AI or tap ✦."),
                    14, XemsUi.MUTED, false), XemsUi.matchWrap(c, 4));
        } else {
            for (int i = 0; i < AiCoach.ADVICE.length && i < adv.length; i++) {
                if (adv[i] != null && adv[i].length() > 0) {
                    col2.addView(line(c, AiCoach.ADVICE_BG[i], adv[i]), XemsUi.matchWrap(c, 4));
                }
            }
        }
        row.addView(col2, colParams(c, 1.1f));

        // ---- 3 · the chat and ▶
        LinearLayout col3 = XemsUi.vertical(c);
        chat(c, col3, false);
        LinearLayout btns = XemsUi.horizontal(c);
        TextView back = XemsUi.button(c, "‹", XemsUi.GHOST);
        back.setOnClickListener(new Act(A_BACK));
        btns.addView(back, new LinearLayout.LayoutParams(XemsUi.dp(c, 64), XemsUi.dp(c, 60)));
        TextView start = XemsUi.button(c, "▶  " + AiText.t("Старт", "Start"), XemsUi.PRIMARY);
        start.setOnClickListener(new Act(A_START));
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 60), 1f);
        sp.leftMargin = XemsUi.dp(c, 8);
        btns.addView(start, sp);
        col3.addView(btns, XemsUi.matchWrap(c, 8));
        if (!AutoSession.isGuest() && !AiCoach.learned().isEmpty()) {
            StringBuilder names = new StringBuilder();
            for (String k : AiCoach.learned()) {
                names.append(names.length() > 0 ? ", " : "").append(AiCoach.nameOf(k, AiCoach.HEALTH, AiCoach.HEALTH_BG));
            }
            TextView save = XemsUi.button(c, "✓  " + AiText.t("Запази в профила: ", "Save to the profile: ") + names,
                    XemsUi.SECONDARY);
            save.setOnClickListener(new Act(A_SAVE));
            col3.addView(save, XemsUi.matchWrap(c, 6));
        }
        row.addView(col3, colParams(c, 1.2f));
    }

    /** AutoBoard: the chat over the running session (its ✦ AI). */
    static void buildLive(Context c, LinearLayout content) {
        XemsUi.init(c);
        LinearLayout card = AutoUi.nativeCard(c);
        LinearLayout row = XemsUi.horizontal(c);
        LinearLayout left = XemsUi.vertical(c);
        left.addView(XemsUi.label(c, "✦ " + AiText.t("Кажи на AI", "Tell the AI")));
        left.addView(XemsUi.text(c, WakeListener.isOn()
                ? AiText.t("🎙 Слушам: кажи „Тренер, увеличи краката“, „Тренер, пауза“, „Тренер, стоп“…",
                "🎙 Listening: say “Trainer, raise the legs”, “Trainer, pause”, “Trainer, stop”…")
                : AiText.t("🎙 Гласът е изключен — 🎙 в таблото го пуска.", "🎙 Voice is off — 🎙 on the board turns it on."),
                13, WakeListener.isOn() ? XemsUi.GO_TEXT : XemsUi.MUTED, true), XemsUi.matchWrap(c, 4));
        AiUi.FlowRow quick = new AiUi.FlowRow(c);
        String[] q = {AiText.t("по-леко", "softer"), AiText.t("по-силно", "stronger"), AiText.t("пауза", "pause"),
                AiText.t("продължи", "go on"), AiText.t("по-дълги почивки", "longer rests"),
                AiText.t("по-кратки импулси", "shorter impulses"), AiText.t("прескочи упражнението", "skip the exercise"),
                AiText.t("към възстановяване", "to the recovery")};
        for (String t : q) {
            TextView ch = XemsUi.chip(c, t, false, XemsUi.ACCENT);
            ch.setOnClickListener(new Quick(t, true));
            quick.add(ch);
        }
        left.addView(quick, XemsUi.matchWrap(c, 6));
        TextView back = XemsUi.button(c, "‹  " + AiText.t("Към таблото", "To the board"), XemsUi.GHOST);
        back.setOnClickListener(new Act(A_LIVE_CLOSE));
        left.addView(back, XemsUi.matchWrap(c, 10));
        row.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout right = XemsUi.vertical(c);
        chat(c, right, true);
        row.addView(right, colParams(c, 1.3f));
        card.addView(row, XemsUi.matchWrap(c, 0));
        ScrollView sc = new ScrollView(c);
        sc.addView(card);
        content.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
    }

    /** The run board's ✦ AI (AutoUi.buildBoard). */
    static void openLive() {
        liveChat = true;
        rebuild();
    }

    // ================================================================ chat parts

    private static void chat(Context c, LinearLayout col, boolean live) {
        LinearLayout msgs = XemsUi.vertical(c);
        List<AiCoach.Turn> turns = AiCoach.chat();
        for (int i = Math.max(0, turns.size() - (live ? 6 : 5)); i < turns.size(); i++) {
            AiCoach.Turn t = turns.get(i);
            TextView m = XemsUi.text(c, t.text, 14, XemsUi.TEXT, false);
            m.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 7), XemsUi.dp(c, 12), XemsUi.dp(c, 7));
            m.setBackgroundDrawable(XemsUi.rounded(t.ai ? XemsUi.SURFACE : XemsUi.alpha(XemsUi.ACCENT, 0x26),
                    XemsUi.dp(c, 14), t.ai ? XemsUi.STROKE : XemsUi.alpha(XemsUi.ACCENT, 0x80), XemsUi.dp(c, 1)));
            LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            mp.topMargin = XemsUi.dp(c, 5);
            mp.gravity = t.ai ? Gravity.START : Gravity.END;
            msgs.addView(m, mp);
        }
        if (busy) {
            msgs.addView(XemsUi.text(c, AiText.t("✦ пише…", "✦ typing…"), 13, XemsUi.MUTED, true), XemsUi.matchWrap(c, 4));
        }
        if (live && lastChanges.length() > 0) {
            msgs.addView(XemsUi.text(c, "✓ " + lastChanges, 13, XemsUi.GO_TEXT, true), XemsUi.matchWrap(c, 4));
        }
        if (pending != null && !busy) {
            AiUi.FlowRow opts = new AiUi.FlowRow(c);
            for (String o : pending) {
                TextView ch = XemsUi.chip(c, o, false, XemsUi.ACCENT);
                ch.setOnClickListener(new Quick(o, live));
                opts.add(ch);
            }
            msgs.addView(opts, XemsUi.matchWrap(c, 6));
        }
        col.addView(msgs);
        col.addView(inputRow(c, live), XemsUi.matchWrap(c, 8));
    }

    /** One line to write + 🎤 (the tablet's own speech input) + ➤. */
    private static View inputRow(Context c, boolean live) {
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        EditText f = new EditText(c);
        f.setHint(live ? AiText.t("Напиши или кажи…", "Write or say…")
                : AiText.t("„52 г., болки в коленете, днес е уморена“", "“52, knee pain, tired today”"));
        f.setText(live ? "" : draft);
        if (!live && view == INTAKE) {
            intakeField = f;
        }
        f.setTextSize(15);
        f.setTextColor(XemsUi.TEXT);
        f.setHintTextColor(XemsUi.HINT);
        f.setMaxLines(3);
        f.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        f.setImeOptions(EditorInfo.IME_ACTION_SEND);
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        f.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 10), XemsUi.dp(c, 14), XemsUi.dp(c, 10));
        f.setOnEditorActionListener(new SendKey(f, live));
        row.addView(f, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView mic = XemsUi.button(c, "🎤", XemsUi.SECONDARY);
        mic.setOnClickListener(new Mic(live));
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(XemsUi.dp(c, 60), XemsUi.dp(c, 52));
        mp.leftMargin = XemsUi.dp(c, 8);
        row.addView(mic, mp);
        TextView send = XemsUi.button(c, "➤", XemsUi.ACCENT_BTN);
        send.setOnClickListener(new SendClick(f, live));
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(XemsUi.dp(c, 60), XemsUi.dp(c, 52));
        sp.leftMargin = XemsUi.dp(c, 6);
        row.addView(send, sp);
        return row;
    }

    private static View line(Context c, String label, String value) {
        LinearLayout l = XemsUi.horizontal(c);
        TextView k = XemsUi.text(c, label, 13, XemsUi.MUTED, true);
        l.addView(k, new LinearLayout.LayoutParams(XemsUi.dp(c, 118), ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView v = XemsUi.text(c, value, 14, XemsUi.TEXT, false);
        l.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return l;
    }

    private static View labeled(Context c, String label, View v) {
        LinearLayout l = XemsUi.vertical(c);
        l.addView(XemsUi.text(c, label, 12, XemsUi.MUTED, true));
        l.addView(v, XemsUi.matchWrap(c, 2));
        return l;
    }

    private static LinearLayout.LayoutParams colParams(Context c, float w) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, w);
        p.leftMargin = XemsUi.dp(c, 18);
        return p;
    }

    /** The main work's first tetanic step (the impulse the summary shows). */
    static AutoModel.Step mainStep(AutoModel.Plan plan) {
        AutoModel.Phase best = null;
        for (AutoModel.Phase ph : plan.phases) {
            if (!ph.isCooldown() && !"WARMUP".equals(ph.id) && (best == null || ph.durationS > best.durationS)) {
                best = ph;
            }
        }
        if (best == null && !plan.phases.isEmpty()) {
            best = plan.phases.get(0);
        }
        if (best == null || best.steps.isEmpty()) {
            return null;
        }
        for (AutoModel.Step s : best.steps) {
            if (s.sigma > 0) {
                return s;
            }
        }
        return best.steps.get(0);
    }

    // ================================================================ the model

    static void send(Context c, String text, boolean live, boolean silent) {
        if (c == null || text == null || text.trim().length() == 0 || busy) {
            return;
        }
        String t = text.trim();
        if (!silent) {
            AiCoach.userSaid(t);
        }
        if (!live) {
            draft = "";
        }
        pending = null;
        if (live) {
            // a spoken / typed command: read on the tablet first — instant, no network (owner, 1.1.539)
            AiVoiceCmd.Result vc = AiVoiceCmd.parse(t);
            if (!vc.isEmpty()) {
                commandsDone(vc, t);
                return;
            }
        }
        busy = true;
        rebuild();
        String fields = AiCoach.requestFieldsAuto(AutoSession.getInput(), t, planJson(), live ? runJson() : null, live);
        boolean wantPlan = free && !live;
        if (wantPlan) {
            fields = fields.replaceFirst("\"kind\":\"coach\"", "\"kind\":\"workout\"");
        }
        new Thread(new Ask(c.getApplicationContext(), fields, ++seq, live, t, wantPlan), "xems-ai-train").start();
    }

    /** The commands → the session now; the chat says what was done. */
    static void commandsDone(AiVoiceCmd.Result vc, String text) {
        String done = applyCommands(vc);
        AiCoach.Reply r = new AiCoach.Reply();
        r.reply = done.length() > 0 ? "✓ " + done : AiText.t("Не можах да го направя сега.", "Could not do it now.");
        AiCoach.aiSaid(r);
        lastChanges = done;
        rebuild();
        WearableBleDiagLog.log("ai-train", "command \"" + text + "\" → " + done);
    }

    /** Each command with the relative step (AiVoiceCmd.step): muscles, strength, impulse, pause, Hz, rests, actions. */
    static String applyCommands(AiVoiceCmd.Result vc) {
        AutoEngine e = AutoSession.getEngine();
        StringBuilder b = new StringBuilder();
        for (AiVoiceCmd.Cmd c : vc.commands) {
            int sign = "up".equals(c.dir) || "on".equals(c.dir) ? 1 : -1;
            if (c.isMuscle()) {
                int v = -1;
                for (int ch : c.channels()) {
                    int x = AutoSession.channelStep(ch, c.dir, c.small);
                    v = v < 0 ? x : v;
                }
                if (v >= 0) {
                    b.append(AiVoiceCmd.name(c.target)).append(' ').append("off".equals(c.dir) ? AiText.t("изкл.", "off") : v + " %")
                            .append(" · ");
                }
            } else if ("strength".equals(c.target)) {
                int v = AutoSession.strengthStep(sign, c.small);
                if (v >= 0) {
                    b.append(AiText.t("сила ", "strength ")).append(v).append(" · ");
                }
            } else if (e != null && "impulse".equals(c.target)) {
                e.setTune(e.getTuneOn() + sign, e.getTuneOff(), e.getTuneHzPct(), e.getTuneRest());
                b.append(AiText.t("импулс ", "impulse ")).append(signed(e.getTuneOn())).append(" s · ");
            } else if (e != null && "pause".equals(c.target)) {
                e.setTune(e.getTuneOn(), e.getTuneOff() + sign, e.getTuneHzPct(), e.getTuneRest());
                b.append(AiText.t("пауза ", "pause ")).append(signed(e.getTuneOff())).append(" s · ");
            } else if (e != null && "frequency".equals(c.target)) {
                e.setTune(e.getTuneOn(), e.getTuneOff(), e.getTuneHzPct() + sign * (c.small ? 5 : 10), e.getTuneRest());
                b.append("Hz ").append(signed(e.getTuneHzPct())).append(" % · ");
            } else if (e != null && "rest".equals(c.target)) {
                e.setTune(e.getTuneOn(), e.getTuneOff(), e.getTuneHzPct(), e.getTuneRest() + sign * (c.small ? 0.08 : 0.15));
                b.append(AiText.t("почивки ", "rests ")).append(signed((int) Math.round((e.getTuneRest() - 1) * 100)))
                        .append(" % · ");
            }
        }
        for (String a : vc.actions) {
            b.append(action(e, "stop".equals(a) ? "to_recovery" : a));
        }
        return trim(b);
    }

    static void onAnswer(AiCoach.Reply r, int my, boolean live, String text) {
        if (my != seq) {
            return;
        }
        busy = false;
        if (r == null) {
            // no network: the tablet's own reading of the words (AiBrief.local), so the field always does something
            AiBrief.Patch p = AiBrief.local(text, live);
            if (live) {
                lastChanges = liveLocal(p);
            } else {
                lastChanges = AiBrief.line(AiBrief.apply(p, AutoSession.getInput()));
                AutoSession.syncLeaderInput();
                AutoSession.buildPlan();
            }
            AiCoach.Reply off = new AiCoach.Reply();
            off.reply = AiText.t("Няма връзка с AI — направих каквото разбрах от думите.",
                    "No AI connection — I did what I understood from the words.");
            AiCoach.aiSaid(off);
            rebuild();
            return;
        }
        AiCoach.aiSaid(r);
        pending = r.hasQuestion() ? r.options.toArray(new String[0]) : null;
        if (r.vetoReason != null) {
            AutoSession.vetoHz = r.vetoHz != null ? r.vetoHz : 0;
            AutoSession.vetoOn = r.vetoOn != null ? r.vetoOn : 0;
            AutoSession.vetoOff = r.vetoOff != null ? r.vetoOff : 0;
            AutoSession.vetoReason = r.vetoReason;
            AutoEngine ve = AutoSession.getEngine();
            if (ve != null) {
                ve.setVeto(AutoSession.vetoHz, AutoSession.vetoOn, AutoSession.vetoOff);   // live: from the next cycle
            }
        }
        Input in = AutoSession.getInput();
        List<String> ch = AiCoach.applyAuto(r, in);
        AutoSession.syncLeaderInput();
        String done = "";
        if (live) {
            done = liveApply(r);
        } else {
            AutoSession.buildPlan();
        }
        if (r.advice != null && !AutoSession.isGuest()) {
            Context c = AutoSession.getPanelRoot() != null ? AutoSession.getPanelRoot().getContext() : null;
            AiProfile.saveAdvice(c, AutoSession.leaderUserId(), AiCoach.adviceLines());
        }
        lastChanges = AiBrief.line(ch) + (done.length() > 0 ? (ch.isEmpty() ? "" : " · ") + done : "");
        rebuild();
        WearableBleDiagLog.log("ai-train", (live ? "live " : "plan ") + ch + " " + done);
    }

    /** The coach's commands and impulse moves on the running Auto session. */
    static String liveApply(AiCoach.Reply r) {
        AutoEngine e = AutoSession.getEngine();
        if (e == null) {
            return "";
        }
        StringBuilder b = new StringBuilder();
        for (String a : r.actions) {
            b.append(action(e, a));
        }
        if (r.onDelta != null || r.offDelta != null || r.hzPct != null || r.restPct != null) {
            e.setTune(r.onDelta != null ? r.onDelta : e.getTuneOn(), r.offDelta != null ? r.offDelta : e.getTuneOff(),
                    r.hzPct != null ? r.hzPct : e.getTuneHzPct(),
                    r.restPct != null ? 1 + r.restPct / 100.0 : e.getTuneRest());
            if (r.onDelta != null) b.append(AiText.t("импулс ", "impulse ")).append(signed(e.getTuneOn())).append(" s · ");
            if (r.offDelta != null) b.append(AiText.t("пауза ", "pause ")).append(signed(e.getTuneOff())).append(" s · ");
            if (r.hzPct != null) b.append("Hz ").append(signed(e.getTuneHzPct())).append(" % · ");
            if (r.restPct != null) b.append(AiText.t("почивки ", "rests ")).append(signed((int) Math.round((e.getTuneRest() - 1) * 100)))
                    .append(" % · ");
        }
        if (r.endInMin != null) {
            e.endActiveIn(r.endInMin, System.currentTimeMillis());
            b.append(r.endInMin == 0 ? AiText.t("към възстановяване · ", "to the recovery · ")
                    : AiText.t("още ", "") + r.endInMin + AiText.t(" мин активна · ", " more active min · "));
        }
        return trim(b);
    }

    private static String liveLocal(AiBrief.Patch p) {
        AutoEngine e = AutoSession.getEngine();
        StringBuilder b = new StringBuilder();
        for (String a : p.live) {
            b.append(action(e, a));
        }
        return trim(b);
    }

    private static String action(AutoEngine e, String a) {
        if (e == null) {
            return "";
        }
        if ("softer".equals(a)) {
            AutoSession.reduceAll();
            return AiText.t("сила −10 % · ", "strength −10 % · ");
        }
        if ("stronger".equals(a)) {
            AutoSession.raiseAll();
            return AiText.t("сила +5 % · ", "strength +5 % · ");
        }
        if ("pause".equals(a) && e.getState() == AutoEngine.State.RUN) {
            AutoSession.togglePause();
            return AiText.t("пауза · ", "pause · ");
        }
        if ("resume".equals(a) || "continue".equals(a)) {
            return AutoSession.startNext() ? "▶ · " : "";
        }
        if ("skip".equals(a) && AutoSession.canNext()) {
            AutoSession.nextFromPanel();
            return "⏭ · ";
        }
        if ("to_recovery".equals(a) || "to_cooldown".equals(a)) {
            AutoSession.stop();
            return AiText.t("към възстановяване · ", "to the recovery · ");
        }
        if ("double_on".equals(a) || "double_off".equals(a)) {
            AutoSession.setDoublePulse("double_on".equals(a));
            return "double_on".equals(a) ? AiText.t("двоен импулс · ", "double impulse · ")
                    : AiText.t("без двоен импулс · ", "no double impulse · ");
        }
        return "";
    }

    private static String trim(StringBuilder b) {
        String s = b.toString();
        return s.endsWith(" · ") ? s.substring(0, s.length() - 3) : s;
    }

    private static String signed(int v) {
        return v > 0 ? "+" + v : String.valueOf(v);
    }

    static String planJson() {
        AutoModel.Plan p = AutoSession.getPlan();
        if (p == null) {
            return null;
        }
        StringBuilder b = new StringBuilder("{\"program\":").append(AiBrief.q(p.program.id)).append(",\"active_min\":")
                .append(Math.round(p.activeS / 60.0)).append(",\"recovery_min\":").append(Math.round(p.recoveryS / 60.0))
                .append(",\"cr10\":\"").append(p.cr10Lo).append('-').append(p.cr10Hi).append("\",\"phases\":[");
        for (int i = 0; i < p.phases.size(); i++) {
            AutoModel.Phase ph = p.phases.get(i);
            AutoModel.Step s = ph.steps.isEmpty() ? null : ph.steps.get(0);
            b.append(i > 0 ? "," : "").append("{\"name\":").append(AiBrief.q(ph.nameBg)).append(",\"min\":")
                    .append(Math.round(ph.durationS / 60.0));
            if (s != null) {
                b.append(",\"hz\":").append(s.hz).append(",\"on\":").append(s.onS).append(",\"off\":").append(s.offS);
            }
            b.append('}');
        }
        return b.append("]}").toString();
    }

    static String runJson() {
        AutoEngine e = AutoSession.getEngine();
        if (e == null) {
            return null;
        }
        AutoModel.Phase ph = e.phase();
        return "{\"phase\":" + AiBrief.q(ph != null ? ph.nameBg : "") + ",\"min_done\":"
                + Math.round(e.getSessionS(System.currentTimeMillis()) / 60.0) + ",\"state\":\"" + e.getState().name()
                + "\",\"tune\":{\"on\":" + e.getTuneOn() + ",\"off\":" + e.getTuneOff() + ",\"hz_pct\":" + e.getTuneHzPct()
                + ",\"rest_pct\":" + Math.round((e.getTuneRest() - 1) * 100) + "}}";
    }

    private static void toast(Context c, String s) {
        try {
            Toast.makeText(c, s, Toast.LENGTH_LONG).show();
        } catch (Throwable ignored) {
        }
    }

    // ================================================================ listeners (named classes: dx)

    static final int P_SEX = 0, P_EXP = 1, P_GOAL = 2, P_KIND = 3, P_HEALTH = 4, P_FREE = 5;
    static final int S_AGE = 0, S_HEIGHT = 1, S_WEIGHT = 2;
    static final int A_TUNE = 0, A_CLOSE = 1, A_BACK = 2, A_START = 3, A_SAVE = 4, A_LIVE_CLOSE = 5, A_MAKE = 6;

    static final class Pick implements XemsUi.OnIndex {
        final int which;

        Pick(int which) {
            this.which = which;
        }

        @Override
        public void onIndex(int i) {
            Input in = AutoSession.getInput();
            switch (which) {
                case P_SEX:
                    in.sex = i == 0 ? AiModel.Sex.MALE : AiModel.Sex.FEMALE;
                    break;
                case P_EXP:
                    AiCoach.experience(in, i);
                    break;
                case P_GOAL:
                    in.goal = Goal.values()[Math.max(0, Math.min(2, i))];
                    if (AutoCatalog.menu(in.goal, in.kind).isEmpty()) {
                        in.kind = in.kind == Kind.ACTIVE ? Kind.PASSIVE : Kind.ACTIVE;
                    }
                    in.programId = AutoCatalog.recommended(in.goal, in.kind, in).id;
                    break;
                case P_FREE:
                    free = i == 1;
                    if (free && freePlan == null && !busy) {
                        AutoSession.syncLeaderInput();
                        rebuild();
                        send(AutoSession.getPanelRoot() != null ? AutoSession.getPanelRoot().getContext() : null,
                                AiText.t("Състави нова тренировка за този клиент.", "Write a new workout for this client."),
                                false, true);
                        return;
                    }
                    break;
                case P_KIND:
                    in.kind = i == 0 ? Kind.ACTIVE : Kind.PASSIVE;
                    in.programId = AutoCatalog.recommended(in.goal, in.kind, in).id;
                    break;
                default:
                    if (i == 0) {
                        AiCoach.clearHealth(in);
                        healthOpen = false;
                    } else {
                        healthOpen = true;
                    }
                    break;
            }
            AutoSession.syncLeaderInput();
            rebuild();
        }
    }

    static final class Step implements XemsUi.OnStep {
        final int which;

        Step(int which) {
            this.which = which;
        }

        @Override
        public void onStep(int d) {
            Input in = AutoSession.getInput();
            if (which == S_AGE) {
                in.age = Math.max(14, Math.min(90, in.age + d));
            } else if (which == S_HEIGHT) {
                in.heightCm = Math.max(130, Math.min(220, in.heightCm + d));
            } else {
                in.weightKg = Math.max(35, Math.min(200, Math.round(in.weightKg) + d));
            }
            AutoSession.syncLeaderInput();
            rebuild();
        }
    }

    static final class Health implements View.OnClickListener {
        final String key;

        Health(String key) {
            this.key = key;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            AiCoach.toggleHealth(AutoSession.getInput(), key);
            AutoSession.syncLeaderInput();
            rebuild();
        }
    }

    static final class Act implements View.OnClickListener {
        final int code;

        Act(int code) {
            this.code = code;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            Context c = v.getContext();
            switch (code) {
                case A_TUNE:
                    tune(c);
                    break;
                case A_CLOSE:
                    close();
                    break;
                case A_BACK:
                    view = INTAKE;
                    rebuild();
                    break;
                case A_START:
                    start(c, AiSession.activityOf(v));
                    break;
                case A_MAKE:
                    send(c, AiText.t("Състави нова тренировка за този клиент.", "Write a new workout for this client."),
                            false, true);
                    break;
                case A_SAVE:
                    AiProfile.addCond(c, AutoSession.leaderUserId(), AiCoach.learned());
                    AiCoach.savedLearned();
                    lastChanges = AiText.t("запазено в профила", "saved to the profile");
                    rebuild();
                    break;
                default:
                    liveChat = false;
                    rebuild();
                    break;
            }
        }
    }

    /** ✦ Нагласи: the plan from the intake, the first word to the AI (the line's text, else "tune it"). */
    static void tune(Context c) {
        Input in = AutoSession.getInput();
        if (in.programId == null || AutoCatalog.get(in.programId) == null) {
            in.programId = AutoCatalog.recommended(in.goal, in.kind, in).id;
        }
        AutoSession.syncLeaderInput();
        AutoSession.buildPlan();
        view = SUMMARY;
        if (intakeField != null && intakeField.getText() != null && intakeField.getText().length() > 0) {
            draft = intakeField.getText().toString();
        }
        String extra = draft != null ? draft.trim() : "";
        if (extra.length() > 0) {
            send(c, extra, false, false);
        } else {
            send(c, AiText.t("Нагласи тренировката за този клиент и дай препоръките.",
                    "Tune the session for this client and give the advice."), false, true);
        }
    }

    /** ▶ Старт: the ready program (startDirect, strength from 0) or the AI's own workout as a map. */
    static void start(Context c, Activity a) {
        if (free) {
            if (freePlan == null) {
                toast(c, AiText.t("Първо ✦ Състави тренировката.", "First ✦ write the workout."));
                return;
            }
            // the AI's workout runs as a map: block by block, strength from 0, the card says each exercise
            Workout w = AiWorkout.toWorkout(freePlan, AutoSession.getInput());
            AutoSession.close();
            String why = MapRunner.arm(a, w);
            if (why != null) {
                toast(c, why);
            } else {
                MapRunner.go();
            }
            return;
        }
        if (AutoSession.getPlan() == null) {
            AutoSession.buildPlan();
        }
        AutoSession.startDirect(a != null ? a : c);
        liveChat = false;
        rebuild();
    }

    static final class Quick implements View.OnClickListener {
        final String text;
        final boolean live;

        Quick(String text, boolean live) {
            this.text = text;
            this.live = live;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            send(v.getContext(), text, live, false);
        }
    }

    static final class SendClick implements View.OnClickListener {
        final EditText f;
        final boolean live;

        SendClick(EditText f, boolean live) {
            this.f = f;
            this.live = live;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            fire(f, live);
        }
    }

    static final class SendKey implements TextView.OnEditorActionListener {
        final EditText f;
        final boolean live;

        SendKey(EditText f, boolean live) {
            this.f = f;
            this.live = live;
        }

        @Override
        public boolean onEditorAction(TextView v, int id, KeyEvent e) {
            if (id == EditorInfo.IME_ACTION_SEND || id == EditorInfo.IME_ACTION_DONE
                    || (e != null && e.getKeyCode() == KeyEvent.KEYCODE_ENTER && e.getAction() == KeyEvent.ACTION_DOWN)) {
                fire(f, live);
                return true;
            }
            return false;
        }
    }

    private static void fire(EditText f, boolean live) {
        String t = f.getText() != null ? f.getText().toString() : "";
        try {
            InputMethodManager im = (InputMethodManager) f.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
            if (im != null) {
                im.hideSoftInputFromWindow(f.getWindowToken(), 0);
            }
        } catch (Throwable ignored) {
        }
        if (!live && view == INTAKE) {
            draft = t;                                        // the intake keeps it for ✦ Нагласи
            return;
        }
        send(f.getContext(), t, live, false);
    }

    /** 🎤: the tablet's own speech input; the words go to the chat as a message (on the intake: into the line). */
    static final class Mic implements View.OnClickListener, VoiceInput.Result {
        final boolean live;
        Context c;

        Mic(boolean live) {
            this.live = live;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            c = v.getContext();
            VoiceInput.listen(AiSession.activityOf(v), this);
        }

        @Override
        public void onText(String text) {
            if (!live && view == INTAKE) {
                draft = (draft != null && draft.trim().length() > 0 ? draft.trim() + ", " : "") + text;
                rebuild();
                return;
            }
            send(c, text, live, false);
        }
    }

    static final class Ask implements Runnable {
        final Context c;
        final String fields;
        final int my;
        final boolean live;
        final String text;
        final boolean wantPlan;

        Ask(Context c, String fields, int my, boolean live, String text, boolean wantPlan) {
            this.c = c;
            this.fields = fields;
            this.my = my;
            this.live = live;
            this.text = text;
            this.wantPlan = wantPlan;
        }

        @Override
        public void run() {
            AiCoach.Reply r = null;
            try {
                if (live) {
                    // the cheapest model reads commands; only what is none goes to the coach
                    String cr = com.isaigu.gymapp.widget.XemsLicenseClient.postBrief(c,
                            "\"kind\":\"command\",\"text\":" + AiBrief.q(text));
                    AiVoiceCmd.Result vc = AiVoiceCmd.parseServer(cr);
                    if (!vc.isEmpty() && !vc.coach) {
                        MAIN.post(new Commands(vc, text, my));
                        return;
                    }
                }
                String resp = com.isaigu.gymapp.widget.XemsLicenseClient.postBrief(c, fields);
                r = AiCoach.parse(resp);
                if (r != null && wantPlan) {
                    AiWorkout.Plan p = AiWorkout.parse(resp);
                    if (p != null) {
                        MAIN.post(new NewPlan(p));
                    }
                }
                if (r == null) {
                    WearableBleDiagLog.log("ai-train", "no reply: " + (resp.length() > 160 ? resp.substring(0, 160) : resp));
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("ai-train", "offline: " + t);
            }
            MAIN.post(new Answered(r, my, live, text));
        }
    }

    static final class Commands implements Runnable {
        final AiVoiceCmd.Result vc;
        final String text;
        final int my;

        Commands(AiVoiceCmd.Result vc, String text, int my) {
            this.vc = vc;
            this.text = text;
            this.my = my;
        }

        @Override
        public void run() {
            if (my != seq) {
                return;
            }
            busy = false;
            try {
                commandsDone(vc, text);
            } catch (Throwable t) {
                WearableBleDiagLog.log("ai-train", "commands: " + t);
            }
        }
    }

    static final class NewPlan implements Runnable {
        final AiWorkout.Plan p;

        NewPlan(AiWorkout.Plan p) {
            this.p = p;
        }

        @Override
        public void run() {
            freePlan = p;                                     // shown with the reply that follows it
        }
    }

    static final class Answered implements Runnable {
        final AiCoach.Reply r;
        final int my;
        final boolean live;
        final String text;

        Answered(AiCoach.Reply r, int my, boolean live, String text) {
            this.r = r;
            this.my = my;
            this.live = live;
            this.text = text;
        }

        @Override
        public void run() {
            try {
                onAnswer(r, my, live, text);
            } catch (Throwable t) {
                WearableBleDiagLog.log("ai-train", "apply: " + t);
            }
        }
    }
}
