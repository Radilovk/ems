package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiModel.Goal;
import com.isaigu.gymapp.ai.AiModel.Mode;
import com.isaigu.gymapp.ai.AiModel.SessionInput;
import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;
import java.util.Locale;

/**
 * The AI coach on screen (owner, 1.1.535 — docs/xems-ai-coach.md).
 * <ul>
 * <li>{@link #intake}: the Smart Session's first step — sex, age, height, weight (BMI), EMS experience, goal,
 *     active / passive, health (Нямам / Имам → the chips). A client's comes filled in.</li>
 * <li>{@link #panel}: the dialogue beside the plan — the coach's replies, its question as buttons, one line to write
 *     (the keyboard's mic dictates), the advice, "✓ Запази в профила" for a client.</li>
 * <li>{@link #openLive}: the same dialogue over the running session (✦ Чат): its answers change the session now.</li>
 * </ul>
 * The network call runs off the main thread; without it the chat says so and the plan stays.
 */
public final class AiCoachUi {
    private AiCoachUi() {}

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static boolean busy;
    private static boolean healthOpen;
    private static String lastChanges = "";
    private static String[] pending;
    private static int seq;
    /** The panel shown now (plan step or the live dialog), rebuilt in place when an answer comes. */
    private static LinearLayout panelBox;
    private static boolean panelLive;
    private static Dialog liveDialog;

    /** A new Smart Session. */
    public static void reset() {
        busy = false;
        healthOpen = false;
        lastChanges = "";
        pending = null;
        seq++;
        closeLive();
    }

    // ================================================================ 1 · intake

    static void intake(Context a, LinearLayout col) {
        XemsUi.init(a);
        SessionInput in = AiSession.getInput();
        LinearLayout cols = XemsUi.horizontal(a);

        LinearLayout left = XemsUi.card(a);
        left.addView(XemsUi.segmented(a, new String[] {AiText.t("Мъж", "Male"), AiText.t("Жена", "Female")},
                in.sex == AiModel.Sex.MALE ? 0 : 1, new Pick(P_SEX)));
        LinearLayout nums = XemsUi.horizontal(a);
        nums.addView(labeled(a, AiText.t("Възраст", "Age"),
                XemsUi.stepper(a, "" + in.age, AiText.t("г.", "y"), 22, new Step(S_AGE)).view), XemsUi.weight(1, 0, a));
        nums.addView(labeled(a, AiText.t("Ръст", "Height"),
                XemsUi.stepper(a, in.heightCm > 0 ? "" + in.heightCm : "—", "cm", 22, new Step(S_HEIGHT)).view),
                XemsUi.weight(1, 10, a));
        nums.addView(labeled(a, AiText.t("Тегло", "Weight"),
                XemsUi.stepper(a, "" + Math.round(in.weightKg), "kg", 22, new Step(S_WEIGHT)).view), XemsUi.weight(1, 10, a));
        left.addView(nums, XemsUi.matchWrap(a, 12));
        double bmi = AiCoach.bmi(in);
        if (bmi > 0) {
            left.addView(XemsUi.text(a, AiText.t("ИТМ ", "BMI ") + String.format(Locale.ROOT, "%.1f", bmi) + " · "
                    + AiCoach.bmiClass(bmi), 14, bmi >= 30 ? XemsUi.AMBER : XemsUi.MUTED, true), XemsUi.matchWrap(a, 8));
        }
        left.addView(XemsUi.label(a, AiText.t("Опит с EMS", "EMS experience")), XemsUi.matchWrap(a, 12));
        left.addView(XemsUi.segmented(a, new String[] {AiText.t("Първи път", "First time"),
                AiText.t("Няколко пъти", "A few times"), AiText.t("Редовно", "Regularly")},
                Math.max(0, AiCoach.experienceOf(in)), new Pick(P_EXP)), XemsUi.matchWrap(a, 4));
        cols.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        LinearLayout right = XemsUi.card(a);
        right.addView(XemsUi.label(a, AiText.t("Цел", "Goal")));
        Goal[] goals = goalsFor(in);
        String[] gn = new String[goals.length];
        int gs = 0;
        for (int i = 0; i < goals.length; i++) {
            gn[i] = AiText.goal(goals[i]);
            if (goals[i] == in.goal) {
                gs = i;
            }
        }
        right.addView(XemsUi.segmented(a, gn, gs, new Pick(P_GOAL)), XemsUi.matchWrap(a, 4));
        boolean both = AiModel.isAllowed(in.goal, Mode.ACTIVE) && AiModel.isAllowed(in.goal, Mode.PASSIVE);
        if (both) {
            right.addView(XemsUi.segmented(a, new String[] {AiText.t("Активна · с движение", "Active · with movement"),
                    AiText.t("Пасивна · в покой", "Passive · at rest")}, in.mode == Mode.ACTIVE ? 0 : 1,
                    new Pick(P_MODE)), XemsUi.matchWrap(a, 10));
        }
        right.addView(XemsUi.label(a, AiText.t("Здраве", "Health")), XemsUi.matchWrap(a, 14));
        boolean any = AiCoach.anyHealth(in) || healthOpen;
        right.addView(XemsUi.segmented(a, new String[] {AiText.t("Нямам проблеми", "None"),
                AiText.t("Имам", "I have")}, any ? 1 : 0, new Pick(P_HEALTH)), XemsUi.matchWrap(a, 4));
        if (any) {
            AiUi.FlowRow flow = new AiUi.FlowRow(a);
            for (int i = 0; i < AiCoach.HEALTH.length; i++) {
                if (("postpartum".equals(AiCoach.HEALTH[i]) || "diastasis".equals(AiCoach.HEALTH[i])
                        || "menopause".equals(AiCoach.HEALTH[i])) && in.sex == AiModel.Sex.MALE) {
                    continue;
                }
                boolean on = AiCoach.healthOn(in, AiCoach.HEALTH[i]);
                TextView ch = XemsUi.chip(a, (on ? "✓ " : "") + AiCoach.HEALTH_BG[i], on, XemsUi.AMBER);
                ch.setOnClickListener(new Health(AiCoach.HEALTH[i]));
                flow.add(ch);
            }
            for (int i = 0; i < AiCoach.CONTRA.length; i++) {
                if ("pregnancy".equals(AiCoach.CONTRA[i]) && in.sex == AiModel.Sex.MALE) {
                    continue;
                }
                boolean on = AiCoach.healthOn(in, AiCoach.CONTRA[i]);
                TextView ch = XemsUi.chip(a, (on ? "⊘ " : "") + AiCoach.CONTRA_BG[i], on, XemsUi.DANGER);
                ch.setOnClickListener(new Health(AiCoach.CONTRA[i]));
                flow.add(ch);
            }
            right.addView(flow, XemsUi.matchWrap(a, 8));
            right.addView(XemsUi.text(a, AiText.t("Друго — напиши го на AI в следващата стъпка.",
                    "Anything else — tell the AI on the next step."), 12, XemsUi.MUTED, false), XemsUi.matchWrap(a, 6));
        }
        LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.25f);
        rp.leftMargin = XemsUi.dp(a, 14);
        cols.addView(right, rp);
        col.addView(cols, XemsUi.matchWrap(a, 0));
    }

    private static Goal[] goalsFor(SessionInput in) {
        if (in.sex == AiModel.Sex.MALE) {
            return new Goal[] {Goal.TONE, Goal.FAT, Goal.MASSAGE, Goal.DRAIN};
        }
        return Goal.values();
    }

    private static View labeled(Context a, String label, View v) {
        LinearLayout l = XemsUi.vertical(a);
        l.addView(XemsUi.label(a, label));
        l.addView(v, XemsUi.matchWrap(a, 4));
        return l;
    }

    // ================================================================ 2 · the dialogue beside the plan

    /** Plan step: the plan (left) and the coach (right), side by side (landscape). */
    static View split(Context a, View plan) {
        LinearLayout row = XemsUi.horizontal(a);
        row.addView(plan, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.1f));
        View p = panel(a, false);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        lp.leftMargin = XemsUi.dp(a, 16);
        row.addView(p, lp);
        if (AiCoach.chat().isEmpty() && !busy) {
            send(a, AiText.t("Начало: предложи план и съвети за днес.", "Start: suggest the plan and today's advice."),
                    false, true);
        }
        return row;
    }

    /** The coach's panel: replies, the question's buttons, the line to write, the advice, save to profile. */
    static View panel(Context a, boolean live) {
        XemsUi.init(a);
        LinearLayout box = XemsUi.card(a);
        panelBox = box;
        panelLive = live;
        fill(a, box, live);
        return box;
    }

    private static void fill(Context a, LinearLayout box, boolean live) {
        box.removeAllViews();
        LinearLayout head = XemsUi.horizontal(a);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(a, "✦ " + AiText.t("AI треньор", "AI coach"), 18, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (busy) {
            head.addView(XemsUi.text(a, AiText.t("пише…", "typing…"), 13, XemsUi.MUTED, true));
        }
        box.addView(head);

        ScrollView sc = new ScrollView(a);
        LinearLayout msgs = XemsUi.vertical(a);
        List<AiCoach.Turn> chat = AiCoach.chat();
        for (int i = Math.max(0, chat.size() - 10); i < chat.size(); i++) {
            AiCoach.Turn t = chat.get(i);
            TextView m = XemsUi.text(a, t.text, 15, XemsUi.TEXT, false);
            m.setPadding(XemsUi.dp(a, 12), XemsUi.dp(a, 8), XemsUi.dp(a, 12), XemsUi.dp(a, 8));
            m.setBackgroundDrawable(XemsUi.rounded(t.ai ? XemsUi.SURFACE : XemsUi.alpha(XemsUi.ACCENT, 0x26),
                    XemsUi.dp(a, 14), t.ai ? XemsUi.STROKE : XemsUi.alpha(XemsUi.ACCENT, 0x80), XemsUi.dp(a, 1)));
            LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            mp.topMargin = XemsUi.dp(a, 6);
            mp.gravity = t.ai ? Gravity.START : Gravity.END;
            if (t.ai) {
                mp.rightMargin = XemsUi.dp(a, 30);
            } else {
                mp.leftMargin = XemsUi.dp(a, 30);
            }
            msgs.addView(m, mp);
        }
        if (lastChanges.length() > 0) {
            msgs.addView(XemsUi.text(a, "✓ " + lastChanges, 13, XemsUi.GO_TEXT, true), XemsUi.matchWrap(a, 6));
        }
        if (pending != null && !busy) {
            AiUi.FlowRow opts = new AiUi.FlowRow(a);
            for (String o : pending) {
                TextView c = XemsUi.chip(a, o, false, XemsUi.ACCENT);
                c.setOnClickListener(new Quick(o));
                opts.add(c);
            }
            msgs.addView(opts, XemsUi.matchWrap(a, 8));
        }
        sc.addView(msgs);
        box.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                XemsUi.dp(a, live ? 240 : 230)));
        sc.post(new ScrollDown(sc));

        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.CENTER_VERTICAL);
        EditText f = new EditText(a);
        f.setHint(live ? AiText.t("„по-леко“, „по-дълги почивки“, „кръстът го боли“…",
                "“softer”, “longer rests”, “back hurts”…")
                : AiText.t("Напиши или кажи нещо за клиента…", "Write or say something about the client…"));
        f.setTextSize(15);
        f.setTextColor(XemsUi.TEXT);
        f.setHintTextColor(XemsUi.HINT);
        f.setMaxLines(3);
        f.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        f.setImeOptions(EditorInfo.IME_ACTION_SEND);
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 14), XemsUi.STROKE, XemsUi.dp(a, 1)));
        f.setPadding(XemsUi.dp(a, 14), XemsUi.dp(a, 10), XemsUi.dp(a, 14), XemsUi.dp(a, 10));
        f.setOnEditorActionListener(new SendKey(f, live));
        row.addView(f, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView go = XemsUi.button(a, "➤", XemsUi.ACCENT_BTN);
        go.setOnClickListener(new SendClick(f, live));
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(XemsUi.dp(a, 64), XemsUi.dp(a, 52));
        gp.leftMargin = XemsUi.dp(a, 8);
        row.addView(go, gp);
        box.addView(row, XemsUi.matchWrap(a, 10));

        List<String> adv = AiCoach.adviceLines();
        if (!adv.isEmpty()) {
            StringBuilder b = new StringBuilder();
            for (String l : adv) {
                b.append(b.length() > 0 ? "\n" : "").append("• ").append(l);
            }
            box.addView(XemsUi.text(a, b.toString(), 13, XemsUi.MUTED, false), XemsUi.matchWrap(a, 10));
        }
        if (!AiSession.isGuest() && !AiCoach.learned().isEmpty()) {
            StringBuilder names = new StringBuilder();
            for (String k : AiCoach.learned()) {
                names.append(names.length() > 0 ? ", " : "").append(AiCoach.nameOf(k, AiCoach.HEALTH, AiCoach.HEALTH_BG));
            }
            TextView save = XemsUi.button(a, "✓  " + AiText.t("Запази в профила: ", "Save to the profile: ") + names,
                    XemsUi.SECONDARY);
            save.setOnClickListener(new Save());
            box.addView(save, XemsUi.matchWrap(a, 10));
        }
    }

    // ================================================================ 3 · during the session

    static void openLive(Activity a) {
        if (a == null) {
            return;
        }
        closeLive();
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        LinearLayout wrap = XemsUi.vertical(a);
        wrap.setPadding(XemsUi.dp(a, 8), XemsUi.dp(a, 8), XemsUi.dp(a, 8), XemsUi.dp(a, 8));
        wrap.addView(panel(a, true));
        TextView close = XemsUi.button(a, AiText.t("Затвори", "Close"), XemsUi.GHOST);
        close.setOnClickListener(new CloseLive());
        wrap.addView(close, XemsUi.matchWrap(a, 6));
        d.setContentView(wrap);
        try {
            d.getWindow().setBackgroundDrawable(new ColorDrawable(XemsUi.BG));
            d.getWindow().setLayout(XemsUi.dp(a, 640), ViewGroup.LayoutParams.WRAP_CONTENT);
            d.getWindow().setGravity(Gravity.END | Gravity.TOP);
        } catch (Throwable ignored) {
        }
        liveDialog = d;
        d.show();
    }

    static void closeLive() {
        if (liveDialog != null) {
            try {
                liveDialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        liveDialog = null;
        if (panelLive) {
            panelBox = null;
        }
    }

    // ================================================================ the call

    static void send(Context c, String text, boolean live, boolean silent) {
        if (text == null || text.trim().length() == 0 || busy) {
            return;
        }
        String t = text.trim();
        if (!silent) {
            AiCoach.userSaid(t);
        }
        pending = null;
        busy = true;
        refreshPanel();
        String fields = AiCoach.requestFields(AiSession.getInput(), t, planJson(), live ? runJson() : null, live);
        new Thread(new Ask(c.getApplicationContext(), fields, ++seq, live), "xems-coach").start();
    }

    static void onAnswer(AiCoach.Reply r, int my, boolean live) {
        if (my != seq) {
            return;
        }
        busy = false;
        if (r == null) {
            AiCoach.Reply off = new AiCoach.Reply();
            off.reply = AiText.t("Няма връзка с AI — планът остава. Опитай пак.", "No AI connection — the plan stays. Try again.");
            AiCoach.aiSaid(off);
            lastChanges = "";
            refreshPanel();
            return;
        }
        AiCoach.aiSaid(r);
        if (r.advice != null && !AiSession.isGuest() && panelBox != null) {
            // a client's advice goes to the card too (a guest's stays on the screen, nothing is kept)
            AiProfile.saveAdvice(panelBox.getContext(), AiSession.coachUserId(), AiCoach.adviceLines());
        }
        pending = r.hasQuestion() ? r.options.toArray(new String[0]) : null;
        List<String> ch = AiCoach.apply(r, AiSession.getInput());
        String done = live ? AiSession.coachLive(r) : "";
        lastChanges = AiBrief.line(ch) + (done.length() > 0 ? (ch.isEmpty() ? "" : " · ") + done : "");
        if (!live && !ch.isEmpty()) {
            AiUi.rerender();                                  // the plan follows the new inputs
        } else {
            refreshPanel();
        }
        WearableBleDiagLog.log("coach", (live ? "live " : "plan ") + ch + " " + done);
    }

    private static void refreshPanel() {
        if (panelBox != null) {
            try {
                fill(panelBox.getContext(), panelBox, panelLive);
            } catch (Throwable t) {
                WearableBleDiagLog.log("coach", "panel: " + t);
            }
        }
    }

    /** The plan for the model's context: time, strength cap, the phases with their impulse. */
    static String planJson() {
        AiModel.Plan p = AiSession.getPlan();
        if (p == null) {
            return null;
        }
        StringBuilder b = new StringBuilder("{\"min\":").append(Math.round(p.totalS / 60.0))
                .append(",\"cr10\":\"").append(p.cr10Lo).append('-').append(p.cr10Hi).append("\",\"phases\":[");
        for (int i = 0; i < p.phases.size(); i++) {
            AiModel.Phase ph = p.phases.get(i);
            b.append(i > 0 ? "," : "").append("{\"id\":\"").append(ph.id.name()).append("\",\"min\":")
                    .append(Math.round(ph.durationS / 60.0)).append(",\"hz\":").append(ph.a.hz).append(",\"on\":")
                    .append(ph.a.onS).append(",\"off\":").append(ph.a.offS).append('}');
        }
        return b.append("]}").toString();
    }

    /** The running session for the model: phase, minutes done, state, the live tune so far. */
    static String runJson() {
        AiEngine e = AiSession.getEngine();
        if (e == null) {
            return null;
        }
        return "{\"phase\":\"" + (e.phase() != null ? e.phase().id.name() : "") + "\",\"min_done\":"
                + Math.round(e.getElapsedPlanS() / 60.0) + ",\"state\":\"" + e.getState().name() + "\",\"tune\":{\"on\":"
                + e.getTuneOn() + ",\"off\":" + e.getTuneOff() + ",\"hz_pct\":" + Math.round((e.getTuneHz() - 1) * 100)
                + ",\"rest_pct\":" + Math.round((e.getTuneRest() - 1) * 100) + "}}";
    }

    // ================================================================ listeners (named classes: dx)

    static final int P_SEX = 0, P_EXP = 1, P_GOAL = 2, P_MODE = 3, P_HEALTH = 4;
    static final int S_AGE = 0, S_HEIGHT = 1, S_WEIGHT = 2;

    static final class Pick implements XemsUi.OnIndex {
        final int which;

        Pick(int which) {
            this.which = which;
        }

        @Override
        public void onIndex(int i) {
            SessionInput in = AiSession.getInput();
            switch (which) {
                case P_SEX:
                    in.sex = i == 0 ? AiModel.Sex.MALE : AiModel.Sex.FEMALE;
                    if (in.sex == AiModel.Sex.MALE && in.goal == Goal.CELLULITE) {
                        in.goal = Goal.TONE;
                    }
                    break;
                case P_EXP:
                    AiCoach.experience(in, i);
                    break;
                case P_GOAL: {
                    Goal[] g = goalsFor(in);
                    in.goal = g[Math.max(0, Math.min(g.length - 1, i))];
                    in.totalSeconds = null;
                    if (!AiModel.isAllowed(in.goal, in.mode)) {
                        in.mode = AiModel.isAllowed(in.goal, Mode.ACTIVE) ? Mode.ACTIVE : Mode.PASSIVE;
                    }
                    break;
                }
                case P_MODE:
                    in.mode = i == 0 ? Mode.ACTIVE : Mode.PASSIVE;
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
            AiUi.rerender();
        }
    }

    static final class Step implements XemsUi.OnStep {
        final int which;

        Step(int which) {
            this.which = which;
        }

        @Override
        public void onStep(int d) {
            SessionInput in = AiSession.getInput();
            if (which == S_AGE) {
                in.age = Math.max(14, Math.min(90, in.age + d));
            } else if (which == S_HEIGHT) {
                in.heightCm = Math.max(130, Math.min(220, (in.heightCm > 0 ? in.heightCm : 170) + d));
            } else {
                in.weightKg = Math.max(35, Math.min(200, Math.round(in.weightKg) + d));
            }
            AiUi.rerender();
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
            AiCoach.toggleHealth(AiSession.getInput(), key);
            AiUi.rerender();
        }
    }

    static final class Quick implements View.OnClickListener {
        final String text;

        Quick(String text) {
            this.text = text;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            send(v.getContext(), text, panelLive, false);
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
        send(f.getContext(), t, live, false);
    }

    static final class Save implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            AiProfile.addCond(v.getContext(), AiSession.coachUserId(), AiCoach.learned());
            AiCoach.savedLearned();
            lastChanges = AiText.t("запазено в профила", "saved to the profile");
            refreshPanel();
        }
    }

    /** The run screen's ✦ Чат. */
    static final class OpenLive implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            openLive(AiSession.activityOf(v));
        }
    }

    static final class CloseLive implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            closeLive();
        }
    }

    static final class ScrollDown implements Runnable {
        final ScrollView sc;

        ScrollDown(ScrollView sc) {
            this.sc = sc;
        }

        @Override
        public void run() {
            sc.fullScroll(View.FOCUS_DOWN);
        }
    }

    static final class Ask implements Runnable {
        final Context c;
        final String fields;
        final int my;
        final boolean live;

        Ask(Context c, String fields, int my, boolean live) {
            this.c = c;
            this.fields = fields;
            this.my = my;
            this.live = live;
        }

        @Override
        public void run() {
            AiCoach.Reply r = null;
            try {
                String resp = com.isaigu.gymapp.widget.XemsLicenseClient.postBrief(c, fields);
                r = AiCoach.parse(resp);
                if (r == null) {
                    WearableBleDiagLog.log("coach", "no reply: " + (resp.length() > 160 ? resp.substring(0, 160) : resp));
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("coach", "offline: " + t);
            }
            MAIN.post(new Answered(r, my, live));
        }
    }

    static final class Answered implements Runnable {
        final AiCoach.Reply r;
        final int my;
        final boolean live;

        Answered(AiCoach.Reply r, int my, boolean live) {
            this.r = r;
            this.my = my;
            this.live = live;
        }

        @Override
        public void run() {
            try {
                onAnswer(r, my, live);
            } catch (Throwable t) {
                WearableBleDiagLog.log("coach", "apply: " + t);
            }
        }
    }
}
