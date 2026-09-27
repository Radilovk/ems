package com.isaigu.gymapp.ai;

import com.isaigu.gymapp.ai.AutoModel.Phase;
import com.isaigu.gymapp.ai.AutoModel.Plan;

/**
 * What the hint card on the training screen says during an automatic session (pure Java):
 * the cue for the pulse / the pause, the exercise of the phase, what comes next.
 */
public final class AutoCues {
    private AutoCues() {}

    /** Seconds before a phase change when "next" is announced. */
    public static final int NEXT_AHEAD_S = 20;

    /** The exercise / position of a phase: the program's own text, else by kind and phase. */
    public static String phaseHint(Plan plan, Phase ph) {
        if (ph == null) {
            return "";
        }
        if (ph.hintBg != null && ph.hintBg.length() > 0) {
            return AiText.t(ph.hintBg, ph.hintEn);
        }
        boolean active = plan.program.isActive();
        String id = plan.program.id;
        if (ph.isCooldown()) {
            return active ? AiText.t("Бавно ходене, разтягане, спокойно дишане", "Slow walking, stretching, calm breathing")
                    : AiText.t("Остани легнал, дишай бавно", "Stay lying down, breathe slowly");
        }
        if (ph.wave) {
            return AiText.t("Легнал, краката леко повдигнати — само се отпусни", "Lying, legs slightly raised — just relax");
        }
        if (AutoCatalog.BACK_PAIN.equals(id)) {
            if ("MAIN".equals(ph.id)) {
                return AiText.t("Легнал по гръб, коленете свити — леко стегни корема с импулса",
                        "On your back, knees bent — gently brace the abs with the pulse");
            }
            if ("RELIEF".equals(ph.id)) {
                return AiText.t("Отпусни се напълно — обезболяващата част", "Relax fully — the pain-relief part");
            }
            return AiText.t("Легни по корем, отпусни гърба", "Lie on your stomach, let the back relax");
        }
        if (active) {
            return "WARMUP".equals(ph.id) ? AiText.t("Леко движение с всеки импулс", "Light movement with each pulse")
                    : AiText.t("Движи се с импулса, почивай в паузата", "Move with the pulse, rest in the pause");
        }
        return AiText.t("Легни удобно, не се движи — мускулите работят сами", "Lie comfortably, do not move — the muscles work by themselves");
    }

    /** Cue while the pulse is ON. */
    public static String onCue(Plan plan, Phase ph, AutoEngine.Cmd c) {
        if (c == null || c.frac <= 0) {
            return AiText.t("Пауза — съдовете се пълнят", "Pause — the vessels refill");
        }
        if (ph != null && ph.wave) {
            return AiText.t("Вълна: ", "Wave: ") + waveZones(c);
        }
        if (c.hz < 20) {
            return AiText.t("Ритмично потрепване — отпусни се", "Rhythmic twitching — relax");
        }
        if (!plan.program.isActive()) {
            return AiText.t("Импулс — не се съпротивлявай", "Pulse — do not resist");
        }
        if (AutoCatalog.POWER.equals(plan.program.id) && ph != null && "MAIN".equals(ph.id)) {
            return AiText.t("ВЗРИВНО — сега!", "EXPLODE — now!");
        }
        return AiText.t("СТЕГНИ — движи се", "SQUEEZE — move");
    }

    /** Cue while the pulse is OFF (or the double impulse runs). */
    public static String offCue(Plan plan, Phase ph, AutoEngine.Cmd c) {
        if (c != null && c.pauseHz > 0) {
            return AiText.t("Отпусни — лек импулс за възстановяване", "Relax — a light recovery pulse");
        }
        if (plan.program.isActive()) {
            return AiText.t("Отпусни · дишай", "Relax · breathe");
        }
        return AiText.t("Отпусни", "Relax");
    }

    /** The zones at 100 % in a wave step (e.g. "Прасец", "Задно + предно бедро"). */
    public static String waveZones(AutoEngine.Cmd c) {
        if (c == null || c.zones == null) {
            return "";
        }
        String[] n = zoneNames();
        StringBuilder sb = new StringBuilder();
        for (int k = 0; k < AutoModel.DISPLAY_ORDER.length; k++) {
            int ch = AutoModel.DISPLAY_ORDER[k];
            if (ch < c.zones.length && c.zones[ch] >= 100) {
                sb.append(sb.length() > 0 ? " + " : "").append(n[ch]);
            }
        }
        return sb.toString();
    }

    /** "Next in 0:15: Burn — walking, step" when the phase ends within {@link #NEXT_AHEAD_S}; else "". */
    public static String next(Plan plan, int phaseIndex, double phaseRemainingS) {
        if (phaseRemainingS > NEXT_AHEAD_S) {
            return "";
        }
        if (phaseIndex + 1 >= plan.phases.size()) {
            return AiText.t("Край след ", "Ends in ") + AiText.mmss(phaseRemainingS);
        }
        Phase n = plan.phases.get(phaseIndex + 1);
        String hint = phaseHint(plan, n);
        return AiText.t("След ", "In ") + AiText.mmss(phaseRemainingS) + ": " + AiText.t(n.nameBg, n.nameEn)
                + (hint.length() > 0 ? " — " + hint : "");
    }

    /** Short reminder of the target feeling at the start of the main work. */
    public static String feeling(Plan plan) {
        String range = plan.cr10Lo + (plan.cr10Hi > plan.cr10Lo ? "–" + plan.cr10Hi : "");
        return AiText.t("Усещане CR10 ", "Feeling CR10 ") + range
                + AiText.t(" · по-слабо → качи силата, болка → свали", " · weaker → raise, pain → lower");
    }

    static String[] zoneNames() {
        String[] n = new String[AutoModel.CHANNELS];
        n[AutoModel.CALF] = AiText.t("Прасец", "Calf");
        n[AutoModel.FRONT_THIGH] = AiText.t("Предно бедро", "Quads");
        n[AutoModel.BACK_THIGH] = AiText.t("Задно бедро", "Hamstrings");
        n[AutoModel.GLUTES] = AiText.t("Седалище", "Glutes");
        n[AutoModel.ABS] = AiText.t("Корем", "Abs");
        n[AutoModel.LOWER_BACK] = AiText.t("Кръст", "Low back");
        n[AutoModel.BACK] = AiText.t("Гръб", "Back");
        n[AutoModel.TRAPS] = AiText.t("Трапец", "Traps");
        n[AutoModel.CHEST] = AiText.t("Гърди", "Chest");
        n[AutoModel.ARMS] = AiText.t("Ръце", "Arms");
        return n;
    }
}
