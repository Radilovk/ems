package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoCatalog.Program;
import com.isaigu.gymapp.ai.AutoModel.Goal;
import com.isaigu.gymapp.ai.AutoModel.Input;
import com.isaigu.gymapp.ai.AutoModel.Intensity;
import com.isaigu.gymapp.ai.AutoModel.Kind;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * The AI layer over the automatic mode's planner (owner, 1.1.534 — docs/xems-ai-brief.md). Pure Java.
 *
 * <p>The trainer types or speaks a few words about the client ("52 г., болки в кръста, иска седалище, днес е
 * недоспала"). The server's model ({@code /v1/ai/brief}) turns them into a {@link Patch} of the planner's own inputs,
 * from closed lists only; this class applies it to the {@link Input} and says what changed. Every number of the
 * impulse (Hz, µs, ON / OFF, phases, rests, time) is then the planner's, inside its limits — the model never sends one.
 * Without the network {@link #local} reads the common words itself, so the field always does something.
 */
public final class AiBrief {
    private AiBrief() {}

    // channel order = PartStrenthBean.buwei − 1 (AiPersonal)
    public static final String[] ZONES = {"chest", "abs", "front_thigh", "calf", "arms", "traps", "back", "lower_back",
            "glutes", "back_thigh"};
    static final String[] ZONES_BG = {"гърди", "корем", "предно бедро", "прасец", "ръце", "трапец", "гръб", "кръст",
            "седалище", "задно бедро"};
    public static final String[] FOCUS = {"abs", "glutes", "legs", "arms", "back", "chest"};
    static final String[] FOCUS_BG = {"корем", "седалище", "крака", "ръце", "гръб", "гърди"};
    public static final String[] COND = {"menopause", "prediabetes", "pcos", "thyroid", "water", "postpartum", "back", "neck",
            "knees", "joints", "injury", "diastasis", "osteo", "varicose", "desk", "stress", "sleep", "senior", "sensitive"};
    static final String[] COND_BG = {"менопауза", "преддиабет", "СПКЯ", "щитовидна", "задържа вода", "след раждане",
            "кръст / гръб", "врат", "колене", "стави", "травма", "диастаза", "остеопороза", "разширени вени",
            "седящ начин", "стрес", "лош сън", "60+", "чувствителна кожа"};
    public static final String[] TODAY_BG_KEYS = {"t_sleep", "t_food", "t_active", "t_stress", "t_sore", "t_period"};
    static final String[] TODAY_BG = {"недоспиване", "току-що е яла", "тренирала скоро", "стрес днес",
            "мускулна треска", "цикъл"};
    static final String[] CONTRA_BG_KEYS = {"pregnancy", "implant", "cardiovascular", "circulation", "hernia", "cancer",
            "bleeding", "epilepsy", "neurological", "recent_surgery", "skin_lesion", "kidney", "tuberculosis"};
    static final String[] CONTRA_BG = {"бременност", "имплант", "сърдечно-съдово", "кръвообращение", "херния", "онкология",
            "кръвотечение", "епилепсия", "неврологично", "скорошна операция", "кожа", "бъбреци", "туберкулоза"};

    /** What the text asks the running session to do now. */
    public static final String LIVE_SOFTER = "softer";
    public static final String LIVE_STRONGER = "stronger";
    public static final String LIVE_PAUSE = "pause";
    public static final String LIVE_RESUME = "resume";
    public static final String LIVE_SKIP = "skip";
    public static final String LIVE_RECOVERY = "to_recovery";

    /** The model's (or the local reader's) answer, already limited to known keys and values. */
    public static final class Patch {
        public String goal;
        public String kind;
        public String program;
        public String sex;
        public Integer age;
        public Integer weightKg;
        public Integer heightCm;
        public String fitness;
        public Integer sessions;
        public String intensity;
        public Integer minutes;
        public Boolean exercises;
        public Boolean doublePulse;
        public final List<String> focusAdd = new ArrayList<String>();
        public final List<String> focusRemove = new ArrayList<String>();
        public final List<String> condAdd = new ArrayList<String>();
        public final List<String> condRemove = new ArrayList<String>();
        public final List<String> todayAdd = new ArrayList<String>();
        public final List<String> contraAdd = new ArrayList<String>();
        public final List<String> extraOn = new ArrayList<String>();
        public final List<String> zonesOff = new ArrayList<String>();
        public final List<String> zonesOn = new ArrayList<String>();
        public final List<String> live = new ArrayList<String>();
        public String note = "";
        public String question;
        public final List<String> options = new ArrayList<String>();
        /** True: from the server's model; false: read on the tablet. */
        public boolean fromModel;

        public boolean hasQuestion() {
            return question != null && question.length() > 0 && options.size() >= 2;
        }
    }

    // ================================================================ request

    /**
     * The request fields (without device / token): the trainer's text, the planner's inputs now, the programs it may
     * choose from, and — on a follow-up — our question with the trainer's answer.
     */
    public static String requestFields(Input in, List<Program> menu, String text, String question, String answer,
                                       boolean running, boolean guest) {
        StringBuilder b = new StringBuilder();
        b.append("\"text\":").append(q(text));
        b.append(",\"context\":{");
        b.append("\"session\":").append(q(running ? "RUNNING" : "PLANNING"));
        b.append(",\"guest\":").append(guest);
        b.append(",\"goal\":").append(q(in.goal.name()));
        b.append(",\"kind\":").append(q(in.kind.name()));
        b.append(",\"program\":").append(q(in.programId));
        b.append(",\"sex\":").append(q(in.sex.name()));
        b.append(",\"age\":").append(in.age);
        b.append(",\"weight_kg\":").append(Math.round(in.weightKg));
        if (in.heightCm > 0) {
            b.append(",\"height_cm\":").append(in.heightCm);
        }
        b.append(",\"fitness\":").append(q(in.fitness.name()));
        b.append(",\"sessions\":").append(in.sessions);
        b.append(",\"focus\":").append(list(in.focus));
        b.append(",\"cond\":").append(list(in.cond));
        b.append(",\"today\":").append(list(in.today));
        b.append('}');
        b.append(",\"menu\":[");
        int n = 0;
        for (Program p : menu) {
            if (n++ > 0) {
                b.append(',');
            }
            Goal g = goalOf(p);
            b.append("{\"id\":").append(q(p.id)).append(",\"name\":").append(q(p.name()))
                    .append(",\"goal\":").append(q(g != null ? g.name() : "")).append(",\"kind\":").append(q(p.kind.name()))
                    .append('}');
        }
        b.append(']');
        if (question != null && answer != null) {
            b.append(",\"question\":").append(q(question)).append(",\"answer\":").append(q(answer));
        }
        return b.toString();
    }

    /** Every body program the planner can choose from (all goals and kinds; no face — it has its own page). */
    public static List<Program> menu() {
        List<Program> out = new ArrayList<Program>();
        for (Goal g : Goal.values()) {
            for (Kind k : Kind.values()) {
                for (Program p : AutoCatalog.menu(g, k)) {
                    if (!out.contains(p) && !AutoCatalog.isFace(p)) {
                        out.add(p);
                    }
                }
            }
        }
        return out;
    }

    static Goal goalOf(Program p) {
        for (Goal g : Goal.values()) {
            if (AutoCatalog.menu(g, p.kind).contains(p)) {
                return g;
            }
        }
        return null;
    }

    // ================================================================ response

    /** {@code {"ok":true,"patch":{…}}} → the patch; null when the server said no or the JSON is broken. */
    public static Patch parse(String response) {
        Object root;
        try {
            root = new Json(response).value();
        } catch (RuntimeException e) {
            return null;
        }
        if (!(root instanceof Map)) {
            return null;
        }
        Map<?, ?> m = (Map<?, ?>) root;
        if (!Boolean.TRUE.equals(m.get("ok")) || !(m.get("patch") instanceof Map)) {
            return null;
        }
        Map<?, ?> p = (Map<?, ?>) m.get("patch");
        Patch r = new Patch();
        r.fromModel = true;
        r.goal = oneOf(p.get("goal"), "TONE", "SLIM", "HEALTH");
        r.kind = oneOf(p.get("kind"), "ACTIVE", "PASSIVE");
        r.program = p.get("program") instanceof String && AutoCatalog.get((String) p.get("program")) != null
                ? (String) p.get("program") : null;
        r.sex = oneOf(p.get("sex"), "FEMALE", "MALE");
        r.age = num(p.get("age"), 14, 95);
        r.weightKg = num(p.get("weight_kg"), 35, 200);
        r.heightCm = num(p.get("height_cm"), 130, 220);
        r.fitness = oneOf(p.get("fitness"), "LOW", "MID", "HIGH");
        r.sessions = num(p.get("sessions"), 0, 500);
        r.intensity = oneOf(p.get("intensity"), "SOFT", "STANDARD", "INTENSE");
        r.minutes = num(p.get("minutes"), 5, 60);
        r.exercises = p.get("exercises") instanceof Boolean ? (Boolean) p.get("exercises") : null;
        r.doublePulse = p.get("double_pulse") instanceof Boolean ? (Boolean) p.get("double_pulse") : null;
        strings(p.get("focus_add"), FOCUS, r.focusAdd);
        strings(p.get("focus_remove"), FOCUS, r.focusRemove);
        strings(p.get("cond_add"), COND, r.condAdd);
        strings(p.get("cond_remove"), COND, r.condRemove);
        strings(p.get("today_add"), TODAY_BG_KEYS, r.todayAdd);
        strings(p.get("contra_add"), CONTRA_BG_KEYS, r.contraAdd);
        strings(p.get("extra_on"), new String[] {"diastasis", "breastfeeding", "cesarean", "backAcute", "backRadiating",
                "backTrauma", "backSurgery", "injectable"}, r.extraOn);
        strings(p.get("zones_off"), ZONES, r.zonesOff);
        strings(p.get("zones_on"), ZONES, r.zonesOn);
        strings(p.get("live"), new String[] {LIVE_SOFTER, LIVE_STRONGER, LIVE_PAUSE, LIVE_RESUME, LIVE_SKIP, LIVE_RECOVERY},
                r.live);
        r.note = p.get("note") instanceof String ? clean((String) p.get("note"), 240) : "";
        if (p.get("question") instanceof Map) {
            Map<?, ?> qn = (Map<?, ?>) p.get("question");
            if (qn.get("text") instanceof String && qn.get("options") instanceof List) {
                r.question = clean((String) qn.get("text"), 160);
                for (Object o : (List<?>) qn.get("options")) {
                    if (o instanceof String && r.options.size() < 4 && clean((String) o, 40).length() > 0) {
                        r.options.add(clean((String) o, 40));
                    }
                }
            }
        }
        return r;
    }

    // ================================================================ apply

    /**
     * The patch → the planner's inputs. Returns what changed, in plain Bulgarian, one short line each (the chips
     * under the field). The program follows the text: named → that one; only the goal / the kind → its recommended.
     */
    public static List<String> apply(Patch p, Input in) {
        List<String> ch = new ArrayList<String>();
        if (p == null) {
            return ch;
        }
        if (p.sex != null && !p.sex.equals(in.sex.name())) {
            in.sex = AiModel.Sex.valueOf(p.sex);
            ch.add(in.sex == AiModel.Sex.FEMALE ? "жена" : "мъж");
        }
        if (p.age != null && p.age != in.age) {
            in.age = p.age;
            ch.add(p.age + " г.");
        }
        if (p.weightKg != null && p.weightKg != Math.round(in.weightKg)) {
            in.weightKg = p.weightKg;
            ch.add(p.weightKg + " kg");
        }
        if (p.heightCm != null && p.heightCm != in.heightCm) {
            in.heightCm = p.heightCm;
            ch.add(p.heightCm + " cm");
        }
        if (p.fitness != null && !p.fitness.equals(in.fitness.name())) {
            in.fitness = AiModel.Fitness.valueOf(p.fitness);
            ch.add(in.fitness == AiModel.Fitness.LOW ? "ниска кондиция"
                    : in.fitness == AiModel.Fitness.HIGH ? "висока кондиция" : "средна кондиция");
        }
        if (p.sessions != null && p.sessions > in.sessions) {
            in.sessions = p.sessions;                       // history only grows: the tablet's own count stays the floor
            ch.add(p.sessions == 0 ? "първа тренировка" : "опит: " + p.sessions + " тренировки");
        }
        for (String k : p.contraAdd) {
            Boolean was = in.screening.contraindications.get(k);
            if (was == null || !was) {
                in.screening.contraindications.put(k, true);
                ch.add(name(k, CONTRA_BG_KEYS, CONTRA_BG));
            }
        }
        for (String k : p.extraOn) {
            if (setExtra(in.extra, k)) {
                ch.add(extraName(k));
            }
        }
        for (String k : p.condAdd) {
            if (in.cond.add(k)) {
                ch.add(name(k, COND, COND_BG));
                if ("diastasis".equals(k)) {
                    in.extra.diastasis = true;
                }
            }
        }
        for (String k : p.condRemove) {
            if (in.cond.remove(k)) {
                ch.add("без „" + name(k, COND, COND_BG) + "“");
            }
        }
        for (String k : p.todayAdd) {
            if (in.today.add(k)) {
                ch.add("днес: " + name(k, TODAY_BG_KEYS, TODAY_BG));
            }
        }
        for (String k : p.focusAdd) {
            if (in.focus.add(k)) {
                ch.add(name(k, FOCUS, FOCUS_BG) + " ↑");
            }
        }
        for (String k : p.focusRemove) {
            if (in.focus.remove(k)) {
                ch.add(name(k, FOCUS, FOCUS_BG) + " — без акцент");
            }
        }
        // the program: named, else the goal / the kind's recommended one
        Program before = AutoCatalog.get(in.programId);
        Goal goal = p.goal != null ? Goal.valueOf(p.goal) : in.goal;
        Kind kind = p.kind != null ? Kind.valueOf(p.kind) : in.kind;
        if (p.exercises != null && !p.exercises && p.kind == null) {
            kind = Kind.PASSIVE;                            // cannot / will not move: a lying procedure
        }
        Program target = null;
        if (p.program != null) {
            target = AutoCatalog.get(p.program);
            if (target != null) {
                kind = target.kind;
                if (!AutoCatalog.menu(goal, kind).contains(target)) {
                    Goal g = goalOf(target);
                    goal = g != null ? g : goal;
                }
            }
        }
        if (target == null && (goal != in.goal || kind != in.kind)) {
            List<Program> m = AutoCatalog.menu(goal, kind);
            if (m.isEmpty()) {
                kind = in.kind == kind ? Kind.ACTIVE : in.kind;
                m = AutoCatalog.menu(goal, kind);
            }
            if (!m.isEmpty()) {
                target = AutoCatalog.recommended(goal, kind, in);
            }
        }
        if (target != null && AutoCatalog.menu(goal, kind).contains(target)) {
            in.goal = goal;
            in.kind = kind;
            in.programId = target.id;
            if (before == null || !before.id.equals(target.id)) {
                ch.add(0, "→ " + target.name());
            }
        }
        if (p.intensity != null) {
            Intensity it = Intensity.valueOf(p.intensity);
            if (it != in.aiIntensity) {
                in.aiIntensity = it == Intensity.STANDARD ? null : it;
                ch.add(it == Intensity.SOFT ? "по-меко" : it == Intensity.INTENSE ? "по-интензивно" : "стандартно");
            }
        }
        if (p.minutes != null) {
            in.aiSeconds = p.minutes * 60;
            ch.add(p.minutes + " мин (до тавана на програмата)");
        }
        if (p.doublePulse != null && p.doublePulse != in.doublePulse) {
            in.doublePulse = p.doublePulse;
            ch.add(p.doublePulse ? "двоен импулс" : "без двоен импулс");
        }
        for (String z : p.zonesOff) {
            if (force(in, z, 0)) {
                ch.add(name(z, ZONES, ZONES_BG) + " — изкл.");
            }
        }
        for (String z : p.zonesOn) {
            if (force(in, z, 100)) {
                ch.add(name(z, ZONES, ZONES_BG) + " — вкл.");
            }
        }
        return ch;
    }

    /** Guest (no client on the row): the two quick taps besides the goal — EMS experience and age. */
    public static void guest(Input in, int experience, int ageBand) {
        in.sessions = experience <= 0 ? 0 : experience == 1 ? 3 : 12;
        in.fitness = experience >= 2 ? AiModel.Fitness.HIGH : experience == 1 ? AiModel.Fitness.MID : AiModel.Fitness.LOW;
        in.age = ageBand <= 0 ? 32 : ageBand == 1 ? 50 : 66;
    }

    public static int guestExperience(Input in) {
        return in.sessions <= 0 ? 0 : in.sessions < 8 ? 1 : 2;
    }

    public static int guestAgeBand(Input in) {
        return in.age < 40 ? 0 : in.age < 60 ? 1 : 2;
    }

    private static boolean force(Input in, String zone, int v) {
        int i = index(zone, ZONES);
        if (i < 0) {
            return false;
        }
        if (in.zoneForce == null) {
            in.zoneForce = new int[ZONES.length];
            java.util.Arrays.fill(in.zoneForce, -1);
        }
        if (in.zoneForce[i] == v) {
            return false;
        }
        in.zoneForce[i] = v;
        return true;
    }

    /** Channel index of a zone key (−1 = none). */
    public static int channel(String zone) {
        return index(zone, ZONES);
    }

    private static boolean setExtra(AutoModel.Extra e, String k) {
        boolean was;
        if ("diastasis".equals(k)) { was = e.diastasis; e.diastasis = true; }
        else if ("breastfeeding".equals(k)) { was = e.breastfeeding; e.breastfeeding = true; }
        else if ("cesarean".equals(k)) { was = e.cesarean; e.cesarean = true; }
        else if ("backAcute".equals(k)) { was = e.backAcute; e.backAcute = true; }
        else if ("backRadiating".equals(k)) { was = e.backRadiating; e.backRadiating = true; }
        else if ("backTrauma".equals(k)) { was = e.backTrauma; e.backTrauma = true; }
        else if ("backSurgery".equals(k)) { was = e.backSurgery; e.backSurgery = true; }
        else if ("injectable".equals(k)) { was = e.injectable; e.injectable = true; }
        else { return false; }
        return !was;
    }

    private static String extraName(String k) {
        if ("diastasis".equals(k)) return "диастаза";
        if ("breastfeeding".equals(k)) return "кърми";
        if ("cesarean".equals(k)) return "цезарово";
        if ("backAcute".equals(k)) return "остра болка в гърба";
        if ("backRadiating".equals(k)) return "болка към крака";
        if ("backTrauma".equals(k)) return "травма на гърба";
        if ("backSurgery".equals(k)) return "операция на гърба";
        if ("injectable".equals(k)) return "ботокс / филър";
        return k;
    }

    // ================================================================ the local reader (no network)

    private static final Pattern MIN = Pattern.compile("(\\d{1,2})\\s*мин");
    private static final Pattern AGE = Pattern.compile("(\\d{2})\\s*(г\\b|г\\.|год)|на\\s+(\\d{2})\\b");
    private static final Pattern KG = Pattern.compile("(\\d{2,3})\\s*(кг|kg|кила)");

    /**
     * The common words read on the tablet: complaints, focus, today, goal, active / passive, softer, minutes, age,
     * and — while a session runs — the live commands. A rough first answer; the model's reading replaces it.
     */
    public static Patch local(String text, boolean running) {
        Patch p = new Patch();
        String t = " " + (text == null ? "" : text.toLowerCase(Locale.ROOT).replace('ѝ', 'и')) + " ";
        boolean pain = has(t, "бол", "схван", "травм", "контуз", "проблем");
        if (running) {
            if (has(t, "по-леко", "по леко", "намали", "по-слабо", "по слабо", "много е силно", "силно е")) p.live.add(LIVE_SOFTER);
            else if (has(t, "по-силно", "по силно", "увеличи", "качи", "слабо е")) p.live.add(LIVE_STRONGER);
            if (has(t, "пауза", "спри ", "почивка")) p.live.add(LIVE_PAUSE);
            if (has(t, "продължи", "пусни", "старт")) p.live.add(LIVE_RESUME);
            if (has(t, "прескочи", "следващ")) p.live.add(LIVE_SKIP);
            if (has(t, "възстановяване", "приключ", "край")) p.live.add(LIVE_RECOVERY);
        }
        if (has(t, "колян", "колен")) p.condAdd.add("knees");
        if (has(t, "кръст", "дискова", "лумбаг", "ишиас") || (pain && has(t, "гръб", "гърб"))) p.condAdd.add("back");
        if (has(t, "врат", "шия", "шиен")) p.condAdd.add("neck");
        if (has(t, "стави", "ставит", "артрит", "артроз")) p.condAdd.add("joints");
        if (has(t, "остеопор")) p.condAdd.add("osteo");
        if (has(t, "разширени вени", "варикоз")) p.condAdd.add("varicose");
        if (has(t, "по цял ден седи", "седи по цял ден", "офис", "заседнал", "седящ")) p.condAdd.add("desk");
        if (has(t, "стрес", "тревож", "напрегнат")) p.condAdd.add("stress");
        if (has(t, "безсъни", "спи лошо", "лош сън")) p.condAdd.add("sleep");
        if (has(t, "роди", "след раждане", "родила")) p.condAdd.add("postpartum");
        if (has(t, "диастаз")) p.condAdd.add("diastasis");
        if (has(t, "менопауз", "климакс")) p.condAdd.add("menopause");
        if (has(t, "щитовид", "хашимото")) p.condAdd.add("thyroid");
        if (has(t, "задържа вода", "отоц", "оток", "подут")) p.condAdd.add("water");
        if (has(t, "чувствител")) p.condAdd.add("sensitive");
        if (has(t, "травм", "контуз", "скъсан", "разтегн")) p.condAdd.add("injury");
        if (has(t, "инсулинов", "преддиабет")) p.condAdd.add("prediabetes");
        if (has(t, "поликист", "спкя", "pcos")) p.condAdd.add("pcos");
        if (!pain || !has(t, "корем")) {
            if (has(t, "корем", "талия", "плочки")) p.focusAdd.add("abs");
        }
        if (has(t, "седалищ", "дупе", "задник", "глутеус")) p.focusAdd.add("glutes");
        if (!p.condAdd.contains("knees") && has(t, "крака", "бедра", "бедр")) p.focusAdd.add("legs");
        if (has(t, "ръце", "ръка", "бицепс", "трицепс")) p.focusAdd.add("arms");
        if (!pain && has(t, "гръб", "гърб")) p.focusAdd.add("back");
        if (has(t, "гърди", "гръден") && !has(t, "кърми")) p.focusAdd.add("chest");
        if (has(t, "недоспа", "не е спал", "малко сън", "не спа")) p.todayAdd.add("t_sleep");
        if (has(t, "току-що яде", "току що яде", "нахран", "след хранене")) p.todayAdd.add("t_food");
        if (has(t, "тренира вчера", "тренирала вчера", "тренирал вчера", "фитнес вчера", "тренира днес")) p.todayAdd.add("t_active");
        if (has(t, "мускулна треска", "схванат", "болят мускул")) p.todayAdd.add("t_sore");
        if (has(t, "цикъл", "менструа", "мензис")) p.todayAdd.add("t_period");
        if (has(t, "бремен")) p.contraAdd.add("pregnancy");
        if (has(t, "пейсмейк", "пейсмек", "кардиостимулатор")) p.contraAdd.add("implant");
        if (has(t, "кърми")) p.extraOn.add("breastfeeding");
        if (has(t, "цезаров")) p.extraOn.add("cesarean");
        if (has(t, "отслаб", "свали", "килограм", "мазнин", "изгаря")) p.goal = "SLIM";
        else if (has(t, "стяга", "тонус", "оформ", "мускулна маса", "сила")) p.goal = "TONE";
        else if (has(t, "възстанов", "релакс", "отпуска", "здраве") || (pain && !running)) p.goal = "HEALTH";
        if (has(t, "пасивн", "лежи", "в покой", "без движение", "не може да се движи", "не иска упражнения")) {
            p.kind = "PASSIVE";
            p.exercises = Boolean.FALSE;
        } else if (has(t, "активн", "с упражнения", "с движение")) {
            p.kind = "ACTIVE";
        }
        if (has(t, "по-леко", "по леко", "нежно", "внимателно", "начинаещ", "първи път", "първа тренировка")) {
            if (!running) p.intensity = "SOFT";
        } else if (!running && has(t, "интензивн", "по-тежко", "здраво", "максимално")) {
            p.intensity = "INTENSE";
        }
        if (has(t, "първи път", "първа тренировка", "никога не е", "за първи")) p.sessions = 0;
        Matcher m = MIN.matcher(t);
        if (m.find()) {
            int v = Integer.parseInt(m.group(1));
            if (v >= 5 && v <= 60) p.minutes = v;
        }
        m = AGE.matcher(t);
        if (m.find()) {
            int v = Integer.parseInt(m.group(1) != null ? m.group(1) : m.group(3));
            if (v >= 14 && v <= 95) p.age = v;
        }
        m = KG.matcher(t);
        if (m.find()) {
            int v = Integer.parseInt(m.group(1));
            if (v >= 35 && v <= 200) p.weightKg = v;
        }
        if (has(t, " мъж", "мъжът", " той ")) p.sex = "MALE";
        else if (has(t, " жена", "тя ", "клиентката")) p.sex = "FEMALE";
        if (p.sessions != null && p.sessions == 0) p.sessions = null;   // the count only grows (apply): no-op
        return p;
    }

    /** The chips joined for one line. */
    public static String line(List<String> changes) {
        StringBuilder b = new StringBuilder();
        for (String s : changes) {
            if (b.length() > 0) {
                b.append(" · ");
            }
            b.append(s);
        }
        return b.toString();
    }

    // ================================================================ helpers

    private static boolean has(String t, String... words) {
        for (String w : words) {
            if (t.contains(w)) {
                return true;
            }
        }
        return false;
    }

    private static String name(String k, String[] keys, String[] names) {
        int i = index(k, keys);
        return i >= 0 ? names[i] : k;
    }

    private static int index(String k, String[] keys) {
        for (int i = 0; i < keys.length; i++) {
            if (keys[i].equals(k)) {
                return i;
            }
        }
        return -1;
    }

    private static String oneOf(Object v, String... allowed) {
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
        return n >= lo && n <= hi ? Integer.valueOf((int) n) : null;
    }

    private static void strings(Object v, String[] allowed, List<String> out) {
        if (!(v instanceof List)) {
            return;
        }
        for (Object o : (List<?>) v) {
            if (o instanceof String && index((String) o, allowed) >= 0 && !out.contains(o) && out.size() < 10) {
                out.add((String) o);
            }
        }
    }

    private static String clean(String s, int max) {
        String t = s.replaceAll("[\\u0000-\\u001f\\u007f]", " ").replaceAll("\\s+", " ").trim();
        return t.length() > max ? t.substring(0, max) : t;
    }

    private static String list(java.util.Collection<String> c) {
        StringBuilder b = new StringBuilder("[");
        int n = 0;
        for (String s : c) {
            if (n++ > 0) {
                b.append(',');
            }
            b.append(q(s));
        }
        return b.append(']').toString();
    }

    static String q(String s) {
        if (s == null) {
            return "null";
        }
        StringBuilder b = new StringBuilder("\"");
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '"' || c == '\\') {
                b.append('\\').append(c);
            } else if (c < 0x20) {
                b.append(String.format(Locale.ROOT, "\\u%04x", (int) c));
            } else {
                b.append(c);
            }
        }
        return b.append('"').toString();
    }

    /** A small JSON reader (objects → Map, arrays → List, numbers → Double): no Android needed for the JVM tests. */
    public static final class Json {
        private final String s;
        private int i;

        public Json(String s) {
            this.s = s == null ? "" : s;
        }

        public Object value() {
            ws();
            if (i >= s.length()) {
                throw new IllegalArgumentException("end");
            }
            char c = s.charAt(i);
            if (c == '{') {
                return object();
            }
            if (c == '[') {
                return array();
            }
            if (c == '"') {
                return string();
            }
            if (s.startsWith("true", i)) {
                i += 4;
                return Boolean.TRUE;
            }
            if (s.startsWith("false", i)) {
                i += 5;
                return Boolean.FALSE;
            }
            if (s.startsWith("null", i)) {
                i += 4;
                return null;
            }
            int st = i;
            while (i < s.length() && "+-0123456789.eE".indexOf(s.charAt(i)) >= 0) {
                i++;
            }
            if (st == i) {
                throw new IllegalArgumentException("char " + c);
            }
            return Double.valueOf(s.substring(st, i));
        }

        private Map<String, Object> object() {
            Map<String, Object> m = new LinkedHashMap<String, Object>();
            i++;
            ws();
            if (peek() == '}') {
                i++;
                return m;
            }
            while (true) {
                ws();
                String k = string();
                ws();
                expect(':');
                m.put(k, value());
                ws();
                if (peek() == ',') {
                    i++;
                    continue;
                }
                expect('}');
                return m;
            }
        }

        private List<Object> array() {
            List<Object> a = new ArrayList<Object>();
            i++;
            ws();
            if (peek() == ']') {
                i++;
                return a;
            }
            while (true) {
                a.add(value());
                ws();
                if (peek() == ',') {
                    i++;
                    continue;
                }
                expect(']');
                return a;
            }
        }

        private String string() {
            expect('"');
            StringBuilder b = new StringBuilder();
            while (i < s.length()) {
                char c = s.charAt(i++);
                if (c == '"') {
                    return b.toString();
                }
                if (c == '\\' && i < s.length()) {
                    char e = s.charAt(i++);
                    if (e == 'n') b.append('\n');
                    else if (e == 't') b.append('\t');
                    else if (e == 'r') b.append('\r');
                    else if (e == 'b') b.append('\b');
                    else if (e == 'f') b.append('\f');
                    else if (e == 'u' && i + 4 <= s.length()) {
                        b.append((char) Integer.parseInt(s.substring(i, i + 4), 16));
                        i += 4;
                    } else b.append(e);
                } else {
                    b.append(c);
                }
            }
            throw new IllegalArgumentException("string");
        }

        private char peek() {
            return i < s.length() ? s.charAt(i) : 0;
        }

        private void expect(char c) {
            if (peek() != c) {
                throw new IllegalArgumentException("expected " + c);
            }
            i++;
        }

        private void ws() {
            while (i < s.length() && Character.isWhitespace(s.charAt(i))) {
                i++;
            }
        }
    }
}
