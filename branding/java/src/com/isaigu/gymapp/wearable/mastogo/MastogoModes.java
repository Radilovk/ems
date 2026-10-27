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

    /** The groups DOMAS shows (ids 0–7, 8–15, 16–23, 24–25). */
    public static final int MASSAGE = 0, TENS = 1, EMS = 2, FEMALE = 3;
    public static final int GROUPS = 4;

    /** DOMAS names (the massage technique, never a body part; the two female ones are numbered). */
    static final String[] NAME_BG = {
        "Акупунктура", "Вендузи", "Гуа ша", "Потупване", "Почукване", "Туина", "Тай-чи", "Месене",
        "Удари", "Разтягане", "Разтриване", "Шиацу", "Тригерна точка", "Пеперуда", "Ломи-ломи", "Шведски",
        "Тайландски", "Рефлексология", "Непрекъснат", "Тонус", "Растеж", "Възстановяване", "Комбинация", "NMES",
        "Женски 1", "Женски 2"};
    static final String[] NAME_EN = {
        "Acupuncture", "Cupping", "Gua sha", "Tapping", "Knocking", "Tuina", "Tai-chi", "Kneading",
        "Striking", "Stretching", "Rubbing", "Shiatsu", "Trigger point", "Butterfly", "Lomi-lomi", "Swedish",
        "Thai", "Reflexology", "Continuous", "Toning", "Growth", "Recovery", "Combination", "NMES",
        "Female 1", "Female 2"};

    /**
     * A steady carrier: one frequency, even strength, no pauses of its own (DOMAS's picture of the program) — only
     * these give a cycle that is entirely ours. 7 (pairs at 45 Hz) is near-steady.
     */
    static final boolean[] STEADY = new boolean[COUNT];

    /**
     * Starts sharp: full strength from the first pulse, no ramp or swell of its own anywhere in DOMAS's picture
     * (every bar ≥ 85 % of the tallest) — owner, 2026-10-27: "work only with the ones that start sharply, the ramps
     * must be ours". The live panel offers only these.
     */
    static final int[] SHARP = {19, 12, 13, 0, 3, 9, 7, 11, 18, 24};

    public static boolean sharp(int id) {
        for (int x : SHARP) {
            if (x == id) {
                return true;
            }
        }
        return false;
    }

    static {
        STEADY[18] = true;
        STEADY[19] = true;
        STEADY[24] = true;
        STEADY[7] = true;
    }

    /**
     * DOMAS's picture of each program (mode_wave_NN.png), as bars: 3 chars each — x of 64, top and bottom of 36
     * (base-64 digits). Drawn by {@link MastogoScreen}; tall = strong, dense = high frequency, gaps = pauses.
     */
    static final String[] WAVE = {
        "0bo7bodbojbopbouboyboDboHboKboNboQboTboVboWboYboZbo/bo",
        "0gi2ej3ek5dl6dm8cm9cnbcncboebofbohbongipejqeksdltdmvcmwcnycnzboBboCboEboKgiLejNekOdlQdmRcmTcnUcnWboXboZbo+bo",
        "0ek1ek2dl4cm5cn6cn8bo9bobbocbodbofbogboibojbokbomboncnocnqcmrdltekyekzekBdlCcmDcnFcnGboHboJboKboMboNboOboQboRboTboUboVcnXcnYcmZdl/ek",
        "0bo1bo3bo4bo6bo7bo9boabocbodbofbogbomboobopborbosboubovboxboyboAboBboDboEboKboMboNboPboQboSboTboVboWboYboZbo/bo",
        "0fk1dm3cn4co6bo7bo9boabocbodbofcngdmielmfkodmpcnrcosboubovboxboyboAboBcnDdmEelJfkKdmMcnNcoPboQboSboTboVboWboYcnZdm/el",
        "0ek1dm3cn4bo6bo7boaekbdmdcnebogbohbokekldmncnoboqborboAekBdmDcnEboGboHboKekLdmNcnOboQboRboUekVdmXcnYbo+bo/bo",
        "0fl1cn2bo4bo5bo7cn8dmbelddmecnfcnhboibojbolbombonboocoqcnrdnsdmuelxflzcnAboBboDboEcnFdmJelKdmMcnNcnOboPboRboSboTboVboWcoXcnZdn+dm/el",
        "0bo1bo3bo7bo9boabofbogboibomboobopboubovboxboBboDboEboJboKboMboQboSboTboYboZbo/bo",
        "2dm4bm5do7bm8doabmbdodbmedogbmhdojbmkdombmndopbmqdoBdmCbmEdoFbmHdoIbmKdoLbmNdoObmQdoRbmTdoUbmWdoXbmZdo",
        "0bo1bo3bo4bo6bo7bo9boabocbodbofboobopborbosboubovboxboyboAboBboDboEboMboNboPboQboSboTboVboWboYboZbo/bo",
        "3fj4fk6ek7el9dladlcdmddmfcmgcmicnjcnlcnmbnobnpbnrbosboubovboxboyboAboBboDboEboGboHboJboKboMboNboPboQboSboTboVboWboYbo",
        "1bo3bo4bo6bo7bo9boabocbodbofbogboibojbolbomboobopborbosboyboAboBboDboEboGboHboJboKboMboNboPboQboSboTboVboWboYboZbo",
        "0bm4do9bmddoibmmboobopborbosboubovboxboyboAboBboDboEboJdoNbmSdoWbm/do",
        "0bo1bo3bo4bo6bo7bo9boabocbodbofbogboibojbolbomboobopborbosbozboAboCboDboFboGboIboJboLboMboOboPboRboSboUboVboXboYbo+bo/bo",
        "2el4dm5bo7bo8boaboeelgdmhbojbokbomboseltdmvbowboybozboEelFdmHboIboKboLboRelTdmUboWboXboZbo",
        "1gl3em4cn6bo7bo9boabocbodbofcngdmigllflmcnobopborcosemyglAemBcnDboEboGboHboJboKboMcnNdmPglSflTcnVboWboYcoZem",
        "3en5bo6bo8bo9dncdnebofbohboienmbonbopboqbosbozenBboCboEboFdnIdnKboLboNboOenSboTboVboWboYbo",
        "4bo6bo7bo9boabocbodemfbogboibojdlnbopboqbosbotbovbowemybozboBboCdlIboKboLboNboOboQboRemTboUboWboXdl",
        "0bo1bo3bo4bo6bo7bo9boabocbodbofbogboibojbolbomboobopborbosboubovboxboyboAboBboDboEboGboHboJboKboMboNboPboQboSboTboVboWboYboZbo/bo",
        "0bm4do9bmddoibmmdorbmvdoAbmEdoJbmNdoSbmWdo/bm",
        "9fjbekcdledmfcmhcnibokbolbonbooboqborbotboubowboxbozboAboCboDboFboGboIboJboLboMboOboPboRbo",
        "0ek1dm2cn4bo5bo7bo8boabobbocboebofbohcoicnjdlmelndmpcnqborbotboubowboxboyboAboBboDcoEcnFdlHekJdmKcnMboNboOboQboRboTboUboVboXboYco+cn/dl",
        "2bo5bo8bobbodboebogbohbojboofjqclrbntboyfjAclBbnDboHfkJdmKcnMbnNboPboQboSboTboVcnWcmYdlZek",
        "1fk2el4dm5dm7cn8cnacobbodboebogbohbojcokcnmcnndmpdmqelsfkAfkBelDdmEdmGcnHcnJcoKboMboNboPboQboScoTcnVcnWdmYdmZel/fk",
        "0bo1bo3bo4bo6bo7bo9boabocbodbofbogboibojbolbomboobopborbosboubovboxboyboAboBboDboEboGboHboJboKboMboNboPboQboSboTboVboWboYboZbo/bo",
        "0gj2ek3dl5cm6cn8bn9bobbocboebofbohboibokbolboncnocnqdmrdltelufjxgjyekAdlBcmDcnEbnGboHboJboKboMboNboPboQboSboTcnVcnWdmYdlZel/fj"};

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

    public static int group(int id) {
        return id < 8 ? MASSAGE : id < 16 ? TENS : id < 24 ? EMS : FEMALE;
    }

    public static String name(int id, boolean bg) {
        return valid(id) ? (bg ? NAME_BG[id] : NAME_EN[id]) : "—";
    }

    public static boolean steady(int id) {
        return valid(id) && STEADY[id];
    }

    public static String wave(int id) {
        return valid(id) ? WAVE[id] : "";
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
