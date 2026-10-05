package com.isaigu.gymapp.wearable.scale;

/**
 * "Може ли тялото да направи това?" — the plausibility gate in front of a new weigh-in (docs/xems-scale.md
 * "Plausibility gate"). Pure Java: numbers in, a verdict / a cause code out; the sheets are {@code ScaleScreen}'s.
 *
 * <p>Order of questions (owner): a weight the body could not have moved to → <b>is it the same person?</b> (no →
 * stop) → <b>is it physiologically possible in this time?</b> (no → "logical incompatibility", nothing saved) →
 * <b>were the conditions the same?</b> (food, toilet, clothes; women of fertile age: the cycle) → the cause the
 * deviation most likely has, given the time, the client's build and the answers.
 *
 * <p>The limits are the model's own choices (body-water and gut-content swings are ≈ 1–2 % of the weight in a day,
 * a hard-dieting body loses ≈ 0.1–0.15 kg of tissue a day), not measured constants — {@link #soft}, {@link #hard}
 * and {@link #fatLimit} are the one place to tune them.
 */
final class ScaleCheck {
    /** Weight verdicts. */
    static final int OK = 0, ASK = 1, IMPOSSIBLE = 2;
    /** Differences from the last weigh-in's conditions (bits of "cond"). */
    static final int C_FOOD = 1, C_TOILET = 2, C_CLOTHES = 4;
    /** Cycle answers ("cyc"); -1 = not asked. */
    static final int CYC_NO = 0, CYC_BEFORE = 1, CYC_DURING = 2;
    /** Causes ("why"). {@link #REAL} = a real change of tissue; every other one is a shift of water / content. */
    static final String REAL = "real", FOOD = "food", TOILET = "toilet", CLOTHES = "clothes", CYCLE = "cycle",
            GLYCOGEN = "glycogen", WATER = "water";

    private ScaleCheck() {}

    /** The weight change (kg) the body makes without a question: water, gut, a meal — plus a slow real trend. */
    static double soft(double hours, double w) {
        double days = Math.min(Math.max(hours, 0) / 24.0, 90);
        return 0.012 * w + 0.5 + 0.15 * days;
    }

    /** The most the body can move in that time (a 3–4 % fluid swing at the extreme + real tissue). Beyond it: no. */
    static double hard(double hours, double w) {
        double days = Math.max(hours, 0) / 24.0;
        return 0.04 * w + 0.4 * days;
    }

    /** Fat-% shift (points) one standing's impedance can show without a question; grows slowly with the days. */
    static double fatLimit(double hours) {
        return 1.5 + 0.15 * Math.min(Math.max(hours, 0) / 24.0, 30);
    }

    /** OK / ASK / IMPOSSIBLE for a weight change of {@code dw} kg (either sign) after {@code hours} at weight w. */
    static int weight(double dw, double hours, double w) {
        double a = Math.abs(dw);
        if (a > hard(hours, w)) {
            return IMPOSSIBLE;
        }
        return a > soft(hours, w) ? ASK : OK;
    }

    static boolean fatOff(double dFat, double hours) {
        return !Double.isNaN(dFat) && Math.abs(dFat) > fatLimit(hours);
    }

    /** Women of fertile age only — never asked of a 60-year-old (or when the age is not known). */
    static boolean cycleAsked(boolean male, int age) {
        return !male && age >= 12 && age <= 52;
    }

    /** Lean, low-fat build: the muscles hold the glycogen that moves the scale (≈ 3 g of water per g of it). */
    static boolean muscular(boolean male, double fatPct) {
        return !Double.isNaN(fatPct) && fatPct <= (male ? 15 : 24);
    }

    /**
     * What most likely moved the numbers, once the first-order factors are cleared. {@code dw} signed kg, {@code
     * dFat} points (raw − last shown, NaN = no composition), {@code lastFat} the last shown fat %, {@code cond} /
     * {@code cyc} the client's answers. Null = nothing to explain.
     */
    static String cause(double dw, double dFat, double hours, double w, boolean male, double lastFat, int cond,
            int cyc) {
        boolean heavy = Math.abs(dw) > soft(hours, w);
        if (!heavy && !fatOff(dFat, hours)) {
            return null;
        }
        // 1. what the client said differs — in the direction the weight went
        if ((cond & C_FOOD) != 0 && dw > 0) {
            return FOOD;
        }
        if ((cond & C_TOILET) != 0 && dw < 0) {
            return TOILET;
        }
        if ((cond & C_CLOTHES) != 0) {
            return CLOTHES;
        }
        if ((cond & C_FOOD) != 0) {
            return FOOD;
        }
        if ((cond & C_TOILET) != 0) {
            return TOILET;
        }
        // 2. the cycle (water ±1–2 kg, impedance shifts with it)
        if (cyc == CYC_BEFORE || cyc == CYC_DURING) {
            return CYCLE;
        }
        // 3. hours or a couple of days: not tissue
        double days = hours / 24.0;
        if (days <= 3) {
            return muscular(male, lastFat) && Math.abs(dw) >= 0.5 ? GLYCOGEN : WATER;
        }
        // 4. a week or more: a change of this size in this time is real unless the weight itself says otherwise
        return days >= 7 ? REAL : WATER;
    }

    /** A cause that is not a change of tissue: the reading counts less in the lean filter. */
    static boolean skeptic(String why, int cond) {
        return cond != 0 || (why != null && !REAL.equals(why));
    }
}
