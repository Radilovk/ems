package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AiModel.Goal;
import com.isaigu.gymapp.ai.AiModel.Mode;
import com.isaigu.gymapp.ai.AiModel.SessionInput;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * The AI coach of the Smart Session (owner, 1.1.535 — docs/xems-ai-coach.md). Pure Java.
 *
 * <p>The intake (sex, age, height, weight → BMI, experience, goal, active / passive, health) fills the
 * {@link SessionInput}; the planner computes the plan. Then a dialogue: each message goes with the inputs, the plan
 * and the chat to the server's model ({@code /v1/ai/brief}, kind "coach"), which answers with a short reply, at most
 * one question (≤ 3 in all), a patch of the inputs, a live tune of the running impulse and the session's advice.
 * This class keeps the dialogue, builds the request, reads the answer and applies the input patch; the live part
 * goes through {@link AiSession#coachLive}.
 */
public final class AiCoach {
    private AiCoach() {}

    /** Health on the intake: conditions (AiPersonal / the coach) and the medicines that change the plan. */
    public static final String[] HEALTH = {"knees", "back", "neck", "joints", "diabetes", "insulin", "hypertension",
            "heart", "thyroid", "varicose", "osteo", "postpartum", "diastasis", "menopause", "beta_blocker", "anticoag"};
    public static final String[] HEALTH_BG = {"колене", "гръб / кръст", "врат", "стави", "диабет", "инсулин / хапчета",
            "високо кръвно", "сърце", "щитовидна", "разширени вени", "остеопороза", "след раждане", "диастаза",
            "менопауза", "бета-блокер", "разреждащи кръвта"};
    /** Contraindications on the intake (they block the session as ever). */
    public static final String[] CONTRA = {"pregnancy", "implant", "epilepsy", "cancer", "recent_surgery"};
    public static final String[] CONTRA_BG = {"бременност", "пейсмейкър / имплант", "епилепсия", "онкология",
            "скорошна операция"};

    static final String[] COND_ALL = {"menopause", "prediabetes", "diabetes", "insulin", "pcos", "thyroid", "water",
            "postpartum", "back", "neck", "knees", "joints", "injury", "diastasis", "osteo", "varicose", "desk", "stress",
            "sleep", "senior", "sensitive", "hypertension", "heart", "anticoag", "beta_blocker", "obesity"};
    static final String[] TODAY_ALL = {"t_sleep", "t_food", "t_active", "t_stress", "t_sore", "t_period", "t_gentle"};
    static final String[] FOCUS_ALL = {"abs", "glutes", "legs", "arms", "back", "chest"};
    static final String[] CONTRA_ALL = {"pregnancy", "implant", "cardiovascular", "circulation", "hernia", "cancer",
            "bleeding", "epilepsy", "neurological", "recent_surgery", "skin_lesion", "kidney", "tuberculosis"};
    /** Goal names in AiModel.Goal order. */
    static final String[] GOAL_BG = {"стягане", "отслабване", "релакс", "дренаж", "целулит"};
    static final String[] ACTIONS = {"softer", "stronger", "pause", "resume", "continue", "to_cooldown", "double_on",
            "double_off", "skip", "to_recovery"};
    /** Advice keys, in the order shown. */
    public static final String[] ADVICE = {"exercise", "load", "rest", "equipment", "before", "during", "after"};
    public static final String[] ADVICE_BG = {"Упражнения", "Натоварване", "В почивките", "Тежест", "Преди", "По време",
            "След"};

    /** One message of the dialogue. */
    public static final class Turn {
        public final boolean ai;
        public final String text;
        /** An AI turn that asked a question (counts toward the 3). */
        public final boolean question;

        Turn(boolean ai, String text, boolean question) {
            this.ai = ai;
            this.text = text;
            this.question = question;
        }
    }

    /** The model's answer, already limited to known keys and windows. */
    public static final class Reply {
        public String reply = "";
        public String question;
        public final List<String> options = new ArrayList<String>();
        public String goal;
        public String mode;
        /** Auto domain: a program of the menu, and soft / standard / intense. */
        public String program;
        public String intensity;
        /** Auto domain: the AI's veto on the planner's main impulse (null = none), with its reason. */
        public Integer vetoHz;
        public Integer vetoOn;
        public Integer vetoOff;
        public String vetoReason;
        public Integer minutes;
        public Boolean doubleImpulse;
        public final List<String> condAdd = new ArrayList<String>();
        public final List<String> condRemove = new ArrayList<String>();
        public final List<String> focusAdd = new ArrayList<String>();
        public final List<String> todayAdd = new ArrayList<String>();
        public final List<String> contraAdd = new ArrayList<String>();
        public final List<String> actions = new ArrayList<String>();
        public Integer onDelta;
        public Integer offDelta;
        public Integer hzPct;
        public Integer restPct;
        public Integer endInMin;
        /** null = no change of the advice this turn. */
        public String[] advice;

        public boolean hasQuestion() {
            return question != null && question.length() > 0 && options.size() >= 2;
        }

        public boolean hasLive() {
            return !actions.isEmpty() || onDelta != null || offDelta != null || hzPct != null || restPct != null
                    || endInMin != null;
        }
    }

    // ================================================================ the dialogue

    private static final List<Turn> chat = new ArrayList<Turn>();
    private static String[] advice;
    /** Conditions as the session began (the profile's): what the dialogue added is offered for saving. */
    private static final Set<String> condAtStart = new HashSet<String>();
    private static final Set<String> condLearned = new HashSet<String>();

    /** A new session: empty dialogue, the profile's conditions as the base. */
    public static void reset(SessionInput in) {
        chat.clear();
        advice = null;
        condAtStart.clear();
        condLearned.clear();
        if (in != null) {
            condAtStart.addAll(in.cond);
        }
    }

    public static List<Turn> chat() {
        return chat;
    }

    public static String[] advice() {
        return advice;
    }

    public static int questionsAsked() {
        int n = 0;
        for (Turn t : chat) {
            if (t.ai && t.question) {
                n++;
            }
        }
        return n;
    }

    /** Conditions the dialogue found that the profile does not have (the "✓ Запази в профила" button). */
    public static Set<String> learned() {
        Set<String> s = new HashSet<String>(condLearned);
        s.removeAll(condAtStart);
        return s;
    }

    /** The profile now has them. */
    public static void savedLearned() {
        condAtStart.addAll(condLearned);
    }

    public static void userSaid(String text) {
        chat.add(new Turn(false, text, false));
    }

    public static void aiSaid(Reply r) {
        String t = r.reply != null ? r.reply : "";
        if (r.hasQuestion()) {
            t = (t.length() > 0 ? t + " " : "") + r.question;
        }
        if (t.length() > 0) {
            chat.add(new Turn(true, t, r.hasQuestion()));
        }
        if (r.advice != null) {
            advice = r.advice;
        }
    }

    // ================================================================ request

    /** Body mass index (0 when the height is unknown). */
    public static double bmi(SessionInput in) {
        return in.heightCm > 0 ? in.weightKg / Math.pow(in.heightCm / 100.0, 2) : 0;
    }

    public static String bmiClass(double bmi) {
        if (bmi <= 0) return "";
        if (bmi < 18.5) return "поднормено";
        if (bmi < 25) return "нормално";
        if (bmi < 30) return "наднормено";
        if (bmi < 35) return "затлъстяване I";
        if (bmi < 40) return "затлъстяване II";
        return "затлъстяване III";
    }

    /**
     * The request fields: kind "coach", the latest message, CONTEXT (inputs, BMI, plan, the running state) and the
     * chat before it. {@code planLine} / {@code runLine}: short JSON objects the Android side builds (null = none).
     */
    public static String requestFields(SessionInput in, String text, String planJson, String runJson, boolean running) {
        StringBuilder b = new StringBuilder();
        b.append("\"kind\":\"coach\",\"text\":").append(AiBrief.q(text));
        b.append(",\"context\":{\"session\":").append(AiBrief.q(running ? "RUNNING" : "PLANNING"));
        b.append(",\"sex\":").append(AiBrief.q(in.sex.name())).append(",\"age\":").append(in.age);
        if (in.heightCm > 0) {
            b.append(",\"height_cm\":").append(in.heightCm);
        }
        b.append(",\"weight_kg\":").append(Math.round(in.weightKg));
        double bmi = bmi(in);
        if (bmi > 0) {
            b.append(",\"bmi\":").append(String.format(Locale.ROOT, "%.1f", bmi))
                    .append(",\"bmi_class\":").append(AiBrief.q(bmiClass(bmi)));
        }
        b.append(",\"fitness\":").append(AiBrief.q(in.fitness.name()));
        b.append(",\"ems_sessions\":").append(in.sessions);
        b.append(",\"goal\":").append(AiBrief.q(in.goal.name())).append(",\"mode\":").append(AiBrief.q(in.mode.name()));
        b.append(",\"cond\":").append(list(in.cond)).append(",\"today\":").append(list(in.today))
                .append(",\"focus\":").append(list(in.focus));
        List<String> contra = new ArrayList<String>();
        for (Map.Entry<String, Boolean> e : in.screening.contraindications.entrySet()) {
            if (Boolean.TRUE.equals(e.getValue())) {
                contra.add(e.getKey());
            }
        }
        b.append(",\"contra\":").append(list(contra));
        if (planJson != null) {
            b.append(",\"plan\":").append(planJson);
        }
        if (runJson != null) {
            b.append(",\"now\":").append(runJson);
        }
        b.append("},\"chat\":[");
        int start = Math.max(0, chat.size() - 12);
        for (int i = start; i < chat.size(); i++) {
            Turn t = chat.get(i);
            if (i > start) {
                b.append(',');
            }
            b.append("{\"role\":").append(t.ai ? "\"ai\"" : "\"trainer\"").append(",\"text\":").append(AiBrief.q(t.text));
            if (t.question) {
                b.append(",\"q\":true");
            }
            b.append('}');
        }
        b.append(']');
        return b.toString();
    }

    private static String list(java.util.Collection<String> c) {
        StringBuilder b = new StringBuilder("[");
        int n = 0;
        for (String s : c) {
            b.append(n++ > 0 ? "," : "").append(AiBrief.q(s));
        }
        return b.append(']').toString();
    }

    // ================================================================ response

    /** {@code {"ok":true,"coach":{…}}} → the reply; null when the server said no or the JSON is broken. */
    public static Reply parse(String response) {
        Object root;
        try {
            root = new AiBrief.Json(response).value();
        } catch (RuntimeException e) {
            return null;
        }
        if (!(root instanceof Map) || !Boolean.TRUE.equals(((Map<?, ?>) root).get("ok"))
                || !(((Map<?, ?>) root).get("coach") instanceof Map)) {
            return null;
        }
        Map<?, ?> m = (Map<?, ?>) ((Map<?, ?>) root).get("coach");
        Reply r = new Reply();
        r.reply = str(m.get("reply"), 260);
        if (m.get("question") instanceof Map) {
            Map<?, ?> q = (Map<?, ?>) m.get("question");
            String t = str(q.get("text"), 140);
            if (t.length() > 0 && q.get("options") instanceof List) {
                for (Object o : (List<?>) q.get("options")) {
                    String s = str(o, 40);
                    if (s.length() > 0 && r.options.size() < 4) {
                        r.options.add(s);
                    }
                }
                r.question = r.options.size() >= 2 && questionsAsked() < 3 ? t : null;
                if (r.question == null) {
                    r.options.clear();
                }
            }
        }
        r.goal = one(m.get("goal"), "TONE", "FAT", "MASSAGE", "DRAIN", "CELLULITE", "SLIM", "HEALTH");
        r.program = m.get("program") instanceof String && AutoCatalog.get((String) m.get("program")) != null
                ? (String) m.get("program") : null;
        r.intensity = one(m.get("intensity"), "SOFT", "STANDARD", "INTENSE");
        if (m.get("veto") instanceof Map) {
            Map<?, ?> v = (Map<?, ?>) m.get("veto");
            r.vetoReason = str(v.get("reason"), 120);
            r.vetoHz = num(v.get("hz"), 1, 120);
            r.vetoOn = num(v.get("on_s"), 1, 10);
            r.vetoOff = num(v.get("off_s"), 1, 10);
            if (r.vetoReason.length() == 0 || (r.vetoHz == null && r.vetoOn == null && r.vetoOff == null)) {
                r.vetoReason = null;
                r.vetoHz = r.vetoOn = r.vetoOff = null;
            }
        }
        r.mode = one(m.get("mode"), "ACTIVE", "PASSIVE");
        r.minutes = num(m.get("minutes"), 10, 25);
        r.doubleImpulse = m.get("double_impulse") instanceof Boolean ? (Boolean) m.get("double_impulse") : null;
        strings(m.get("cond_add"), COND_ALL, r.condAdd);
        strings(m.get("cond_remove"), COND_ALL, r.condRemove);
        strings(m.get("focus_add"), FOCUS_ALL, r.focusAdd);
        strings(m.get("today_add"), TODAY_ALL, r.todayAdd);
        strings(m.get("contra_add"), CONTRA_ALL, r.contraAdd);
        strings(m.get("actions"), ACTIONS, r.actions);
        r.onDelta = num(m.get("on_delta"), -2, 2);
        r.offDelta = num(m.get("off_delta"), -2, 3);
        r.hzPct = num(m.get("hz_pct"), -15, 15);
        r.restPct = num(m.get("rest_pct"), -30, 60);
        r.endInMin = num(m.get("end_in_min"), 0, 25);
        if (m.get("advice") instanceof Map) {
            Map<?, ?> a = (Map<?, ?>) m.get("advice");
            String[] out = new String[ADVICE.length];
            boolean any = false;
            for (int i = 0; i < ADVICE.length; i++) {
                out[i] = str(a.get(ADVICE[i]), 170);
                any |= out[i].length() > 0;
            }
            r.advice = any ? out : null;
        }
        return r;
    }

    // ================================================================ the Auto domain (owner, 1.1.537)

    /** A new AI training on the automatic mode: empty dialogue, the client's conditions as the base. */
    public static void resetAuto(AutoModel.Input in) {
        chat.clear();
        advice = null;
        condAtStart.clear();
        condLearned.clear();
        if (in != null) {
            condAtStart.addAll(in.cond);
        }
    }

    public static double bmi(AutoModel.Input in) {
        return in.heightCm > 0 ? in.weightKg / Math.pow(in.heightCm / 100.0, 2) : 0;
    }

    /** Request fields for the Auto domain: inputs, the menu of programs, the plan, the running state, the chat. */
    public static String requestFieldsAuto(AutoModel.Input in, String text, String planJson, String runJson,
                                           boolean running) {
        StringBuilder b = new StringBuilder();
        b.append("\"kind\":\"coach\",\"domain\":\"auto\",\"text\":").append(AiBrief.q(text));
        b.append(",\"context\":{\"session\":").append(AiBrief.q(running ? "RUNNING" : "PLANNING"));
        b.append(",\"sex\":").append(AiBrief.q(in.sex.name())).append(",\"age\":").append(in.age);
        if (in.heightCm > 0) {
            b.append(",\"height_cm\":").append(in.heightCm);
        }
        b.append(",\"weight_kg\":").append(Math.round(in.weightKg));
        double bmi = bmi(in);
        if (bmi > 0) {
            b.append(",\"bmi\":").append(String.format(Locale.ROOT, "%.1f", bmi))
                    .append(",\"bmi_class\":").append(AiBrief.q(bmiClass(bmi)));
        }
        b.append(",\"fitness\":").append(AiBrief.q(in.fitness.name())).append(",\"ems_sessions\":").append(in.sessions);
        b.append(",\"goal\":").append(AiBrief.q(in.goal.name())).append(",\"mode\":").append(AiBrief.q(in.kind.name()));
        b.append(",\"program\":").append(AiBrief.q(in.programId));
        b.append(",\"cond\":").append(list(in.cond)).append(",\"today\":").append(list(in.today))
                .append(",\"focus\":").append(list(in.focus));
        List<String> contra = new ArrayList<String>();
        for (Map.Entry<String, Boolean> e : in.screening.contraindications.entrySet()) {
            if (Boolean.TRUE.equals(e.getValue())) {
                contra.add(e.getKey());
            }
        }
        b.append(",\"contra\":").append(list(contra));
        if (planJson != null) {
            b.append(",\"plan\":").append(planJson);
        }
        if (runJson != null) {
            b.append(",\"now\":").append(runJson);
        }
        b.append("},\"menu\":[");
        int n = 0;
        for (AutoCatalog.Program p : AiBrief.menu()) {
            AutoModel.Goal g = AiBrief.goalOf(p);
            b.append(n++ > 0 ? "," : "").append("{\"id\":").append(AiBrief.q(p.id)).append(",\"name\":")
                    .append(AiBrief.q(p.name())).append(",\"goal\":").append(AiBrief.q(g != null ? g.name() : ""))
                    .append(",\"kind\":").append(AiBrief.q(p.kind.name())).append('}');
        }
        b.append("],\"chat\":[");
        int start = Math.max(0, chat.size() - 12);
        for (int i = start; i < chat.size(); i++) {
            Turn t = chat.get(i);
            b.append(i > start ? "," : "").append("{\"role\":").append(t.ai ? "\"ai\"" : "\"trainer\"")
                    .append(",\"text\":").append(AiBrief.q(t.text)).append(t.question ? ",\"q\":true" : "").append('}');
        }
        return b.append(']').toString();
    }

    /**
     * The reply → the automatic mode's inputs through the AI brief's rules (the program follows the goal / the kind,
     * a named one wins; minutes and the approach as {@link AiBrief}). Returns what changed.
     */
    public static List<String> applyAuto(Reply r, AutoModel.Input in) {
        AiBrief.Patch p = new AiBrief.Patch();
        if (r == null) {
            return new ArrayList<String>();
        }
        p.goal = "FAT".equals(r.goal) ? "SLIM" : "TONE".equals(r.goal) || "SLIM".equals(r.goal) || "HEALTH".equals(r.goal)
                ? r.goal : r.goal != null ? "HEALTH" : null;
        p.kind = r.mode;
        p.program = r.program;
        p.intensity = r.intensity;
        p.minutes = r.minutes;
        p.doublePulse = r.doubleImpulse;
        for (String k : r.condAdd) {
            if (AiBrief.channelOrCond(k)) {
                p.condAdd.add(k);
            }
        }
        p.condRemove.addAll(r.condRemove);
        p.focusAdd.addAll(r.focusAdd);
        p.todayAdd.addAll(r.todayAdd);
        p.contraAdd.addAll(r.contraAdd);
        List<String> ch = AiBrief.apply(p, in);
        // the conditions AiBrief does not know (diabetes, insulin, medicines…): kept for the plan's context and saving
        for (String k : r.condAdd) {
            if (!AiBrief.channelOrCond(k) && in.cond.add(k)) {
                ch.add(nameOf(k, HEALTH, HEALTH_BG));
            }
            condLearned.add(k);
            if ("insulin".equals(k) && in.cond.add("diabetes")) {
                condLearned.add("diabetes");
            }
            if ("beta_blocker".equals(k)) {
                in.screening.hrLoweringMedication = true;
            }
        }
        for (String k : r.condRemove) {
            condLearned.remove(k);
        }
        return ch;
    }

    /** Health chips on the Auto input (same keys as the Smart Session's). */
    public static void toggleHealth(AutoModel.Input in, String key) {
        if (indexOf(key, CONTRA) >= 0) {
            in.screening.contraindications.put(key, !Boolean.TRUE.equals(in.screening.contraindications.get(key)));
            return;
        }
        if (!in.cond.remove(key)) {
            in.cond.add(key);
        }
        if ("diastasis".equals(key)) {
            in.extra.diastasis = in.cond.contains(key);
        }
        if ("beta_blocker".equals(key)) {
            in.screening.hrLoweringMedication = in.cond.contains(key);
        }
    }

    public static boolean healthOn(AutoModel.Input in, String key) {
        return indexOf(key, CONTRA) >= 0 ? Boolean.TRUE.equals(in.screening.contraindications.get(key))
                : in.cond.contains(key);
    }

    public static boolean anyHealth(AutoModel.Input in) {
        for (String k : HEALTH) {
            if (in.cond.contains(k)) {
                return true;
            }
        }
        for (String k : CONTRA) {
            if (Boolean.TRUE.equals(in.screening.contraindications.get(k))) {
                return true;
            }
        }
        return false;
    }

    public static void clearHealth(AutoModel.Input in) {
        for (String k : HEALTH) {
            in.cond.remove(k);
        }
        for (String k : CONTRA) {
            in.screening.contraindications.put(k, false);
        }
        in.extra.diastasis = false;
        in.screening.hrLoweringMedication = false;
    }

    /** Experience taps → the Auto input (sessions drive its adaptation limits; fitness follows). */
    public static void experience(AutoModel.Input in, int i) {
        in.sessions = i <= 0 ? 0 : i == 1 ? 3 : 12;
        in.fitness = i <= 0 ? AiModel.Fitness.LOW : i == 1 ? AiModel.Fitness.MID : AiModel.Fitness.HIGH;
    }

    public static int experienceOf(AutoModel.Input in) {
        return in.sessions <= 0 ? 0 : in.sessions < 8 ? 1 : 2;
    }

    // ================================================================ apply (before the start)

    /** The input part of the reply → the session's inputs; returns what changed (one short Bulgarian line each). */
    public static List<String> apply(Reply r, SessionInput in) {
        List<String> ch = new ArrayList<String>();
        if (r == null) {
            return ch;
        }
        for (String k : r.contraAdd) {
            if (!Boolean.TRUE.equals(in.screening.contraindications.get(k))) {
                in.screening.contraindications.put(k, true);
                ch.add(nameOf(k, CONTRA, CONTRA_BG));
            }
        }
        for (String k : r.condAdd) {
            if (in.cond.add(k)) {
                ch.add(nameOf(k, HEALTH, HEALTH_BG));
            }
            condLearned.add(k);
            if ("beta_blocker".equals(k)) {
                in.screening.hrLoweringMedication = true;
            }
            if ("insulin".equals(k)) {
                in.cond.add("diabetes");
                condLearned.add("diabetes");
            }
        }
        for (String k : r.condRemove) {
            if (in.cond.remove(k)) {
                ch.add("без „" + nameOf(k, HEALTH, HEALTH_BG) + "“");
            }
            condLearned.remove(k);
            if ("beta_blocker".equals(k)) {
                in.screening.hrLoweringMedication = false;
            }
        }
        for (String k : r.todayAdd) {
            if (in.today.add(k)) {
                ch.add("t_gentle".equals(k) ? "по-леко днес" : "днес: " + todayName(k));
            }
        }
        for (String k : r.focusAdd) {
            if (in.focus.add(k)) {
                ch.add(focusName(k) + " ↑");
            }
        }
        if (r.goal != null) {
            Goal g = Goal.valueOf(r.goal);
            if (g == Goal.CELLULITE && in.sex == AiModel.Sex.MALE) {
                g = in.goal;
            }
            if (g != in.goal) {
                in.goal = g;
                in.totalSeconds = null;
                ch.add("цел: " + GOAL_BG[g.ordinal()]);
            }
        }
        Mode mode = r.mode != null ? Mode.valueOf(r.mode) : in.mode;
        if (!AiModel.isAllowed(in.goal, mode)) {
            mode = AiModel.isAllowed(in.goal, Mode.ACTIVE) ? Mode.ACTIVE : Mode.PASSIVE;
        }
        if (mode != in.mode) {
            in.mode = mode;
            ch.add(mode == Mode.ACTIVE ? "активна" : "пасивна");
        }
        if (r.minutes != null) {
            int s = AiPlanner.clampSeconds(in.goal, r.minutes * 60);
            if (in.totalSeconds == null || in.totalSeconds != s) {
                in.totalSeconds = s;
                ch.add(s / 60 + " мин");
            }
        }
        if (r.doubleImpulse != null && AiModel.activePauseAllowed(in.goal)) {
            AiModel.PauseMode pm = r.doubleImpulse ? AiModel.PauseMode.AUTO : AiModel.PauseMode.PASSIVE;
            if (pm != in.pause) {
                in.pause = pm;
                ch.add(r.doubleImpulse ? "двоен импулс" : "без двоен импулс");
            }
        }
        return ch;
    }

    /** The intake's health chips: a condition key or a contraindication key on / off. */
    public static void toggleHealth(SessionInput in, String key) {
        if (indexOf(key, CONTRA) >= 0) {
            boolean on = !Boolean.TRUE.equals(in.screening.contraindications.get(key));
            in.screening.contraindications.put(key, on);
            return;
        }
        if (!in.cond.remove(key)) {
            in.cond.add(key);
        }
        if ("beta_blocker".equals(key)) {
            in.screening.hrLoweringMedication = in.cond.contains(key);
        }
    }

    public static boolean healthOn(SessionInput in, String key) {
        if (indexOf(key, CONTRA) >= 0) {
            return Boolean.TRUE.equals(in.screening.contraindications.get(key));
        }
        return in.cond.contains(key);
    }

    /** "Имам" / "Нямам": any health chip on. */
    public static boolean anyHealth(SessionInput in) {
        for (String k : HEALTH) {
            if (in.cond.contains(k)) {
                return true;
            }
        }
        for (String k : CONTRA) {
            if (Boolean.TRUE.equals(in.screening.contraindications.get(k))) {
                return true;
            }
        }
        return false;
    }

    /** "Нямам": every health chip off. */
    public static void clearHealth(SessionInput in) {
        for (String k : HEALTH) {
            in.cond.remove(k);
        }
        for (String k : CONTRA) {
            in.screening.contraindications.put(k, false);
        }
        in.screening.hrLoweringMedication = false;
    }

    /** Experience taps → sessions and fitness. */
    public static void experience(SessionInput in, int i) {
        in.sessions = i <= 0 ? 0 : i == 1 ? 3 : 12;
    }

    public static int experienceOf(SessionInput in) {
        return in.sessions < 0 ? -1 : in.sessions == 0 ? 0 : in.sessions < 8 ? 1 : 2;
    }

    /** The advice as lines "Label: text" (non-empty only) — the tablet's panel and the client's card. */
    public static List<String> adviceLines() {
        List<String> out = new ArrayList<String>();
        if (advice == null) {
            return out;
        }
        for (int i = 0; i < ADVICE.length && i < advice.length; i++) {
            if (advice[i] != null && advice[i].length() > 0) {
                out.add(ADVICE_BG[i] + ": " + advice[i]);
            }
        }
        return out;
    }

    // ================================================================ helpers

    static String nameOf(String k, String[] keys, String[] names) {
        int i = indexOf(k, keys);
        if (i >= 0) {
            return names[i];
        }
        int j = indexOf(k, AiBrief.COND);
        return j >= 0 ? AiBrief.COND_BG[j] : k;
    }

    private static String todayName(String k) {
        int i = indexOf(k, AiBrief.TODAY_BG_KEYS);
        return i >= 0 ? AiBrief.TODAY_BG[i] : k;
    }

    private static String focusName(String k) {
        int i = indexOf(k, AiBrief.FOCUS);
        return i >= 0 ? AiBrief.FOCUS_BG[i] : k;
    }

    static int indexOf(String k, String[] keys) {
        for (int i = 0; i < keys.length; i++) {
            if (keys[i].equals(k)) {
                return i;
            }
        }
        return -1;
    }

    private static String str(Object v, int max) {
        if (!(v instanceof String)) {
            return "";
        }
        String t = ((String) v).replaceAll("[\\u0000-\\u001f\\u007f]", " ").replaceAll("\\s+", " ").trim();
        return t.length() > max ? t.substring(0, max) : t;
    }

    private static String one(Object v, String... allowed) {
        if (v instanceof String) {
            for (String a : allowed) {
                if (a.equals(v)) {
                    return a;
                }
            }
        }
        return null;
    }

    private static Integer num(Object v, int lo, int hi) {
        if (!(v instanceof Number)) {
            return null;
        }
        long n = Math.round(((Number) v).doubleValue());
        return Integer.valueOf((int) Math.max(lo, Math.min(hi, n)));
    }

    private static void strings(Object v, String[] allowed, List<String> out) {
        if (!(v instanceof List)) {
            return;
        }
        for (Object o : (List<?>) v) {
            if (o instanceof String && indexOf((String) o, allowed) >= 0 && !out.contains(o) && out.size() < 10) {
                out.add((String) o);
            }
        }
    }
}
