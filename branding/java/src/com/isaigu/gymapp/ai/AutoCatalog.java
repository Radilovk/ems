package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoModel.Goal;
import com.isaigu.gymapp.ai.AutoModel.HrUse;
import com.isaigu.gymapp.ai.AutoModel.Input;
import com.isaigu.gymapp.ai.AutoModel.Kind;
import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Step;
import com.isaigu.gymapp.ai.AutoModel.Window;

import java.util.ArrayList;
import java.util.List;

import static com.isaigu.gymapp.ai.AutoModel.ABS;
import static com.isaigu.gymapp.ai.AutoModel.ARMS;
import static com.isaigu.gymapp.ai.AutoModel.BACK;
import static com.isaigu.gymapp.ai.AutoModel.BACK_THIGH;
import static com.isaigu.gymapp.ai.AutoModel.CALF;
import static com.isaigu.gymapp.ai.AutoModel.CHANNELS;
import static com.isaigu.gymapp.ai.AutoModel.CHEST;
import static com.isaigu.gymapp.ai.AutoModel.FRONT_THIGH;
import static com.isaigu.gymapp.ai.AutoModel.GLUTES;
import static com.isaigu.gymapp.ai.AutoModel.LOWER_BACK;
import static com.isaigu.gymapp.ai.AutoModel.TRAPS;

/**
 * The ready programs of the automatic mode (spec §5, §6): menu per goal × kind, what each program
 * is, its zones, its phases, and when it is not allowed for a client.
 * Phase values here are the program's own; {@link AutoPlanner} applies the client's modifiers.
 */
public final class AutoCatalog {
    private AutoCatalog() {}

    public static final String GENERAL = "general";
    public static final String GLUTES_LEGS = "glutes";
    public static final String CORE = "core";
    public static final String POWER = "power";
    public static final String CARDIO = "cardio";
    public static final String BACK_ACTIVE = "back_active";
    public static final String SENIOR = "senior";
    public static final String CELLULITE = "cellulite";
    public static final String POSTPARTUM = "postpartum";
    public static final String DRAIN = "drain";
    public static final String PASSIVE_METABOLIC = "passive_metabolic";
    public static final String BACK_PAIN = "back_pain";
    public static final String RECOVERY = "recovery";
    /**
     * Face (owner, 2026-11-06 — docs/xems-face.md): the face pads hang on the arms outputs (left arm → left cheek,
     * right arm → right cheek), every other channel is off and locked; the arms divider (÷4 at 100 µs) keeps the
     * current low. Two goals: FACE = lift (zygomaticus hypertrophy, 70 Hz 3 s : 6 s — Kavanagh 2012 RCT), FACE_TONE =
     * tone / fatigue resistance (35 Hz 4 s : 5 s — maintenance after the course). Never under 20 Hz on the face
     * (Efthimiou 2024: single twitches are uncomfortable and visible) — no low-Hz warm-up or cool-down.
     */
    public static final String FACE = "face";
    public static final String FACE_TONE = "face_tone";
    /** Face: pulse width (µs) of every step (facial NMES 10–100 µs per phase), and its recovery (s). */
    public static final int FACE_PW = 100;
    public static final int FACE_RECOVERY_S = 120;
    /** Lowest frequency any face step may have (Hz). */
    public static final int FACE_HZ_MIN = 20;

    /** A face program: arms channel only, narrow pulse, short recovery. */
    public static boolean isFace(Program p) {
        return p != null && (FACE.equals(p.id) || FACE_TONE.equals(p.id));
    }
    /** Men's goals (owner's decision): muscle mass, and chest · shoulders · arms. */
    public static final String MASS = "mass";
    public static final String UPPER = "upper";

    /** Marker for {@link Phase#envEnd}: the planner puts the plan's envelope ceiling there. */
    static final double ENV_MAX = -1;

    public static final class Program {
        public final String id;
        public final String nameBg;
        public final String nameEn;
        public final String descBg;
        public final String descEn;
        public final Kind kind;
        public final int[] zones;
        public int cr10Lo;
        public int cr10Hi;
        public double xCap;
        /** Envelope ceiling in the main part (how far above the calibration). */
        public double envMax = 1.0;
        public boolean doublePulse;
        /** Impulse class for the smart impulse (AutoDynamics.STRENGTH / POWER / CARDIO / GENTLE); unset = gentle. */
        public String impulse;
        /** Difficulty (owner, 1.1.336): 1 easy (green) · 2 medium (amber) · 3 hard (red). */
        public int level = 2;
        public boolean femaleOnly;
        /** Men's programs: a woman's menu does not show them. */
        public boolean maleOnly;
        public boolean asksBack;
        public boolean asksPostpartum;
        /** Variants shown as a choice on the plan step (DRAIN: standard / sensitive). */
        public String[] variantsBg;
        public String[] variantsEn;

        Program(String id, String nameBg, String nameEn, String descBg, String descEn, Kind kind,
                int[] zones) {
            this.id = id;
            this.nameBg = nameBg;
            this.nameEn = nameEn;
            this.descBg = descBg;
            this.descEn = descEn;
            this.kind = kind;
            this.zones = zones;
        }

        public boolean isActive() {
            return kind == Kind.ACTIVE;
        }

        public String name() {
            return AiText.t(nameBg, nameEn);
        }

        public String desc() {
            return AiText.t(descBg, descEn);
        }
    }

    private static final List<Program> ALL = new ArrayList<Program>();

    static {
        Program p;
        p = add(new Program(GENERAL, "Общо стягане и оформяне", "Full-body toning",
                "Цялото тяло, силова работа с упражнения", "Whole body, strength work with exercises",
                Kind.ACTIVE, AutoModel.zones(70, 90, 90, 100, 90, 80, 90, 70, 80, 75)));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.25; p.doublePulse = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(GLUTES_LEGS, "Седалище и бедра", "Glutes & thighs",
                "Акцент върху седалището и задното бедро", "Focus on glutes and hamstrings",
                Kind.ACTIVE, AutoModel.zones(60, 85, 95, 100, 70, 75, 60, 40, 40, 40)));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.25; p.doublePulse = true; p.femaleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(MASS, "Мускулна маса", "Muscle mass",
                "Цялото тяло, тежки бавни повторения — обем и сила", "Whole body, heavy slow reps — size and strength",
                Kind.ACTIVE, AutoModel.zones(60, 85, 80, 80, 80, 75, 100, 90, 100, 100)));
        p.cr10Lo = 7; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.3; p.maleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(UPPER, "Гърди, рамене и ръце", "Chest, shoulders & arms",
                "Горната част: гърди, гръб, рамене и ръце", "Upper body: chest, back, shoulders and arms",
                Kind.ACTIVE, AutoModel.zones(40, 60, 55, 60, 80, 70, 100, 100, 100, 100)));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.25; p.maleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(CORE, "Талия и корем", "Waist & core",
                "Корем с кръста в баланс — пази гръбнака", "Abs balanced with the lower back",
                Kind.ACTIVE, AutoModel.zones(40, 60, 60, 70, 100, 90, 75, 45, 55, 40)));
        p.cr10Lo = 6; p.cr10Hi = 6; p.xCap = 0.85; p.envMax = 1.25; p.doublePulse = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(POWER, "Сила и бързина", "Power & speed",
                "Бързи влакна: кратък взривен импулс, дълга почивка", "Fast fibres: short explosive pulse, long rest",
                Kind.ACTIVE, AutoModel.zones(80, 100, 100, 100, 85, 80, 90, 70, 85, 80)));
        p.cr10Lo = 7; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.15; p.impulse = AutoDynamics.POWER;

        p = add(new Program(CARDIO, "Кардио-метаболитна", "Cardio-metabolic",
                "Изгаряне: сила ↔ 7 Hz, пулсът в зоната на мазнините", "Burn: strength ↔ 7 Hz, HR in the fat zone",
                Kind.ACTIVE, AutoModel.zones(90, 100, 100, 100, 70, 70, 80, 50, 60, 70)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.80; p.envMax = 1.10; p.doublePulse = true; p.impulse = AutoDynamics.CARDIO;

        p = add(new Program(BACK_ACTIVE, "Здрав гръб и стойка", "Healthy back & posture",
                "Гръб, кръст и корем заедно, с упражнения", "Back, lower back and core together, with exercises",
                Kind.ACTIVE, AutoModel.zones(50, 70, 80, 90, 80, 100, 100, 80, 60, 60)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.80; p.envMax = 1.15; p.asksBack = true; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(SENIOR, "Здрави мускули 50+", "Strong muscles 50+",
                "Сила за ежедневието, бавни движения", "Strength for daily life, slow movements",
                Kind.ACTIVE, AutoModel.zones(80, 100, 90, 100, 70, 80, 80, 60, 60, 70)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.75; p.envMax = 1.0; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(CELLULITE, "Антицелулит", "Anti-cellulite",
                "Тонус на долната част + дренажна вълна", "Lower-body tone + drainage wave",
                Kind.PASSIVE, AutoModel.zones(70, 100, 100, 100, 75, 60, 0, 0, 0, 50)));
        p.cr10Lo = 5; p.cr10Hi = 5; p.xCap = 0.60; p.doublePulse = true; p.femaleOnly = true;

        p = add(new Program(POSTPARTUM, "Следродилно възстановяване", "Postpartum recovery",
                "Тазово дъно, седалище и кръст; коремът — внимателно", "Pelvic floor, glutes, lower back; abs gently",
                Kind.PASSIVE, AutoModel.zones(50, 70, 80, 100, 60, 90, 60, 50, 40, 50)));
        p.cr10Lo = 4; p.cr10Hi = 5; p.xCap = 0.45; p.femaleOnly = true; p.asksPostpartum = true; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(DRAIN, "Дренаж", "Lymph drainage",
                "Вълна по зоните от периферията към центъра", "A wave through the zones towards the centre",
                Kind.PASSIVE, AutoModel.zones(100, 100, 100, 100, 100, 100, 100, 100, 100, 100)));
        p.cr10Lo = 3; p.cr10Hi = 4; p.xCap = 0.45; p.envMax = 1.0;
        p.variantsBg = new String[] {"Стандартен (35 Hz)", "Чувствителен (8 Hz)"};
        p.variantsEn = new String[] {"Standard (35 Hz)", "Sensitive (8 Hz)"};

        p = add(new Program(PASSIVE_METABOLIC, "Пасивен метаболизъм", "Passive metabolism",
                "6 Hz — най-голям енергоразход без движение", "6 Hz — most energy use without moving",
                Kind.PASSIVE, AutoModel.zones(90, 100, 100, 100, 60, 60, 70, 40, 40, 60)));
        p.cr10Lo = 4; p.cr10Hi = 5; p.xCap = 0.60;

        p = add(new Program(BACK_PAIN, "Болки в гърба и кръста", "Back & low-back pain",
                "Отпускане, стабилизация, обезболяване", "Relax, stabilise, relieve",
                Kind.PASSIVE, AutoModel.zones(0, 40, 60, 80, 70, 100, 90, 60, 0, 0)));
        p.cr10Lo = 4; p.cr10Hi = 4; p.xCap = 0.45; p.asksBack = true;

        p = add(new Program(RECOVERY, "Регенерация и релакс", "Recovery & relax",
                "3 ↔ 8 Hz масаж след натоварване", "3 ↔ 8 Hz massage after training",
                Kind.PASSIVE, AutoModel.zones(80, 90, 90, 90, 50, 70, 80, 80, 40, 60)));
        p.cr10Lo = 3; p.cr10Hi = 5; p.xCap = 0.45;

        p = add(new Program(FACE, "Лице · Повдигане", "Face · Lift",
                "Скуловият мускул става по-плътен и държи бузата · 12 седмици · електроди на изходите за ръце",
                "The cheek muscle thickens and holds the cheek · 12 weeks · pads on the arm outputs",
                Kind.PASSIVE, AutoModel.zones(0, 0, 0, 0, 0, 0, 0, 0, 0, 100)));
        p.cr10Lo = 3; p.cr10Hi = 4; p.xCap = 0.45; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(FACE_TONE, "Лице · Тонус", "Face · Tone",
                "Издръжлив тонус, без умора · поддръжка след курса · електроди на изходите за ръце",
                "Lasting tone without fatigue · upkeep after the course · pads on the arm outputs",
                Kind.PASSIVE, AutoModel.zones(0, 0, 0, 0, 0, 0, 0, 0, 0, 100)));
        p.cr10Lo = 2; p.cr10Hi = 3; p.xCap = 0.45; p.impulse = AutoDynamics.GENTLE;

        // difficulty (owner, 1.1.336; design values): what the program asks of the body — the feeling it aims at,
        // the explosive / metabolic work. Green = easy, amber = medium, red = hard.
        for (String id : new String[] {BACK_ACTIVE, SENIOR, POSTPARTUM, DRAIN, BACK_PAIN, RECOVERY, FACE, FACE_TONE}) {
            get(id).level = 1;
        }
        for (String id : new String[] {POWER, CARDIO, MASS}) {
            get(id).level = 3;
        }
    }

    /**
     * The card's three times (owner, 1.1.336), seconds: warm-up (the program's first phase), the main part (the rest of
     * the active work) and the recovery. The time itself is not chosen any more: it is the program's, as long as
     * this client may have it ({@link AutoPlanner#maxSeconds}).
     */
    public static int[] times(Program p, Goal goal, Input in) {
        List<Phase> ph = phases(p, goal, in, AutoPlanner.maxSeconds(p, goal, in));
        int warm = 0;
        int main = 0;
        int rec = 0;
        boolean first = true;
        for (Phase x : ph) {
            if (x.isCooldown()) {
                rec += x.durationS;
            } else if (first && ph.size() > 2) {
                warm = x.durationS;
                first = false;
            } else {
                main += x.durationS;
                first = false;
            }
        }
        return new int[] {warm, main, rec};
    }

    /** The passive recovery after the active part, s: 10 min for the body, 2 min for the face. */
    public static int recoveryS(Program p) {
        return isFace(p) ? FACE_RECOVERY_S : AutoPlanner.RECOVERY_S;
    }

    /** One face step: narrow pulse, soft 0.5 s rise and fall (no jolt on the face). */
    private static Step faceStep(int hz, int on, int off) {
        Step s = tet(Math.max(FACE_HZ_MIN, hz), FACE_PW, on, off);
        s.rampUpMs = 500;
        s.rampDownMs = 500;
        return s;
    }

    /** The face's let-go: 2 min of short, soft 30 Hz holds at half strength — still ≥ 20 Hz, no twitches. */
    private static void faceCooldown(List<Phase> out, int total) {
        Phase c = phase(out, "COOLDOWN", "Отпускане", "Let go", 0.10, total, 0.5, 0.5);
        c.envStart = 0.5;
        c.envEnd = 0.5;
        c.hintBg = "Отпусни лицето — само меки кратки стягания";
        c.hintEn = "Let the face go — only soft short holds";
        c.steps.add(faceStep(30, 2, 8));
    }

    private static Program add(Program p) {
        ALL.add(p);
        return p;
    }

    public static List<Program> all() {
        return ALL;
    }

    public static Program get(String id) {
        for (Program p : ALL) {
            if (p.id.equals(id)) {
                return p;
            }
        }
        return null;
    }

    /** Spec §6.0: the menu per goal × kind, first = default. */
    public static List<Program> menu(Goal goal, Kind kind) {
        String[] ids;
        switch (goal) {
            case TONE:
                ids = kind == Kind.ACTIVE
                        ? new String[] {GENERAL, MASS, UPPER, GLUTES_LEGS, CORE, POWER}
                        : new String[] {CELLULITE, POSTPARTUM, PASSIVE_METABOLIC, FACE, FACE_TONE};
                break;
            case SLIM:
                ids = kind == Kind.ACTIVE
                        ? new String[] {CARDIO, GENERAL, GLUTES_LEGS, CORE, POWER}
                        : new String[] {CELLULITE, DRAIN, PASSIVE_METABOLIC};
                break;
            default:
                ids = kind == Kind.ACTIVE
                        ? new String[] {BACK_ACTIVE, SENIOR}
                        : new String[] {BACK_PAIN, DRAIN, POSTPARTUM, RECOVERY};
                break;
        }
        List<Program> out = new ArrayList<Program>();
        for (String id : ids) {
            out.add(get(id));
        }
        return out;
    }

    /** The card marked "recommended" for this client in the menu (spec §6.0). */
    public static Program recommended(Goal goal, Kind kind, Input in) {
        List<Program> menu = menu(goal, kind);
        if (goal == Goal.HEALTH && kind == Kind.ACTIVE && in.age >= 50) {
            return get(SENIOR);
        }
        if (in.sex == AiModel.Sex.FEMALE && in.extra.weeksSinceBirth > 0
                && menu.contains(get(POSTPARTUM))) {
            return get(POSTPARTUM);
        }
        for (Program p : menu) {
            if (blockReason(p, goal, in, false) == null) {
                return p;
            }
        }
        return menu.get(0);
    }

    /** Which goal × kind the client's saved goal (client form) points at. */
    public static Goal goalOf(AiModel.Goal g) {
        if (g == null) {
            return Goal.TONE;
        }
        switch (g) {
            case FAT: return Goal.SLIM;
            case MASSAGE:
            case DRAIN: return Goal.HEALTH;
            default: return Goal.TONE;
        }
    }

    public static Kind kindOf(AiModel.Goal g) {
        return g == AiModel.Goal.TONE || g == AiModel.Goal.FAT || g == null ? Kind.ACTIVE : Kind.PASSIVE;
    }

    /**
     * Null when the program may run for this client, else why not (shown on the grey card).
     * The general screening (contraindications, fever, …) is checked on its own step.
     */
    public static String blockReason(Program p, Goal goal, Input in) {
        return blockReason(p, goal, in, true);
    }

    /**
     * {@code answered} = false on the program list: the program's own questions (weeks after
     * birth, back red flags) come on the next step and do not grey the card yet.
     */
    public static String blockReason(Program p, Goal goal, Input in, boolean answered) {
        if (p.femaleOnly && in.sex != AiModel.Sex.FEMALE) {
            return AiText.t("Само за жени", "Women only");
        }
        if (p.maleOnly && in.sex == AiModel.Sex.FEMALE) {
            return AiText.t("Мъжка програма", "Men's program");
        }
        if (p.isActive() && in.hoursSinceActive >= 0 && in.hoursSinceActive < 24) {
            return AiText.t("Под 24 ч от последната активна — само пасивна",
                    "Under 24 h since the last active one — passive only");
        }
        if (goal == Goal.SLIM && in.bmi() > 0 && in.bmi() < 18.5) {
            return AiText.t("ИТМ под 18.5 — отслабването не е подходящо",
                    "BMI under 18.5 — weight loss is not suitable");
        }
        if (in.age >= 70 && p.isActive() && goal != Goal.HEALTH) {
            return AiText.t("След 70 г. — програмите за здраве", "After 70 — the health programs");
        }
        if (POWER.equals(p.id)) {
            if (in.sessions < 4) {
                return AiText.t("След 4 сесии (адаптация)", "After 4 sessions (adaptation)");
            }
            if (in.age >= 60) {
                return AiText.t("До 60 г.", "Under 60");
            }
            if (in.fitness == AiModel.Fitness.LOW) {
                return AiText.t("Нужна е средна кондиция", "Needs medium fitness");
            }
        }
        if (!answered) {
            return null;
        }
        if (p.asksBack && in.extra.anyBackRedFlag()) {
            return AiText.t("Сигнал за тревога за гърба — първо лекар",
                    "Back red flag — see a doctor first");
        }
        if (p.asksPostpartum) {
            int minWeeks = in.extra.cesarean ? 12 : 6;
            if (in.extra.weeksSinceBirth < minWeeks) {
                return AiText.t("Най-рано " + minWeeks + " седмици след раждането",
                        "Not before " + minWeeks + " weeks after birth");
            }
        }
        return null;
    }

    // ================================================================ phases

    /** Length of the active part before the client's limits (spec §6); AutoPlanner caps it at 20 min. */
    public static int baseSeconds(Program p, Goal goal, Input in) {
        boolean slim = goal == Goal.SLIM;
        switch (p.id) {
            case GENERAL:
            case GLUTES_LEGS:
            case CORE:
            case MASS:
            case UPPER:
                return slim ? 1500 : 1200;
            case POWER:
                return 1080;
            case CARDIO:
                return 1500;
            case CELLULITE:
            case PASSIVE_METABOLIC:
                return 1500;
            case FACE:
                return 1080;
            case FACE_TONE:
                return 780;
            default:
                return 1200;
        }
    }

    /** ON:OFF of the main strength cycle by fitness (spec §3.2): LOW 4:6, MID base, HIGH 6:4. */
    static int[] onOff(Input in, int on, int off) {
        if (in.fitness == AiModel.Fitness.LOW) {
            return new int[] {4, 6};
        }
        if (in.fitness == AiModel.Fitness.HIGH) {
            return new int[] {6, 4};
        }
        return new int[] {on, off};
    }

    static List<Phase> phases(Program p, Goal goal, Input in, int total) {
        List<Phase> out = new ArrayList<Phase>();
        boolean slim = goal == Goal.SLIM;
        switch (p.id) {
            case GENERAL:
            case GLUTES_LEGS:
            case MASS:
            case UPPER:
            case CORE: {
                int[] oo = GLUTES_LEGS.equals(p.id) || MASS.equals(p.id) || UPPER.equals(p.id)
                        ? onOff(in, 5, 4) : onOff(in, 4, 4);
                String hBg;
                String hEn;
                if (MASS.equals(p.id)) {
                    hBg = "Клек, лицеви опори, гребане, преса — бавно и тежко";
                    hEn = "Squat, push-ups, rows, press — slow and heavy";
                } else if (UPPER.equals(p.id)) {
                    hBg = "Лицеви опори, гребане, преса, бицепс, трицепс";
                    hEn = "Push-ups, rows, press, biceps, triceps";
                } else if (GLUTES_LEGS.equals(p.id)) {
                    hBg = "Клек, напад, глутеус мост, абдукция";
                    hEn = "Squat, lunge, glute bridge, abduction";
                } else if (CORE.equals(p.id)) {
                    hBg = "Планк, крънч, ротации, „мъртва буболечка“";
                    hEn = "Plank, crunch, rotations, dead bug";
                } else {
                    hBg = "Клек, напад, лицеви от колене, гребане";
                    hEn = "Squat, lunge, knee push-ups, rows";
                }
                Phase w = phase(out, "WARMUP", "Загрявка", "Warm-up", slim ? 0.10 : 0.15, total, 0.6, 1.0);
                w.envStart = 0.6;
                w.envEnd = 1.0;
                w.hintBg = "Клек, ходене на място";
                w.hintEn = "Squat, marching";
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase m = phase(out, "MAIN", "Сила", "Strength", slim ? 0.45 : 0.75, total, 1.0, 1.0);
                m.envEnd = ENV_MAX;
                m.window = Window.main();
                m.hintBg = hBg;
                m.hintEn = hEn;
                Step ms = tet(85, 350, oo[0], oo[1]);
                m.steps.add(slim ? pause(ms, 6, 0.45) : ms);
                if (slim) {
                    Phase mt = phase(out, "METABOLIC", "Изгаряне", "Burn", 0.35, total, 0.8, 0.8);
                    mt.envEnd = 1.0;
                    mt.hintBg = "Ходене, степ, леки клекове";
                    mt.hintEn = "Walking, step, light squats";
                    mt.steps.add(tet(85, 350, 4, 1));
                    mt.steps.add(twitch(6, 350, 4, 1, 0.7));
                }
                cooldown(out, total, 0.10, 5);
                break;
            }
            case POWER: {
                Phase w = phase(out, "WARMUP", "Загрявка", "Warm-up", 0.20, total, 0.6, 0.9);
                w.envStart = 0.6;
                w.envEnd = 0.9;
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase m = phase(out, "MAIN", "Взривна сила", "Explosive power", 0.70, total, 1.0, 1.0);
                m.envEnd = ENV_MAX;
                m.window = Window.main();
                m.window.onMinus = 1;
                m.window.onPlus = 1;
                m.window.offMinus = 1;
                m.window.offPlus = 3;
                m.hintBg = "Взривен клек / скок / хвърляне в свое темпо";
                m.hintEn = "Explosive squat / jump / throw at your own pace";
                m.steps.add(tet(100, 300, 3, 9));
                cooldown(out, total, 0.10, 5);
                break;
            }
            case CARDIO: {
                Phase w = phase(out, "WARMUP", "Загрявка", "Warm-up", 0.10, total, 0.6, 0.9);
                w.envStart = 0.6;
                w.envEnd = 0.9;
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase mt = phase(out, "METABOLIC", "Изгаряне", "Burn", 0.80, total, 0.9, 0.9);
                mt.envStart = 1.0;
                mt.envEnd = ENV_MAX;
                mt.hintBg = "Степ, ходене, клек — без спиране";
                mt.hintEn = "Step, walking, squats — keep moving";
                mt.steps.add(tet(85, 350, 4, 1));
                mt.steps.add(twitch(7, 350, 4, 1, 0.7));
                cooldown(out, total, 0.10, 5);
                break;
            }
            case BACK_ACTIVE: {
                int[] oo = onOff(in, 6, 4);
                Phase w = phase(out, "WARMUP", "Загрявка", "Warm-up", 0.15, total, 0.6, 0.9);
                w.envStart = 0.6;
                w.envEnd = 0.9;
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase m = phase(out, "MAIN", "Стабилност", "Stability", 0.75, total, 0.9, 0.9);
                m.envEnd = ENV_MAX;
                m.window = Window.main();
                m.hintBg = "Птица-куче, мост, планк, гребане — без усукване под товар";
                m.hintEn = "Bird-dog, bridge, plank, rows — no loaded twisting";
                m.steps.add(tet(85, 350, oo[0], oo[1]));
                cooldown(out, total, 0.10, 4);
                break;
            }
            case SENIOR: {
                int[] oo = onOff(in, 4, 6);
                if (in.fitness == AiModel.Fitness.HIGH) {
                    oo = new int[] {4, 4};
                }
                Phase w = phase(out, "WARMUP", "Загрявка", "Warm-up", 0.20, total, 0.6, 1.0);
                w.envStart = 0.6;
                w.envEnd = 1.0;
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase m = phase(out, "MAIN", "Сила", "Strength", 0.70, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = "Ставане от стол, повдигане на пръсти, гребане с ластик";
                m.hintEn = "Sit-to-stand, calf raises, band rows";
                m.steps.add(tet(85, 350, oo[0], oo[1]));
                cooldown(out, total, 0.10, 5);
                break;
            }
            case CELLULITE: {
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 0.6, 0.6);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m1 = phase(out, "MAIN", "Тонус", "Tone", 0.40, total, 0.6, 0.6);
                m1.window = Window.main();
                m1.steps.add(pause(tet(85, 350, 4, 6), 8, 0.50));
                Phase m2 = phase(out, "WAVE", "Дренажна вълна", "Drainage wave", 0.40, total, 0.7, 0.7);
                m2.wave = true;
                legWave(m2, 35, 300);
                cooldown(out, total, 0.10, 3);
                break;
            }
            case DRAIN: {
                int hz = in.variant == 1 ? 8 : 35;
                Phase o = phase(out, "OPEN", "Отваряне", "Opening", 0.15, total, 0.9, 0.9);
                o.wave = true;
                o.steps.add(waveStep(hz, 300, ch(ABS, LOWER_BACK), null));
                o.steps.add(waveStep(hz, 300, ch(TRAPS), ch(ABS, LOWER_BACK)));
                o.steps.add(rest(3));
                Phase legs = phase(out, "LEGS", "Крака", "Legs", 0.55, total, 0.9, 0.9);
                legs.wave = true;
                legWave(legs, hz, 300);
                Phase arms = phase(out, "ARMS", "Ръце и гръб", "Arms and back", 0.20, total, 0.9, 0.9);
                arms.wave = true;
                arms.steps.add(waveStep(hz, 300, ch(ARMS), null));
                arms.steps.add(waveStep(hz, 300, ch(CHEST, BACK), ch(ARMS)));
                arms.steps.add(waveStep(hz, 300, ch(TRAPS), ch(CHEST, BACK)));
                arms.steps.add(rest(5));
                Phase c = cooldown(out, total, 0.10, 3);
                c.steps.get(0).zones = uniform(60);
                break;
            }
            case PASSIVE_METABOLIC: {
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.08, total, 0.6, 0.7);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                String[] names = {"LOW", "TONE", "LOW", "TONE"};
                double[] shares = {0.30, 0.12, 0.30, 0.12};
                for (int i = 0; i < names.length; i++) {
                    boolean tone = "TONE".equals(names[i]);
                    Phase ph = phase(out, i == 0 ? "MAIN" : names[i] + (i + 1),
                            tone ? "Тонус" : "6 Hz", tone ? "Tone" : "6 Hz", shares[i], total,
                            tone ? 0.5 : 0.7, tone ? 0.5 : 0.7);
                    ph.steps.add(tone ? tet(85, 350, 4, 6) : twitch(6, 350, 10, 2, 1.0));
                }
                cooldown(out, total, 0.08, 3);
                break;
            }
            case BACK_PAIN: {
                Phase r = phase(out, "RELAX", "Отпускане", "Relax", 0.20, total, 0.7, 0.7);
                r.steps.add(twitch(4, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Стабилизация", "Stabilise", 0.55, total, 0.6, 0.6);
                m.window = Window.main();
                m.window.offMinus = 0;
                m.steps.add(tet(80, 300, 4, 8));
                Phase e = phase(out, "RELIEF", "Обезболяване", "Relief", 0.25, total, 0.7, 0.7);
                e.steps.add(twitch(2, 200, 10, 1, 1.0));
                cooldown(out, total, 0.10, 2);
                break;
            }
            case POSTPARTUM: {
                int hz = in.sessions >= 6 ? 50 : 40;
                double phiEnd = Math.min(0.9, 0.6 + 0.05 * (in.sessions / 2));
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.15, total, 0.6, 0.6);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Тазово дъно", "Pelvic floor", 0.70, total, 0.6, phiEnd);
                m.envStart = 0.6;
                m.envEnd = phiEnd;
                m.hintBg = "Стягай тазовото дъно в свое темпо";
                m.hintEn = "Lift the pelvic floor at your own pace";
                m.steps.add(pause(tet(hz, 250, 4, 8), 6, 0.35));
                cooldown(out, total, 0.15, 3);
                break;
            }
            case FACE: {
                // Recruitment ramp at the working frequency (no twitches under 20 Hz on the face), then the lift:
                // 70 Hz fused 3 s, 6 s rest — the mimetic muscles are fast (IIA-rich) and tire within seconds above 50 Hz.
                Phase w = phase(out, "WARMUP", "Включване", "Wake-up", 0.11, total, 0.6, 0.8);
                w.envStart = 0.6;
                w.envEnd = 0.8;
                w.hintBg = "Седни удобно, лицето отпуснато — ъгълът на устата трябва да тръгне леко нагоре";
                w.hintEn = "Sit comfortably, face relaxed — the mouth corner should start to lift";
                w.steps.add(faceStep(70, 2, 8));
                Phase m = phase(out, "MAIN", "Повдигане", "Lift", 0.89, total, 0.9, 0.9);
                m.hintBg = "Лицето отпуснато — бузата се повдига сама; без болка, без мигане";
                m.hintEn = "Face relaxed — the cheek lifts by itself; no pain, no blinking";
                m.steps.add(faceStep(70, 3, 6));
                faceCooldown(out, total);
                break;
            }
            case FACE_TONE: {
                // 35 Hz: an almost fused contraction that fatigues far slower than 70 Hz — long holds, short rests
                Phase w = phase(out, "WARMUP", "Включване", "Wake-up", 0.15, total, 0.6, 0.7);
                w.envStart = 0.6;
                w.envEnd = 0.7;
                w.hintBg = "Седни удобно, лицето отпуснато";
                w.hintEn = "Sit comfortably, face relaxed";
                w.steps.add(faceStep(35, 3, 7));
                Phase m = phase(out, "MAIN", "Тонус", "Tone", 0.85, total, 0.8, 0.8);
                m.hintBg = "Меко, равномерно стягане — трябва да се чувства, не да боли";
                m.hintEn = "A soft, even tension — felt, never painful";
                m.steps.add(faceStep(35, 4, 5));
                faceCooldown(out, total);
                break;
            }
            default: { // RECOVERY
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.15, total, 0.5, 0.8);
                w.envStart = 0.5;
                w.envEnd = 0.8;
                w.steps.add(twitch(3, 250, 10, 2, 1.0));
                Phase m = phase(out, "MAIN", "Масаж", "Massage", 0.75, total, 0.8, 0.8);
                m.steps.add(twitch(3, 250, 10, 2, 1.0));
                m.steps.add(twitch(8, 250, 10, 2, 1.0));
                cooldown(out, total, 0.10, 2);
                break;
            }
        }
        fixDurations(out, total);
        if (isFace(p)) {
            for (Phase ph : out) {
                if (ph.isCooldown()) {
                    ph.durationS = FACE_RECOVERY_S;
                }
            }
        }
        return out;
    }

    /** DRAIN legs: calf → thighs → glutes → abs + lower back, the previous group at 50 %, then refill. */
    private static void legWave(Phase ph, int hz, int pw) {
        ph.steps.add(waveStep(hz, pw, ch(CALF), null));
        ph.steps.add(waveStep(hz, pw, ch(BACK_THIGH, FRONT_THIGH), ch(CALF)));
        ph.steps.add(waveStep(hz, pw, ch(GLUTES), ch(BACK_THIGH, FRONT_THIGH)));
        ph.steps.add(waveStep(hz, pw, ch(ABS, LOWER_BACK), ch(GLUTES)));
        ph.steps.add(rest(5));
    }

    private static Phase phase(List<Phase> out, String id, String bg, String en, double share,
                               int total, double phi0, double phi1) {
        Phase ph = new Phase();
        ph.id = id;
        ph.nameBg = bg;
        ph.nameEn = en;
        ph.durationS = (int) Math.round(share * total);
        ph.phiStart = phi0;
        ph.phiEnd = phi1;
        ph.envStart = 1.0;
        ph.envEnd = 1.0;
        out.add(ph);
        return ph;
    }

    private static Phase cooldown(List<Phase> out, int total, double share, int hz) {
        Phase c = phase(out, "COOLDOWN", "Охлаждане", "Cool-down", share, total, 0.5, 0.5);
        c.envStart = 0.5;
        c.envEnd = 0.5;
        c.steps.add(twitch(hz, 250, 10, 1, 1.0));
        return c;
    }

    /**
     * The active phases share exactly {@code active} seconds (their shares rescaled); the cool-down is the
     * passive recovery: a fixed {@link AutoPlanner#RECOVERY_S} on top (owner, 1.1.270).
     */
    private static void fixDurations(List<Phase> out, int active) {
        int shares = 0;
        Phase lastActive = null;
        for (Phase p : out) {
            if (!p.isCooldown()) {
                shares += p.durationS;
                lastActive = p;
            }
        }
        int sum = 0;
        for (Phase p : out) {
            if (p.isCooldown()) {
                p.durationS = AutoPlanner.RECOVERY_S;
            } else {
                p.durationS = shares > 0 ? (int) Math.round(p.durationS * (double) active / shares) : 0;
                sum += p.durationS;
            }
        }
        if (lastActive != null) {
            lastActive.durationS = Math.max(30, lastActive.durationS + active - sum);
        }
    }

    static Step tet(int hz, int pw, int on, int off) {
        Step s = new Step(hz, pw, on, off);
        s.rampUpMs = 400;
        s.rampDownMs = 300;
        return s;
    }

    /** Warm-up of the active programs: 7 Hz single twitches, almost continuous (blood flow, warmth, next to no fatigue). */
    static final int WARMUP_HZ = 7;

    static Step twitch(int hz, int pw, int on, int off, double sigma) {
        Step s = new Step(hz, pw, on, off);
        s.sigma = sigma;
        s.rampUpMs = 200;
        s.rampDownMs = 200;
        return s;
    }

    static Step pause(Step s, int pauseHz, double pauseSigma) {
        s.pauseHz = pauseHz;
        s.pauseSigma = pauseSigma;
        return s;
    }

    /** One wave step: {@code on} channels at 100 %, {@code prev} at 50 %, the rest silent. */
    private static Step waveStep(int hz, int pw, int[] on, int[] prev) {
        Step s = new Step(hz, pw, 3, 1);
        s.rampUpMs = 1000;
        s.rampDownMs = 500;
        int[] z = new int[CHANNELS];
        if (prev != null) {
            for (int c : prev) {
                z[c] = 50;
            }
        }
        for (int c : on) {
            z[c] = 100;
        }
        s.zones = z;
        return s;
    }

    /** Silent step: the vessels refill (output 0). */
    private static Step rest(int seconds) {
        Step s = new Step(3, 250, 1, Math.max(1, seconds - 1));
        s.sigma = 0;
        s.zones = new int[CHANNELS];
        return s;
    }

    private static int[] ch(int... c) {
        return c;
    }

    private static int[] uniform(int v) {
        int[] z = new int[CHANNELS];
        for (int i = 0; i < CHANNELS; i++) {
            z[i] = v;
        }
        return z;
    }

    /** Heart-rate use of a program for a goal (spec §7). */
    public static HrUse hrUse(Program p, Goal goal) {
        if (CARDIO.equals(p.id) || PASSIVE_METABOLIC.equals(p.id)) {
            return HrUse.CORRIDOR;
        }
        if (goal == Goal.SLIM && (GENERAL.equals(p.id) || GLUTES_LEGS.equals(p.id) || CORE.equals(p.id))) {
            return HrUse.CORRIDOR;
        }
        return HrUse.CAP;
    }

    /** Corridor in HRR units {x_lo, x_hi} (spec §3.3 / R14). */
    static double[] corridor(Program p) {
        if (PASSIVE_METABOLIC.equals(p.id)) {
            return new double[] {0.25, 0.45};
        }
        return new double[] {0.40, 0.59};
    }
}
