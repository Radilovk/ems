package com.isaigu.gymapp.wearable.face;

/**
 * The face procedures as the studio sells them (docs/xems-face.md) — pure Java. One catalogue for both devices:
 * the XEMS suit runs its four through the automatic mode ({@code ai/AutoCatalog.FACE*}, the arms outputs), Bluetens
 * all six through its own program files ({@code BluetensPrograms}). The words are for the client and the cosmetician:
 * the visible result first, the name of the muscle second, the numbers last; the physiology and how sure it is
 * (★) behind ⓘ.
 *
 * Two kinds of current: MOTOR (the muscle contracts — lift, firming, drainage, contour; always ≥ 20 Hz on the face)
 * and SENSORY (only the nerves of the skin are touched, the muscle stays still — the relaxing ones; the strength is a
 * tingle, never a movement).
 */
public final class FaceProgram {
    /** Where it works. */
    public static final int CHEEK = 0, CHIN = 1, FOREHEAD = 2, JAW = 3;

    public static final int LIFT = 0, FIRM = 1, DRAIN = 2, RELAX = 3, JAW_RELAX = 4, CONTOUR = 5;
    public static final int[] XEMS = {LIFT, FIRM, DRAIN, RELAX};
    public static final int[] BLUETENS = {LIFT, FIRM, DRAIN, RELAX, JAW_RELAX, CONTOUR};

    public final int id;
    public final int target;
    /** Sensory current: a tingle, the muscle must not move. */
    public final boolean sensory;
    public final String nameBg, nameEn;
    /** The promise in one line (the card). */
    public final String tagBg, tagEn;
    public final String muscleBg, muscleEn;
    public final String latin;
    public final int hz;
    /** Hold : rest, s (0 : 0 = a steady current / bursts). */
    public final int onS, offS;
    public final int tint;
    public final String glyph;
    /** How sure the effect is: 3 = a clinical trial on the face, 2 = proven elsewhere / the physiology, 1 = rationale only. */
    public final int evidence;
    /** Days between sessions in the build-up part / later, the course in weeks and its sessions (0 = no end). */
    public final int gapEarly, gapLater, weeks, planned;

    private FaceProgram(int id, int target, boolean sensory, String nameBg, String nameEn, String tagBg, String tagEn,
                        String muscleBg, String muscleEn, String latin, int hz, int onS, int offS, int tint, String glyph,
                        int evidence, int gapEarly, int gapLater, int weeks, int planned) {
        this.id = id;
        this.target = target;
        this.sensory = sensory;
        this.nameBg = nameBg;
        this.nameEn = nameEn;
        this.tagBg = tagBg;
        this.tagEn = tagEn;
        this.muscleBg = muscleBg;
        this.muscleEn = muscleEn;
        this.latin = latin;
        this.hz = hz;
        this.onS = onS;
        this.offS = offS;
        this.tint = tint;
        this.glyph = glyph;
        this.evidence = evidence;
        this.gapEarly = gapEarly;
        this.gapLater = gapLater;
        this.weeks = weeks;
        this.planned = planned;
    }

    private static final FaceProgram[] ALL = {
            // Kavanagh 2012 RCT: 20 min, 5×/week, 12 weeks → zygomaticus +18.6 %; ours 2 weeks × 3 then × 5 = 56
            new FaceProgram(LIFT, CHEEK, false, "Лифтинг", "Lift",
                    "Повдигнати, по-плътни скули", "Lifted, fuller cheekbones",
                    "Голям скулов мускул", "Zygomaticus major", "m. zygomaticus major",
                    70, 3, 6, 0xFFFF6F91, "↗", 3, 2, 1, 12, 56),
            new FaceProgram(FIRM, CHEEK, false, "Стегнат овал", "Firm contour",
                    "Еластичност, която пази лифтинга", "Elasticity that keeps the lift",
                    "Мимически мускули на бузата", "Mid-face muscles", "mm. faciei",
                    35, 5, 5, 0xFFC084FC, "◇", 2, 3, 3, 0, 0),
            new FaceProgram(DRAIN, CHEEK, false, "Детокс от отоци", "Depuff detox",
                    "По-малко подпухване, по-ясни черти", "Less puffiness, clearer features",
                    "Мускулна помпа на бузата", "Cheek muscle pump", "m. zygomaticus · m. buccinator",
                    30, 1, 2, 0xFF38BDF8, "≋", 2, 1, 1, 0, 0),
            // supraorbital TENS (Cefaly: 60 Hz, 250–300 µs, 20 min daily) + TENS lowers muscle tone (meta-analyses)
            new FaceProgram(RELAX, FOREHEAD, true, "Ботокс ефект", "Botox effect",
                    "Отпусната мимика, по-гладко чело · без игла", "Relaxed expression, smoother forehead · no needle",
                    "Сетивни нерви на челото", "Forehead sensory nerves", "n. supraorbitalis · n. supratrochlearis",
                    60, 0, 0, 0xFFF5B021, "∿", 2, 1, 1, 0, 0),
            // TENS on the masseter lowers its resting EMG (RCT in TMD, short term)
            new FaceProgram(JAW_RELAX, JAW, true, "Отпусната челюст", "Relaxed jaw",
                    "По-мек долен овал, без напрежение", "A softer jawline, no tension",
                    "Дъвкателен мускул", "Masseter", "m. masseter",
                    2, 0, 0, 0xFF34D399, "◠", 2, 2, 2, 0, 0),
            new FaceProgram(CONTOUR, CHIN, false, "Стегната брадичка", "Firm chin",
                    "По-стегнат профил под брадичката", "A firmer profile under the chin",
                    "Надподезични мускули", "Suprahyoid muscles", "m. digastricus · m. mylohyoideus",
                    30, 4, 8, 0xFF818CF8, "◡", 1, 2, 2, 0, 0)};

    public static FaceProgram get(int id) {
        return ALL[Math.max(0, Math.min(ALL.length - 1, id))];
    }

    public String name(boolean bg) {
        return bg ? nameBg : nameEn;
    }

    public String tag(boolean bg) {
        return bg ? tagBg : tagEn;
    }

    /** Kept for the callers that showed the result line. */
    public String result(boolean bg) {
        return tag(bg);
    }

    public String muscle(boolean bg) {
        return bg ? muscleBg : muscleEn;
    }

    /** The rhythm, short (a chip): "70 Hz · 3/6 s", "60 Hz · нежно", "серии 2/s". */
    public String rhythm(boolean bg) {
        if (id == JAW_RELAX) {
            return bg ? "серии · 2 в секунда" : "bursts · 2 a second";
        }
        if (sensory) {
            return hz + (bg ? " Hz · без движение" : " Hz · no movement");
        }
        return hz + " Hz · " + onS + "/" + offS + " s";
    }

    /** When / how often, short (a chip). */
    public String course(boolean bg) {
        switch (id) {
            case LIFT: return bg ? "курс 12 седмици" : "12-week course";
            case FIRM: return bg ? "2–3 пъти седмично" : "2–3 times a week";
            case DRAIN: return bg ? "сутрин · преди събитие" : "mornings · before an event";
            case RELAX: return bg ? "20 мин дневно" : "20 min daily";
            case JAW_RELAX: return bg ? "при напрежение" : "when tense";
            default: return bg ? "3 пъти седмично" : "3 times a week";
        }
    }

    /** "●●●" — how sure the effect is (the card's last chip; explained behind ⓘ). */
    public String stars() {
        return evidence >= 3 ? "●●●" : evidence == 2 ? "●●○" : "●○○";
    }

    public String evidenceText(boolean bg) {
        switch (evidence) {
            case 3: return bg ? "●●● доказано в клинично проучване на лицето" : "●●● shown in a clinical trial on the face";
            case 2: return bg ? "●●○ доказано за същия механизъм в други области" : "●●○ the mechanism is proven elsewhere";
            default: return bg ? "●○○ физиологична логика, ефектът не е измерен" : "●○○ physiological rationale, effect not measured";
        }
    }

    /** What happens, behind ⓘ — the neurophysiology in plain words, then the aesthetic reason, then how sure. */
    public String how(boolean bg) {
        switch (id) {
            case LIFT:
                return bg ? "Импулсът възбужда двигателните разклонения на лицевия нерв (n. facialis) и скуловият мускул се "
                        + "съкращава сам — 3 секунди работа, 6 секунди отдих, защото лицевите мускули са бързи и се уморяват бързо. "
                        + "Мускулите на лицето нямат сухожилия: те са вплетени в кожата. По-плътният мускул дава опора отвътре "
                        + "там, където с годините изтъняват мастните възглавнички — бузата стои по-високо, скулата е по-изразена. "
                        + "В клинично проучване (12 седмици, 5 пъти седмично) мускулът е станал с около 18 % по-дебел."
                        : "The impulse excites the motor branches of the facial nerve and the cheek muscle contracts by itself — "
                        + "3 seconds of work, 6 of rest, as face muscles are fast and tire fast. Face muscles have no tendons: they "
                        + "weave into the skin. A fuller muscle supports the cheek from within where the fat pads thin with age. "
                        + "In a clinical trial (12 weeks, 5 times a week) the muscle grew about 18 % thicker.";
            case FIRM:
                return bg ? "По-ниска честота (35 Hz) дава меко, почти слято стягане, което уморява много по-бавно. Така тренира "
                        + "издръжливите влакна на мимическите мускули — лицето държи формата си през деня. След курса за "
                        + "лифтинг това е поддръжката: без нея постигнатото постепенно отслабва."
                        : "A lower rate (35 Hz) gives a soft, nearly fused hold that tires far slower — it trains the enduring "
                        + "fibres, so the face keeps its shape through the day. After the lift course this is the upkeep.";
            case DRAIN:
                return bg ? "Кратки ритмични стягания — 1 секунда работа, 2 секунди отдих — превръщат мускула в помпа: той притиска "
                        + "лимфните и венозните съдове и изтласква задържаната течност към лимфните възли пред ухото и под "
                        + "челюстта. При Bluetens двете бузи се редуват като вълна. Че електрическото стягане намалява отоци, е "
                        + "доказано (систематичен преглед); при лицето работи същият механизъм. Най-добре сутрин, когато "
                        + "течността от нощта е задържана."
                        : "Short rhythmic holds — 1 second on, 2 off — turn the muscle into a pump that presses the lymph and "
                        + "venous vessels and moves the held fluid towards the nodes in front of the ear and under the jaw. On "
                        + "Bluetens the cheeks take turns, like a wave. That electrical contraction reduces swelling is proven "
                        + "(a systematic review); the face works by the same mechanism. Best in the morning.";
            case RELAX:
                return bg ? "Нежен ток (60 Hz) докосва само сетивните нерви на челото (n. supraorbitalis, n. supratrochlearis) — "
                        + "мускулът не се движи. Сетивният поток потиска възбудимостта на двигателните неврони и тонусът на "
                        + "мимическите мускули спада: челото и междувеждието се отпускат, бръчките от мимика омекват. Че такъв "
                        + "ток намалява мускулния тонус, е доказано (мета-анализи); разположението и параметрите са като при "
                        + "одобреното медицинско устройство за челото. Ефектът е за часове и се натрупва с редовност. Не "
                        + "замества ботулиновия токсин."
                        : "A gentle current (60 Hz) touches only the sensory nerves of the forehead — the muscle does not move. The "
                        + "sensory input damps the excitability of the motor neurons and the tone of the expression muscles drops: "
                        + "the forehead and the frown relax, expression lines soften. That such current lowers muscle tone is "
                        + "proven (meta-analyses); placement and settings match the approved medical forehead device. The effect "
                        + "lasts hours and builds with regular use. It does not replace botulinum toxin.";
            case JAW_RELAX:
                return bg ? "Серии от бързи импулси, по две в секунда, върху дъвкателния мускул (m. masseter) — усещат се като "
                        + "дълбоко, ритмично потупване. В клинично проучване при напрежение в челюстта този ток намалява "
                        + "активността на мускула в покой. Резултат: отпусната челюст, по-мек долен овал, по-малко напрежение "
                        + "от стискане на зъби."
                        : "Bursts of quick impulses, two a second, on the masseter — felt as a deep rhythmic tapping. In a clinical "
                        + "trial in jaw tension this current lowered the muscle's resting activity: a relaxed jaw, a softer lower "
                        + "face, less clenching tension.";
            default:
                return bg ? "Двустомашният и челюстно-подезичният мускул (m. digastricus, m. mylohyoideus) повдигат подезичната "
                        + "кост; стягането им оформя ъгъла между брадичката и шията. Това са и мускулите на преглъщането — "
                        + "процедурата е седнал, без храна и вода. Ефектът за контура не е измерен в проучване."
                        : "The digastric and mylohyoid lift the hyoid; their tone shapes the angle between chin and neck. They are "
                        + "also the swallowing muscles — seated, no food or drink. A contour effect is not measured in studies.";
        }
    }

    /** Where the pads go — three short lines next to the picture. {@code pairs2} = XEMS: two pairs (both arm cables). */
    public String[] place(boolean bg, boolean pairs2) {
        switch (target) {
            case CHIN:
                return bg ? new String[] {"Почисти кожата под брадичката",
                        "1 и 2 — под брадичката, от двете страни на средата",
                        "Между костта на брадичката и подезичната кост — никога отстрани на шията"}
                        : new String[] {"Clean the skin under the chin", "1 and 2 — under the chin, either side of the midline",
                        "Between the chin bone and the hyoid — never on the side of the neck"};
            case FOREHEAD:
                return bg ? new String[] {"Почисти челото, без крем",
                        pairs2 ? "Всяка двойка на своята половина на челото, 1 до 2" : "1 и 2 — на челото, от двете страни на средата",
                        "Два пръста над веждите, под косата — никога към окото"}
                        : new String[] {"Clean the forehead, no cream",
                        pairs2 ? "Each pair on its half of the forehead, 1 beside 2" : "1 and 2 — on the forehead, either side of the middle",
                        "Two fingers above the brows, below the hair — never towards the eye"};
            case JAW:
                return bg ? new String[] {"Стисни зъби — под пръстите се надува дъвкателният мускул",
                        "1 — горе на мускула, под скулата · 2 — долу, над ъгъла на челюстта",
                        "Лява и дясна страна — по едно устройство"}
                        : new String[] {"Clench — the masseter bulges under the fingers",
                        "1 — top of the muscle, under the cheekbone · 2 — low, above the jaw angle",
                        "Left and right — a pad each"};
            default:
                return bg ? new String[] {"Почисти кожата, без крем",
                        "1 — на скулата, два пръста под външния ъгъл на окото",
                        "2 — по линията към ъгъла на устата, не на устната"}
                        : new String[] {"Clean the skin, no cream", "1 — on the cheekbone, two fingers below the outer eye corner",
                        "2 — along the line to the mouth corner, not on the lip"};
        }
    }

    /** What the right strength looks like. */
    public String strengthGoal(boolean bg) {
        switch (id) {
            case RELAX:
                return bg ? "Качвай до ясно, приятно изтръпване — веждите не бива да мърдат"
                        : "Raise to a clear, pleasant tingle — the brows must not move";
            case JAW_RELAX:
                return bg ? "Качвай до дълбоко, приятно потупване в мускула — без болка" : "Raise to a deep, pleasant tapping — no pain";
            case CONTOUR:
                return bg ? "Качвай, докато под брадичката се усети ясно стягане — без болка"
                        : "Raise until a clear tightening is felt under the chin — no pain";
            case DRAIN:
                return bg ? "Качвай, докато бузата ритмично се повдига — меко, без болка" : "Raise until the cheek lifts rhythmically — soft, no pain";
            default:
                return bg ? "Качвай, докато ъгълът на устата видимо се повдигне — без болка, без мигане"
                        : "Raise until the mouth corner visibly lifts — no pain, no blinking";
        }
    }

    /** What the client feels / what the face does right now (the run's hint). */
    public String runHint(boolean on, boolean bg) {
        if (sensory) {
            return id == RELAX ? (bg ? "Затвори очи, отпусни челото — токът работи по нервите" : "Close the eyes, let the forehead go")
                    : (bg ? "Отпусни челюстта, зъбите да не се допират" : "Let the jaw hang, teeth apart");
        }
        if (id == DRAIN) {
            return bg ? "Мускулът изпомпва течността към лимфните възли" : "The muscle pumps the fluid towards the nodes";
        }
        return on ? (bg ? "Лицето отпуснато — мускулът работи сам" : "Face relaxed — the muscle works by itself")
                : (bg ? "Отдих — кръвта се връща в мускула" : "Rest — the blood returns to the muscle");
    }
}
