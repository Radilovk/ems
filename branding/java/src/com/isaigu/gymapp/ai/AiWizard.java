package com.isaigu.gymapp.ai;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.InputType;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AutoModel.Goal;
import com.isaigu.gymapp.ai.AutoModel.Input;
import com.isaigu.gymapp.ai.AutoModel.Kind;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.List;
import java.util.Locale;

/**
 * The AI training's preparation — ONE screen (owner, 1.1.544: "real use"; docs/xems-ai-coach.md).
 * What it is for: the trainer has the client in the suit and wants a session fitted to this person in seconds.
 * So: left = what the tablet knows about the client, each line one tap to correct (a known client is filled from the
 * card — nothing to answer); right = the plan as it is NOW (the algorithm at once, the AI's tuning a moment later)
 * with ▶ Старт always in the same place. Rare content (the health list, the keypad) opens on a tap and closes again.
 */
public final class AiWizard {
    private AiWizard() {}

    /** The known client's line is opened for correcting. */
    static boolean editClient;

    static void reset() {
        editClient = false;
        page = STEP_CLIENT;
    }

    /** The wizard's pages (owner, 2026-11-25): 3 setup steps, nothing is asked of the AI until "Създай", then the chat. */
    static final int STEP_CLIENT = 0, STEP_PROGRAM = 1, STEP_TODAY = 2, RESULT = 3;
    static int page;

    static final int LABEL_DP = 96, ROW_DP = 60;

    static void build(Context c, LinearLayout content) {
        XemsUi.init(c);
        LinearLayout card = AutoUi.nativeCard(c);
        card.setPadding(XemsUi.dp(c, 22), XemsUi.dp(c, 12), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
        card.addView(header(c), XemsUi.matchWrap(c, 0));
        if (page >= RESULT) {
            result(c, card);
        } else {
            step(c, card);
        }
        content.addView(card, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
    }

    // ================================================================ frame

    private static View header(Context c) {
        LinearLayout h = XemsUi.horizontal(c);
        h.setGravity(Gravity.CENTER_VERTICAL);
        h.addView(XemsUi.text(c, "✦ " + AiText.t("AI треньор", "AI coach"), 18, XemsUi.ACCENT, true));
        String who = AutoSession.isGuest() ? AiText.t("Гост", "Guest") : AutoSession.leaderName();
        TextView w = XemsUi.text(c, who.length() > 0 ? "   ·   " + who : "", 18, XemsUi.TEXT, true);
        w.setMaxLines(1);
        w.setEllipsize(TextUtils.TruncateAt.END);
        h.addView(w, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (page < RESULT) {
            TextView b = XemsUi.badge(c, (page + 1) + " / 3", XemsUi.ACCENT);
            LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            bp.rightMargin = XemsUi.dp(c, 8);
            h.addView(b, bp);
        }
        TextView x = XemsUi.button(c, "✕", XemsUi.GHOST);
        x.setTextSize(20);
        x.setOnClickListener(new Nav(N_CLOSE));
        h.addView(x, new LinearLayout.LayoutParams(XemsUi.dp(c, 56), XemsUi.dp(c, 48)));
        return h;
    }

    // ================================================================ the three setup steps

    private static void step(Context c, LinearLayout card) {
        String[] titles = {AiText.t("Кой тренира днес?", "Who trains today?"),
                AiText.t("Какво ще тренираме?", "What shall we train?"),
                AiText.t("Нещо специално за днес?", "Anything special today?")};
        String[] subs = {AiText.t("Профилът и здравето — веднъж, после AI ги знае.", "The profile and health — once, then the AI knows them."),
                AiText.t("Цел и вид. Планът вдясно следва избора.", "Goal and kind. The plan on the right follows the choice."),
                AiText.t("По желание — кажи или пиши. После AI съставя тренировката.", "Optional — say or write it. Then the AI writes the session.")};
        card.addView(XemsUi.text(c, titles[page], 24, XemsUi.TEXT, true), XemsUi.matchWrap(c, 10));
        card.addView(XemsUi.text(c, subs[page], 14, XemsUi.MUTED, false), XemsUi.matchWrap(c, 2));
        LinearLayout body = XemsUi.horizontal(c);
        LinearLayout left = XemsUi.vertical(c);
        if (page == STEP_CLIENT) {
            client(c, left);
            experience(c, left);
            health(c, left);
        } else if (page == STEP_PROGRAM) {
            training(c, left);
        } else {
            chosen(c, left);
            today(c, left);
        }
        ScrollView sc = new ScrollView(c);
        sc.setFillViewport(true);
        sc.addView(left);
        body.addView(sc, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.15f));
        if (page > STEP_CLIENT) {
            LinearLayout.LayoutParams pp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
            pp.leftMargin = XemsUi.dp(c, 22);
            body.addView(preview(c), pp);
        }
        card.addView(body, fill(c, 8));
        card.addView(footer(c), XemsUi.matchWrap(c, 10));
    }

    /** ‹ Назад · the one primary action, bottom right (golden rules §2). */
    private static View footer(Context c) {
        LinearLayout f = XemsUi.horizontal(c);
        f.setGravity(Gravity.CENTER_VERTICAL);
        if (page > STEP_CLIENT) {
            TextView back = XemsUi.button(c, "‹  " + AiText.t("Назад", "Back"), XemsUi.GHOST);
            back.setOnClickListener(new Nav(N_BACK));
            f.addView(back, new LinearLayout.LayoutParams(XemsUi.dp(c, 140), XemsUi.dp(c, 56)));
        }
        View gap = new View(c);
        f.addView(gap, new LinearLayout.LayoutParams(0, 1, 1f));
        boolean last = page == STEP_TODAY;
        TextView next = XemsUi.button(c, last ? "✦  " + AiText.t("Създай тренировката", "Create the session")
                : AiText.t("Напред", "Next") + "  ›", XemsUi.PRIMARY);
        next.setTextSize(19);
        next.setOnClickListener(new Nav(last ? N_CREATE : N_NEXT));
        if (last && AiTrain.busy) {
            next.setAlpha(0.45f);
            next.setEnabled(false);
        }
        f.addView(next, new LinearLayout.LayoutParams(XemsUi.dp(c, last ? 320 : 220), XemsUi.dp(c, 60)));
        return f;
    }

    /** What was chosen, in one quiet line (step 3: the last look before the AI writes). */
    private static void chosen(Context c, LinearLayout left) {
        Input in = AutoSession.getInput();
        StringBuilder b = new StringBuilder(AutoUi.goalName(in.goal));
        b.append("  ·  ").append(in.kind == Kind.PASSIVE ? AiText.t("пасивна", "passive") : AiText.t("активна", "active"));
        b.append("  ·  ").append(AiTrain.free ? AiText.t("AI съставя програмата", "the AI writes the program")
                : AiText.t("готова програма", "ready program"));
        List<String> h = healthLabels(in);
        b.append("  ·  ").append(h.isEmpty() ? AiText.t("здрав/а", "healthy") : AiText.t("има здравни особености", "health notes"));
        left.addView(XemsUi.text(c, b.toString(), 14, XemsUi.MUTED, true), XemsUi.matchWrap(c, 0));
    }

    /** The right side of steps 2–3: the plan as the algorithm has it now (no start button, no AI claims). */
    private static View preview(Context c) {
        LinearLayout box = tile(c);
        box.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
        box.addView(label(c, AiText.t("Планът сега", "The plan now")), XemsUi.matchWrap(c, 0));
        LinearLayout col = XemsUi.vertical(c);
        ScrollView sc = new ScrollView(c);
        sc.addView(col);
        box.addView(sc, fill(c, 6));
        planFacts(c, col);
        return box;
    }

    /** One line of the left side: a short caption, then its control. */
    private static LinearLayout row(Context c, LinearLayout left, String caption, int topDp) {
        LinearLayout r = XemsUi.horizontal(c);
        r.setGravity(Gravity.CENTER_VERTICAL);
        TextView k = label(c, caption);
        r.addView(k, new LinearLayout.LayoutParams(XemsUi.dp(c, LABEL_DP), ViewGroup.LayoutParams.WRAP_CONTENT));
        left.addView(r, XemsUi.matchWrap(c, topDp));
        return r;
    }

    private static LinearLayout.LayoutParams grow() {
        return new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
    }

    // ================================================================ left: the client

    private static void client(Context c, LinearLayout left) {
        Input in = AutoSession.getInput();
        double bmi = AiCoach.bmi(in);
        String bmiS = bmi > 0 ? String.format(Locale.ROOT, "%.1f", bmi) : "—";
        if (!AutoSession.isGuest() && !editClient && in.age > 0 && in.weightKg > 0) {
            // a known client: what the card says, in one line; ✎ opens it
            LinearLayout r = row(c, left, AiText.t("Клиент", "Client"), 0);
            String line = (in.sex == AiModel.Sex.FEMALE ? AiText.t("жена", "female") : AiText.t("мъж", "male")) + "  ·  "
                    + in.age + AiText.t(" г", " y") + "  ·  " + in.heightCm + " см  ·  " + Math.round(in.weightKg) + " кг  ·  "
                    + AiText.t("ИТМ ", "BMI ") + bmiS;
            TextView t = XemsUi.text(c, line, 17, XemsUi.TEXT, true);
            t.setMaxLines(1);
            t.setEllipsize(TextUtils.TruncateAt.END);
            r.addView(t, grow());
            TextView ed = XemsUi.chip(c, "✎  " + AiText.t("Промени", "Edit"), false, XemsUi.ACCENT);
            ed.setOnClickListener(new Nav(N_EDIT));
            r.addView(ed, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 44)));
            return;
        }
        LinearLayout r = row(c, left, AiText.t("Клиент", "Client"), 0);
        LinearLayout sex = XemsUi.segmented(c, new String[] {AiText.t("Мъж", "Male"), AiText.t("Жена", "Female")},
                in.sex == AiModel.Sex.FEMALE ? 1 : 0, new AiTrain.Pick(AiTrain.P_SEX));
        r.addView(sex, new LinearLayout.LayoutParams(XemsUi.dp(c, 176), XemsUi.dp(c, ROW_DP)));
        r.addView(num(c, "" + in.age, AiText.t("год.", "yrs"), AiTrain.S_AGE), numP(c));
        r.addView(num(c, "" + in.heightCm, "см", AiTrain.S_HEIGHT), numP(c));
        r.addView(num(c, "" + Math.round(in.weightKg), "кг", AiTrain.S_WEIGHT), numP(c));
        LinearLayout b = XemsUi.vertical(c);
        b.setGravity(Gravity.CENTER);
        TextView bv = XemsUi.text(c, bmiS, 18, bmi >= 30 ? XemsUi.AMBER : XemsUi.TEXT, true);
        bv.setGravity(Gravity.CENTER);
        b.addView(bv, XemsUi.matchWrap(c, 0));
        TextView bc = XemsUi.text(c, AiText.t("ИТМ", "BMI"), 11, XemsUi.MUTED, true);
        bc.setGravity(Gravity.CENTER);
        b.addView(bc, XemsUi.matchWrap(c, 0));
        r.addView(b, new LinearLayout.LayoutParams(XemsUi.dp(c, 58), XemsUi.dp(c, ROW_DP)));
    }

    private static LinearLayout.LayoutParams numP(Context c) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, XemsUi.dp(c, ROW_DP), 1f);
        p.leftMargin = XemsUi.dp(c, 8);
        return p;
    }

    /** A number to tap: the keypad opens (no − / + marathons). */
    private static View num(Context c, String value, String unit, int which) {
        LinearLayout t = XemsUi.horizontal(c);
        t.setGravity(Gravity.CENTER);
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        TextView v = XemsUi.text(c, value, 22, XemsUi.TEXT, true);
        v.setMaxLines(1);
        t.addView(v);
        TextView u = XemsUi.text(c, " " + unit, 13, XemsUi.MUTED, true);
        u.setMaxLines(1);
        t.addView(u);
        t.setOnClickListener(new NumOpen(which));
        XemsUi.pressable(t);
        return t;
    }

    // ================================================================ left: the training

    /** A guest's EMS experience (a client's comes from the card's sessions). */
    private static void experience(Context c, LinearLayout left) {
        if (!AutoSession.isGuest()) {
            return;
        }
        LinearLayout e = row(c, left, AiText.t("Опит с EMS", "EMS before"), 12);
        e.addView(XemsUi.segmented(c, new String[] {AiText.t("Първи път", "First time"), AiText.t("Няколко пъти", "A few"),
                AiText.t("Редовно", "Regularly")}, AiCoach.experienceOf(AutoSession.getInput()), new AiTrain.Pick(AiTrain.P_EXP)),
                new LinearLayout.LayoutParams(0, XemsUi.dp(c, ROW_DP), 1f));
    }

    private static void training(Context c, LinearLayout left) {
        Input in = AutoSession.getInput();
        LinearLayout g = row(c, left, AiText.t("Цел", "Goal"), 12);
        Goal[] goals = {Goal.TONE, Goal.SLIM, Goal.HEALTH};
        String[] gl = new String[goals.length];
        int gi = 0;
        for (int i = 0; i < goals.length; i++) {
            gl[i] = AutoUi.goalName(goals[i]);
            if (in.goal == goals[i]) {
                gi = i;
            }
        }
        g.addView(XemsUi.segmented(c, gl, gi, new AiTrain.Pick(AiTrain.P_GOAL)),
                new LinearLayout.LayoutParams(0, XemsUi.dp(c, ROW_DP), 1f));

        LinearLayout k = row(c, left, AiText.t("Вид", "Kind"), 10);
        boolean both = !AutoCatalog.menu(in.goal, Kind.ACTIVE).isEmpty() && !AutoCatalog.menu(in.goal, Kind.PASSIVE).isEmpty();
        if (both) {
            k.addView(XemsUi.segmented(c, new String[] {AiText.t("Активна · с упражнения", "Active · exercises"),
                    AiText.t("Пасивна · в покой", "Passive · at rest")}, in.kind == Kind.PASSIVE ? 1 : 0,
                    new AiTrain.Pick(AiTrain.P_KIND)), new LinearLayout.LayoutParams(0, XemsUi.dp(c, ROW_DP), 1f));
        } else {
            k.addView(XemsUi.text(c, in.kind == Kind.PASSIVE ? AiText.t("Пасивна · в покой", "Passive · at rest")
                    : AiText.t("Активна · с упражнения", "Active · exercises"), 16, XemsUi.TEXT, true), grow());
        }

        LinearLayout p = row(c, left, AiText.t("Програма", "Program"), 10);
        p.addView(XemsUi.segmented(c, new String[] {AiText.t("Готова програма", "Ready program"),
                "✦ " + AiText.t("AI я съставя", "The AI writes it")}, AiTrain.free ? 1 : 0, new AiTrain.Pick(AiTrain.P_FREE)),
                new LinearLayout.LayoutParams(0, XemsUi.dp(c, ROW_DP), 1f));
    }

    // ================================================================ left: health (the list opens on a tap)

    private static void health(Context c, LinearLayout left) {
        Input in = AutoSession.getInput();
        LinearLayout r = row(c, left, AiText.t("Здраве", "Health"), 12);
        LinearLayout chips = XemsUi.horizontal(c);
        chips.setGravity(Gravity.CENTER_VERTICAL);
        List<String> on = healthLabels(in);
        if (on.isEmpty()) {
            TextView ok = XemsUi.chip(c, "✓  " + AiText.t("Здрав/а", "Healthy"), true, XemsUi.GO);
            ok.setOnClickListener(new HealthOpen());
            chips.addView(ok, chipP(c, 0));
            TextView add = XemsUi.chip(c, "+  " + AiText.t("Има нещо", "Something"), false, XemsUi.AMBER);
            add.setOnClickListener(new HealthOpen());
            chips.addView(add, chipP(c, 8));
        } else {
            StringBuilder b = new StringBuilder();
            for (String s : on) {
                b.append(b.length() > 0 ? ", " : "").append(s);
            }
            TextView t = XemsUi.chip(c, "⚠  " + b, true, XemsUi.AMBER);
            t.setMaxLines(1);
            t.setEllipsize(TextUtils.TruncateAt.END);
            t.setOnClickListener(new HealthOpen());
            t.setMaxWidth(XemsUi.dp(c, 400));
            chips.addView(t, chipP(c, 0));
            TextView ed = XemsUi.chip(c, "✎", false, XemsUi.ACCENT);
            ed.setOnClickListener(new HealthOpen());
            chips.addView(ed, chipP(c, 8));
        }
        r.addView(chips, grow());
    }

    /** The conditions that are on, in Bulgarian (the health chips' words). */
    static List<String> healthLabels(Input in) {
        List<String> out = new java.util.ArrayList<String>();
        for (int i = 0; i < AiCoach.HEALTH.length; i++) {
            if (AiCoach.healthOn(in, AiCoach.HEALTH[i])) {
                out.add(AiCoach.HEALTH_BG[i]);
            }
        }
        for (int i = 0; i < AiCoach.CONTRA.length; i++) {
            if (AiCoach.healthOn(in, AiCoach.CONTRA[i])) {
                out.add(AiCoach.CONTRA_BG[i]);
            }
        }
        return out;
    }

    private static LinearLayout.LayoutParams chipP(Context c, int leftDp) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, XemsUi.dp(c, 44));
        p.leftMargin = XemsUi.dp(c, leftDp);
        return p;
    }

    // ================================================================ left: today (words to the AI)

    private static void today(Context c, LinearLayout left) {
        left.addView(inputLine(c, AiText.t("кажи на AI — „уморена е, боли я коляното“", "tell the AI — “tired, knee hurts”"),
                ROW_DP), XemsUi.matchWrap(c, 14));
        // the usual things, one tap each — they go to the AI as they are
        AiUi.FlowRow quick = new AiUi.FlowRow(c);
        String[] ex = {AiText.t("уморен/а е", "tired"), AiText.t("не е ял/а", "has not eaten"),
                AiText.t("по-леко днес", "lighter today"), AiText.t("само 20 минути", "only 20 minutes"),
                AiText.t("повече корем", "more abs"), AiText.t("повече седалище", "more glutes")};
        for (String e : ex) {
            TextView ch = XemsUi.chip(c, e, false, XemsUi.ACCENT);
            ch.setOnClickListener(new Phrase(e));
            quick.add(ch);
        }
        left.addView(quick, XemsUi.matchWrap(c, 12));
    }

    /** The line of words + the round talk button (a microphone while empty, a paper plane with text). */
    static View inputLine(Context c, String hint, int heightDp) {
        LinearLayout r = XemsUi.horizontal(c);
        r.setGravity(Gravity.CENTER_VERTICAL);
        EditText f = new EditText(c);
        f.setHint(hint);
        f.setText(AiTrain.draft);
        f.setTextSize(16);
        f.setTextColor(XemsUi.TEXT);
        f.setHintTextColor(XemsUi.HINT);
        f.setMaxLines(2);
        f.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES);
        f.setImeOptions(EditorInfo.IME_ACTION_SEND | EditorInfo.IME_FLAG_NO_EXTRACT_UI | EditorInfo.IME_FLAG_NO_FULLSCREEN);
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 28), XemsUi.STROKE, XemsUi.dp(c, 1)));
        f.setPadding(XemsUi.dp(c, 20), XemsUi.dp(c, 8), XemsUi.dp(c, 20), XemsUi.dp(c, 8));
        f.setOnEditorActionListener(new SayKey());
        TalkButton b = new TalkButton(c);
        b.setSend(AiTrain.draft.trim().length() > 0);
        f.addTextChangedListener(new Draft(b));
        b.setOnClickListener(new SayClick(f));
        r.addView(f, new LinearLayout.LayoutParams(0, XemsUi.dp(c, heightDp), 1f));
        LinearLayout.LayoutParams bp = new LinearLayout.LayoutParams(XemsUi.dp(c, heightDp + 4), XemsUi.dp(c, heightDp + 4));
        bp.leftMargin = XemsUi.dp(c, 10);
        r.addView(b, bp);
        return r;
    }

    // ================================================================ the plan's facts (steps 2–3 and the result)

    /** The program, its times, the impulse — or the free workout's exercises. */
    private static void planFacts(Context c, LinearLayout col) {
        Input in = AutoSession.getInput();
        AutoModel.Plan plan = AutoSession.getPlan();
        if (AiTrain.free) {
            freeTraining(c, col);
        } else if (plan != null) {
            TextView name = XemsUi.text(c, plan.program.name(), 24, XemsUi.TEXT, true);
            name.setMaxLines(2);
            name.setEllipsize(TextUtils.TruncateAt.END);
            col.addView(name);
            int[] tm = AutoCatalog.times(plan.program, in.goal, in);
            LinearLayout tiles = XemsUi.horizontal(c);
            tiles.addView(big(c, (tm[0] + tm[1]) / 60 + " мин", AiText.t("активна", "active")), colW(c, 1f, 0));
            tiles.addView(big(c, tm[2] / 60 + " мин", AiText.t("отпускане", "cool-down")), colW(c, 1f, 8));
            tiles.addView(big(c, plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : ""),
                    AiText.t("усещане от 10", "feel of 10")), colW(c, 1f, 8));
            col.addView(tiles, XemsUi.matchWrap(c, 10));
            AutoModel.Step s = AiTrain.mainStep(plan);
            if (s != null) {
                int hz = AutoSession.vetoHz > 0 ? Math.min(AutoSession.vetoHz, SafeLimits.hzMax(in.age)) : s.hz;
                int on = AutoSession.vetoOn > 0 ? AutoSession.vetoOn : s.onS;
                int off = AutoSession.vetoOff > 0 ? AutoSession.vetoOff : s.offS;
                col.addView(XemsUi.text(c, hz + " Hz  ·  " + on + " s " + AiText.t("импулс", "on") + " / " + off + " s "
                        + AiText.t("пауза", "pause") + "  ·  " + s.pwUs + " µs", 14, XemsUi.MUTED, true), XemsUi.matchWrap(c, 8));
            }
            if (AutoSession.vetoReason != null) {
                col.addView(XemsUi.text(c, "✦ " + AutoSession.vetoReason, 13, XemsUi.AMBER, true), XemsUi.matchWrap(c, 4));
            }
        }
    }

    // ================================================================ the result: the chat (left) and the plan (right)

    private static void result(Context c, LinearLayout card) {
        LinearLayout body = XemsUi.horizontal(c);
        body.addView(chatColumn(c), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        LinearLayout.LayoutParams pp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.15f);
        pp.leftMargin = XemsUi.dp(c, 18);
        body.addView(planColumn(c), pp);
        card.addView(body, fill(c, 10));
    }

    /** The talk with the AI: the messages, the one-tap answers, the line to write UNDER them. */
    private static View chatColumn(Context c) {
        LinearLayout box = tile(c);
        box.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 12), XemsUi.dp(c, 14), XemsUi.dp(c, 12));
        box.addView(status(c), XemsUi.matchWrap(c, 0));
        ScrollView sc = new ScrollView(c);
        sc.setFillViewport(true);
        LinearLayout msgs = XemsUi.vertical(c);
        msgs.setGravity(Gravity.BOTTOM);
        List<AiCoach.Turn> turns = AiCoach.chat();
        for (int i = Math.max(0, turns.size() - 20); i < turns.size(); i++) {
            msgs.addView(AiChatDrawer.bubble(c, turns.get(i)), AiChatDrawer.bubbleParams(c, turns.get(i)));
        }
        if (AiTrain.busy) {
            TextView t = XemsUi.text(c, "•  •  •", 18, XemsUi.ACCENT, true);
            t.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 8), XemsUi.dp(c, 14), XemsUi.dp(c, 8));
            t.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
            LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            tp.topMargin = XemsUi.dp(c, 6);
            msgs.addView(t, tp);
        }
        sc.addView(msgs, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        box.addView(sc, fill(c, 6));
        sc.post(new AiChatDrawer.ToEnd(sc));
        if (!AiTrain.busy) {
            AiUi.FlowRow quick = new AiUi.FlowRow(c);
            String[] q = AiTrain.pending != null ? AiTrain.pending : new String[] {
                    AiText.t("по-леко", "lighter"), AiText.t("повече корем", "more abs"), AiText.t("по-кратко", "shorter")};
            for (String o : q) {
                TextView ch = XemsUi.chip(c, o, AiTrain.pending != null, XemsUi.ACCENT);
                ch.setOnClickListener(new AiTrain.Quick(o, false));
                quick.add(ch);
            }
            box.addView(quick, XemsUi.matchWrap(c, 6));
        }
        box.addView(inputLine(c, AiText.t("Напиши или кажи на AI…", "Write or say it to the AI…"), 48), XemsUi.matchWrap(c, 8));
        return box;
    }

    /** The plan and the AI's guidance, as large as the screen allows; ▶ Старт is the one primary button. */
    private static View planColumn(Context c) {
        LinearLayout box = tile(c);
        box.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
        LinearLayout col = XemsUi.vertical(c);
        ScrollView sc = new ScrollView(c);
        sc.addView(col);
        box.addView(sc, fill(c, 0));
        planFacts(c, col);
        String[] adv = AiCoach.advice();
        if (adv == null) {
            col.addView(XemsUi.text(c, AiTrain.busy ? "✦  " + AiText.t("AI съставя препоръките…", "The AI is writing the advice…")
                    : AiText.t("Препоръките се появяват тук, когато AI състави тренировката.",
                    "The advice appears here when the AI has written the session."), 14, XemsUi.MUTED, false), XemsUi.matchWrap(c, 12));
        } else {
            col.addView(label(c, AiText.t("Насоки от AI треньора", "From the AI coach")), XemsUi.matchWrap(c, 14));
            for (int i = 0; i < AiCoach.ADVICE.length && i < adv.length; i++) {
                if (adv[i] != null && adv[i].length() > 0) {
                    col.addView(adviceCard(c, AiCoach.ADVICE_BG[i], adv[i]), XemsUi.matchWrap(c, 8));
                }
            }
        }
        String why = lastAiWord();
        if (why.length() > 0 && !AiTrain.busy && !offline(why) && (adv == null || adv[4] == null || adv[4].length() == 0)) {
            col.addView(XemsUi.text(c, why, 15, XemsUi.TEXT, false), XemsUi.matchWrap(c, 10));
        }
        boolean ready = (!AiTrain.free || AiTrain.freePlan != null) && !AiTrain.busy;
        LinearLayout foot = XemsUi.horizontal(c);
        foot.setGravity(Gravity.CENTER_VERTICAL);
        TextView edit = XemsUi.button(c, AiText.t("Промени избора", "Change the choice"), XemsUi.GHOST);
        edit.setOnClickListener(new Nav(N_REVISE));
        foot.addView(edit, new LinearLayout.LayoutParams(XemsUi.dp(c, 210), XemsUi.dp(c, 60)));
        TextView go = XemsUi.button(c, ready ? "▶   " + AiText.t("Старт", "Start")
                : "✦  " + AiText.t("AI съставя…", "The AI is writing…"), XemsUi.PRIMARY);
        go.setTextSize(20);
        go.setOnClickListener(new AiTrain.Act(AiTrain.A_START));
        if (!ready) {
            go.setAlpha(0.45f);
            go.setEnabled(false);
        }
        LinearLayout.LayoutParams gp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 60), 1f);
        gp.leftMargin = XemsUi.dp(c, 10);
        foot.addView(go, gp);
        box.addView(foot, XemsUi.matchWrap(c, 10));
        TextView cap = XemsUi.text(c, AiText.t("Силата тръгва от 0 — качваш я по време на тренировката.",
                "Strength starts at 0 — raise it during the session."), 12, XemsUi.MUTED, false);
        cap.setGravity(Gravity.CENTER);
        box.addView(cap, XemsUi.matchWrap(c, 6));
        return box;
    }

    /** One piece of guidance: a small caption, the text under it, a quiet card. */
    private static View adviceCard(Context c, String caption, String text) {
        LinearLayout k = XemsUi.vertical(c);
        k.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 10), XemsUi.dp(c, 14), XemsUi.dp(c, 12));
        k.setBackgroundDrawable(XemsUi.rounded(XemsUi.BG, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        k.addView(XemsUi.text(c, caption, 12, XemsUi.ACCENT, true));
        TextView t = XemsUi.text(c, text, 15, XemsUi.TEXT, false);
        t.setLineSpacing(0, 1.12f);
        k.addView(t, XemsUi.matchWrap(c, 3));
        return k;
    }

    private static boolean offline(String why) {
        return why.startsWith(AiText.t("Няма връзка", "No AI"));
    }

    /** One line over the plan: what the AI is doing with it. */
    private static View status(Context c) {
        String t;
        int col;
        String why = lastAiWord();
        if (AiTrain.busy) {
            t = "✦  " + AiText.t("AI съставя тренировката…", "The AI is writing the session…");
            col = XemsUi.AMBER;
        } else if (offline(why)) {
            t = AiText.t("Без връзка с AI — планът е по алгоритъма", "No AI link — the plan follows the algorithm");
            col = XemsUi.MUTED;
        } else if (why.length() > 0) {
            t = "✓  " + AiText.t("Създадено от AI треньора", "Created by the AI coach")
                    + (AiTrain.lastChanges.length() > 0 ? "  ·  " + AiTrain.lastChanges : "");
            col = XemsUi.GO_TEXT;
        } else {
            t = "✦  " + AiText.t("AI треньор", "AI coach");
            col = XemsUi.MUTED;
        }
        TextView v = XemsUi.text(c, t, 13, col, true);
        v.setMaxLines(1);
        v.setEllipsize(TextUtils.TruncateAt.END);
        return v;
    }

    /** The AI's last word in the dialogue ("" = none yet). */
    static String lastAiWord() {
        List<AiCoach.Turn> t = AiCoach.chat();
        for (int i = t.size() - 1; i >= 0; i--) {
            if (t.get(i).ai) {
                return t.get(i).text;
            }
        }
        return "";
    }

    private static void freeTraining(Context c, LinearLayout col) {
        AiWorkout.Plan p = AiTrain.freePlan;
        if (p == null) {
            col.addView(XemsUi.text(c, AiTrain.busy ? AiText.t("AI съставя упражненията…", "The AI is writing the exercises…")
                    : AiText.t("AI ще състави упражненията след малко.", "The AI will write the exercises in a moment."), 16,
                    XemsUi.MUTED, false));
            return;
        }
        TextView name = XemsUi.text(c, p.title.length() > 0 ? p.title : AiText.t("AI тренировка", "AI workout"), 22, XemsUi.TEXT, true);
        name.setMaxLines(1);
        name.setEllipsize(TextUtils.TruncateAt.END);
        col.addView(name);
        List<String> ls = AiWorkout.lines(p);
        for (int i = 0; i < ls.size(); i++) {
            col.addView(XemsUi.text(c, (i + 1) + ". " + ls.get(i), 14, XemsUi.TEXT, true), XemsUi.matchWrap(c, i == 0 ? 6 : 8));
            String how = p.items.get(i).how;
            if (how.length() > 0) {
                col.addView(XemsUi.text(c, how, 13, XemsUi.MUTED, false), XemsUi.matchWrap(c, 1));
            }
        }
    }

    // ================================================================ kit

    static LinearLayout tile(Context c) {
        LinearLayout t = XemsUi.vertical(c);
        t.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 12), XemsUi.dp(c, 16), XemsUi.dp(c, 12));
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 18), XemsUi.STROKE, XemsUi.dp(c, 1)));
        return t;
    }

    static TextView label(Context c, String s) {
        TextView t = XemsUi.text(c, s.toUpperCase(new Locale("bg")), 12, XemsUi.MUTED, true);
        t.setLetterSpacing(0.06f);
        return t;
    }

    private static View big(Context c, String value, String cap) {
        LinearLayout t = XemsUi.vertical(c);
        t.setGravity(Gravity.CENTER);
        t.setPadding(0, XemsUi.dp(c, 8), 0, XemsUi.dp(c, 8));
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.CARD, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        TextView v = XemsUi.text(c, value, 22, XemsUi.TEXT, true);
        v.setMaxLines(1);
        v.setGravity(Gravity.CENTER);
        t.addView(v, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView k = XemsUi.text(c, cap, 12, XemsUi.MUTED, true);
        k.setGravity(Gravity.CENTER);
        k.setMaxLines(1);
        t.addView(k, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return t;
    }

    private static LinearLayout.LayoutParams colW(Context c, float w, int leftDp) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, w);
        p.leftMargin = XemsUi.dp(c, leftDp);
        return p;
    }

    private static LinearLayout.LayoutParams fill(Context c, int topDp) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        p.topMargin = XemsUi.dp(c, topDp);
        return p;
    }

    // ================================================================ the keypad (a number in two taps)

    private static Dialog pad;

    static void openPad(Activity a, int which) {
        if (a == null) {
            return;
        }
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        d.setContentView(padView(a, which));
        try {
            d.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            d.getWindow().setLayout(XemsUi.dp(a, 340), ViewGroup.LayoutParams.WRAP_CONTENT);
        } catch (Throwable ignored) {
        }
        pad = d;
        d.show();
    }

    /** The keypad's content (also the off-device shots): the value, 1–9, ⌫ 0 ✓. */
    static View padView(Context c, int which) {
        Input in = AutoSession.getInput();
        LinearLayout box = AutoUi.nativeCard(c);
        box.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 18));
        String title = which == AiTrain.S_AGE ? AiText.t("Възраст", "Age") : which == AiTrain.S_HEIGHT
                ? AiText.t("Ръст, см", "Height, cm") : AiText.t("Тегло, кг", "Weight, kg");
        int now = which == AiTrain.S_AGE ? in.age : which == AiTrain.S_HEIGHT ? in.heightCm : (int) Math.round(in.weightKg);
        box.addView(label(c, title));
        TextView v = XemsUi.text(c, "" + now, 44, XemsUi.HINT, true);
        v.setGravity(Gravity.CENTER);
        box.addView(v, XemsUi.matchWrap(c, 2));
        PadState st = new PadState(which, v);
        String[] keys = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "⌫", "0", "✓"};
        for (int r = 0; r < 4; r++) {
            LinearLayout line = XemsUi.horizontal(c);
            for (int k = 0; k < 3; k++) {
                String key = keys[r * 3 + k];
                TextView b = XemsUi.button(c, key, "✓".equals(key) ? XemsUi.PRIMARY : XemsUi.SECONDARY);
                b.setTextSize(24);
                b.setOnClickListener(new PadKey(st, key));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 60), 1f);
                lp.leftMargin = k == 0 ? 0 : XemsUi.dp(c, 8);
                line.addView(b, lp);
            }
            box.addView(line, XemsUi.matchWrap(c, 8));
        }
        return box;
    }

    static final class PadState {
        final int which;
        final TextView view;
        String typed = "";

        PadState(int which, TextView view) {
            this.which = which;
            this.view = view;
        }
    }

    static final class PadKey implements View.OnClickListener {
        final PadState st;
        final String key;

        PadKey(PadState st, String key) {
            this.st = st;
            this.key = key;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if ("✓".equals(key)) {
                if (st.typed.length() > 0) {
                    AiTrain.setNum(st.which, Integer.parseInt(st.typed));
                }
                if (pad != null) {
                    pad.dismiss();
                    pad = null;
                }
                return;
            }
            if ("⌫".equals(key)) {
                st.typed = st.typed.length() > 0 ? st.typed.substring(0, st.typed.length() - 1) : "";
            } else if (st.typed.length() < 3) {
                st.typed = st.typed + key;
            }
            st.view.setText(st.typed.length() > 0 ? st.typed : "—");
            st.view.setTextColor(XemsUi.TEXT);
        }
    }

    // ================================================================ health: the list on a tap

    private static Dialog healthDlg;
    private static LinearLayout healthBox;

    static void openHealth(Activity a) {
        if (a == null) {
            return;
        }
        Dialog d = new Dialog(a);
        d.requestWindowFeature(Window.FEATURE_NO_TITLE);
        healthBox = XemsUi.vertical(a);
        healthBox.addView(healthView(a));
        d.setContentView(healthBox);
        try {
            d.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            d.getWindow().setLayout(XemsUi.dp(a, 860), ViewGroup.LayoutParams.WRAP_CONTENT);
        } catch (Throwable ignored) {
        }
        healthDlg = d;
        d.show();
    }

    static void refreshHealth() {
        if (healthBox != null) {
            healthBox.removeAllViews();
            healthBox.addView(healthView(healthBox.getContext()));
        }
    }

    /** Every condition as a chip (tap = on / off); "Нищо" clears; "Готово" closes. */
    static View healthView(Context c) {
        Input in = AutoSession.getInput();
        LinearLayout box = AutoUi.nativeCard(c);
        box.setPadding(XemsUi.dp(c, 22), XemsUi.dp(c, 16), XemsUi.dp(c, 22), XemsUi.dp(c, 18));
        box.addView(XemsUi.text(c, AiText.t("Какво има клиентът?", "What does the client have?"), 20, XemsUi.TEXT, true));
        AiUi.FlowRow flow = new AiUi.FlowRow(c);
        for (int i = 0; i < AiCoach.HEALTH.length; i++) {
            String k = AiCoach.HEALTH[i];
            if (in.sex == AiModel.Sex.MALE && ("postpartum".equals(k) || "diastasis".equals(k) || "menopause".equals(k))) {
                continue;
            }
            boolean on = AiCoach.healthOn(in, k);
            TextView ch = XemsUi.chip(c, (on ? "✓ " : "") + AiCoach.HEALTH_BG[i], on, XemsUi.AMBER);
            ch.setTextSize(16);
            ch.setOnClickListener(new HealthKey(k));
            flow.add(ch);
        }
        box.addView(flow, XemsUi.matchWrap(c, 12));
        box.addView(label(c, AiText.t("Не се тренира с EMS при", "No EMS with")), XemsUi.matchWrap(c, 16));
        AiUi.FlowRow contra = new AiUi.FlowRow(c);
        for (int i = 0; i < AiCoach.CONTRA.length; i++) {
            String k = AiCoach.CONTRA[i];
            if (in.sex == AiModel.Sex.MALE && "pregnancy".equals(k)) {
                continue;
            }
            boolean on = AiCoach.healthOn(in, k);
            TextView ch = XemsUi.chip(c, (on ? "⊘ " : "") + AiCoach.CONTRA_BG[i], on, XemsUi.DANGER);
            ch.setTextSize(16);
            ch.setOnClickListener(new HealthKey(k));
            contra.add(ch);
        }
        box.addView(contra, XemsUi.matchWrap(c, 6));
        LinearLayout btns = XemsUi.horizontal(c);
        TextView none = XemsUi.button(c, AiText.t("Нищо — здрав/а", "Nothing — healthy"), XemsUi.SECONDARY);
        none.setOnClickListener(new HealthDone(true));
        btns.addView(none, new LinearLayout.LayoutParams(0, XemsUi.dp(c, 56), 1f));
        TextView done = XemsUi.button(c, "✓  " + AiText.t("Готово", "Done"), XemsUi.PRIMARY);
        done.setOnClickListener(new HealthDone(false));
        LinearLayout.LayoutParams dp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 56), 1f);
        dp.leftMargin = XemsUi.dp(c, 12);
        btns.addView(done, dp);
        box.addView(btns, XemsUi.matchWrap(c, 18));
        return box;
    }

    static final class HealthKey implements View.OnClickListener {
        final String key;

        HealthKey(String key) {
            this.key = key;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            AiCoach.toggleHealth(AutoSession.getInput(), key);
            AiTrain.changed();
            refreshHealth();
        }
    }

    static final class HealthDone implements View.OnClickListener {
        final boolean none;

        HealthDone(boolean none) {
            this.none = none;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (none) {
                AiCoach.clearHealth(AutoSession.getInput());
                AiTrain.changed();
            }
            if (healthDlg != null) {
                healthDlg.dismiss();
            }
            healthDlg = null;
            healthBox = null;
        }
    }

    static final class HealthOpen implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            openHealth(AiTrain.activity(v));
        }
    }

    // ================================================================ listeners (named classes: dx)

    static final int N_CLOSE = 2, N_EDIT = 3, N_BACK = 4, N_NEXT = 5, N_CREATE = 6, N_REVISE = 7;

    static final class Nav implements View.OnClickListener {
        final int what;

        Nav(int what) {
            this.what = what;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (what == N_CLOSE) {
                AiTrain.close();
                return;
            }
            if (what == N_BACK) {
                page = Math.max(STEP_CLIENT, page - 1);
            } else if (what == N_NEXT) {
                page = Math.min(STEP_TODAY, page + 1);
            } else if (what == N_CREATE) {
                AiTrain.create(v.getContext());           // the one moment the AI is asked (owner: a button, not at once)
                return;
            } else if (what == N_REVISE) {
                page = STEP_CLIENT;
            } else {
                editClient = true;
            }
            AiTrain.rebuild();
        }
    }

    static final class NumOpen implements View.OnClickListener {
        final int which;

        NumOpen(int which) {
            this.which = which;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            openPad(AiTrain.activity(v), which);
        }
    }

    /** The words of the line: ➤ sends them to the AI; empty = 🎤 (the tablet's speech input). */
    static final class SayClick implements View.OnClickListener {
        final EditText f;

        SayClick(EditText f) {
            this.f = f;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            String t = f.getText() != null ? f.getText().toString().trim() : "";
            if (t.length() == 0) {
                new AiTrain.Mic(false).onClick(v);
                return;
            }
            if (page < RESULT) {
                AiTrain.draft = t;
                AiTrain.create(v.getContext());           // "send" on a step = create with these words
                return;
            }
            AiTrain.draft = "";
            AiTrain.say(v.getContext(), t, false);
        }
    }

    static final class SayKey implements TextView.OnEditorActionListener {
        @Override
        public boolean onEditorAction(TextView v, int id, KeyEvent e) {
            if (id == EditorInfo.IME_ACTION_SEND || (e != null && e.getKeyCode() == KeyEvent.KEYCODE_ENTER)) {
                String t = v.getText() != null ? v.getText().toString().trim() : "";
                if (t.length() > 0) {
                    if (page < RESULT) {
                        AiTrain.draft = t;
                        AiTrain.create(v.getContext());
                        return true;
                    }
                    AiTrain.draft = "";
                    AiTrain.say(v.getContext(), t, false);
                }
                return true;
            }
            return false;
        }
    }

    /** What is typed stays across the screen's rebuilds; the button turns 🎤 ↔ ➤. */
    static final class Draft implements TextWatcher {
        final TalkButton btn;

        Draft(TalkButton btn) {
            this.btn = btn;
        }

        @Override
        public void beforeTextChanged(CharSequence s, int a, int b, int c) {
        }

        @Override
        public void onTextChanged(CharSequence s, int a, int b, int c) {
        }

        @Override
        public void afterTextChanged(Editable s) {
            AiTrain.draft = s != null ? s.toString() : "";
            btn.setSend(AiTrain.draft.trim().length() > 0);
        }
    }

    static final class Phrase implements View.OnClickListener {
        final String phrase;

        Phrase(String phrase) {
            this.phrase = phrase;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            if (page < RESULT) {
                AiTrain.addToDraft(phrase);               // a step: the phrase joins the line, the AI is not asked yet
                return;
            }
            AiTrain.say(v.getContext(), phrase, false);
        }
    }
}
