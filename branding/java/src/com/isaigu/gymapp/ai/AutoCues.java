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
        if (AutoCatalog.isFace(plan.program) && !ph.isCooldown()) {
            return faceGoal(id, p);
        }
        if (ph.isCooldown() && AutoCatalog.isFace(plan.program)) {
            return AiText.t("Отпускане: меки кратки стягания на половин сила — мускулът излиза от работата без умора.",
                    "Let go: soft short holds at half strength — the muscle leaves the work without fatigue.");
        }
        if (ph.isCooldown()) {
            return AiText.t("Разпускане: пулсът и дишането се успокояват, мускулите се отпускат.",
                    "Cool-down: the pulse and breathing settle, the muscles relax.");
        }
        if ("WARMUP".equals(p)) {
            return AiText.t("Загряване: кръвообращението се засилва, мускулите и ставите се подготвят за натоварването.",
                    "Warm-up: the circulation picks up, the muscles and joints get ready for the work.");
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
            return AiText.t("Лимфен дренаж: мускулите се свиват един след друг и изтласкват задържаната течност към лимфните пътища.",
                    "Lymphatic drainage: the muscles contract one after another and push the held fluid towards the lymph pathways.");
        }
        if (AutoCatalog.ANTIAGE.equals(id) || AutoCatalog.ANTIAGE_PASSIVE.equals(id)) {
            String g = antiageGoal(AutoCatalog.ANTIAGE_PASSIVE.equals(id), p);
            if (g != null) {
                return g;
            }
        }
        if ("RELAX".equals(p)) {
            return AiText.t("Отпускане на напрежението и спазъма в гърба.", "Releasing the tension and spasm in the back.");
        }
        if ("RELIEF".equals(p)) {
            return AiText.t("Облекчаване на болката: спокойната ниска честота намалява усещането за болка.", "Pain relief: the calm low rate dampens the feeling of pain.");
        }
        if (AutoCatalog.PASSIVE_METABOLIC.equals(id)) {
            return "Tone".equals(ph.nameEn)
                    ? AiText.t("Тонус: кратко стягане между блоковете, които изразходват енергия.", "Tone: a short firming between the burning blocks.")
                    : AiText.t("Изразходване на енергия: мускулите работят ритмично, без да се уморяват.",
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
            return AiText.t("Тонус: мускулите под кожата се стягат — кожата изглежда по-гладка и стегната.", "Tone of the muscles under the skin — a firmer look.");
        }
        if (AutoCatalog.RECOVERY.equals(id)) {
            return AiText.t("Масаж: по-добро кръвообращение, отпуснати мускули, по-бързо възстановяване.",
                    "Massage: better blood flow, relaxation and faster recovery after training.");
        }
        // the phases of the passive versions and of the reviewed 50+ (1.1.526, spec §6.11 / §6.13)
        // 50+ (1.1.527, spec §6.15)
        if ("BONE".equals(p)) {
            return AiText.t("Здрави кости: силното стягане и повдигането на пръсти натоварват костите — така те се укрепват.",
                    "Strong bones: the strong hold and rising on the toes load the bones — this is how they get stronger.");
        }
        if ("SUGAR".equals(p)) {
            return AiText.t("Кръвна захар: големите мускули на краката поемат захарта от кръвта при всяко съкращение.",
                    "Blood sugar: the big leg muscles take up sugar from the blood with every contraction.");
        }
        if (AutoCatalog.SENIOR.equals(id) && "MAIN".equals(p)) {
            return AiText.t("Сила: по-силни мускули на краката и тялото — по-лесно ставане, стълби, носене на покупки.",
                    "Strength: stronger leg and body muscles — easier rising, stairs, carrying shopping.");
        }
        if ("FLOW".equals(p)) {
            return AiText.t("Кръвообращение: ритмичното потрепване раздвижва кръвта и отнася умората от стягането.",
                    "Circulation: the rhythmic twitching moves the blood and carries away the fatigue of the holds.");
        }
        if ("POSTURE".equals(p)) {
            return AiText.t("Изправена стойка: мускулите на гърба и раменете се укрепват — тялото е по-изправено и стабилно.",
                    "Upright posture: the back and shoulder muscles get stronger — the body is more upright and stable.");
        }
        if ("SPEED".equals(p)) {
            return AiText.t("Реакция и баланс: бързата крачка тренира равновесието и стабилността на краката — по-сигурна стъпка.",
                    "Reaction and balance: the quick step trains balance and leg stability — a surer step.");
        }
        if (AutoCatalog.SENIOR_P.equals(id)) {
            return AiText.t("Сила и стабилност на краката: мускулите на бедрата се стягат дълбоко — по-лесно ставане и ходене.",
                    "Leg strength and stability: the thigh muscles hold deeply — easier rising and walking.");
        }
        if (AutoCatalog.MASS_P.equals(id)) {
            return AiText.t("Дълги стягания: силното напрежение е сигнал мускулът да расте; дългата почивка прави всяко стягане пълно.",
                    "Long holds: strong tension in the muscle — a signal to grow; the long rest keeps every hold full.");
        }
        if (AutoCatalog.POWER_P.equals(id)) {
            return AiText.t("Взривни импулси: бързите мускулни влакна се включват изцяло за миг; почивката им връща енергията.",
                    "Explosive bursts: the fast fibres fire in full for a moment; the rest gives back their energy.");
        }
        if (AutoCatalog.CORE_P.equals(id)) {
            return AiText.t("Дълбоки мускули: корем, кръст и гръб се стягат заедно — естествен корсет около гръбнака.",
                    "Support: abs, lower back and back hold together — a corset around the spine.");
        }
        if (AutoCatalog.GENERAL_P.equals(id) || AutoCatalog.UPPER_P.equals(id) || AutoCatalog.GLUTES_P.equals(id)) {
            return AiText.t("Тонус в покой: импулсът стяга мускулите изцяло, без движение; дългата пауза пази качеството.",
                    "Tone at rest: the current tightens the muscle fully, without moving; the long pause keeps the quality.");
        }
        return plan.program.desc();
    }

    /** The anti-ageing programs' goal line (spec §6.12), by phase; null = the common text. */
    static String antiageGoal(boolean passive, String phase) {
        if (passive && "MAIN".equals(phase)) {
            return AiText.t("Кръвна захар: краката работят ритмично и поемат захарта — покачването след хранене е по-малко.",
                    "Blood sugar: the legs work in a rhythm and take up sugar — the rise after a meal is smaller.");
        }
        if ("MAIN".equals(phase)) {
            return AiText.t("Срещу възпалението: работещите мускули отделят вещества, които намаляват хроничното възпаление.",
                    "Against inflammation: the working muscles release substances that lower chronic inflammation.");
        }
        if ("BRAIN".equals(phase)) {
            return AiText.t("Мозък и памет: при тази работа на краката се отделя вещество, което подпомага нервните клетки и паметта.",
                    "Brain and memory: this leg work releases a substance that supports the nerve cells and memory.");
        }
        if ("INTERVAL".equals(phase)) {
            return AiText.t("Интервали: кратко пълно усилие и почивка — подобрява издръжливостта и намалява възпалението.",
                    "Intervals: a short full effort and rest — better endurance, less inflammation.");
        }
        if ("VESSELS".equals(phase)) {
            return AiText.t("Кръвоносни съдове: лекото ритмично потрепване прави съдовете на краката по-еластични.",
                    "Blood vessels: the light rhythmic twitching makes the leg vessels more elastic.");
        }
        return null;
    }

    /** The face programs' goal line (docs/xems-face.md §9), by program and phase. */
    static String faceGoal(String id, String phase) {
        if (AutoCatalog.FACE_DRAIN.equals(id)) {
            return "OPEN".equals(phase)
                    ? AiText.t("Отваряне: първо се раздвижва пътят под брадичката, за да има къде да се оттече течността.",
                    "Opening: the way under the chin moves first, so the fluid has somewhere to go.")
                    : AiText.t("Лимфна вълна: мускулите се стягат един след друг от носа към челюстта и ухото и изпомпват задържаната течност.",
                    "Lymph wave: the muscles tighten one after another from the nose to the jaw and the ear and pump the held fluid.");
        }
        if (AutoCatalog.FACE_TONE.equals(id)) {
            return AiText.t("Тонус и стегнатост: по-дълги меки стягания — мускулите на лицето стават издръжливи и пазят лифтинга.",
                    "Tone & firmness: longer soft holds — the face muscles grow enduring and keep the lift.");
        }
        if (AutoCatalog.FACE_OVAL.equals(id)) {
            return AiText.t("Скулптуриране на лицето: скулите и брадичката се редуват — всеки мускул работи 3 s и почива 6.",
                    "Firm contour: the cheekbones and the chin take turns — every muscle works 3 s and rests 6.");
        }
        if (AutoCatalog.FACE_RELAX.equals(id)) {
            return AiText.t("Ботокс ефект: нежният ток по сетивните нерви сваля тонуса на мимическите мускули — челото се отпуска.",
                    "Botox effect: the gentle current on the sensory nerves lowers the tone of the expression muscles.");
        }
        if (AutoCatalog.FACE_CALM.equals(id)) {
            return AiText.t("Свежо лице: сетивният ток по челото и челюстта сваля напрежението — честотата се сменя, за да не привикне.",
                    "Fresh face: the sensory current on the forehead and the jaw lowers the tension — the rate changes so it never wears off.");
        }
        if (AutoCatalog.FACE_JAW.equals(id)) {
            return AiText.t("Релаксация на челюстта: бавни импулси в дъвкателния мускул — тонусът му в покой спада.",
                    "Jaw relaxation: slow impulses in the masseter — its resting tone drops.");
        }
        if (AutoCatalog.FACE_CHIN.equals(id)) {
            return AiText.t("Стегнат профил: мускулите под брадичката се стягат и оформят профила.",
                    "Firm profile: the muscles under the chin tighten and shape the profile.");
        }
        return AiText.t("Лифтинг на скулите: скулите, назолабиалната зона и долната буза работят заедно — по-плътна опора за цялата средна част.",
                "Cheekbone lift: the cheekbones, the nasolabial area and the lower cheek work together — fuller support for the whole mid-face.");
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
            return AiText.t("Вълна: ", "Wave: ") + (AutoCatalog.isFace(plan.program) ? faceZones(c) : waveZones(c));
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
    /** The face connector's sites (F1–F10, AutoCatalog.F_*). */
    static String[] faceSiteNames() {
        return new String[] {AiText.t("скула Л", "cheekbone L"), AiText.t("скула Д", "cheekbone R"),
                AiText.t("назолабиална Л", "nasolabial L"), AiText.t("назолабиална Д", "nasolabial R"),
                AiText.t("долна буза Л", "lower cheek L"), AiText.t("долна буза Д", "lower cheek R"),
                AiText.t("челюст Л", "jaw L"), AiText.t("челюст Д", "jaw R"), AiText.t("чело", "forehead"),
                AiText.t("брадичка", "chin")};
    }

    /** The face's wave step by its sites: "назолабиална Л + назолабиална Д". */
    public static String faceZones(AutoEngine.Cmd c) {
        if (c == null || c.zones == null) {
            return "";
        }
        String[] n = faceSiteNames();
        StringBuilder sb = new StringBuilder();
        for (int ch = 0; ch < c.zones.length && ch < n.length; ch++) {
            if (c.zones[ch] >= 100) {
                sb.append(sb.length() > 0 ? " + " : "").append(n[ch]);
            }
        }
        return sb.toString();
    }

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
