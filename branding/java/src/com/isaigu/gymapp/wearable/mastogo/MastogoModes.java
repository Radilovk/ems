package com.isaigu.gymapp.wearable.mastogo;

/**
 * The 26 firmware programs of the MASTOGO H- unit as the vendor's own DOMAS app (com.roblink.domas 3.1.1, device
 * "Hawk TENS 1S", class "MAST") describes them: DeviceHelper.getModeListJson, decompiled with blutter 2026-10-27.
 * The index is the id DOMAS sends ({@code AT+CMODE=0,<id>}). Frequencies change inside a program: "a–b" = sweeps,
 * "a / b" = alternates, "a … b" = several stages.
 */
public final class MastogoModes {
    private MastogoModes() {}

    public static final int COUNT = 26;

    /** Kinds (vendor modeType): relief, massage, muscle, recovery. */
    public static final int RELIEF = 0, MASSAGE = 1, MUSCLE = 2, RECOVERY = 3;
    public static final int KINDS = 4;

    static final int[] KIND = {
        MASSAGE, MUSCLE, MASSAGE, RELIEF, RECOVERY, MUSCLE, MASSAGE, RELIEF, RELIEF, MASSAGE,
        MUSCLE, MUSCLE, MASSAGE, MASSAGE, RELIEF, MUSCLE, MASSAGE, RELIEF, RELIEF, RELIEF,
        MASSAGE, RECOVERY, MASSAGE, MUSCLE, RELIEF, RELIEF};

    static final String[] HZ = {
        "3–23 Hz", "27 Hz", "23–37 Hz", "6.7 Hz", "45 Hz", "30 Hz", "23 / 45 Hz", "45 Hz", "10 Hz", "50 Hz",
        "47 Hz", "47 Hz", "1.9 / 50 Hz", "3 / 15.6 Hz", "47 Hz", "37 Hz", "21.7 / 23–36 Hz", "1.35–200 Hz", "77 Hz",
        "1.6 Hz", "25–36 Hz", "40 Hz", "3.1–47 Hz", "30 Hz", "200 Hz", "49 Hz"};

    static final String[] WIDTH = {
        "224 µs", "240 µs", "240 µs", "224 µs", "200 µs", "224 µs", "200 µs", "190 µs", "190 µs", "190 µs",
        "190 µs", "190 µs", "190 µs", "190 µs", "190 µs", "256 µs", "224 µs", "240 / 256 µs", "100 µs", "190 µs",
        "224 µs", "200 µs", "236 / 232 / 190 µs", "310 µs", "100 µs", "200 µs"};

    static final String[] BG = {
        "Нараства: потупване → вибрация → треперене, като акупунктура.",
        "Постепенно стягане като щипане или вендуза, леко свиване на мускула.",
        "Пълзене, вибрация, потупване и силно треперене — като туина масаж.",
        "Дълбоки ритмични удари като с юмрук, мускулът потрепва.",
        "Изтръпване → бързо потупване → бавно отпускане.",
        "Нараства с ритъм вдигане–пускане, мускулът се свива.",
        "Бавно пълзене, после бързо потупване и леко изтръпване.",
        "Бързо повтарящо се натискане и месене.",
        "Ритмично потупване като с длан, леко свиване.",
        "Средна честота като разтриване с длани (на 20 ms).",
        "Нарастващо треперене, после задържана вибрация.",
        "Силна вибрация със свиване на мускула.",
        "Ритмично потупване със силно бавно свиване, после гъсто изтръпване.",
        "Редуват се потупване и пляскане с леко свиване.",
        "Задълбочаващо се треперене, гъста вибрация, бавно отпускане.",
        "Усилващо се треперене с ясно потрепване, после отпускане.",
        "Редуват се треперене и ритмично потупване.",
        "Смес от потупване, вибрация и треперене — от 1.35 до 200 Hz.",
        "Леко повърхностно пълзене като месене с пръсти.",
        "Ритмични почуквания, мускулът потрепва.",
        "Пълзене, после ритмично потупване — като масажен пистолет.",
        "Пълзене → ритмична вибрация → бавно отпускане.",
        "Три вълни: бавно потрепване, гъсто треперене, натиск, отпускане.",
        "Дълбоко пълзене → ритмично треперене; силно свиване и отпускане.",
        "Постоянно гъсто изтръпване, висока честота.",
        "Усилваща се дълбока вибрация, гъсто треперене, бавно затихване."};

    static final String[] EN = {
        "Builds up: tapping → vibration → tremor, acupuncture-like.",
        "Progressive tightening like plucking or suction, mild contraction.",
        "Crawling, vibration, tapping and strong tremor — tuina-like.",
        "Deep rhythmic fist-like striking with muscle twitching.",
        "Tingling → rapid percussion → slow relaxing.",
        "Builds up with a lift-and-release rhythm and contraction.",
        "Slow crawling, then rapid tapping and light tingling.",
        "Fast repeated pushing and kneading.",
        "Rhythmic palm-like tapping with mild contraction.",
        "Medium frequency like rubbing with the palms (20 ms).",
        "Rising tremor, then sustained vibration.",
        "Strong vibration with muscle contraction.",
        "Rhythmic tapping with a strong slow contraction, then dense tingling.",
        "Alternating tapping and patting with mild contractions.",
        "Deepening tremor, dense vibration, slow relaxing.",
        "Stronger tremor with clear twitching, then relaxing.",
        "Alternates tremor and rhythmic tapping.",
        "Mix of tapping, vibration and tremor — 1.35 to 200 Hz.",
        "Light surface crawling like finger kneading.",
        "Rhythmic clicking taps with twitching.",
        "Crawling, then rhythmic tapping — massage-gun-like.",
        "Crawling → rhythmic vibration → slow relaxing.",
        "Three waves: slow twitching, dense tremor, pressure, relaxing.",
        "Deep crawling → rhythmic tremor; strong contraction and release.",
        "Continuous dense tingling, high frequency.",
        "Stronger deep vibration, dense tremor, slow fade-out."};

    static boolean valid(int id) {
        return id >= 0 && id < COUNT;
    }

    public static int kind(int id) {
        return valid(id) ? KIND[id] : RELIEF;
    }

    public static String hz(int id) {
        return valid(id) ? HZ[id] : "";
    }

    public static String width(int id) {
        return valid(id) ? WIDTH[id] : "";
    }

    public static String feel(int id, boolean bg) {
        return valid(id) ? (bg ? BG[id] : EN[id]) : "";
    }
}
