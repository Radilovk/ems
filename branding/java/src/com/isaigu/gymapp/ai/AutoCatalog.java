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
     * Anti-ageing (owner, 1.1.514 — docs/xems-auto-mode-spec.md §6.12): only the impulse is the program's; the zones are
     * even (every channel 100 %) and the strength is the calibration — the trainer sets both for the client.
     * Not a sarcopenia program: each phase stands on a human EMS / NMES study of an ageing pathway — myokines,
     * BDNF, inflammation (intervals), blood sugar, arterial stiffness (spec §6.12 table and sources).
     */
    public static final String ANTIAGE = "antiage";
    public static final String ANTIAGE_PASSIVE = "antiage_passive";
    /**
     * Face (owner, 2026-11-06 — docs/xems-face.md §9): the face connector puts the ten channels on ten face sites
     * (sockets F1–F10, galvanically isolated channels). Every face program names its sites; the rest are 0 and locked;
     * the encoder's face mode gives every channel the gentle divider. Motor programs never under 20 Hz on the face
     * (Efthimiou 2024); the sensory ones (forehead, jaw) are a tingle, the muscle must not move.
     */
    public static final int F_ZM_L = 0, F_ZM_R = 1, F_NL_L = 2, F_NL_R = 3, F_LC_L = 4, F_LC_R = 5,
            F_JAW_L = 6, F_JAW_R = 7, F_FOREHEAD = 8, F_CHIN = 9;
    /** Lifting 3D: zygomaticus major + the nasolabial lifters + the lower cheek, both sides — 70 Hz 3 : 6 (Kavanagh 2012). */
    public static final String FACE = "face";
    /** Firm contour: the same six sites, 35 Hz 4 : 5 — fatigue resistance, the upkeep after the lift. */
    public static final String FACE_TONE = "face_tone";
    /** Lifting of the oval: the cheeks, then under the chin, 3 s each — every muscle 3 : 6. */
    public static final String FACE_OVAL = "face_oval";
    /** Lymph wave: the chin opens, then nasolabial → lower cheek → cheekbone, the previous at 50 % (a muscle pump wave). */
    public static final String FACE_DRAIN = "face_drain";
    /** Botox effect: sensory 100 Hz · 50 µs on the forehead (conventional TENS: Aβ, not the pain fibres), 4 : 4. */
    public static final String FACE_RELAX = "face_relax";
    /** Calm face: sensory on the forehead and both masseters, 100 ↔ 80 Hz alternating (habituation), 50 µs. */
    public static final String FACE_CALM = "face_calm";
    /** Relaxed jaw: both masseters, sensory low rate (2 Hz plain — the suit has no bursts; ULF-TENS-like). */
    public static final String FACE_JAW = "face_jaw";
    /** Firm chin: under the chin, 30 Hz · 200 µs, 4 : 8. */
    public static final String FACE_CHIN = "face_chin";
    /**
     * Comfort rules (docs/xems-face.md §12, owner 2026-11-07: a deep, dull ache "in the bone" on the forehead even at
     * 2 %): the face gets only narrow pulses. Pain fibres (Aδ, C — in the periosteum too) need long pulses: their
     * threshold falls steeply as the pulse widens (Alon: 350 → 30 mA from 5 → 1000 µs; C-fibre chronaxie ≈ 2 ms), while
     * the large fibres (touch, motor) answer short ones. So: the sensory programs in the conventional-TENS band
     * (80–100 Hz, 50 µs — Aβ, the comfortable buzz), the motor ones ≤ 100 µs, the chin and the jaw ≤ 150 µs.
     * Nothing like the 250 µs "acupuncture-like" pulse on thin tissue over bone.
     */
    public static final int FACE_RELAX_PW = 50;
    public static final int FACE_JAW_PW = 150;
    public static final int FACE_CHIN_PW = 150;
    /** Face: the motor pulse width (facial NMES 10–100 µs per phase), and the recovery (s). */
    public static final int FACE_PW = 100;
    public static final int FACE_RECOVERY_S = 120;
    /** Lowest frequency of a motor face step (Hz); the jaw's low-rate sensory steps are the one exception. */
    public static final int FACE_HZ_MIN = 20;

    public static final String[] FACE_IDS = {FACE, FACE_TONE, FACE_OVAL, FACE_DRAIN, FACE_RELAX, FACE_CALM, FACE_JAW, FACE_CHIN};

    /** A face program: its own sites only, narrow pulse, short recovery. */
    public static boolean isFace(Program p) {
        return p != null && p.id.startsWith("face");
    }

    /** Channel shares for the given sites (100 %), every other channel 0. */
    static int[] sites(int... f) {
        int[] z = new int[CHANNELS];
        for (int k : f) {
            z[k] = 100;
        }
        return z;
    }

    static final int[] CHEEKS = {F_ZM_L, F_ZM_R, F_NL_L, F_NL_R, F_LC_L, F_LC_R};

    /** Men's goals (owner's decision): muscle mass, and chest · shoulders · arms. */
    public static final String MASS = "mass";
    public static final String UPPER = "upper";

    /**
     * The passive version of every active template (owner, 1.1.526 — docs/xems-auto-mode-spec.md §6.13): the same
     * goal at rest, lying or sitting — involuntary isometric work (NMES), so longer rests (≥ 2 × ON), ON ≤ 4 s (L1),
     * and the muscles the active one trains. Cardio's is Passive metabolism, the healthy back's the back-pain one,
     * anti-ageing's its treatment.
     */
    public static final String GENERAL_P = "general_passive";
    public static final String GLUTES_P = "glutes_passive";
    public static final String MASS_P = "mass_passive";
    public static final String UPPER_P = "upper_passive";
    public static final String CORE_P = "core_passive";
    public static final String POWER_P = "power_passive";
    public static final String SENIOR_P = "senior_passive";

    /** Active template → its passive version (null = none). */
    public static String passiveOf(String id) {
        if (id == null) {
            return null;
        }
        switch (id) {
            case GENERAL: return GENERAL_P;
            case GLUTES_LEGS: return GLUTES_P;
            case MASS: return MASS_P;
            case UPPER: return UPPER_P;
            case CORE: return CORE_P;
            case POWER: return POWER_P;
            case SENIOR: return SENIOR_P;
            case CARDIO: return PASSIVE_METABOLIC;
            case BACK_ACTIVE: return BACK_PAIN;
            case ANTIAGE: return ANTIAGE_PASSIVE;
            default: return null;
        }
    }

    /** Body channels of the lower half + the trunk that holds it (the passive legs / glutes, the 50+ legs). */
    static final int[] LOWER = {CALF, FRONT_THIGH, BACK_THIGH, GLUTES, ABS, LOWER_BACK};
    /** Upper body + the trunk (the passive chest · shoulders · arms). */
    static final int[] UPPER_BODY = {ABS, LOWER_BACK, BACK, TRAPS, CHEST, ARMS};
    /** The trunk's deep and big stabilisers (the passive waist & core). */
    static final int[] TRUNK = {ABS, LOWER_BACK, BACK, GLUTES};
    /** Posture: the back chain (the 50+ posture block). */
    static final int[] POSTURE = {LOWER_BACK, BACK, TRAPS, GLUTES};

    /** Which muscles work (100) and which rest (0) — the program never sets how strong (owner, 1.1.526). */
    static int[] only(int... chs) {
        int[] z = new int[CHANNELS];
        for (int k : chs) {
            z[k] = 100;
        }
        return z;
    }

    static final int[] ALL_ON = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100};

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
        /** The face programs ask about botox / fillers in the last 2 weeks on the client step. */
        public boolean asksFace;
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
        p = add(new Program(GENERAL, "Стягане на цялото тяло", "Full-body toning",
                "Стегнато тяло и по-силни мускули — с упражнения",
                "A firmer body and stronger muscles — with exercises",
                Kind.ACTIVE, AutoModel.zones(70, 90, 90, 100, 90, 80, 90, 70, 80, 75)));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.25; p.doublePulse = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(GLUTES_LEGS, "Седалище и бедра", "Glutes & thighs",
                "Оформено седалище и стегнати бедра",
                "Shaped glutes and firm thighs",
                Kind.ACTIVE, AutoModel.zones(60, 85, 95, 100, 70, 75, 60, 40, 40, 40)));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.25; p.doublePulse = true; p.femaleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(MASS, "Мускулна маса и сила", "Muscle mass & strength",
                "Повече мускули и сила — бавни, тежки повторения",
                "More muscle and strength — slow, heavy reps",
                Kind.ACTIVE, AutoModel.zones(60, 85, 80, 80, 80, 75, 100, 90, 100, 100)));
        p.cr10Lo = 7; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.3; p.maleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(UPPER, "Горна част на тялото", "Upper body",
                "Гърди, гръб, рамене и ръце — сила и релеф",
                "Chest, back, shoulders and arms — strength and definition",
                Kind.ACTIVE, AutoModel.zones(40, 60, 55, 60, 80, 70, 100, 100, 100, 100)));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.25; p.maleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(CORE, "Талия и корем", "Waist & core",
                "По-тънка талия и силен корем, защитен гръб",
                "A slimmer waist and strong core, a protected back",
                Kind.ACTIVE, AutoModel.zones(40, 60, 60, 70, 100, 90, 75, 45, 55, 40)));
        p.cr10Lo = 6; p.cr10Hi = 6; p.xCap = 0.85; p.envMax = 1.25; p.doublePulse = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(POWER, "Сила и експлозивност", "Power & explosiveness",
                "Експлозивна сила и бързина на движенията",
                "Explosive strength and fast movement",
                Kind.ACTIVE, AutoModel.zones(80, 100, 100, 100, 85, 80, 90, 70, 85, 80)));
        p.cr10Lo = 7; p.cr10Hi = 7; p.xCap = 0.85; p.envMax = 1.15; p.impulse = AutoDynamics.POWER;

        p = add(new Program(CARDIO, "Изгаряне на мазнини", "Fat burning",
                "Ускорено изгаряне на мазнини, пулсът в оптималната зона",
                "Faster fat burning, heart rate in the optimal zone",
                Kind.ACTIVE, AutoModel.zones(90, 100, 100, 100, 70, 70, 80, 50, 60, 70)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.80; p.envMax = 1.10; p.doublePulse = true; p.impulse = AutoDynamics.CARDIO;

        p = add(new Program(BACK_ACTIVE, "Здрав гръб и правилна стойка", "Healthy back & good posture",
                "Силни мускули на гърба — изправена стойка, по-малко напрежение",
                "Strong back muscles — upright posture, less strain",
                Kind.ACTIVE, AutoModel.zones(50, 70, 80, 90, 80, 100, 100, 80, 60, 60)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.80; p.envMax = 1.15; p.asksBack = true; p.impulse = AutoDynamics.GENTLE;

        // 50+ (owner, 1.1.527 — spec §6.15): strength and power (sarcopenia), bone density, the blood sugar, menopause,
        // posture, a sure step. Not anti-ageing (that is longevity). Never worded as "old" (owner, 1.1.528).
        p = add(new Program(SENIOR, "50+ · Сила, баланс, здрави кости", "50+ · Strength, balance, strong bones",
                "Сила на краката, баланс и стабилност, здрави кости, нормална кръвна захар",
                "Leg strength, balance and stability, strong bones, healthy blood sugar",
                Kind.ACTIVE, AutoModel.zones(80, 100, 90, 100, 70, 80, 80, 60, 60, 70)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.75; p.envMax = 1.0; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(CELLULITE, "Антицелулитна процедура", "Anti-cellulite treatment",
                "По-гладка кожа и по-малко задържана течност",
                "Smoother skin and less fluid retention",
                Kind.PASSIVE, AutoModel.zones(70, 100, 100, 100, 75, 60, 0, 0, 0, 50)));
        p.cr10Lo = 5; p.cr10Hi = 5; p.xCap = 0.60; p.doublePulse = true; p.femaleOnly = true;

        p = add(new Program(POSTPARTUM, "Възстановяване след раждане", "Postnatal recovery",
                "Тазово дъно, корем и кръст — внимателно и постепенно",
                "Pelvic floor, abs and lower back — gently, step by step",
                Kind.PASSIVE, AutoModel.zones(50, 70, 80, 100, 60, 90, 60, 50, 40, 50)));
        p.cr10Lo = 4; p.cr10Hi = 5; p.xCap = 0.45; p.femaleOnly = true; p.asksPostpartum = true; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(DRAIN, "Лимфен дренаж", "Lymphatic drainage",
                "По-малко отоци и задържана течност, леки крака",
                "Less swelling and fluid retention, light legs",
                Kind.PASSIVE, AutoModel.zones(100, 100, 100, 100, 100, 100, 100, 100, 100, 100)));
        p.cr10Lo = 3; p.cr10Hi = 4; p.xCap = 0.45; p.envMax = 1.0;
        p.variantsBg = new String[] {"Стандартен (35 Hz)", "Чувствителен (8 Hz)"};
        p.variantsEn = new String[] {"Standard (35 Hz)", "Sensitive (8 Hz)"};

        p = add(new Program(PASSIVE_METABOLIC, "Активиране на метаболизма", "Metabolism boost",
                "Изразходване на енергия в покой, без натоварване",
                "Energy use at rest, without strain",
                Kind.PASSIVE, AutoModel.zones(90, 100, 100, 100, 60, 60, 70, 40, 40, 60)));
        p.cr10Lo = 4; p.cr10Hi = 5; p.xCap = 0.60;

        p = add(new Program(BACK_PAIN, "Облекчаване на болки в гърба", "Back pain relief",
                "Отпуска напрежението, укрепва дълбоките мускули, облекчава болката",
                "Eases tension, strengthens the deep muscles, relieves pain",
                Kind.PASSIVE, AutoModel.zones(0, 40, 60, 80, 70, 100, 90, 60, 0, 0)));
        p.cr10Lo = 4; p.cr10Hi = 4; p.xCap = 0.45; p.asksBack = true;

        p = add(new Program(RECOVERY, "Възстановяване и релакс", "Recovery & relaxation",
                "По-бързо възстановяване след натоварване, отпуснати мускули",
                "Faster recovery after training, relaxed muscles",
                Kind.PASSIVE, AutoModel.zones(80, 90, 90, 90, 50, 70, 80, 80, 40, 60)));
        p.cr10Lo = 3; p.cr10Hi = 5; p.xCap = 0.45;

        // anti-ageing = longevity (owner, 1.1.527): keeping the body young and its functions — the pathways of ageing,
        // at any age; not the needs after 50 (that is 50+)
        p = add(new Program(ANTIAGE, "Антиейджинг и дълголетие", "Anti-ageing & longevity",
                "По-малко възпаление, добра кръвна захар, здрави съдове и мозък",
                "Less inflammation, healthy blood sugar, healthy vessels and brain",
                Kind.ACTIVE, AutoModel.zones(100, 100, 100, 100, 100, 100, 100, 100, 100, 100)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.80; p.envMax = 1.10; p.impulse = AutoDynamics.CARDIO;

        p = add(new Program(ANTIAGE_PASSIVE, "Антиейджинг и дълголетие · процедура", "Anti-ageing & longevity · treatment",
                "Кръвна захар, мозък и съдове — в покой, най-добре след хранене",
                "Blood sugar, brain and vessels — at rest, best after a meal",
                Kind.PASSIVE, AutoModel.zones(100, 100, 100, 100, 100, 100, 100, 100, 100, 100)));
        p.cr10Lo = 4; p.cr10Hi = 5; p.xCap = 0.55; p.envMax = 1.0;

        // ---- the passive version of every active template (1.1.526, spec §6.13)
        p = add(new Program(GENERAL_P, "Стягане на цялото тяло · процедура", "Full-body toning · treatment",
                "Цялото тяло в покой — дълбоко стягане без упражнения",
                "The whole body at rest — a deep hold, no exercises",
                Kind.PASSIVE, ALL_ON.clone()));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.55; p.doublePulse = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(GLUTES_P, "Седалище и бедра · процедура", "Glutes & thighs · treatment",
                "Седалище и бедра в покой + лимфен дренаж на краката",
                "Glutes and thighs at rest + leg lymphatic drainage",
                Kind.PASSIVE, only(LOWER)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.55; p.doublePulse = true; p.femaleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(MASS_P, "Мускулна маса и сила · процедура", "Muscle mass & strength · treatment",
                "Големите мускули в покой — дълги, силни стягания",
                "The big muscles at rest — long, strong holds",
                Kind.PASSIVE, ALL_ON.clone()));
        p.cr10Lo = 6; p.cr10Hi = 7; p.xCap = 0.55; p.maleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(UPPER_P, "Горна част на тялото · процедура", "Upper body · treatment",
                "Гърди, гръб, рамене и ръце в покой",
                "Chest, back, shoulders and arms at rest",
                Kind.PASSIVE, only(UPPER_BODY)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.55; p.maleOnly = true; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(CORE_P, "Талия и корем · процедура", "Waist & core · treatment",
                "Корем, кръст и гръб в покой — опора за гръбнака",
                "Abs, lower back and back at rest — support for the spine",
                Kind.PASSIVE, only(TRUNK)));
        p.cr10Lo = 5; p.cr10Hi = 6; p.xCap = 0.55; p.impulse = AutoDynamics.STRENGTH;

        p = add(new Program(POWER_P, "Сила и експлозивност · процедура", "Power & explosiveness · treatment",
                "Бързите мускулни влакна в покой — кратки силни импулси",
                "The fast muscle fibres at rest — short strong bursts",
                Kind.PASSIVE, ALL_ON.clone()));
        p.cr10Lo = 6; p.cr10Hi = 6; p.xCap = 0.55; p.impulse = AutoDynamics.POWER;

        p = add(new Program(SENIOR_P, "50+ · процедура", "50+ · treatment",
                "Седнал: сила и стабилност на краката, изправена стойка, кръвна захар",
                "Seated: leg strength and stability, upright posture, blood sugar",
                Kind.PASSIVE, only(CALF, FRONT_THIGH, BACK_THIGH, GLUTES, ABS, LOWER_BACK, BACK, TRAPS)));
        p.cr10Lo = 4; p.cr10Hi = 5; p.xCap = 0.50; p.impulse = AutoDynamics.GENTLE;

        p = add(new Program(FACE, "Лице · Лифтинг на скулите", "Face · Cheekbone lift",
                "Лифтинг · Скулптуриране · Лимфодренаж · Ботокс ефект · Свежо лице — избор в студиото за лице",
                "Lift · Oval · Facial lymphatic drainage · Botox effect · Fresh face — chosen in the face studio",
                Kind.PASSIVE, sites(CHEEKS)));
        face(p, 3, 4);
        p = add(new Program(FACE_TONE, "Лице · Тонус и стегнатост", "Face · Tone & firmness",
                "Пази лифтинга стегнат", "Keeps the lift firm", Kind.PASSIVE, sites(CHEEKS)));
        face(p, 2, 3);
        p = add(new Program(FACE_OVAL, "Скулптуриране на лицето", "Face · Sculpting",
                "Скули и брадичка в една сесия", "Cheekbones and chin in one session",
                Kind.PASSIVE, sites(F_ZM_L, F_ZM_R, F_NL_L, F_NL_R, F_LC_L, F_LC_R, F_CHIN)));
        face(p, 3, 4);
        p = add(new Program(FACE_DRAIN, "Лице · Лимфодренаж", "Face · Lymphatic drainage",
                "По-малко подпухване, по-свежи черти", "Less puffiness, fresher features",
                Kind.PASSIVE, sites(F_NL_L, F_NL_R, F_LC_L, F_LC_R, F_ZM_L, F_ZM_R, F_CHIN)));
        face(p, 2, 3);
        p = add(new Program(FACE_RELAX, "Лице · Ботокс ефект", "Face · Botox effect",
                "Отпусната мимика, по-гладко чело · без игла", "Relaxed expression, smoother forehead · no needle",
                Kind.PASSIVE, sites(F_FOREHEAD)));
        face(p, 1, 2);
        p = add(new Program(FACE_CALM, "Свежо лице", "Fresh face",
                "Без напрежение в челото и челюстта", "No tension in the forehead and jaw",
                Kind.PASSIVE, sites(F_FOREHEAD, F_JAW_L, F_JAW_R)));
        face(p, 1, 2);
        p = add(new Program(FACE_JAW, "Лице · Релаксация на челюстта", "Face · Jaw relaxation",
                "По-мек долен овал", "A softer jawline", Kind.PASSIVE, sites(F_JAW_L, F_JAW_R)));
        face(p, 1, 2);
        p = add(new Program(FACE_CHIN, "Лице · Стегнат профил", "Face · Firm profile",
                "По-стегнат профил", "A firmer profile", Kind.PASSIVE, sites(F_CHIN)));
        face(p, 3, 4);

        // difficulty (owner, 1.1.336; design values): what the program asks of the body — the feeling it aims at,
        // the explosive / metabolic work. Green = easy, amber = medium, red = hard.
        for (String id : new String[] {BACK_ACTIVE, SENIOR, POSTPARTUM, DRAIN, BACK_PAIN, RECOVERY, ANTIAGE_PASSIVE,
                SENIOR_P, CORE_P, GENERAL_P}) {
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
        return faceStep(hz, FACE_PW, on, off, 500);
    }

    private static Step faceStep(int hz, int pw, int on, int off, int rampMs) {
        Step s = tet(Math.max(FACE_HZ_MIN, hz), pw, on, off);
        s.rampUpMs = rampMs;
        s.rampDownMs = rampMs;
        return s;
    }

    /** A face step on its own sites (the others silent this step). */
    private static Step faceStep(int hz, int pw, int on, int off, int rampMs, int[] zones) {
        Step s = faceStep(hz, pw, on, off, rampMs);
        s.zones = zones;
        return s;
    }

    /** A wave step of the lymph pump: {@code on} at 100 %, {@code prev} at 50 % (they still press), 1 s : 1 s. */
    private static Step faceWave(int[] on, int[] prev) {
        int[] z = new int[CHANNELS];
        if (prev != null) {
            for (int c : prev) {
                z[c] = 50;
            }
        }
        for (int c : on) {
            z[c] = 100;
        }
        return faceStep(30, FACE_PW, 1, 1, 300, z);
    }

    /** A silent step of the face (output 0): the vessels refill between the waves. */
    private static Step faceSilence(int seconds) {
        Step s = new Step(30, FACE_PW, 1, Math.max(1, seconds - 1));
        s.sigma = 0;
        s.zones = new int[CHANNELS];
        return s;
    }

    /** The face's let-go: 2 min of short, soft 30 Hz holds at half strength — still ≥ 20 Hz, no twitches. */
    private static void faceCooldown(List<Phase> out, int total) {
        faceCooldown(out, total, FACE_PW);
    }

    private static void faceCooldown(List<Phase> out, int total, int pw) {
        Phase c = phase(out, "COOLDOWN", "Отпускане", "Let go", 0.10, total, 0.5, 0.5);
        c.envStart = 0.5;
        c.envEnd = 0.5;
        c.hintBg = "Отпусни лицето — само меки кратки стягания";
        c.hintEn = "Let the face go — only soft short holds";
        c.steps.add(faceStep(30, pw, 2, 8, 500));
    }

    /** A sensory program's three parts: a slow wake-up, the work, a fade at half (the steps given by the caller). */
    private static void sensory(List<Phase> out, int total, String mainBg, String mainEn, String hintBg, String hintEn,
                                Step... steps) {
        Phase w = phase(out, "WARMUP", "Включване", "Wake-up", 0.08, total, 0.6, 0.9);
        w.envStart = 0.6;
        w.envEnd = 0.9;
        w.hintBg = "Затвори очи — само изтръпване, нищо не мърда";
        w.hintEn = "Close the eyes — only a tingle, nothing moves";
        w.steps.add(steps[0].copy());
        Phase m = phase(out, "MAIN", mainBg, mainEn, 0.92, total, 1.0, 1.0);
        m.hintBg = hintBg;
        m.hintEn = hintEn;
        for (Step s : steps) {
            m.steps.add(s.copy());
        }
        Phase c = phase(out, "COOLDOWN", "Затихване", "Fade out", 0.10, total, 0.5, 0.5);
        c.envStart = 0.5;
        c.envEnd = 0.5;
        c.hintBg = "Остани отпуснат още малко";
        c.hintEn = "Stay relaxed a little longer";
        c.steps.add(steps[0].copy());
    }

    /** The face programs' common settings: gentle, level 1, the face question on the client step. */
    private static void face(Program p, int cr10Lo, int cr10Hi) {
        p.cr10Lo = cr10Lo;
        p.cr10Hi = cr10Hi;
        p.xCap = 0.45;
        p.impulse = AutoDynamics.GENTLE;
        p.asksFace = true;
        p.level = 1;
    }

    private static Program add(Program p) {
        if (!p.id.startsWith("face")) {
            // the zones say which muscles the program works, not how strong (owner, 1.1.526): any share → on
            for (int i = 0; i < p.zones.length; i++) {
                p.zones[i] = p.zones[i] > 0 ? 100 : 0;
            }
        }
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
            // the passive menus start with the passive version of each active template, in the same order (1.1.526)
            case TONE:
                ids = kind == Kind.ACTIVE
                        ? new String[] {GENERAL, MASS, UPPER, GLUTES_LEGS, CORE, POWER, ANTIAGE}
                        : new String[] {GENERAL_P, MASS_P, UPPER_P, GLUTES_P, CORE_P, POWER_P, ANTIAGE_PASSIVE,
                                CELLULITE, POSTPARTUM, PASSIVE_METABOLIC, FACE};
                break;
            case SLIM:
                ids = kind == Kind.ACTIVE
                        ? new String[] {CARDIO, GENERAL, GLUTES_LEGS, CORE, POWER, ANTIAGE}
                        : new String[] {PASSIVE_METABOLIC, GENERAL_P, GLUTES_P, CORE_P, POWER_P, ANTIAGE_PASSIVE,
                                CELLULITE, DRAIN};
                break;
            default:
                ids = kind == Kind.ACTIVE
                        ? new String[] {BACK_ACTIVE, SENIOR, ANTIAGE}
                        : new String[] {BACK_PAIN, SENIOR_P, ANTIAGE_PASSIVE, DRAIN, POSTPARTUM, RECOVERY};
                break;
        }
        List<Program> out = new ArrayList<Program>();
        for (String id : ids) {
            out.add(get(id));
        }
        return out;
    }

    /**
     * "Всички" (owner, 1.1.526): the goal's active and passive programs in one list — each active template followed by
     * its passive version, then the passive ones of their own.
     */
    public static List<Program> menuAll(Goal goal) {
        List<Program> act = menu(goal, Kind.ACTIVE);
        List<Program> pas = menu(goal, Kind.PASSIVE);
        List<Program> out = new ArrayList<Program>();
        for (Program a : act) {
            out.add(a);
            Program v = get(passiveOf(a.id));
            if (v != null && pas.contains(v) && !out.contains(v)) {
                out.add(v);
            }
        }
        for (Program v : pas) {
            if (!out.contains(v)) {
                out.add(v);
            }
        }
        return out;
    }

    /** The card marked "recommended" for this client in the menu (spec §6.0). */
    public static Program recommended(Goal goal, Kind kind, Input in) {
        List<Program> menu = menu(goal, kind);
        if (goal == Goal.HEALTH && in.age >= 50) {
            return get(kind == Kind.ACTIVE ? SENIOR : SENIOR_P);
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
        if (POWER.equals(p.id) || POWER_P.equals(p.id)) {
            if (in.sessions < 4) {
                return AiText.t("След 4 сесии (адаптация)", "After 4 sessions (adaptation)");
            }
            if (in.age >= 60) {
                return AiText.t("До 60 г.", "Under 60");
            }
            if (in.fitness == AiModel.Fitness.LOW && POWER.equals(p.id)) {
                return AiText.t("Нужна е средна кондиция", "Needs medium fitness");
            }
        }
        if (!answered) {
            return null;
        }
        if (p.asksFace && in.extra.injectable) {
            return AiText.t("Ботокс или филър до 2 седмици — днес без лице",
                    "Botox or filler within 2 weeks — no face today");
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
            case GENERAL_P:
            case GLUTES_P:
            case CORE_P:
                return slim ? 1500 : 1200;
            case POWER_P:
                return 900;
            case FACE:
            case FACE_OVAL:
                return 1080;
            case FACE_TONE:
                return 780;
            case FACE_DRAIN:
            case FACE_CHIN:
                return 720;
            case FACE_JAW:
                return 900;
            case FACE_RELAX:
            case FACE_CALM:
                return 1200;
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
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", slim ? 0.10 : 0.15, total, 0.6, 1.0);
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
                    Phase mt = phase(out, "METABOLIC", "Изгаряне на мазнини", "Fat burning", 0.35, total, 0.8, 0.8);
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
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.20, total, 0.6, 0.9);
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
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 0.6, 0.9);
                w.envStart = 0.6;
                w.envEnd = 0.9;
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase mt = phase(out, "METABOLIC", "Изгаряне на мазнини", "Fat burning", 0.80, total, 0.9, 0.9);
                mt.envStart = 1.0;
                mt.envEnd = ENV_MAX;
                mt.hintBg = "Степ, ходене, клекове — без спиране";
                mt.hintEn = "Step, walking, squats — keep moving";
                mt.steps.add(tet(85, 350, 4, 1));
                mt.steps.add(twitch(7, 350, 4, 1, 0.7));
                cooldown(out, total, 0.10, 5);
                break;
            }
            case BACK_ACTIVE: {
                int[] oo = onOff(in, 6, 4);
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.15, total, 0.6, 0.9);
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
                // 50+ (owner, 1.1.527 — spec §6.15), each block for one need after 50:
                // sarcopenia — WB-EMS 85 Hz · 350 µs · 4 : 4–6 with slow functional moves (Kemmler: FrOST, FORMOsA —
                //   muscle mass and strength up in sarcopenic older adults);
                // power — after 50 it falls faster than strength and predicts falls and function (Reid & Fielding
                //   2012; Byrne 2016): a fast rise on each impulse, a long rest;
                // bone — the bone answers high muscle pull + impact (LIFTMOR, Watson 2018, post-menopause); WB-EMS kept
                //   the spine's density in osteosarcopenic men (Kemmler 2018): a strong short hold with heel drops
                //   (no impact with osteoporosis);
                // blood sugar — the big leg muscles take glucose up with every contraction, at any rate (NMES
                //   meta-analysis, Front Endocrinol 2023): a long sub-tetanic leg rhythm while walking;
                // menopause — the loss of oestrogen speeds up the loss of muscle and bone: the same blocks are its answer.
                // ≤ 85 Hz everywhere (the 60+ limit).
                int[] oo = onOff(in, 4, 6);
                if (in.fitness == AiModel.Fitness.HIGH) {
                    oo = new int[] {4, 4};
                }
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.12, total, 1.0, 1.0);
                w.hintBg = "Ходене на място, кръгове с раменете";
                w.hintEn = "Marching, shoulder circles";
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase m = phase(out, "MAIN", "Сила", "Strength", 0.38, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = "Ставане от стол, гребане с ластик, мост — бавно и с контрол";
                m.hintEn = "Sit-to-stand, band rows, bridge — slow and controlled";
                m.steps.add(tet(85, 350, oo[0], oo[1]));
                Phase sp = phase(out, "SPEED", "Реакция и баланс", "Reaction & balance", 0.15, total, 1.0, 1.0);
                sp.hintBg = "С импулса — бърза крачка напред или встрани и задръж равновесие";
                sp.hintEn = "With the impulse — a quick step forward or sideways, then hold your balance";
                sp.steps.add(tet(70, 300, 2, 6));
                Phase bn = phase(out, "BONE", "Здрави кости", "Strong bones", 0.15, total, 1.0, 1.0);
                bn.hintBg = "С импулса — повдигни се на пръсти и отпусни петите на пода (при остеопороза — плавно)";
                bn.hintEn = "With the impulse — rise on the toes and let the heels down (with osteoporosis — gently)";
                bn.steps.add(tet(85, 350, 3, 5));
                Phase sg = phase(out, "SUGAR", "Кръвна захар", "Blood sugar", 0.10, total, 1.0, 1.0);
                sg.hintBg = "Ходене на място в спокойно темпо";
                sg.hintEn = "Marching at an easy pace";
                Step ss = tet(15, 300, 8, 2);
                ss.zones = only(LOWER);
                sg.steps.add(ss);
                cooldown(out, total, 0.10, 5);
                break;
            }
            case GENERAL_P:
            case UPPER_P:
            case CORE_P: {
                // passive isometric NMES for tone and strength (Maffiuletti 2010; Gondin 2011): 50–100 Hz, wide pulse
                // for depth, ON ≤ 4 s (L1) and a rest twice as long — a passive contraction recruits the same fibres
                // every time and tires sooner than a voluntary one; then a muscle-pump block for the blood flow
                boolean core = CORE_P.equals(p.id);
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 1.0, 1.0);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", core ? "Дълбоки мускули" : "Тонус", core ? "Deep muscles" : "Tone", 0.70, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = core ? "Легни по гръб, коленете свити — само дишай с импулса"
                        : "Легни удобно — мускулите работят сами, не се съпротивлявай";
                m.hintEn = core ? "Lie on your back, knees bent — just breathe with the impulse"
                        : "Lie comfortably — the muscles work by themselves, do not resist";
                m.steps.add(pause(tet(80, core ? 300 : 350, 4, 8), 6, 0.40));
                Phase f = phase(out, "FLOW", "Кръвообращение", "Circulation", 0.20, total, 1.0, 1.0);
                f.steps.add(twitch(6, 350, 10, 2, 1.0));
                cooldown(out, total, 0.10, 3);
                break;
            }
            case GLUTES_P: {
                // the glutes and thighs at rest (passive tone, 4 : 8), then the leg drainage wave of §6.6
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 1.0, 1.0);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Тонус", "Tone", 0.60, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = "Легни по корем — седалището и бедрата работят сами";
                m.hintEn = "Lie face down — the glutes and thighs work by themselves";
                m.steps.add(pause(tet(80, 350, 4, 8), 6, 0.40));
                Phase wv = phase(out, "WAVE", "Лимфен дренаж", "Lymphatic drainage", 0.30, total, 1.0, 1.0);
                wv.wave = true;
                legWave(wv, 35, 300);
                cooldown(out, total, 0.10, 3);
                break;
            }
            case MASS_P: {
                // mechanical tension at rest: the longest passive hold (4 s, L1), a wide pulse (400 µs at 75 Hz — L4)
                // for the deep fibres, a long rest (1 : 2.5) so every hold is full
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 1.0, 1.0);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Дълги стягания", "Long holds", 0.75, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = "Легни удобно и дишай спокойно — стягането е силно и дълбоко";
                m.hintEn = "Lie comfortably — a strong, deep hold; breathe calmly";
                m.steps.add(tet(75, 400, 4, 10));
                Phase f = phase(out, "FLOW", "Кръвообращение", "Circulation", 0.15, total, 1.0, 1.0);
                f.steps.add(twitch(6, 350, 10, 2, 1.0));
                cooldown(out, total, 0.10, 3);
                break;
            }
            case POWER_P: {
                // the fast fibres at rest: 100 Hz · 300 µs (L4), a 2 s burst and a 10 s rest for the phosphocreatine
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.15, total, 1.0, 1.0);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Взривни импулси", "Explosive bursts", 0.70, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = "Легни удобно — кратък силен импулс, после дълга почивка";
                m.hintEn = "Lie comfortably — a short strong burst, a long rest";
                m.steps.add(tet(100, 300, 2, 10));
                Phase f = phase(out, "FLOW", "Кръвообращение", "Circulation", 0.15, total, 1.0, 1.0);
                f.steps.add(twitch(6, 350, 10, 2, 1.0));
                cooldown(out, total, 0.10, 3);
                break;
            }
            case SENIOR_P: {
                // 50+ at rest (spec §6.15): NMES of the legs in older adults — 50 Hz, wide pulse, 4 : 8 —
                // raises the thigh strength and the chair-rise (Langeard 2017; Benavent-Caballer 2014); the back
                // chain against the age stoop (back-extensor work lessens kyphosis — Katzman 2017); then the leg
                // rhythm for the blood sugar (NMES lowers glycaemia at any rate; best 30–60 min after a meal)
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.12, total, 1.0, 1.0);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Сила и стабилност на краката", "Leg strength & stability", 0.40, total, 1.0, 1.0);
                m.window = Window.main();
                m.hintBg = "Седни удобно, стъпалата на пода — краката работят сами";
                m.hintEn = "Sit comfortably, feet on the floor — the legs work by themselves";
                Step ls = tet(50, 350, 4, 8);
                ls.zones = only(LOWER);
                m.steps.add(ls);
                Phase ps = phase(out, "POSTURE", "Изправена стойка", "Upright posture", 0.23, total, 1.0, 1.0);
                ps.hintBg = "Седни изправен, раменете назад и надолу";
                ps.hintEn = "Sit up, shoulders back and down";
                Step bs = tet(50, 300, 4, 8);
                bs.zones = only(POSTURE);
                ps.steps.add(bs);
                Phase f = phase(out, "SUGAR", "Кръвна захар", "Blood sugar", 0.25, total, 1.0, 1.0);
                f.hintBg = "Отпусни се — краката работят ритмично; най-добре 30–60 мин след хранене";
                f.hintEn = "Relax — the legs twitch in a rhythm; best 30–60 min after a meal";
                Step fs = twitch(5, 300, 10, 1, 1.0);
                fs.zones = only(CALF, FRONT_THIGH, BACK_THIGH, GLUTES);
                f.steps.add(fs);
                cooldown(out, total, 0.10, 3);
                break;
            }
            case CELLULITE: {
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 0.6, 0.6);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m1 = phase(out, "MAIN", "Тонус", "Tone", 0.40, total, 0.6, 0.6);
                m1.window = Window.main();
                m1.steps.add(pause(tet(85, 350, 4, 6), 8, 0.50));
                Phase m2 = phase(out, "WAVE", "Лимфен дренаж", "Lymphatic drainage", 0.40, total, 0.7, 0.7);
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
                cooldown(out, total, 0.10, 3);
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
                Phase e = phase(out, "RELIEF", "Облекчаване на болката", "Pain relief", 0.25, total, 0.7, 0.7);
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
                m.hintBg = "Стягай тазовото дъно заедно с импулса, в свое темпо";
                m.hintEn = "Lift the pelvic floor at your own pace";
                m.steps.add(pause(tet(hz, 250, 4, 8), 6, 0.35));
                cooldown(out, total, 0.15, 3);
                break;
            }
            case FACE:
            case FACE_TONE: {
                // Lifting 3D (70 Hz 3 : 6) / firm contour (35 Hz 4 : 5) on the six cheek sites together
                boolean lift = FACE.equals(p.id);
                int hz = lift ? 70 : 35;
                Phase w = phase(out, "WARMUP", "Включване", "Wake-up", 0.11, total, 0.6, 0.8);
                w.envStart = 0.6;
                w.envEnd = 0.8;
                w.hintBg = "Седни удобно, лицето отпуснато — ъглите на устата тръгват леко нагоре";
                w.hintEn = "Sit comfortably, face relaxed — the mouth corners start to lift";
                w.steps.add(faceStep(hz, 2, 8));
                Phase m = phase(out, "MAIN", lift ? "Лифтинг" : "Тонус и стегнатост", lift ? "Lift" : "Tone & firmness", 0.89, total,
                        lift ? 0.9 : 0.8, lift ? 0.9 : 0.8);
                m.hintBg = lift ? "Лицето отпуснато — бузите се повдигат сами; без болка, без мигане"
                        : "Меко, равномерно стягане — усеща се, не боли";
                m.hintEn = lift ? "Face relaxed — the cheeks lift by themselves; no pain, no blinking"
                        : "A soft, even hold — felt, never painful";
                m.steps.add(lift ? faceStep(70, 3, 6) : faceStep(35, 4, 5));
                faceCooldown(out, total);
                break;
            }
            case FACE_OVAL: {
                // the cheeks 3 s, then under the chin 3 s: each muscle works 3 s and rests 6
                Phase w = phase(out, "WARMUP", "Включване", "Wake-up", 0.11, total, 0.6, 0.8);
                w.envStart = 0.6;
                w.envEnd = 0.8;
                w.hintBg = "Седни изправен, лицето отпуснато";
                w.hintEn = "Sit up, face relaxed";
                w.steps.add(faceStep(70, FACE_PW, 2, 3, 500, sites(CHEEKS)));
                w.steps.add(faceStep(50, FACE_PW, 2, 3, 500, sites(F_CHIN)));
                Phase m = phase(out, "MAIN", "Скули и брадичка", "Cheekbones and chin", 0.89, total, 0.9, 0.9);
                m.hintBg = "Бузите, после брадичката — без храна и вода, без болка";
                m.hintEn = "The cheeks, then the chin — no food or drink, no pain";
                m.steps.add(faceStep(70, FACE_PW, 3, 3, 500, sites(CHEEKS)));
                m.steps.add(faceStep(50, FACE_PW, 3, 3, 500, sites(F_CHIN)));
                faceCooldown(out, total);
                break;
            }
            case FACE_DRAIN: {
                // open the nodes' way first (under the chin), then the wave towards them; the previous site keeps pressing
                Phase o = phase(out, "OPEN", "Отваряне", "Opening", 0.15, total, 0.8, 0.8);
                o.wave = true;
                o.hintBg = "Главата леко назад — първо се отваря пътят под брадичката";
                o.hintEn = "Head slightly back — first the way under the chin opens";
                o.steps.add(faceWave(new int[] {F_CHIN}, null));
                o.steps.add(faceSilence(2));
                Phase m = phase(out, "WAVE", "Лимфна вълна", "Lymph wave", 0.85, total, 0.8, 0.8);
                m.wave = true;
                m.hintBg = "Вълната тръгва от носа към челюстта и ухото — само се отпусни";
                m.hintEn = "The wave runs from the nose to the jaw and the ear — just relax";
                m.steps.add(faceWave(new int[] {F_NL_L, F_NL_R}, null));
                m.steps.add(faceWave(new int[] {F_LC_L, F_LC_R}, new int[] {F_NL_L, F_NL_R}));
                m.steps.add(faceWave(new int[] {F_ZM_L, F_ZM_R}, new int[] {F_LC_L, F_LC_R}));
                m.steps.add(faceWave(new int[] {F_CHIN}, new int[] {F_ZM_L, F_ZM_R}));
                m.steps.add(faceSilence(3));                   // the vessels refill
                faceCooldown(out, total);
                break;
            }
            case FACE_RELAX:
                sensory(out, total, "Отпускане на мимиката", "Expression relax",
                        "Затвори очи и отпусни челото",
                        "Close the eyes, let the forehead go — the current works on the nerves",
                        faceStep(100, FACE_RELAX_PW, 4, 4, 1000));
                break;
            case FACE_CALM:
                sensory(out, total, "Свежо лице", "Fresh face",
                        "Отпусни челото и челюстта, зъбите да не се допират",
                        "Let the forehead and the jaw go, teeth apart",
                        faceStep(100, FACE_RELAX_PW, 4, 4, 1000), faceStep(80, FACE_RELAX_PW, 4, 4, 1000));
                break;
            case FACE_JAW: {
                // the jaw: low-rate single impulses (the suit has no bursts) — a deep, slow tapping, sensory
                Step s = twitch(2, FACE_JAW_PW, 10, 1, 1.0);
                sensory(out, total, "Релаксация на челюстта", "Jaw relaxation",
                        "Отпусни челюстта, зъбите да не се допират", "Let the jaw hang, teeth apart", s);
                break;
            }
            case FACE_CHIN: {
                Phase w = phase(out, "WARMUP", "Включване", "Wake-up", 0.11, total, 0.6, 0.8);
                w.envStart = 0.6;
                w.envEnd = 0.8;
                w.hintBg = "Седни изправен, без храна и вода";
                w.hintEn = "Sit up, no food or drink";
                w.steps.add(faceStep(30, FACE_CHIN_PW, 2, 6, 500));
                Phase m = phase(out, "MAIN", "Стегнат профил", "Firm profile", 0.89, total, 0.9, 0.9);
                m.hintBg = "Под брадичката се стяга — не преглъщай по време на стягането";
                m.hintEn = "It tightens under the chin — do not swallow during the hold";
                m.steps.add(faceStep(30, FACE_CHIN_PW, 4, 8, 500));
                faceCooldown(out, total, FACE_CHIN_PW);
                break;
            }
            case ANTIAGE: {
                // spec §6.12 (evidence-led): myokines — the WB-EMS RCT protocol 30 Hz · 350 µs · 4 : 6 with body-weight
                // moves (IL-15 ↑, myostatin ↓, follistatin ↑); the brain — 20 Hz on the whole legs (BDNF and cathepsin B
                // rose only at 20 Hz, not 4 / 80); intervals — HIIT, not EMS alone, lowered CRP / IL-6, so short strong
                // holds with the client's own effort; the 10-min recovery at 4 Hz = the low-intensity 4 Hz that eased
                // arterial stiffness
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 0.6, 0.9);
                w.envStart = 0.6;
                w.envEnd = 0.9;
                w.hintBg = "Ходене на място, леки клекове";
                w.hintEn = "Marching, light squats";
                w.steps.add(twitch(WARMUP_HZ, 350, 10, 1, 1.0));          // 7 Hz twitches: warm, no fatigue
                Phase m = phase(out, "MAIN", "Срещу възпалението", "Against inflammation", 0.40, total, 0.9, 0.9);
                m.envEnd = 1.0;
                m.window = Window.main();
                m.hintBg = "Клек, напад, разтваряне, сгъване — със собствено тегло, в свое темпо";
                m.hintEn = "Squat, lunge, raises, curls — body weight, at your own pace";
                m.steps.add(tet(30, 350, 4, 6));
                Phase br = phase(out, "BRAIN", "Мозък и памет", "Brain & memory", 0.30, total, 0.8, 0.8);
                br.envEnd = 0.9;
                br.hintBg = "Ходене на място, степ — краката работят целите";
                br.hintEn = "Marching, step — the whole legs work";
                br.steps.add(tet(20, 300, 8, 2));
                Phase iv = phase(out, "INTERVAL", "Интервали", "Intervals", 0.20, total, 1.0, 1.0);
                iv.envEnd = ENV_MAX;
                iv.hintBg = "4 секунди с всичка сила, после леко — клек, мост, лицеви на пейка";
                iv.hintEn = "4 seconds all out, then easy — squat, bridge, incline push-ups";
                iv.steps.add(tet(70, 300, 4, 2));
                iv.steps.add(twitch(7, 300, 4, 1, 0.7));
                cooldown(out, total, 0.10, 4);
                break;
            }
            case ANTIAGE_PASSIVE: {
                // spec §6.12 at rest: blood sugar — low-rate leg stimulation blunts the rise after a meal; the brain —
                // passive 20 Hz on the whole legs (BDNF, cathepsin B); the vessels — low-intensity 4 Hz (stiffness ↓)
                Phase w = phase(out, "WARMUP", "Загряване", "Warm-up", 0.10, total, 0.6, 0.7);
                w.steps.add(twitch(5, 250, 10, 1, 1.0));
                Phase m = phase(out, "MAIN", "Кръвна захар", "Blood sugar", 0.35, total, 0.7, 0.7);
                m.steps.add(twitch(5, 300, 10, 1, 1.0));
                Phase br = phase(out, "BRAIN", "Мозък и памет", "Brain & memory", 0.35, total, 0.7, 0.7);
                br.steps.add(tet(20, 300, 8, 2));
                Phase v = phase(out, "VESSELS", "Кръвоносни съдове", "Blood vessels", 0.20, total, 0.5, 0.5);
                v.steps.add(twitch(4, 250, 10, 1, 1.0));
                cooldown(out, total, 0.10, 3);
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
        Phase c = phase(out, "COOLDOWN", "Разпускане", "Cool-down", share, total, 0.5, 0.5);
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

    /**
     * One wave step: {@code on} and {@code prev} channels on (each at the person's own level — the program never
     * lowers a channel, owner 2026-11-25), the rest silent: the previous group still presses while the next starts.
     */
    private static Step waveStep(int hz, int pw, int[] on, int[] prev) {
        Step s = new Step(hz, pw, 3, 1);
        s.rampUpMs = 1000;
        s.rampDownMs = 500;
        int[] z = new int[CHANNELS];
        if (prev != null) {
            for (int c : prev) {
                z[c] = 100;
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

    /** Heart-rate use of a program for a goal (spec §7). */
    public static HrUse hrUse(Program p, Goal goal) {
        if (CARDIO.equals(p.id) || PASSIVE_METABOLIC.equals(p.id) || ANTIAGE.equals(p.id)) {
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
