package com.isaigu.gymapp.bodytech;

/**
 * "Модулация" (owner, 1.1.372 / 1.1.375): the passive procedures of a bodytech suit — the templates, their phases and
 * the timeline, pure logic (no Android; tested offline). Offered only in the automatic mode, as separate passive
 * procedures, when a client's row runs on a bodytech suit (ai/AutoUi). The client is at rest: the current does the
 * work, there are no active procedures here.
 * <p>
 * A procedure is a chain of phases (1.1.375, from the owner's BODYTECH spec): adaptation 7 Hz → the main work
 * (1 kHz bursts, or a muscle pump, or interferential) → a sensory 4 kHz finish. Each phase has its own impulse:
 * <ul>
 * <li>plain pulses (7 Hz, 350 µs, square, no bursts) — the suit's own kind of impulse;</li>
 * <li>kHz bursts: the "Hz" register is the pulse rate, so a 1 kHz carrier is 1000 Hz with a 500 µs pulse (half the
 * period; 125 µs at 4 kHz) and a sine; the bursts are the suit's T2 / T4 (50 Hz × 2 ms = 2 / 18 ms, 10 % duty;
 * × 4 ms = 4 / 16 ms, 20 %);</li>
 * <li>interferential (IFC): two carriers a few Hz apart on a pair of channels; the suit's period is a whole number of
 * µs, so only some beats exist ({@link #ifcB}) — the real one is shown.</li>
 * </ul>
 * The tablet runs the slow part itself — ON : OFF with a ramp — by raising and lowering every channel's strength
 * ({@link BtAusRun}); {@link #at} says the factor at second t, {@link #phaseAt} which phase runs.
 * Source of the numbers and what is proven / not: docs/xems-modulation.md.
 */
public final class BtAus {
    private BtAus() {}

    public static final int ACTIVE = 0, PASSIVE = 1;
    /** Phases of {@link #at}. */
    public static final int RAMP_UP = 0, HOLD = 1, RAMP_DOWN = 2, REST = 3, STEADY = 4;
    /** Waveform register: 0 square, 1 sine. */
    public static final int SQUARE = 0, SINE = 1;

    /** One phase of a procedure. Values are the starting point; the screen lets the owner change them. */
    public static final class Ph {
        public final String name, feel;
        /** Carrier (suit Hz) and pulse width µs. */
        public final int carrier, us;
        /** Burst rate Hz (0 = no bursts) and burst length ms. */
        public final int burstHz, burstMs;
        public final int wave;
        /** ON seconds (ramps included) / OFF seconds; offS 0 = continuous. */
        public final int onS, offS, rampS;
        public final int minutes;
        /** Starting strength %. */
        public final int level;
        /** Interferential: beat Hz (beatHi > beatLo = a sweep lo → hi → lo over sweepS seconds). */
        public final boolean ifc;
        public final int beatLo, beatHi, sweepS;

        Ph(String name, String feel, int carrier, int us, int burstHz, int burstMs, int wave, int onS, int offS,
           int rampS, int minutes, int level, boolean ifc, int beatLo, int beatHi, int sweepS) {
            this.name = name;
            this.feel = feel;
            this.carrier = carrier;
            this.us = us;
            this.burstHz = burstHz;
            this.burstMs = burstMs;
            this.wave = wave;
            this.onS = onS;
            this.offS = offS;
            this.rampS = rampS;
            this.minutes = minutes;
            this.level = level;
            this.ifc = ifc;
            this.beatLo = beatLo;
            this.beatHi = beatHi;
            this.sweepS = sweepS;
        }
    }

    /** One procedure: what it is for, its zones and its phases. */
    public static final class T {
        public final String id, name, goal, feel, how, course, combine;
        public final int kind;
        /** XEMS slider indexes of the zone (BtSettings.SLIDERS): the channels mapped to them are preselected. */
        public final int[] zones;
        public final Ph[] ph;
        /** Whole procedure, minutes (the phases summed). */
        public final int minutes;
        /** Some phase is interferential (needs channel pairs). */
        public final boolean ifc;
        /** Only after adaptation (a few sessions of the gentler procedures first). */
        public final boolean advanced;

        T(String id, String name, String goal, String feel, int[] zones, boolean advanced, String how, String course,
          String combine, Ph... ph) {
            this.id = id;
            this.name = name;
            this.kind = PASSIVE;
            this.goal = goal;
            this.feel = feel;
            this.zones = zones;
            this.advanced = advanced;
            this.how = how;
            this.course = course;
            this.combine = combine;
            this.ph = ph;
            int m = 0;
            boolean f = false;
            for (Ph p : ph) {
                m += p.minutes;
                f |= p.ifc;
            }
            minutes = m;
            ifc = f;
        }
    }

    // ------------------------------------------------------------------ phase kinds (BODYTECH spec templates)

    /** A — adaptation: plain 7 Hz pulses, low, raised slowly (twitches, the muscle gets used to the current). */
    static Ph adapt(int min) {
        return new Ph("Адаптация", "Леко ритмично потрепване. Вдигай бавно, докато мускулът ясно потрепва.",
                7, 350, 0, 0, SQUARE, 0, 0, 3, min, 4, false, 0, 0, 0);
    }

    /** B / C — motor: 1 kHz, bursts 50 Hz × 2 ms (10 %) or × 4 ms (20 %, only after adaptation), 10 s on / offS off. */
    static Ph motor(int min, int burstMs, int offS) {
        return new Ph(burstMs >= 4 ? "Силна работа" : "Работа",
                "Силна, контролирана контракция без болка и парене — най-много, колкото се търпи спокойно.",
                1000, 500, 50, burstMs, SINE, 10, offS, 2, min, 5, false, 0, 0, 0);
    }

    /** E — muscle pump: 7 Hz pulses in a rhythm 4 s on / 4 s off (squeeze — release). */
    static Ph pump(int min) {
        return new Ph("Мускулна помпа", "Ритмично стягане и отпускане, видимо, без болка.",
                7, 350, 0, 0, SQUARE, 4, 4, 1, min, 5, false, 0, 0, 0);
    }

    /** D — sensory / recovery: 4 kHz (125 µs), bursts 50 Hz × burstMs, under the motor threshold. */
    static Ph sensory(int min, int burstMs) {
        return new Ph("Успокояване", "Ясно сетивно усещане, без свиване на мускула.",
                4000, 125, 50, burstMs, SINE, 0, 0, 3, min, 4, false, 0, 0, 0);
    }

    /** Slow 1 kHz stimulation in 10 Hz bursts: a tingle (experimental metabolic phase, not a proven lipolysis). */
    static Ph tingle(int min) {
        return new Ph("Бавна стимулация", "Само гъделичкане, без движение на мускула.",
                1000, 500, 10, 2, SINE, 0, 0, 2, min, 3, false, 0, 0, 0);
    }

    // BtSettings.SLIDERS: 0 Гърди, 1 Корем, 2 Предно бедро, 3 Прасец, 4 Ръце, 5 Трапец, 6 Гръб, 7 Кръст, 8 Седалище, 9 Задно бедро
    private static final int[] SHAPE = {8, 2, 9, 1, 7};
    private static final int[] LEGS_GLUTES = {2, 9, 8};
    private static final int[] HIPS = {8, 2, 9};
    private static final int[] LEGS = {2, 9};
    private static final int[] ABS = {1};
    private static final int[] BACK = {7, 6};

    private static final String RARE = "Двигателните процедури (с работа) — първите 8–10 седмици най-много веднъж седмично, "
            + "после поне 4 дни между тях. Успокояващите и болкоуспокояващите се броят отделно.";

    public static final T[] ALL = {
            new T("atrophy", "Атрофия и циркулация",
                    "При обездвижване и възстановяване: пази мускула и кръвотока.",
                    "Видима, спокойна контракция; отпускане между тях.", LEGS, false,
                    "Адаптация 7 Hz, после работа 1 kHz на пакети (10 с ток / 40 с почивка — дълга почивка за отслабен "
                            + "мускул), мускулна помпа и сетивно успокояване 4 kHz.",
                    "3–5 пъти седмично при обездвижване; иначе като двигателна процедура. " + RARE,
                    "Пасва с пасивни движения (CPM) и масаж.",
                    adapt(5), motor(13, 2, 40), pump(6), sensory(5, 4)),
            new T("lipolysis", "Пасивна липолиза",
                    "Енергоразход от мускулна работа, после бавна стимулация. Мастта се гори от работата и движението след "
                            + "това, не от „честота“.",
                    "Първо работа, после само гъделичкане.", SHAPE, false,
                    "Адаптация 7 Hz, работа 1 kHz (10 с / 30 с), бавна стимулация на пакети 10 Hz (експериментална фаза), "
                            + "сетивно успокояване. След сеанса — 20–30 мин леко движение (ходене, колело): то е важната част.",
                    "2–3 пъти седмично, 8–12 седмици. " + RARE,
                    "След сеанса — 20–30 мин леко движение.",
                    adapt(5), motor(15, 2, 30), tingle(15), sensory(5, 2)),
            new T("ifc-chronic", "Болка · хронична (IFC)",
                    "Два тока се кръстосват в тъканта; бавен ритъм 2 Hz, после люлеене 2–10 Hz, за да не свикне тялото.",
                    "Само усещане, под прага на движение. Разположи две двойки електроди кръстосано над болното място.",
                    BACK, false,
                    "Каналите се вземат по двойки (1+2, 3+4 …): първият е носещ, вторият — със смесена честота. "
                            + "Нужни са 2 или 4 канала.",
                    "Всеки ден или през ден.",
                    "Не го прави едновременно с обикновен TENS на същото място.",
                    new Ph("Бавен ритъм 2 Hz", "Само усещане, под прага на движение.",
                            1400, 350, 0, 0, SINE, 0, 0, 2, 15, 2, true, 2, 2, 0),
                    new Ph("Люлеене 2–10 Hz", "Само усещане; ритъмът бавно се мени.",
                            1400, 350, 0, 0, SINE, 0, 0, 2, 10, 2, true, 2, 10, 10)),
            new T("ifc-acute", "Болка · остра (IFC)",
                    "Бърза, кратка аналгезия; честотата се люлее 80–150 Hz, за да не свикне тялото.",
                    "Само усещане, под прага на движение. Две двойки електроди кръстосано над болното място.",
                    BACK, false,
                    "Каналите по двойки (1+2, 3+4 …). Честотата на смесване се люлее 80 → 150 → 80 Hz за 8 с.",
                    "Всеки ден или през ден.",
                    "Не го прави едновременно с обикновен TENS на същото място.",
                    new Ph("Люлеене 80–150 Hz", "Само усещане, под прага на движение.",
                            2000, 250, 0, 0, SINE, 0, 0, 2, 20, 2, true, 80, 150, 8)),
            new T("shape", "Оформяне",
                    "Мускулна работа и тонус на седалище, крака, корем — в покой.",
                    "Силни контракции, после спокойно усещане.", SHAPE, false,
                    "Адаптация 7 Hz, работа 1 kHz на пакети 2 ms (10 с ток / 30 с почивка), сетивно успокояване 4 kHz.",
                    "2–3 пъти седмично, 6–8 седмици. " + RARE,
                    "Най-добре с хранене и движение; сама процедурата не отслабва.",
                    adapt(6), motor(14, 2, 30), sensory(6, 2)),
            new T("tone", "Стягане",
                    "По-висока доза: по-дълги пакети за по-силна контракция. Само след няколко сеанса „Оформяне“.",
                    "Много силна контракция, която още се търпи спокойно.", LEGS_GLUTES, true,
                    "Адаптация 7 Hz, силна работа 1 kHz на пакети 4 ms (10 с ток / 30 с почивка), успокояване 4 kHz.",
                    "1–2 пъти седмично, след адаптация. " + RARE,
                    "Не в деня на тежка тренировка за същите мускули.",
                    adapt(6), motor(12, 4, 30), sensory(5, 4)),
            new T("pump", "Мускулна помпа",
                    "Ритмично стягане на двата крака — подпомага връщането на кръв и течности. Не е лечение на лимфедем.",
                    "Стягане — отпускане, като ходене.", LEGS, false,
                    "Адаптация 7 Hz, помпа 7 Hz (4 с стягане / 4 с отпускане), успокояване 4 kHz. Краката леко нагоре.",
                    "3–5 пъти седмично.",
                    "Пасва с ръчен дренаж и движение след сеанса.",
                    adapt(6), pump(12), sensory(7, 4)),
            new T("cellulite", "Целулит — подкрепа",
                    "Тонус, кръвоток и движение на течностите в седалище и крака. Подкрепа, не самостоятелно лечение.",
                    "Работа, после спокойно усещане.", HIPS, false,
                    "Адаптация 7 Hz, работа 1 kHz на пакети 2 ms (10 с / 30 с), успокояване 4 kHz (по-дълго).",
                    "2–3 пъти седмично, 8–10 сеанса. " + RARE,
                    "С масаж, движение, хранене.",
                    adapt(6), motor(13, 2, 30), sensory(8, 2)),
            new T("abs", "Корем",
                    "Работа на коремните мускули в покой.",
                    "Силно стягане на корема без болка.", ABS, false,
                    "Адаптация 7 Hz, работа 1 kHz на пакети 2 ms (10 с / 30 с), успокояване 4 kHz. Не след хранене.",
                    "2–3 пъти седмично. " + RARE,
                    "Не по време на бременност; не на пълен стомах.",
                    adapt(6), motor(13, 2, 30), sensory(5, 2)),
    };

    /** Where a chain of phases is at second t: {index, second the phase started}; past the end = {−1, total}. */
    public static int[] phaseAt(int[] minutes, double t) {
        int start = 0;
        for (int i = 0; i < minutes.length; i++) {
            int end = start + minutes[i] * 60;
            if (t < end) return new int[]{i, start};
            start = end;
        }
        return new int[]{-1, start};
    }

    /** The template with this id, null if none. */
    public static T byId(String id) {
        for (T t : ALL) {
            if (t.id.equals(id)) return t;
        }
        return null;
    }

    // ------------------------------------------------------------------ bursts

    /** Burst ON ms and OFF ms from a burst rate and length (burstHz 0 = continuous → 0 / 0). */
    public static int[] burst(int burstHz, int burstMs) {
        if (burstHz <= 0 || burstMs <= 0) return new int[]{0, 0};
        int period = 1000 / burstHz;
        if (burstMs >= period) return new int[]{0, 0};
        return new int[]{burstMs, period - burstMs};
    }

    /** Pulse width: half the carrier's period, at most the table's, at least 50 µs. */
    public static int widthFor(int carrier, int wanted) {
        int max = BtTranslator.maxUsAt(carrier);
        return wanted < BtTranslator.MIN_US ? BtTranslator.MIN_US : (wanted > max ? max : wanted);
    }

    // ------------------------------------------------------------------ timeline

    /** A moment of the program: phase, seconds left in it, strength factor 0..1 (the ramps are straight lines). */
    public static final class Pos {
        public final int phase, left;
        public final float factor;

        Pos(int phase, int left, float factor) {
            this.phase = phase;
            this.left = left;
            this.factor = factor;
        }
    }

    /**
     * Where the program is at second t: onS (ramps included, ramp rampS each) then offS, again. offS 0 = continuous:
     * one ramp up at the start, then steady. onS shorter than two ramps → the ramps share it.
     */
    public static Pos at(int onS, int offS, int rampS, double t) {
        if (t < 0) t = 0;
        if (offS <= 0 || onS <= 0) {
            if (rampS > 0 && t < rampS) return new Pos(RAMP_UP, (int) Math.ceil(rampS - t), (float) (t / rampS));
            return new Pos(STEADY, 0, 1f);
        }
        int cycle = onS + offS;
        double c = t % cycle;
        double r = rampS;
        if (r * 2 > onS) r = onS / 2.0;
        if (c < r) return new Pos(RAMP_UP, (int) Math.ceil(r - c), r > 0 ? (float) (c / r) : 1f);
        if (c < onS - r) return new Pos(HOLD, (int) Math.ceil(onS - r - c), 1f);
        if (c < onS) return new Pos(RAMP_DOWN, (int) Math.ceil(onS - c), r > 0 ? (float) ((onS - c) / r) : 0f);
        return new Pos(REST, (int) Math.ceil(cycle - c), 0f);
    }

    /** Strength % of a channel: base level × factor × the channel's gain (0..150 %), 0..99. */
    public static int pct(int level, float factor, int chGainPct) {
        int v = Math.round(level * factor * chGainPct / 100f);
        if (factor > 0f && v < 1 && level > 0 && chGainPct > 0) v = 1;
        return v < 0 ? 0 : (v > BtTranslator.MAX_PCT ? BtTranslator.MAX_PCT : v);
    }

    // ------------------------------------------------------------------ interferential

    /** The Hz the suit actually produces: its period is the integer 1 000 000 / Hz µs. */
    public static double realHz(int hz) {
        int q = 1000000 / (hz < 1 ? 1 : hz);
        return 1000000.0 / q;
    }

    /**
     * Carrier A and the Hz for channel B so that B − A is as close to the wanted beat as the suit can make it:
     * returns {hzA, hzB}. For a small beat the carrier is moved (the step between two whole periods is about
     * f² / 10⁶ Hz — 4 Hz at 2 kHz, 2 Hz at 1.4 kHz).
     */
    public static int[] ifcPair(int carrier, int beat) {
        int bestA = carrier, bestB = carrier;
        double best = 1e9;
        int q0 = 1000000 / carrier;
        for (int q = (int) (q0 * 0.7); q <= (int) (q0 * 1.3); q++) {
            if (q < 100) continue;
            int hzA = 1000000 / q;
            double fa = 1000000.0 / q;
            int hzB = ifcB(hzA, beat);
            double err = Math.abs((realHz(hzB) - fa) - beat) * 100.0 + Math.abs(q - q0) * 0.01;
            if (err < best) {
                best = err;
                bestA = hzA;
                bestB = hzB;
            }
        }
        return new int[]{bestA, bestB};
    }

    /** Hz for channel B, given carrier hzA, beat Hz above it (the nearest whole period). */
    public static int ifcB(int hzA, int beat) {
        double fa = realHz(hzA);
        int q = (int) Math.round(1000000.0 / (fa + beat));
        if (q < 1) q = 1;
        return 1000000 / q;
    }

    /** The beat at second t of a sweep lo → hi → lo (triangle over sweepS seconds); a fixed beat when lo == hi. */
    public static double beatAt(int lo, int hi, int sweepS, double t) {
        if (hi <= lo || sweepS <= 0) return lo;
        double ph = (t % sweepS) / sweepS;
        double tri = ph < 0.5 ? ph * 2 : (1 - ph) * 2;
        return lo + (hi - lo) * tri;
    }
}
