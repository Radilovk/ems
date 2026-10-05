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
                    : AiText.t("Остани легнал, спокойно", "Stay lying down, calm");
        }
        if (ph.wave) {
            return AiText.t("Легнал, краката леко повдигнати — само се отпусни", "Lying, legs slightly raised — just relax");
        }
        if (AutoCatalog.BACK_PAIN.equals(id)) {
            if ("MAIN".equals(ph.id)) {
                return AiText.t("Легнал по гръб, коленете свити — леко стягай корема в свое темпо",
                        "On your back, knees bent — gently brace the abs at your own pace");
            }
            if ("RELIEF".equals(ph.id)) {
                return AiText.t("Отпусни се напълно — обезболяващата част", "Relax fully — the pain-relief part");
            }
            return AiText.t("Легни по корем, отпусни гърба", "Lie on your stomach, let the back relax");
        }
        if (active) {
            return "WARMUP".equals(ph.id) ? AiText.t("Леко раздвижване в свое темпо", "Light movement at your own pace")
                    : AiText.t("Прави упражненията в свое темпо", "Do the exercises at your own pace");
        }
        return AiText.t("Легни удобно, не се движи — мускулите работят сами", "Lie comfortably, do not move — the muscles work by themselves");
    }

    /**
     * The goal of a phase without exercises (owner, 1.1.287 — the passive session says what it is for), in the
     * exercise card's place: by the program and the phase.
     */
    public static String phaseGoal(Plan plan, Phase ph) {
        if (ph == null) {
            return "";
        }
        String id = plan.program.id;
        String p = ph.id != null ? ph.id : "";
        if (ph.isCooldown()) {
            return AiText.t("Възстановяване: пулсът и дишането се успокояват, мускулите се отпускат и се изчистват от продуктите на умората.",
                    "Recovery: the HR and breathing settle, the muscles relax and clear the products of fatigue.");
        }
        if ("WARMUP".equals(p)) {
            return AiText.t("Подготовка: кръвта приижда в мускулите, нервите и ставите се загряват, за да понесат силата.",
                    "Preparation: blood flows into the muscles, nerves and joints warm up to take the strength.");
        }
        if ("OPEN".equals(p)) {
            return AiText.t("Отваряне: първо се раздвижват пътищата в корема и раменете, за да има къде да се оттече течността.",
                    "Opening: the pathways in the abdomen and shoulders move first, so the fluid has somewhere to drain.");
        }
        if ("LEGS".equals(p)) {
            return AiText.t("Дренаж на краката: вълна от прасеца към седалището изтласква задържаната течност нагоре.",
                    "Leg drainage: a wave from the calf to the glutes pushes the held fluid upwards.");
        }
        if ("ARMS".equals(p)) {
            return AiText.t("Дренаж на ръцете и гърба към гърдите.", "Drainage of the arms and back towards the chest.");
        }
        if ("WAVE".equals(p) || ph.wave) {
            return AiText.t("Дренаж: последователни съкращения изтласкват течността под кожата към лимфните пътища.",
                    "Drainage: contractions in sequence push the fluid under the skin towards the lymph pathways.");
        }
        if ("RELAX".equals(p)) {
            return AiText.t("Отпускане на напрежението и спазъма в гърба.", "Releasing the tension and spasm in the back.");
        }
        if ("RELIEF".equals(p)) {
            return AiText.t("Обезболяване: ниската честота намалява усещането за болка.", "Pain relief: the low frequency dampens the pain.");
        }
        if (AutoCatalog.PASSIVE_METABOLIC.equals(id)) {
            return "Tone".equals(ph.nameEn)
                    ? AiText.t("Тонус: кратко стягане между блоковете за изгаряне.", "Tone: a short firming between the burning blocks.")
                    : AiText.t("Изгаряне на енергия без умора: бавните влакна работят непрекъснато.",
                            "Burning energy without fatigue: the slow fibres work non-stop.");
        }
        if (AutoCatalog.BACK_PAIN.equals(id)) {
            return AiText.t("Стабилизация: дълбоките мускули на корема и гърба поемат товара от гръбнака.",
                    "Stabilising: the deep abdominal and back muscles take the load off the spine.");
        }
        if (AutoCatalog.POSTPARTUM.equals(id)) {
            return AiText.t("Тазово дъно и корем: сила и контрол след раждането.", "Pelvic floor and abs: strength and control after birth.");
        }
        if (AutoCatalog.CELLULITE.equals(id)) {
            return AiText.t("Тонус на мускулите под кожата — по-стегнат вид.", "Tone of the muscles under the skin — a firmer look.");
        }
        if (AutoCatalog.RECOVERY.equals(id)) {
            return AiText.t("Масаж: по-добър кръвоток, отпускане и по-бързо възстановяване след натоварване.",
                    "Massage: better blood flow, relaxation and faster recovery after training.");
        }
        return plan.program.desc();
    }

    /** What the current impulse does in the body (by its frequency, the wave and the 2nd impulse). */
    public static String effect(Phase ph, AutoEngine.Cmd c, boolean doublePulse) {
        if (c == null || c.frac <= 0) {
            return AiText.t("Пауза — мускулите почиват, съдовете се пълнят.", "Pause — the muscles rest, the vessels refill.");
        }
        String e;
        if (ph != null && ph.wave) {
            e = AiText.t("Зоните се съкращават една след друга — като ръце, които изстискват течността към сърцето.",
                    "The zones contract one after another — like hands squeezing the fluid towards the heart.");
        } else if (c.hz <= 4) {
            e = AiText.t(c.hz + " Hz — редки отделни потрепвания: мускулът се отпуска, кръвта тече свободно; тази честота намалява болката.",
                    c.hz + " Hz — sparse single twitches: the muscle lets go, blood flows freely; this frequency dampens pain.");
        } else if (c.hz <= 12) {
            e = AiText.t(c.hz + " Hz — ритмични потрепвания, мускулна помпа: движат кръвта и лимфата, бавните влакна горят енергия, без да се уморяват.",
                    c.hz + " Hz — rhythmic twitches, a muscle pump: they move blood and lymph, the slow fibres burn energy without tiring.");
        } else if (c.hz <= 40) {
            e = AiText.t(c.hz + " Hz — меко слято съкращение: издръжливост и тонус без силна умора.",
                    c.hz + " Hz — a soft fused contraction: endurance and tone without strong fatigue.");
        } else {
            e = AiText.t(c.hz + " Hz — пълно съкращение: включва най-много влакна наведнъж — тонус и сила; паузата връща кръвта.",
                    c.hz + " Hz — a full contraction: the most fibres at once — tone and strength; the pause lets the blood back.");
        }
        if (doublePulse && c.pauseHz > 0 && c.pauseSigma > 0) {
            e += AiText.t(" В паузата лек 2-ри импулс (" + c.pauseHz + " Hz) държи кръвта в движение.",
                    " In the pause a light 2nd impulse (" + c.pauseHz + " Hz) keeps the blood moving.");
        }
        return e;
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
