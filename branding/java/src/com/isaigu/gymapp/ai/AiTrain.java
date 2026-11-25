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
    static int view = INTAKE;
    static boolean busy;
    static boolean healthOpen;
    static String draft = "";
    static String lastChanges = "";
    static String[] pending;
    private static int seq;
    /** "Нова от AI" (owner, 1.1.538): the AI writes its own workout, no template; its exercises are described only. */
    static boolean free;
    static AiWorkout.Plan freePlan;
    /** The intake's line (its words go with ✦ Нагласи even when not sent with the keyboard). */
    static EditText intakeField;

    // ================================================================ open / close

    /** The training screen's activity (the board's views have another context: activityOf(view) found none). */
    private static java.lang.ref.WeakReference<Activity> host;

    /** The activity for a view of the AI's bar / chat / sheet: its own, else the training screen's. */
    static Activity activity(View v) {
        Activity a = AiSession.activityOf(v);
        if (a == null && host != null) {
            a = host.get();
        }
        return a;
    }

    /** The AI tile: an AI training on the training screen. */
    public static void open(Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        host = new java.lang.ref.WeakReference<Activity>(a);
        if (MapRunner.isAi()) {
            AiChatDrawer.open(a);                      // the AI's own workout runs: the tile opens its chat
            return;
        }
        AutoSession.Stage st = AutoSession.getStage();
        if (st != AutoSession.Stage.IDLE) {
            if (AutoSession.aiMode) {
                if (AutoSession.getStage() == AutoSession.Stage.RUNNING) {
                    AiChatDrawer.open(a);                  // during the session the tile opens the chat
                } else {
                    AiSetupSheet.open(a);                  // the preparation again
                }
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
        AiWizard.reset();
        WakeListener.start(a);                           // "Тренер, …" — hands-free (owner, 1.1.540)
        view = INTAKE;
        free = false;
        freePlan = null;
        busy = false;
        healthOpen = false;
        draft = "";
        lastChanges = "";
        pending = null;
        seq++;
        AutoSession.buildPlan();                       // the plan is there at once (the algorithm)
        AiSetupSheet.open(a);                          // the preparation: one screen of its own, gone at ▶ Старт
        if (!AutoSession.isGuest()) {
            retuneNow(a);                              // a known client: the AI tunes it while the trainer looks
        }
    }

    /**
     * A spoken command after "тренер" (WakeListener): before the start "старт" starts and anything else goes to the
     * chat; during the session the tablet reads the command itself, only what is none goes to the AI. True = taken.
     */
    /** What the last spoken command did, for the voice answer ("" = done, nothing to say; null = not understood). */
    static String lastSpoken;

    /** The voice state changed ("🎙 Слушам"): the board shows it. */
    static void voiceState() {
        if (AutoSession.aiMode) {
            rebuild();
        }
    }

    static String voice(Context c, String cmd) {
        return voice(c, cmd, false);
    }

    /** followUp: heard in the window after the tablet's answer, without "тренер" — stricter before the AI. */
    static String voice(Context c, String cmd, boolean followUp) {
        voiceFollowUp = followUp;
        try {
            return voiceAct(c, cmd);
        } finally {
            voiceFollowUp = false;
        }
    }

    private static boolean voiceFollowUp;

    /** null = not taken / not understood; "" = taken (the AI answers in the chat); else what to say back. */
    private static String voiceAct(Context c, String cmd) {
        lastSpoken = null;
        if (!(AutoSession.aiMode || MapRunner.isAi()) || c == null || cmd == null || cmd.trim().length() == 0) {
            return null;
        }
        boolean running = live();
        AiVoiceCmd.Result vc = AiVoiceCmd.parse(cmd);
        if (!running) {
            if (vc.actions.contains("resume") && vc.commands.isEmpty()) {
                if (MapRunner.isWaiting()) {
                    MapRunner.go();
                    return AiText.t("Старт", "Start");
                }
                start(c, AiSession.activityOf(AutoSession.getPanelRoot()));
                return AiText.t("Старт", "Start");
            }
            if (vc.actions.contains("stop")) {
                close();
                return AiText.t("Затворено", "Closed");
            }
            if (!AiVoiceGate.pass(cmd, voiceFollowUp, false, AiVoiceCmd.isQuestion(cmd))) {
                return "";                             // noise / filler / a repeat: no AI call
            }
            voiceAsk = true;                           // its answer is spoken (WakeListener.answer)
            say(c, cmd, true);                         // before the start: the words go to the AI's plan
            return "";
        }
        if (AiLive.redFlag(cmd)) {
            // 1.1.565: a red flag — the tablet stops at once (no waiting for the model); the coach thinks and advises
            AiVoiceCmd.Result p = new AiVoiceCmd.Result();
            p.actions.add("pause");
            applyCommands(p);
            AiCoach.userSpoke(cmd);
            voiceAsk = true;
            send(c, cmd, true, true, true);
            return AiText.t("Спирам. Момент…", "Stopping. One moment…");
        }
        if (AiLive.asking()) {
            boolean[] no = new boolean[1];
            AiVoiceCmd.Result yes = AiLive.answer(cmd, no);
            if (yes != null || no[0]) {
                AiCoach.userSpoke(cmd);
                if (yes != null) {
                    commandsDone(yes, cmd, true);
                    return lastSpoken != null && lastSpoken.length() > 0 ? lastSpoken : AiText.t("Готово.", "Done.");
                }
                String keep = AiText.t("Добре, оставям го така.", "Fine, I leave it as it is.");
                AiCoach.Reply r = new AiCoach.Reply();
                r.reply = keep;
                AiCoach.aiSaid(r);
                rebuild();
                return keep;
            }
        }
        boolean answer = AiCoach.awaitingAnswer();        // read before the bubble below is added
        if ((vc.isEmpty() || (answer && !safety(vc))) && !AiVoiceGate.pass(cmd, voiceFollowUp, answer, AiVoiceCmd.isQuestion(cmd))) {
            return "";                                    // noise / filler / a repeat: no AI call, no bubble
        }
        AiCoach.userSpoke(cmd);                          // a 🎙 bubble in the chat, what was done under it
        if (answer && !safety(vc)) {
            voiceAsk = true;                              // the answer to the AI's own question: the coach, with the chat
            send(c, cmd, true, true, true);
            return "";
        }
        if (!vc.isEmpty()) {
            commandsDone(vc, cmd);
            return lastSpoken != null && lastSpoken.length() > 0 ? lastSpoken : null;
        }
        voiceAsk = true;
        send(c, cmd, true, true);
        return "";
    }

    /** The AI's session runs now: a ready program on Auto's engine, or the AI's own workout on the map engine. */
    static boolean live() {
        return (AutoSession.aiMode && AutoSession.getStage() == AutoSession.Stage.RUNNING && AutoSession.getEngine() != null)
                || (MapRunner.isAi() && !MapRunner.isWaiting());
    }

    /** The AI's own workout ended: its chat and listening go with it. */
    static void mapEnded() {
        AiChatDrawer.close();
        AiCoachBar.forget();
        if (!AutoSession.aiMode) {
            WakeListener.stop();
        }
    }

    /** The last question came by voice: the AI's answer is spoken back (the tablet's own voice), then it listens. */
    static boolean voiceAsk;

    /** What the tablet says aloud for an answer: the reply, the question with its options, else what was done. */
    static String spoken(AiCoach.Reply r, String done) {
        StringBuilder b = new StringBuilder();
        if (r != null && r.reply != null && r.reply.trim().length() > 0) {
            b.append(r.reply.trim());
        } else if (done != null && done.length() > 0) {
            b.append(done);
        }
        if (r != null && r.hasQuestion()) {
            b.append(b.length() > 0 ? " " : "").append(r.question.trim());
            if (!r.question.trim().endsWith("?")) {
                b.append('?');
            }
            for (int i = 0; i < r.options.size(); i++) {
                b.append(i == 0 ? " " : i == r.options.size() - 1 ? AiText.t(" или ", " or ") : ", ").append(r.options.get(i));
            }
        }
        return b.toString();
    }

    private static void speakBack(String text) {
        if (voiceAsk) {
            voiceAsk = false;
            String said = AiSpeak.clean(text);
            WakeListener.answer(said.length() > 0 ? said : AiText.t("Готово.", "Done."));
        }
    }

    /** ✕ before the start: the AI training goes, the screen is as before. */
    static void close() {
        MAIN.removeCallbacks(RETUNE);
        AiSetupSheet.close();
        AiChatDrawer.close();
        AutoSession.close();
    }

    private static View root(Activity a) {
        View r = AutoSession.getPanelRoot();
        return r != null ? r : a.getWindow().getDecorView();
    }

    /** What shows the AI now again: the preparation window, else the coach bar and the side chat. */
    static void rebuild() {
        if (AiSetupSheet.isOpen()) {
            AiSetupSheet.refresh();
            return;
        }
        AiCoachBar.refresh();
        AiChatDrawer.refresh();
    }

    // ================================================================ the board's content

    /** AutoBoard: the AI training before the start (intake or summary). */
    static void build(Context c, LinearLayout content) {
        AiWizard.build(c, content);                  // the wizard, one step per screen (1.1.542)
    }

    /** The first (one-screen) layout — replaced by {@link AiWizard}; kept until the wizard has been on the tablets. */
    static void buildOld(Context c, LinearLayout content) {
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
        // 🎙 "Тренер, …": the tablet knows the trainer's word from 3 recordings (+ "тренировка" once)
        boolean taught = WakeListener.enrolled(c);
        TextView teach = XemsUi.button(c, taught ? "🎙  " + AiText.t("„Тренер“ ✓ · запиши пак", "“Trainer” ✓ · record again")
                : "🎙  " + AiText.t("Научи „Тренер“ (30 s)", "Teach “Trainer” (30 s)"), taught ? XemsUi.GHOST : XemsUi.SECONDARY);
        teach.setOnClickListener(new Act(A_TEACH));
        col3.addView(teach, XemsUi.matchWrap(c, 6));
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

    // ================================================================ chat parts

    static void chat(Context c, LinearLayout col, boolean live) {
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
    static View inputRow(Context c, boolean live) {
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

    static View line(Context c, String label, String value) {
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
        send(c, text, live, silent, live && !silent && AiCoach.awaitingAnswer());
    }

    /** "пауза", "стоп", "продължи" stay instant even as an answer to a question. */
    static boolean safety(AiVoiceCmd.Result vc) {
        return vc.commands.isEmpty() && (vc.actions.contains("pause") || vc.actions.contains("stop")
                || vc.actions.contains("resume"));
    }

    /** answer: the words answer the AI's question — no command reader, straight to the coach with the chat. */
    static void send(Context c, String text, boolean live, boolean silent, boolean answer) {
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
        if (live && AiLive.asking()) {
            boolean[] no = new boolean[1];
            AiVoiceCmd.Result yes = AiLive.answer(t, no);
            if (yes != null) {
                commandsDone(yes, t, true);
                return;
            }
            if (no[0]) {
                AiCoach.Reply r = new AiCoach.Reply();
                r.reply = AiText.t("Добре, оставям го така.", "Fine, I leave it as it is.");
                AiCoach.aiSaid(r);
                rebuild();
                return;
            }
        }
        if (live) {
            // a spoken / typed command: read on the tablet first — instant, no network (owner, 1.1.539)
            AiVoiceCmd.Result vc = AiVoiceCmd.parse(t);
            if (!vc.isEmpty() && (!answer || safety(vc))) {
                commandsDone(vc, t);
                return;
            }
        }
        busy = true;
        if (voiceAsk) {
            Earcon.thinking();                            // heard: the AI is on it (1.1.565)
        }
        rebuild();
        String fields = AiCoach.requestFieldsAuto(AutoSession.getInput(), t, planJson(), live ? runJson() : null, live);
        boolean wantPlan = free && !live;
        if (wantPlan) {
            fields = fields.replaceFirst("\"kind\":\"coach\"", "\"kind\":\"workout\"");
        }
        new Thread(new Ask(c.getApplicationContext(), fields, ++seq, live, t, wantPlan, !answer), "xems-ai-train").start();
    }

    /** The commands → the session now; the chat says what was done. */
    static void commandsDone(AiVoiceCmd.Result vc, String text) {
        commandsDone(vc, text, false);
    }

    /**
     * confirmed: the trainer said "да" to a warning — no check again. Else (1.1.564) a raise of the frequency, depth,
     * impulse, a shorter pause or the 2nd impulse is checked: refused with the reason, or warned and asked.
     */
    static void commandsDone(AiVoiceCmd.Result vc, String text, boolean confirmed) {
        String note = "";
        if (!confirmed && AiTrain.live()) {
            AiLive.Verdict v = AiLive.check(vc);
            note = v.said.toString().trim();
            if (!v.ask.isEmpty()) {
                AiLive.ask(v.ask);
            }
            vc = v.now;
        }
        String done = vc.isEmpty() ? "" : applyCommands(vc);
        if (note.length() > 0) {
            String spoken = (done.length() > 0 ? AiSpeak.natural(done) + ". " : "") + note;
            lastSpoken = spoken;
            AiCoach.Reply r = new AiCoach.Reply();
            r.reply = (done.length() > 0 ? "✓ " + done + " · " : "") + note;
            AiCoach.aiSaid(r);
            lastChanges = done;
            rebuild();
            speakBack(spoken);
            WearableBleDiagLog.log("ai-train", "command \"" + text + "\" → " + done + " | " + note);
            return;
        }
        lastSpoken = AiSpeak.natural(done);          // said aloud as sentences, not the chat's short form
        AiCoach.Reply r = new AiCoach.Reply();
        r.reply = done.length() > 0 ? "✓ " + done : AiText.t("Не можах да го направя сега.", "Could not do it now.");
        AiCoach.aiSaid(r);
        lastChanges = done;
        rebuild();
        speakBack(done.length() > 0 ? AiSpeak.natural(done) : r.reply);
        WearableBleDiagLog.log("ai-train", "command \"" + text + "\" → " + done);
    }

    /** Each command with the relative step (AiVoiceCmd.step): muscles, strength, impulse, pause, Hz, rests, actions. */
    static String applyCommands(AiVoiceCmd.Result vc) {
        if (MapRunner.isAi()) {
            return applyMap(vc);
        }
        AutoEngine e = AutoSession.getEngine();
        StringBuilder b = new StringBuilder();
        for (AiVoiceCmd.Cmd c : vc.commands) {
            int sign = "up".equals(c.dir) || "on".equals(c.dir) ? 1 : -1;
            if (c.isMuscle()) {
                int v = AutoSession.channelStep(c.channels(), c.dir, c.small, c.value);   // the group together
                if (v >= 0) {
                    b.append(AiVoiceCmd.name(c.target)).append(' ').append("off".equals(c.dir) ? AiText.t("изкл.", "off") : v + " %")
                            .append(" · ");
                }
            } else if ("strength".equals(c.target)) {
                int v = AutoSession.strengthStep(sign, c.small, "set".equals(c.dir) ? -1 : c.value,
                        "set".equals(c.dir) ? c.value : -1);
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
            } else if (e != null && "width".equals(c.target)) {
                e.setTunePw(e.getTunePwPct() + sign * (c.small ? 5 : 10));
                b.append(AiText.t("дълбочина ", "depth ")).append(signed(e.getTunePwPct())).append(" % · ");
            } else if ("second".equals(c.target)) {
                b.append(AiText.t("втори импулс ", "second impulse ")).append(AutoSession.secondStep(sign, c.small)).append(" % · ");
            } else if (e != null && "rest".equals(c.target)) {
                e.setTune(e.getTuneOn(), e.getTuneOff(), e.getTuneHzPct(), e.getTuneRest() + sign * (c.small ? 0.08 : 0.15));
                b.append(AiText.t("почивки ", "rests ")).append(signed((int) Math.round((e.getTuneRest() - 1) * 100)))
                        .append(" % · ");
            }
        }
        for (String a : vc.actions) {
            String common = commonAction(a, vc);
            b.append(common != null ? common : action(e, "stop".equals(a) ? "to_recovery" : a));
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
            speakBack(AiText.t("Няма връзка с AI.", "No AI connection."));
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
        speakBack(r.reply != null && r.reply.trim().length() > 0 ? spoken(r, "") : spoken(r, AiSpeak.natural(done)));
        WearableBleDiagLog.log("ai-train", (live ? "live " : "plan ") + ch + " " + done);
    }

    /** The coach's commands and impulse moves on the running Auto session. */
    static String liveApply(AiCoach.Reply r) {
        // the coach's own commands first (a channel, the impulse): the same path as a spoken command
        String cmds = r.cmds != null && !r.cmds.commands.isEmpty() ? applyCommands(r.cmds) : "";
        String rest = liveTune(r);
        return cmds.length() == 0 ? rest : rest.length() == 0 ? cmds : cmds + " · " + rest;
    }

    private static String liveTune(AiCoach.Reply r) {
        AutoEngine e = AutoSession.getEngine();
        if (MapRunner.isAi()) {
            StringBuilder m = new StringBuilder();
            for (String a : r.actions) {
                m.append(mapAction(a));
            }
            if (r.onDelta != null || r.offDelta != null || r.hzPct != null || r.restPct != null) {
                // the coach's impulse moves on the AI's own workout too (rests = the pause between impulses here)
                int off = r.offDelta != null ? r.offDelta : r.restPct != null ? (int) Math.round(r.restPct / 20.0) : MapRunner.tuneOff;
                MapRunner.tune(r.onDelta != null ? r.onDelta : MapRunner.tuneOn, off,
                        r.hzPct != null ? r.hzPct : MapRunner.tuneHzPct);
                m.append(AiText.t("импулс ", "impulse ")).append(signed(MapRunner.tuneOn)).append(" s, ")
                        .append(AiText.t("пауза ", "pause ")).append(signed(MapRunner.tuneOff)).append(" s, Hz ")
                        .append(signed(MapRunner.tuneHzPct)).append(" % · ");
            }
            if (r.endInMin != null && r.endInMin == 0) {
                m.append(mapAction("to_recovery"));
            }
            return trim(m);
        }
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

    /** The commands on the AI's own workout (MapRunner): strength, channels, pause, next, double impulse. */
    static String applyMap(AiVoiceCmd.Result vc) {
        StringBuilder b = new StringBuilder();
        for (AiVoiceCmd.Cmd c : vc.commands) {
            int sign = "up".equals(c.dir) || "on".equals(c.dir) ? 1 : -1;
            if (c.isMuscle()) {
                int[] chs = c.channels();
                int now = MapRunner.channelLevel(chs[0]);
                int to = "set".equals(c.dir) ? c.value : "off".equals(c.dir) ? 0
                        : now + sign * (c.value > 0 ? c.value : AiVoiceCmd.step(Math.max(now, 1), c.small));
                int v = MapRunner.setChannels(chs, to);
                b.append(AiVoiceCmd.name(c.target)).append(' ').append("off".equals(c.dir) ? AiText.t("изкл.", "off") : v + " %")
                        .append(" · ");
            } else if ("strength".equals(c.target)) {
                int now = MapRunner.strength();
                int to = "set".equals(c.dir) ? c.value : now + sign * (c.value > 0 ? c.value
                        : AiVoiceCmd.step(Math.max(now, 1), c.small));
                b.append(AiText.t("сила ", "strength ")).append(MapRunner.setStrength(to)).append(" · ");
            } else if ("impulse".equals(c.target)) {
                MapRunner.tune(MapRunner.tuneOn + sign, MapRunner.tuneOff, MapRunner.tuneHzPct);
                b.append(AiText.t("импулс ", "impulse ")).append(signed(MapRunner.tuneOn)).append(" s · ");
            } else if ("pause".equals(c.target) || "rest".equals(c.target)) {
                MapRunner.tune(MapRunner.tuneOn, MapRunner.tuneOff + sign, MapRunner.tuneHzPct);
                b.append(AiText.t("пауза ", "pause ")).append(signed(MapRunner.tuneOff)).append(" s · ");
            } else if ("frequency".equals(c.target)) {
                MapRunner.tune(MapRunner.tuneOn, MapRunner.tuneOff, MapRunner.tuneHzPct + sign * (c.small ? 5 : 10));
                b.append("Hz ").append(signed(MapRunner.tuneHzPct)).append(" % · ");
            } else if ("width".equals(c.target)) {
                MapRunner.tunePwPct = Math.max(-30, Math.min(30, MapRunner.tunePwPct + sign * (c.small ? 5 : 10)));
                MapRunner.tune(MapRunner.tuneOn, MapRunner.tuneOff, MapRunner.tuneHzPct);
                b.append(AiText.t("дълбочина ", "depth ")).append(signed(MapRunner.tunePwPct)).append(" % · ");
            } else if ("second".equals(c.target)) {
                MapRunner.secondScale = Math.max(0.3, Math.min(1.5, MapRunner.secondScale + sign * (c.small ? 0.05 : 0.1)));
                MapRunner.tune(MapRunner.tuneOn, MapRunner.tuneOff, MapRunner.tuneHzPct);
                b.append(AiText.t("втори импулс ", "second impulse ")).append(Math.round(MapRunner.secondScale * 100)).append(" % · ");
            }
        }
        for (String a : vc.actions) {
            String common = commonAction(a, vc);
            b.append(common != null ? common : mapAction("stop".equals(a) ? "to_recovery" : a));
        }
        return trim(b);
    }

    /**
     * What both engines share (1.1.551): the music, the end of the active part, and the answers the tablet knows —
     * time left, the pulse, the strength — said at once, no AI. Null = not one of these.
     */
    static String commonAction(String a, AiVoiceCmd.Result vc) {
        boolean map = MapRunner.isAi();
        if ("music_toggle".equals(a)) {
            com.isaigu.gymapp.dialog.MusicPlayerHelper.togglePlayPause();
            return AiText.t("музика · ", "music · ");
        }
        if ("music_next".equals(a) || "music_prev".equals(a)) {
            com.isaigu.gymapp.dialog.MusicPlayerHelper.skipTrack("music_next".equals(a) ? 1 : -1);
            return "music_next".equals(a) ? AiText.t("следваща песен · ", "next song · ")
                    : AiText.t("предишна песен · ", "previous song · ");
        }
        if ("end_in".equals(a)) {
            int n = Math.max(0, vc != null ? vc.minutes : 0);
            if (map) {
                MapRunner.endAtMs = System.currentTimeMillis() + n * 60000L;
            } else if (!AutoSession.endIn(n)) {
                return "";
            }
            return AiText.t("край след ", "the end in ") + n + AiText.t(" мин · ", " min · ");
        }
        if ("ask_time".equals(a)) {
            int m = map ? MapRunner.minutesLeft() : AutoSession.minutesLeft();
            return m < 0 ? "" : AiText.t("остават ", "left ") + m + AiText.t(" мин · ", " min · ");
        }
        if ("ask_hr".equals(a)) {
            return AiSession.isBandStreaming() && AiSession.getLastBandHr() > 0
                    ? AiText.t("пулс ", "pulse ") + AiSession.getLastBandHr() + " · "
                    : AiText.t("няма пулс · ", "no pulse · ");
        }
        if ("ask_mode".equals(a)) {
            return AiLive.describe() + " · ";
        }
        if ("ask_strength".equals(a)) {
            int s = map ? MapRunner.strength() : AutoSession.leaderLevel();
            return s < 0 ? "" : AiText.t("сила ", "strength ") + s + " · ";
        }
        return null;
    }

    private static String mapAction(String a) {
        if ("softer".equals(a)) {
            int s = MapRunner.strength();
            return AiText.t("сила ", "strength ") + MapRunner.setStrength(s - Math.max(1, s / 10)) + " · ";
        }
        if ("stronger".equals(a)) {
            int s = MapRunner.strength();
            return AiText.t("сила ", "strength ") + MapRunner.setStrength(s + Math.max(1, s / 20)) + " · ";
        }
        if ("pause".equals(a)) {
            return MapRunner.isPaused() ? AiText.t("на пауза е · ", "it is paused · ")
                    : MapRunner.pause(true) ? AiText.t("пауза · ", "pause · ") : "";
        }
        if ("resume".equals(a) || "continue".equals(a)) {
            if (MapRunner.isWaiting()) {
                MapRunner.go();
                return AiText.t("старт · ", "start · ");
            }
            return !MapRunner.isPaused() ? AiText.t("тече · ", "it is running · ")
                    : MapRunner.pause(false) ? AiText.t("продължаваме · ", "going on · ") : "";
        }
        if ("skip".equals(a)) {
            return MapRunner.skip() ? AiText.t("следващото · ", "the next one · ") : "";
        }
        if ("double_on".equals(a) || "double_off".equals(a)) {
            MapRunner.noDouble = "double_off".equals(a);
            return MapRunner.noDouble ? AiText.t("без двоен импулс · ", "no double impulse · ")
                    : AiText.t("двоен импулс · ", "double impulse · ");
        }
        if ("to_recovery".equals(a) || "to_cooldown".equals(a)) {
            MapRunner.stop();
            return AiText.t("край на тренировката · ", "the workout ends · ");
        }
        return "";
    }

    private static String action(AutoEngine e, String a) {
        if (MapRunner.isAi()) {
            return mapAction(a);
        }
        if (e == null) {
            return "";
        }
        if ("softer".equals(a)) {
            AutoSession.reduceAll();                       // a small step down; what is said is the level it is now
            return AiText.t("сила ", "strength ") + AutoSession.leaderLevel() + " · ";
        }
        if ("stronger".equals(a)) {
            AutoSession.raiseAll();
            return AiText.t("сила ", "strength ") + AutoSession.leaderLevel() + " · ";
        }
        // words, not symbols: the answer is spoken aloud (tools/app-sim: "▶" was read out, 1.1.546)
        if ("pause".equals(a)) {
            AutoEngine.State st = e.getState();
            if (st == AutoEngine.State.RUN || st == AutoEngine.State.COUNTDOWN) {
                AutoSession.togglePause();
                return AiText.t("пауза · ", "pause · ");
            }
            return st == AutoEngine.State.REST ? AiText.t("почивка е — кажи „продължи“ · ", "it is a rest — say “go on” · ")
                    : AiText.t("на пауза е · ", "it is paused · ");
        }
        if ("resume".equals(a) || "continue".equals(a)) {
            return AutoSession.startNext() ? AiText.t("продължаваме · ", "going on · ")
                    : AiText.t("тече · ", "it is running · ");
        }
        if ("skip".equals(a) && AutoSession.canNext()) {
            AutoSession.nextFromPanel();
            return AiText.t("следващото упражнение · ", "the next exercise · ");
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

    /** The live state for the coach (1.1.564: the impulse, the heart, how long it holds, the engine's decisions). */
    static String runJson() {
        if (AutoSession.getEngine() == null && !MapRunner.isAi()) {
            return null;
        }
        return AiLive.json();
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
    static final int A_TUNE = 0, A_CLOSE = 1, A_BACK = 2, A_START = 3, A_SAVE = 4, A_LIVE_CLOSE = 5, A_MAKE = 6, A_TEACH = 7;

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
                    free = i == 1;                    // chosen on step 2; the AI writes it at ✦ Нагласи (tune)
                    freePlan = null;
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
            changed();
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
            changed();
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
            changed();
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
                    start(c, AiTrain.activity(v));
                    break;
                case A_TEACH:
                    WakeSetup.open(AiTrain.activity(v));
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
                                rebuild();
                    break;
            }
        }
    }

    // ================================================================ one screen: the plan now, the AI after it

    /** The delay after the last change before the AI is asked (a few taps in a row = one question). */
    static final long RETUNE_MS = 2500;
    private static Context retuneCtx;
    private static final Runnable RETUNE = new Retune();

    /** A number set on the keypad (age / height / weight), within the limits. */
    static void setNum(int which, int v) {
        Input in = AutoSession.getInput();
        if (which == S_AGE) {
            in.age = Math.max(14, Math.min(90, v));
        } else if (which == S_HEIGHT) {
            in.heightCm = Math.max(130, Math.min(220, v));
        } else {
            in.weightKg = Math.max(35, Math.min(200, v));
        }
        changed();
    }

    /** Any choice changed: the plan follows at once (the algorithm), the AI re-tunes it a moment later. */
    static void changed() {
        Input in = AutoSession.getInput();
        if (!free && (in.programId == null || AutoCatalog.get(in.programId) == null)) {
            in.programId = AutoCatalog.recommended(in.goal, in.kind, in).id;
        }
        AutoSession.syncLeaderInput();
        if (!free) {
            AutoSession.buildPlan();
        } else {
            freePlan = null;
        }
        rebuild();
        View r = AutoSession.getPanelRoot();
        retuneLater(r != null ? r.getContext() : retuneCtx);
    }

    static void retuneLater(Context c) {
        if (c == null) {
            return;
        }
        retuneCtx = c.getApplicationContext();
        MAIN.removeCallbacks(RETUNE);
        MAIN.postDelayed(RETUNE, RETUNE_MS);
    }

    /** Ask the AI now for the current choices (a newer question drops the older answer: seq). */
    static void retuneNow(Context c) {
        MAIN.removeCallbacks(RETUNE);
        if (c == null || !AiSetupSheet.isOpen()) {
            return;
        }
        retuneCtx = c.getApplicationContext();
        busy = false;
        AutoSession.syncLeaderInput();
        if (!free) {
            AutoSession.buildPlan();
        }
        send(c, AiText.t("Нагласи тренировката за този клиент и дай препоръките.",
                "Tune the session for this client and give the advice."), false, true);
    }

    static final class Retune implements Runnable {
        @Override
        public void run() {
            retuneNow(retuneCtx);
        }
    }

    /** The trainer's own words (typed or 🎤) before the start: a message to the AI now. */
    static void say(Context c, String text, boolean spoken) {
        if (text == null || text.trim().length() == 0) {
            return;
        }
        MAIN.removeCallbacks(RETUNE);
        busy = false;
        if (spoken) {
            AiCoach.userSpoke(text.trim());
        } else {
            AiCoach.userSaid(text.trim());
        }
        send(c, text.trim(), false, true);
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
            if (freePlan == null || busy) {
                toast(c, AiText.t("Първо ✦ Състави тренировката.", "First ✦ write the workout."));
                return;
            }
            // the AI's workout runs as a map: block by block, strength from 0, the card says each exercise
            Workout w = AiWorkout.toWorkout(freePlan, AutoSession.getInput());
            AiSetupSheet.close();
            AutoSession.close();
            MapRunner.ai = true;                       // the AI tab: its board, bar, voice and chat (1.1.547)
            AiAnnounce.reset();
            AiLive.reset();
            MapRunner.noDouble = false;
            String why = MapRunner.arm(a, w);
            if (why != null) {
                MapRunner.ai = false;
                toast(c, why);
            } else {
                MapRunner.go();
                AiCoachBar.started();
                if (!WakeListener.isOn()) {
                    WakeListener.start(a != null ? a : activity(null));   // AutoSession.close() stopped it
                }
                AiCoachBar.refresh();
            }
            return;
        }
        MAIN.removeCallbacks(RETUNE);
        seq++;                                         // an answer still on its way no longer rewrites the plan
        busy = false;
        if (AutoSession.getPlan() == null) {
            AutoSession.buildPlan();
        }
        AiSetupSheet.close();                          // nothing of the preparation stays on the screen
        AiCoachBar.started();
        AutoSession.startDirect(a != null ? a : c);
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
        if (!live) {
            f.setText("");
            say(f.getContext(), t, false);                  // before the start: straight to the AI's plan
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
            VoiceInput.listen(AiTrain.activity(v), this);
        }

        @Override
        public void onText(String text) {
            if (!live) {
                say(c, text, true);
                return;
            }
            AiCoach.userSpoke(text);
            send(c, text, live, true);
        }
    }

    static final class Ask implements Runnable {
        final Context c;
        final String fields;
        final int my;
        final boolean live;
        final String text;
        final boolean wantPlan;

        /** false: the words answer the AI's question — straight to the coach, no command reader. */
        final boolean reader;

        Ask(Context c, String fields, int my, boolean live, String text, boolean wantPlan, boolean reader) {
            this.reader = reader;
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
                // one request (1.1.558): the server's cheap reader first, the coach in the same request only if it
                // is not a command — two round trips before (a question goes straight to the coach)
                boolean read = live && reader && !AiVoiceCmd.isQuestion(text) && AiVoiceCmd.mayBeCommand(text);
                String resp = com.isaigu.gymapp.widget.XemsLicenseClient.postBrief(c,
                        read ? fields + ",\"reader\":true" : fields);
                if (read && resp != null && resp.contains("\"command\":{")) {
                    AiVoiceCmd.Result vc = AiVoiceCmd.parseServer(resp);
                    if (!vc.isEmpty() && !vc.coach) {
                        MAIN.post(new Commands(vc, text, my));
                        return;
                    }
                }
                AiCoach.liveTurn = live;
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
