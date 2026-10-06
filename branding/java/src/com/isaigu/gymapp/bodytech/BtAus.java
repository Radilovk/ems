package com.isaigu.gymapp.bodytech;

/**
 * "Модулация" (owner, 1.1.372; was "Австралийски ток"): the passive 1–2 kHz procedures of a bodytech suit — the
 * templates and the timeline, pure logic (no Android; tested offline). Offered only in the automatic mode, as separate
 * passive procedures, when a client's row runs on a bodytech suit (ai/AutoUi).
 * <p>
 * What it is on the suit: the "Hz" register is the pulse rate, so the carrier is 1000 Hz with a 500 µs pulse (half the
 * period) and a sine wave; the bursts are the suit's own T2 / T4 (on / off ms: burst 50 Hz × 4 ms = 4 / 16 ms). The
 * tablet runs the slow part itself — ON : OFF with a ramp — by raising and lowering every channel's strength
 * ({@link BtAusRun}); this class says what the strength factor is at second t ({@link #at}).
 * <p>
 * Interferential (IFC) programs use two carriers a few Hz apart on a pair of channels; the beat is where their fields
 * cross. The suit's period is a whole number of µs, so only some beats exist ({@link #ifcB}) — the real one is shown.
 * Source of the numbers: docs/xems-modulation.md.
 */
public final class BtAus {
    private BtAus() {}

    public static final int ACTIVE = 0, PASSIVE = 1;
    /** Phases of {@link #at}. */
    public static final int RAMP_UP = 0, HOLD = 1, RAMP_DOWN = 2, REST = 3, STEADY = 4;

    /** One protocol. Values are the starting point; the screen lets the owner change level, minutes, ON / OFF, bursts. */
    public static final class T {
        public final String id, name, goal, feel, how, course, combine;
        public final int kind;
        /** Carrier (suit Hz) and pulse width µs. */
        public final int carrier, us;
        /** Burst rate Hz (0 = no bursts, the carrier runs continuously) and burst length ms. */
        public final int burstHz, burstMs;
        /** Waveform: 1 = sine. */
        public final int wave;
        /** ON seconds (ramps included) / OFF seconds; offS 0 = continuous. */
        public final int onS, offS, rampS;
        public final int minutes;
        /** Starting strength % and the longest sensible session. */
        public final int level;
        /** XEMS slider indexes of the zone (BtSettings.SLIDERS): the channels mapped to them are preselected. */
        public final int[] zones;
        /** Interferential: beat Hz (beatHi > beatLo = a sweep lo → hi → lo over sweepS seconds). */
        public final boolean ifc;
        public final int beatLo, beatHi, sweepS;

        T(String id, String name, int kind, String goal, String feel, int carrier, int us, int burstHz, int burstMs,
          int onS, int offS, int rampS, int minutes, int level, int[] zones, boolean ifc, int beatLo, int beatHi,
          int sweepS, String how, String course, String combine) {
            this.id = id;
            this.name = name;
            this.kind = kind;
            this.goal = goal;
            this.feel = feel;
            this.carrier = carrier;
            this.us = us;
            this.burstHz = burstHz;
            this.burstMs = burstMs;
            this.wave = 1;
            this.onS = onS;
            this.offS = offS;
            this.rampS = rampS;
            this.minutes = minutes;
            this.level = level;
            this.zones = zones;
            this.ifc = ifc;
            this.beatLo = beatLo;
            this.beatHi = beatHi;
            this.sweepS = sweepS;
            this.how = how;
            this.course = course;
            this.combine = combine;
        }
    }

    // BtSettings.SLIDERS: 0 Гърди, 1 Корем, 2 Предно бедро, 3 Прасец, 4 Ръце, 5 Трапец, 6 Гръб, 7 Кръст, 8 Седалище, 9 Задно бедро
    private static final int[] SHAPE = {8, 2, 9, 1, 7};
    private static final int[] CALF_LEGS = {2, 9, 3};
    private static final int[] BACK = {7, 6};

    public static final T[] ALL = {
            new T("atrophy", "Атрофия и циркулация", PASSIVE,
                    "При обездвижване и възстановяване: пази мускула и кръвотока.",
                    "Лека, видима контракция.",
                    1000, 500, 50, 4, 10, 40, 2, 25, 3, CALF_LEGS, false, 0, 0, 0,
                    "20–30 мин на мускулна група, цикъл 10 с / 30–50 с, плавно вдигане и сваляне 2 с.",
                    "Всеки ден или 5 пъти седмично.",
                    "Пасва с пасивни движения (CPM) и масаж."),
            new T("lipolysis", "Пасивна липолиза", PASSIVE,
                    "Бавна, дълга стимулация върху мастни зони.",
                    "Само гъделичкане (тинкъл), без движение на мускула.",
                    1000, 500, 10, 2, 0, 0, 2, 40, 3, SHAPE, false, 0, 0, 0,
                    "30–45 мин непрекъснато, пакети 10 Hz × 2 ms. След сеанса 20–30 мин лека активност.",
                    "Всеки ден или 5 пъти седмично, 8–12 седмици.",
                    "След сеанса — лека активност."),
            new T("ifc-chronic", "Болка · хронична (IFC)", PASSIVE,
                    "Два тока се кръстосват в тъканта; бавен ритъм 2 Hz дава дълго облекчение.",
                    "Само усещане, под прага на движение. Разположи две двойки електроди кръстосано над болното място.",
                    1400, 350, 0, 0, 0, 0, 2, 25, 2, BACK, true, 2, 2, 0,
                    "Каналите се вземат по двойки (1+2, 3+4 …): първият е носещ, вторият — със смесена честота. "
                            + "25 мин; нужни са 2 или 4 канала.",
                    "Всеки ден или през ден.",
                    "Не го прави едновременно с обикновен TENS на същото място."),
            new T("ifc-acute", "Болка · остра (IFC)", PASSIVE,
                    "Бърза, кратка аналгезия; честотата се люлее 80–100 Hz, за да не свикне тялото.",
                    "Само усещане, под прага на движение. Две двойки електроди кръстосано над болното място.",
                    2000, 250, 0, 0, 0, 0, 2, 20, 2, BACK, true, 80, 100, 6,
                    "Каналите по двойки (1+2, 3+4 …). 20 мин; честотата на смесване се люлее 80 → 100 → 80 Hz за 6 с.",
                    "Всеки ден или през ден.",
                    "Не го прави едновременно с обикновен TENS на същото място."),
    };

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
