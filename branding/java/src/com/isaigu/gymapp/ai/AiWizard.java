package com.isaigu.gymapp.ai;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.InputType;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
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
 * The AI training's wizard (owner, 1.1.542: "a wizard is screens one after the other"; tools/ui-shot checks every
 * step at the board's size): one question per screen in the board's place (between the client's row and the dock),
 * a progress line on top, ‹ Назад / Напред › at the bottom.
 * 1 Клиент (sex, age, height, weight → BMI) · 2 Тренировка (goal, active / passive, EMS experience) · 3 Здраве
 * (healthy / an issue → chips) · 4 Кажи на AI (one line, 🎤, ready phrases → ✦ Нагласи) · 5 Резюме (the program,
 * its impulse, the advice, the chat, ▶ Старт). The logic stays in {@link AiTrain}.
 */
public final class AiWizard {
    private AiWizard() {}

    static final int CLIENT = 0, TRAINING = 1, HEALTH = 2, ASK = 3, SUMMARY = 4;
    static final String[] TITLES = {"Клиент", "Тренировка", "Здраве", "Кажи на AI", "Готово"};
    static int step = CLIENT;

    static void reset() {
        step = CLIENT;
    }

    static void build(Context c, LinearLayout content) {
        XemsUi.init(c);
        if (AiTrain.view == AiTrain.SUMMARY && AutoSession.getPlan() != null) {
            step = SUMMARY;
        } else if (step == SUMMARY) {
            step = ASK;
        }
        LinearLayout card = AutoUi.nativeCard(c);
        card.setPadding(XemsUi.dp(c, 22), XemsUi.dp(c, 14), XemsUi.dp(c, 22), XemsUi.dp(c, 14));
        card.addView(header(c), XemsUi.matchWrap(c, 0));
        LinearLayout body = XemsUi.horizontal(c);
        body.setGravity(Gravity.CENTER_VERTICAL);
        switch (step) {
            case CLIENT: client(c, body); break;
            case TRAINING: training(c, body); break;
            case HEALTH: health(c, body); break;
            case ASK: ask(c, body); break;
            default: summary(c, body); break;
        }
        card.addView(body, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        card.addView(footer(c), XemsUi.matchWrap(c, 10));
        content.addView(card, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
    }

    // ================================================================ frame

    private static View header(Context c) {
        LinearLayout h = XemsUi.horizontal(c);
        h.setGravity(Gravity.CENTER_VERTICAL);
        TextView t = XemsUi.text(c, "✦ " + AiText.t("AI тренировка", "AI training"), 15, XemsUi.ACCENT, true);
        h.addView(t);
        TextView s = XemsUi.text(c, "   " + (step + 1) + " / 5 · " + TITLES[step], 15, XemsUi.TEXT, true);
        h.addView(s, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        // progress: five segments, done ones filled
        LinearLayout prog = XemsUi.horizontal(c);
        for (int i = 0; i < 5; i++) {
            View seg = new View(c);
            GradientDrawable g = new GradientDrawable();
            g.setCornerRadius(XemsUi.dp(c, 3));
            g.setColor(i <= step ? XemsUi.ACCENT : XemsUi.STROKE);
            seg.setBackgroundDrawable(g);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(XemsUi.dp(c, 34), XemsUi.dp(c, 6));
            lp.leftMargin = XemsUi.dp(c, 6);
            prog.addView(seg, lp);
        }
        h.addView(prog);
        TextView x = XemsUi.text(c, "  ✕", 20, XemsUi.MUTED, true);
        x.setPadding(XemsUi.dp(c, 14), XemsUi.dp(c, 4), XemsUi.dp(c, 4), XemsUi.dp(c, 4));
        x.setOnClickListener(new Nav(N_CLOSE));
        h.addView(x);
        return h;
    }

    private static View footer(Context c) {
        LinearLayout f = XemsUi.horizontal(c);
        f.setGravity(Gravity.CENTER_VERTICAL);
        if (step > CLIENT) {
            TextView back = XemsUi.button(c, "‹  " + AiText.t("Назад", "Back"), XemsUi.GHOST);
            back.setOnClickListener(new Nav(N_BACK));
            f.addView(back, new LinearLayout.LayoutParams(XemsUi.dp(c, 170), XemsUi.dp(c, 56)));
        }
        View gap = new View(c);
        f.addView(gap, new LinearLayout.LayoutParams(0, 1, 1f));
        if (step == SUMMARY) {
            TextView go = XemsUi.button(c, AiTrain.busy ? "✦  " + AiText.t("AI нагласява…", "The AI is tuning…")
                    : "▶  " + AiText.t("Старт", "Start"), XemsUi.PRIMARY);
            go.setOnClickListener(new AiTrain.Act(AiTrain.A_START));
            if (AiTrain.busy || (AiTrain.free && AiTrain.freePlan == null)) {
                go.setAlpha(0.45f);
                go.setEnabled(false);
            }
            f.addView(go, new LinearLayout.LayoutParams(XemsUi.dp(c, 280), XemsUi.dp(c, 60)));
        } else {
            String label = step == ASK ? "✦  " + AiText.t("Нагласи с AI", "Tune with AI") : AiText.t("Напред", "Next") + "  ›";
            TextView next = XemsUi.button(c, label, step == ASK ? XemsUi.PRIMARY : XemsUi.ACCENT_BTN);
            next.setOnClickListener(new Nav(N_NEXT));
            f.addView(next, new LinearLayout.LayoutParams(XemsUi.dp(c, 260), XemsUi.dp(c, 56)));
        }
        return f;
    }

    // ================================================================ 1 · client

    private static void client(Context c, LinearLayout body) {
        Input in = AutoSession.getInput();
        LinearLayout sex = XemsUi.vertical(c);
        sex.addView(label(c, AiText.t("Пол", "Sex")));
        sex.addView(choice(c, AiText.t("Мъж", "Male"), null, in.sex == AiModel.Sex.MALE, new AiTrain.Pick(AiTrain.P_SEX), 0),
                fill(c, 6, 1));
        sex.addView(choice(c, AiText.t("Жена", "Female"), null, in.sex == AiModel.Sex.FEMALE,
                new AiTrain.Pick(AiTrain.P_SEX), 1), fill(c, 8, 1));
        body.addView(sex, new LinearLayout.LayoutParams(XemsUi.dp(c, 190), ViewGroup.LayoutParams.MATCH_PARENT));
        body.addView(number(c, AiText.t("Възраст", "Age"), "" + in.age, AiText.t("години", "years"), AiTrain.S_AGE), colW(c, 1f, 18));
        body.addView(number(c, AiText.t("Ръст", "Height"), "" + in.heightCm, "cm", AiTrain.S_HEIGHT), colW(c, 1f, 14));
        body.addView(number(c, AiText.t("Тегло", "Weight"), "" + Math.round(in.weightKg), "kg", AiTrain.S_WEIGHT), colW(c, 1f, 14));
        double bmi = AiCoach.bmi(in);
        LinearLayout b = tile(c);
        b.setGravity(Gravity.CENTER);
        b.addView(label(c, AiText.t("ИТМ", "BMI")));
        b.addView(XemsUi.text(c, bmi > 0 ? String.format(Locale.ROOT, "%.1f", bmi) : "—", 56, bmi >= 30 ? XemsUi.AMBER
                : XemsUi.TEXT, true));
        b.addView(XemsUi.text(c, AiCoach.bmiClass(bmi), 14, XemsUi.MUTED, true));
        body.addView(b, colW(c, 0.8f, 14));
    }

    /** A big number with − / + under it (the value never wraps). */
    private static View number(Context c, String title, String value, String unit, int which) {
        LinearLayout t = tile(c);
        t.setGravity(Gravity.CENTER);                   // the number and its − / + in the middle of the tall card
        TextView lt = label(c, title);
        lt.setGravity(Gravity.CENTER);
        t.addView(lt, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView v = XemsUi.text(c, value, 64, XemsUi.TEXT, true);
        v.setMaxLines(1);
        v.setGravity(Gravity.CENTER);
        t.addView(v, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView u = XemsUi.text(c, unit, 13, XemsUi.MUTED, false);
        u.setGravity(Gravity.CENTER);
        t.addView(u, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        LinearLayout pm = XemsUi.horizontal(c);
        TextView minus = XemsUi.button(c, "−", XemsUi.SECONDARY);
        minus.setTextSize(30);
        minus.setOnClickListener(new StepClick(which, -1));
        pm.addView(minus, new LinearLayout.LayoutParams(0, XemsUi.dp(c, 72), 1f));
        TextView plus = XemsUi.button(c, "+", XemsUi.SECONDARY);
        plus.setTextSize(30);
        plus.setOnClickListener(new StepClick(which, 1));
        LinearLayout.LayoutParams pp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 72), 1f);
        pp.leftMargin = XemsUi.dp(c, 10);
        pm.addView(plus, pp);
        t.addView(pm, XemsUi.matchWrap(c, 24));
        return t;
    }

    // ================================================================ 2 · training

    private static void training(Context c, LinearLayout body) {
        Input in = AutoSession.getInput();
        Goal[] goals = {Goal.TONE, Goal.SLIM, Goal.HEALTH};
        String[] sub = {AiText.t("тонус, оформяне, сила", "tone, shape, strength"),
                AiText.t("повече разход, по-малко мазнини", "more burn, less fat"),
                AiText.t("гръб, стави, възстановяване", "back, joints, recovery")};
        LinearLayout left = XemsUi.vertical(c);
        left.addView(label(c, AiText.t("Цел", "Goal")));
        LinearLayout cards = XemsUi.horizontal(c);
        for (int i = 0; i < goals.length; i++) {
            View card = choice(c, AutoUi.goalName(goals[i]), sub[i], in.goal == goals[i], new AiTrain.Pick(AiTrain.P_GOAL), i);
            cards.addView(card, colW(c, 1f, i == 0 ? 0 : 10));
        }
        left.addView(cards, fill(c, 6, 1));
        body.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.7f));
        LinearLayout right = XemsUi.vertical(c);
        right.addView(label(c, AiText.t("Вид", "Kind")));
        boolean both = !AutoCatalog.menu(in.goal, Kind.ACTIVE).isEmpty() && !AutoCatalog.menu(in.goal, Kind.PASSIVE).isEmpty();
        LinearLayout kind = XemsUi.horizontal(c);
        kind.addView(choice(c, AiText.t("Активна", "Active"), AiText.t("с упражнения", "with exercises"),
                in.kind == Kind.ACTIVE, both ? new AiTrain.Pick(AiTrain.P_KIND) : null, 0), colW(c, 1f, 0));
        kind.addView(choice(c, AiText.t("Пасивна", "Passive"), AiText.t("в покой", "at rest"), in.kind == Kind.PASSIVE,
                both ? new AiTrain.Pick(AiTrain.P_KIND) : null, 1), colW(c, 1f, 10));
        right.addView(kind, fill(c, 6, 1));
        right.addView(label(c, AiText.t("Опит с EMS", "EMS experience")), XemsUi.matchWrap(c, 12));
        right.addView(XemsUi.segmented(c, new String[] {AiText.t("Първи път", "First time"), AiText.t("Няколко", "A few"),
                AiText.t("Редовно", "Regularly")}, AiCoach.experienceOf(in), new AiTrain.Pick(AiTrain.P_EXP)),
                XemsUi.matchWrap(c, 6));
        right.addView(label(c, AiText.t("Програма", "Program")), XemsUi.matchWrap(c, 12));
        right.addView(XemsUi.segmented(c, new String[] {AiText.t("Готова", "Ready"), AiText.t("✦ AI да състави", "✦ The AI writes it")},
                AiTrain.free ? 1 : 0, new AiTrain.Pick(AiTrain.P_FREE)), XemsUi.matchWrap(c, 6));
        body.addView(right, colW(c, 1.1f, 22));
    }

    // ================================================================ 3 · health

    private static void health(Context c, LinearLayout body) {
        Input in = AutoSession.getInput();
        boolean any = AiCoach.anyHealth(in) || AiTrain.healthOpen;
        LinearLayout left = XemsUi.vertical(c);
        left.addView(choice(c, "✓ " + AiText.t("Здрав", "Healthy"), AiText.t("нищо за отбелязване", "nothing to note"), !any,
                new AiTrain.Pick(AiTrain.P_HEALTH), 0), fill(c, 0, 1));
        left.addView(choice(c, AiText.t("Има проблем", "Has an issue"), AiText.t("избери кое", "pick which"), any,
                new AiTrain.Pick(AiTrain.P_HEALTH), 1), fill(c, 10, 1));
        body.addView(left, new LinearLayout.LayoutParams(XemsUi.dp(c, 250), ViewGroup.LayoutParams.MATCH_PARENT));
        if (!any) {
            TextView hint = XemsUi.text(c, AiText.t("Ако има нещо — болки, диабет, кръвно, бременност, лекарства — избери „Има проблем“.\nДруго можеш да кажеш на AI на следващата стъпка.",
                    "If there is anything — pain, diabetes, blood pressure, pregnancy, medicines — pick “Has an issue”.\nAnything else you can tell the AI on the next step."),
                    16, XemsUi.MUTED, false);
            body.addView(hint, colW(c, 1f, 28));
            return;
        }
        AiUi.FlowRow flow = new AiUi.FlowRow(c);
        for (int i = 0; i < AiCoach.HEALTH.length; i++) {
            String k = AiCoach.HEALTH[i];
            if (in.sex == AiModel.Sex.MALE && ("postpartum".equals(k) || "diastasis".equals(k) || "menopause".equals(k))) {
                continue;
            }
            boolean on = AiCoach.healthOn(in, k);
            TextView ch = XemsUi.chip(c, (on ? "✓ " : "") + AiCoach.HEALTH_BG[i], on, XemsUi.AMBER);
            ch.setTextSize(16);
            ch.setOnClickListener(new AiTrain.Health(k));
            flow.add(ch);
        }
        for (int i = 0; i < AiCoach.CONTRA.length; i++) {
            String k = AiCoach.CONTRA[i];
            if (in.sex == AiModel.Sex.MALE && "pregnancy".equals(k)) {
                continue;
            }
            boolean on = AiCoach.healthOn(in, k);
            TextView ch = XemsUi.chip(c, (on ? "⊘ " : "") + AiCoach.CONTRA_BG[i], on, XemsUi.DANGER);
            ch.setTextSize(16);
            ch.setOnClickListener(new AiTrain.Health(k));
            flow.add(ch);
        }
        ScrollView sc = new ScrollView(c);
        sc.addView(flow);
        body.addView(sc, colW(c, 1f, 24));
    }

    // ================================================================ 4 · ask the AI

    private static void ask(Context c, LinearLayout body) {
        LinearLayout left = XemsUi.vertical(c);
        left.addView(label(c, AiText.t("Още нещо за клиента? (по желание)", "Anything else about the client? (optional)")));
        LinearLayout row = XemsUi.horizontal(c);
        row.setGravity(Gravity.CENTER_VERTICAL);
        EditText f = new EditText(c);
        f.setHint(AiText.t("напр. „днес е уморена, болят я коленете, иска повече корем“",
                "e.g. “tired today, knees hurt, wants more abs”"));
        f.setText(AiTrain.draft);
        f.setTextSize(18);
        f.setTextColor(XemsUi.TEXT);
        f.setHintTextColor(XemsUi.HINT);
        f.setMinLines(2);
        f.setMaxLines(3);
        f.setGravity(Gravity.TOP | Gravity.START);
        f.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_CAP_SENTENCES | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        f.setImeOptions(EditorInfo.IME_ACTION_DONE);
        f.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(c, 16), XemsUi.STROKE, XemsUi.dp(c, 1)));
        f.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
        AiTrain.intakeField = f;
        row.addView(f, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView mic = XemsUi.button(c, "🎤", XemsUi.ACCENT_BTN);
        mic.setTextSize(30);
        mic.setOnClickListener(new AiTrain.Mic(false));
        LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(XemsUi.dp(c, 96), XemsUi.dp(c, 96));
        mp.leftMargin = XemsUi.dp(c, 14);
        row.addView(mic, mp);
        left.addView(row, XemsUi.matchWrap(c, 6));
        AiUi.FlowRow quick = new AiUi.FlowRow(c);
        String[] ex = {AiText.t("днес е уморен/а", "tired today"), AiText.t("не е закусил/а", "no breakfast"),
                AiText.t("болят го/я коленете", "knees hurt"), AiText.t("кръстът го/я боли", "low back hurts"),
                AiText.t("повече корем", "more abs"), AiText.t("повече седалище", "more glutes"),
                AiText.t("по-леко днес", "lighter today"), AiText.t("само 20 минути", "only 20 minutes")};
        for (String e : ex) {
            TextView ch = XemsUi.chip(c, "+ " + e, false, XemsUi.ACCENT);
            ch.setOnClickListener(new AddPhrase(e));
            quick.add(ch);
        }
        left.addView(quick, XemsUi.matchWrap(c, 10));
        body.addView(left, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        body.addView(new View(c), new LinearLayout.LayoutParams(XemsUi.dp(c, 4), 1));
    }

    // ================================================================ 5 · summary

    private static void summary(Context c, LinearLayout body) {
        Input in = AutoSession.getInput();
        AutoModel.Plan plan = AutoSession.getPlan();
        // ---- the training (scrolls when the board is low)
        LinearLayout box1 = tile(c);
        LinearLayout col1 = XemsUi.vertical(c);
        ScrollView s1 = new ScrollView(c);
        s1.addView(col1);
        box1.addView(s1, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        if (AiTrain.free) {
            freeTraining(c, col1);
        } else {
            TextView name = XemsUi.text(c, plan.program.name(), 22, XemsUi.TEXT, true);
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            col1.addView(name);
            col1.addView(XemsUi.text(c, AutoUi.goalName(in.goal) + " · " + (plan.program.isActive()
                    ? AiText.t("активна", "active") : AiText.t("пасивна", "passive")) + " · "
                    + AutoUi.levelName(plan.program.level), 14, XemsUi.MUTED, true), XemsUi.matchWrap(c, 2));
            int[] tm = AutoCatalog.times(plan.program, in.goal, in);
            LinearLayout tiles = XemsUi.horizontal(c);
            tiles.addView(big(c, (tm[0] + tm[1]) / 60 + "′", AiText.t("активна", "active")), colW(c, 1f, 0));
            tiles.addView(big(c, tm[2] / 60 + "′", AiText.t("възстановяване", "recovery")), colW(c, 1f, 8));
            tiles.addView(big(c, plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : ""), AiText.t("усещане / 10", "feel / 10")),
                    colW(c, 1f, 8));
            col1.addView(tiles, XemsUi.matchWrap(c, 10));
            AutoModel.Step s = AiTrain.mainStep(plan);
            if (s != null) {
                int hz = AutoSession.vetoHz > 0 ? Math.min(AutoSession.vetoHz, SafeLimits.hzMax(in.age)) : s.hz;
                int on = AutoSession.vetoOn > 0 ? AutoSession.vetoOn : s.onS;
                int off = AutoSession.vetoOff > 0 ? AutoSession.vetoOff : s.offS;
                col1.addView(XemsUi.text(c, hz + " Hz · " + on + " s " + AiText.t("импулс", "on") + " / " + off + " s "
                        + AiText.t("пауза", "pause") + " · " + s.pwUs + " µs" + (plan.doublePulseAllowed && in.doublePulse
                        ? AiText.t(" · двоен импулс", " · double impulse") : ""), 15, XemsUi.TEXT, true), XemsUi.matchWrap(c, 10));
                if (AutoSession.vetoReason != null) {
                    col1.addView(XemsUi.text(c, "✦ " + AutoSession.vetoReason, 13, XemsUi.AMBER, true), XemsUi.matchWrap(c, 4));
                }
            }
            col1.addView(XemsUi.text(c, AiText.t("Силата тръгва от 0 — качваш я с + по време на тренировката.",
                    "The strength starts at 0 — raise it with + during the session."), 13, XemsUi.MUTED, false), XemsUi.matchWrap(c, 8));
        }
        body.addView(box1, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.1f));
        // ---- why, and what to do before: the AI's word, short; one line to change something
        LinearLayout col2 = tile(c);
        col2.addView(label(c, "✦ " + AiText.t("AI реши", "The AI decided")));
        String why = lastAiWord();
        TextView w = XemsUi.text(c, AiTrain.busy ? AiText.t("Нагласям тренировката за клиента…", "Tuning the session for the client…")
                : why.length() > 0 ? why : AiText.t("Няма връзка с AI — тренировката е по алгоритъма и пак е готова.",
                "No AI connection — the session follows the algorithm and is ready."), 17, XemsUi.TEXT, false);
        col2.addView(w, XemsUi.matchWrap(c, 6));
        String[] adv = AiCoach.advice();
        if (adv != null) {
            String before = adv[4];                         // ADVICE: exercise, load, rest, equipment, before, during, after
            String during = adv[5];
            if (before != null && before.length() > 0) {
                col2.addView(label(c, AiText.t("Преди старта", "Before the start")), XemsUi.matchWrap(c, 14));
                col2.addView(XemsUi.text(c, before, 15, XemsUi.TEXT, false), XemsUi.matchWrap(c, 3));
            }
            if (during != null && during.length() > 0) {
                col2.addView(label(c, AiText.t("По време", "During")), XemsUi.matchWrap(c, 10));
                col2.addView(XemsUi.text(c, during, 15, XemsUi.TEXT, false), XemsUi.matchWrap(c, 3));
            }
        }
        if (AiTrain.pending != null && !AiTrain.busy) {
            AiUi.FlowRow opts = new AiUi.FlowRow(c);
            for (String o : AiTrain.pending) {
                TextView ch = XemsUi.chip(c, o, false, XemsUi.ACCENT);
                ch.setTextSize(16);
                ch.setOnClickListener(new AiTrain.Quick(o, false));
                opts.add(ch);
            }
            col2.addView(opts, XemsUi.matchWrap(c, 10));
        }
        View gap = new View(c);
        col2.addView(gap, new LinearLayout.LayoutParams(1, 0, 1f));
        col2.addView(AiTrain.inputRow(c, false), XemsUi.matchWrap(c, 8));
        body.addView(col2, colW(c, 1.15f, 16));
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
            col.addView(XemsUi.text(c, AiTrain.busy ? "✦ " + AiText.t("AI съставя тренировката…", "The AI is writing the workout…")
                    : AiText.t("Натисни „✦ Нова от AI“, за да я състави.", "Tap “✦ New by the AI” to write it."), 16,
                    XemsUi.MUTED, false));
            return;
        }
        TextView name = XemsUi.text(c, p.title.length() > 0 ? p.title : AiText.t("AI тренировка", "AI workout"), 20, XemsUi.TEXT, true);
        name.setSingleLine(true);
        name.setEllipsize(TextUtils.TruncateAt.END);
        col.addView(name);
        LinearLayout list = XemsUi.vertical(c);
        List<String> ls = AiWorkout.lines(p);
        for (int i = 0; i < ls.size(); i++) {
            list.addView(XemsUi.text(c, (i + 1) + ". " + ls.get(i), 14, XemsUi.TEXT, true), XemsUi.matchWrap(c, i == 0 ? 4 : 8));
            String how = p.items.get(i).how;
            if (how.length() > 0) {
                list.addView(XemsUi.text(c, how, 13, XemsUi.MUTED, false), XemsUi.matchWrap(c, 1));
            }
        }
        col.addView(list, XemsUi.matchWrap(c, 0));
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
        t.setLetterSpacing(0.08f);
        return t;
    }

    private static View big(Context c, String value, String cap) {
        LinearLayout t = XemsUi.vertical(c);
        t.setGravity(Gravity.CENTER);
        t.setPadding(0, XemsUi.dp(c, 8), 0, XemsUi.dp(c, 8));
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.CARD, XemsUi.dp(c, 14), XemsUi.STROKE, XemsUi.dp(c, 1)));
        TextView v = XemsUi.text(c, value, 26, XemsUi.TEXT, true);
        v.setMaxLines(1);
        v.setGravity(Gravity.CENTER);
        t.addView(v, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView k = XemsUi.text(c, cap, 12, XemsUi.MUTED, true);
        k.setGravity(Gravity.CENTER);
        k.setMaxLines(1);
        t.addView(k, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return t;
    }

    /** A big selectable card: title, a line under it; selected = accent frame and tint. */
    private static View choice(Context c, String title, String sub, boolean on, XemsUi.OnIndex pick, int index) {
        LinearLayout b = XemsUi.vertical(c);
        b.setGravity(Gravity.CENTER);
        b.setPadding(XemsUi.dp(c, 12), XemsUi.dp(c, 10), XemsUi.dp(c, 12), XemsUi.dp(c, 10));
        b.setBackgroundDrawable(XemsUi.rounded(on ? XemsUi.alpha(XemsUi.ACCENT, 0x2A) : XemsUi.SURFACE, XemsUi.dp(c, 16),
                on ? XemsUi.ACCENT : XemsUi.STROKE, XemsUi.dp(c, on ? 2 : 1)));
        TextView t = XemsUi.text(c, title, 20, on ? XemsUi.ACCENT : XemsUi.TEXT, true);
        t.setGravity(Gravity.CENTER);
        t.setMaxLines(1);
        b.addView(t);
        if (sub != null) {
            TextView s = XemsUi.text(c, sub, 13, XemsUi.MUTED, false);
            s.setGravity(Gravity.CENTER);
            b.addView(s, XemsUi.matchWrap(c, 2));
        }
        if (pick != null) {
            b.setOnClickListener(new Choose(pick, index));
        } else if (!on) {
            b.setAlpha(0.4f);
        }
        return b;
    }

    private static LinearLayout.LayoutParams colW(Context c, float w, int leftDp) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, w);
        p.leftMargin = XemsUi.dp(c, leftDp);
        return p;
    }

    private static LinearLayout.LayoutParams fill(Context c, int topDp, float w) {
        LinearLayout.LayoutParams p = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, w);
        p.topMargin = XemsUi.dp(c, topDp);
        return p;
    }

    // ================================================================ listeners (named classes: dx)

    static final int N_BACK = 0, N_NEXT = 1, N_CLOSE = 2;

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
                if (step == SUMMARY) {
                    AiTrain.view = AiTrain.INTAKE;
                    step = ASK;
                } else if (step > CLIENT) {
                    step--;
                }
            } else if (step == ASK) {
                AiTrain.tune(v.getContext());              // → the summary (the AI answers into it)
                step = SUMMARY;
            } else if (step < ASK) {
                step++;
            }
            AiTrain.rebuild();
        }
    }

    static final class Choose implements View.OnClickListener {
        final XemsUi.OnIndex pick;
        final int index;

        Choose(XemsUi.OnIndex pick, int index) {
            this.pick = pick;
            this.index = index;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            pick.onIndex(index);
        }
    }

    static final class StepClick implements View.OnClickListener {
        final int which;
        final int dir;

        StepClick(int which, int dir) {
            this.which = which;
            this.dir = dir;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            new AiTrain.Step(which).onStep(dir);
        }
    }

    static final class AddPhrase implements View.OnClickListener {
        final String phrase;

        AddPhrase(String phrase) {
            this.phrase = phrase;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            String now = AiTrain.intakeField != null && AiTrain.intakeField.getText() != null
                    ? AiTrain.intakeField.getText().toString().trim() : AiTrain.draft;
            AiTrain.draft = (now != null && now.length() > 0 ? now + ", " : "") + phrase;
            AiTrain.rebuild();
        }
    }
}
