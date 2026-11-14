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

    public static final int LIFT = 0, FIRM = 1, DRAIN = 2, RELAX = 3, JAW_RELAX = 4, CONTOUR = 5, OVAL = 6, CALM = 7;
    /** The order on the effect step (the lift first; the sensory ones last). */
    public static final int[] XEMS = {LIFT, OVAL, FIRM, DRAIN, RELAX, CALM, JAW_RELAX, CONTOUR};
    public static final int[] BLUETENS = XEMS;

    /** XEMS (the face connector): the sites (= sockets F1–F10, {@link FaceArt} sites) each procedure drives. */
    public int[] xemsSites() {
        switch (id) {
            case LIFT:
            case FIRM: return new int[] {FaceArt.ZM_L, FaceArt.ZM_R, FaceArt.NL_L, FaceArt.NL_R, FaceArt.LC_L, FaceArt.LC_R};
            case OVAL: return new int[] {FaceArt.ZM_L, FaceArt.ZM_R, FaceArt.NL_L, FaceArt.NL_R, FaceArt.LC_L, FaceArt.LC_R, FaceArt.CHIN};
            case DRAIN: return new int[] {FaceArt.CHIN, FaceArt.NL_L, FaceArt.NL_R, FaceArt.LC_L, FaceArt.LC_R, FaceArt.ZM_L, FaceArt.ZM_R};
            case RELAX: return new int[] {FaceArt.FOREHEAD};
            case CALM: return new int[] {FaceArt.FOREHEAD, FaceArt.JAW_L, FaceArt.JAW_R};
            case JAW_RELAX: return new int[] {FaceArt.JAW_L, FaceArt.JAW_R};
            default: return new int[] {FaceArt.CHIN};
        }
    }

    /** Bluetens: the site of each device, in the order they are switched on (up to 3; fewer run the first ones). */
    public int[] bluetensSites() {
        switch (id) {
            case LIFT:
            case FIRM: return new int[] {FaceArt.ZM_L, FaceArt.ZM_R};
            case OVAL: return new int[] {FaceArt.ZM_L, FaceArt.ZM_R, FaceArt.CHIN};
            case DRAIN: return new int[] {FaceArt.ZM_L, FaceArt.ZM_R, FaceArt.CHIN};
            case RELAX: return new int[] {FaceArt.FOREHEAD};
            case CALM: return new int[] {FaceArt.FOREHEAD, FaceArt.JAW_L, FaceArt.JAW_R};
            case JAW_RELAX: return new int[] {FaceArt.JAW_L, FaceArt.JAW_R};
            default: return new int[] {FaceArt.CHIN};
        }
    }

    /** A site's plain name: "скула · лява". */
    public static String siteName(int site, boolean bg) {
        String[] b = {"скула · лява", "скула · дясна", "назолабиална · лява", "назолабиална · дясна", "долна буза · лява",
                "долна буза · дясна", "челюст · лява", "челюст · дясна", "чело", "под брадичката"};
        String[] e = {"cheekbone · left", "cheekbone · right", "nasolabial · left", "nasolabial · right", "lower cheek · left",
                "lower cheek · right", "jaw · left", "jaw · right", "forehead", "under the chin"};
        return (bg ? b : e)[Math.max(0, Math.min(9, site))];
    }

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
            new FaceProgram(LIFT, CHEEK, false, "Лифтинг на скулите", "Cheekbone lift",
                    "Изразителни скули, по-мека гънка", "Defined cheekbones, a softer fold",
                    "Мускулите на скулите и горната устна", "Cheekbone and upper-lip muscles",
                    "m. zygomaticus major et minor · m. levator labii sup.",
                    70, 3, 6, 0xFFFF6F91, "↗", 3, 2, 1, 12, 56),
            new FaceProgram(FIRM, CHEEK, false, "Тонус и стегнатост", "Tone & firmness",
                    "Поддържа ефекта от лифтинга", "Keeps the lift's effect",
                    "Мимическите мускули на бузите", "The cheeks' expression muscles", "mm. faciei",
                    35, 5, 5, 0xFFC084FC, "◇", 2, 3, 3, 0, 0),
            new FaceProgram(DRAIN, CHEEK, false, "Лимфодренаж на лицето", "Facial lymph drainage",
                    "По-малко подпухване, свеж тен", "Less puffiness, a fresh complexion",
                    "Мимическите мускули на бузите", "The cheeks' expression muscles", "m. zygomaticus · m. buccinator",
                    30, 1, 2, 0xFF38BDF8, "≋", 2, 1, 1, 0, 0),
            new FaceProgram(OVAL, CHEEK, false, "Скулптуриране на лицето", "Face sculpting",
                    "Оформя и стяга контура на лицето", "Shapes and firms the face contour",
                    "Мускулите на скулите и под брадичката", "Cheekbone and under-chin muscles", "m. zygomaticus · m. digastricus",
                    70, 3, 6, 0xFFFB7185, "◎", 2, 2, 1, 12, 56),
            new FaceProgram(CALM, FOREHEAD, true, "Свежо лице", "Fresh face",
                    "Отпуска напрежението в челото и челюстта", "Eases tension in the forehead and jaw",
                    "Челото и дъвкателните мускули", "The forehead and the jaw muscles",
                    "n. supraorbitalis · m. masseter",
                    100, 0, 0, 0xFF2DD4BF, "◌", 2, 1, 1, 0, 0),
            // supraorbital TENS (Cefaly: 60 Hz, 250–300 µs, 20 min daily) + TENS lowers muscle tone (meta-analyses)
            new FaceProgram(RELAX, FOREHEAD, true, "Ботокс ефект", "Botox effect",
                    "Отпуска мимическите линии, без игла", "Softens expression lines, no needle",
                    "Мимическите мускули на челото", "The forehead's expression muscles", "n. supraorbitalis · n. supratrochlearis",
                    100, 0, 0, 0xFFF5B021, "∿", 2, 1, 1, 0, 0),
            // TENS on the masseter lowers its resting EMG (RCT in TMD, short term)
            new FaceProgram(JAW_RELAX, JAW, true, "Релаксация на челюстта", "Jaw relaxation",
                    "Отпуска дъвкателните мускули", "Relaxes the jaw muscles",
                    "Дъвкателните мускули", "The jaw muscles", "m. masseter",
                    2, 0, 0, 0xFF34D399, "◠", 2, 2, 2, 0, 0),
            new FaceProgram(CONTOUR, CHIN, false, "Стегнат профил", "Firm profile",
                    "Оформя линията под брадичката", "Defines the line under the chin",
                    "Мускулите под брадичката", "The muscles under the chin", "m. digastricus · m. mylohyoideus",
                    30, 4, 8, 0xFF818CF8, "◡", 1, 2, 2, 0, 0)};

    public static FaceProgram get(int id) {
        for (FaceProgram p : ALL) {
            if (p.id == id) {
                return p;
            }
        }
        return ALL[0];
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
            return bg ? "бавни импулси · 2/s" : "slow impulses · 2/s";
        }
        if (id == CALM) {
            return bg ? "80 ↔ 100 Hz · без движение" : "80 ↔ 100 Hz · no movement";
        }
        if (id == OVAL) {
            return bg ? "70 Hz · скули ↔ брадичка" : "70 Hz · cheeks ↔ chin";
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
            case OVAL: return bg ? "курс 12 седмици" : "12-week course";
            case CALM: return bg ? "20 мин · вечер" : "20 min · evenings";
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

    /** What it does, behind ⓘ — in the salon's words: what the client feels, what she sees, how often. */
    public String how(boolean bg) {
        switch (id) {
            case LIFT:
                return bg ? "Електростимулация на мускулите на скулите и горната устна. Мускулите се съкращават сами — "
                        + "3 секунди работа, 6 секунди отдих, без усилие от клиента и без мимически бръчки.\n\n"
                        + "С всеки курс мускулите стават по-плътни и повдигат тъканите отвътре: скулите са по-изразителни, "
                        + "назолабиалната гънка — по-мека, лицето изглежда стегнато и отпочинало. В клинично проучване "
                        + "за 12 седмици мускулът е станал с около 18 % по-плътен.\n\n"
                        + "Курс 12 седмици, после „Тонус и стегнатост“ 2–3 пъти седмично пази резултата."
                        : "Electrical stimulation of the cheekbone and upper-lip muscles. They contract by themselves — 3 seconds "
                        + "on, 6 off, no effort and no expression lines.\n\nOver the course the muscles grow fuller and lift the "
                        + "tissue from within: defined cheekbones, a softer nasolabial fold. In a clinical trial the muscle grew "
                        + "about 18 % thicker in 12 weeks.\n\nA 12-week course, then Tone & firmness 2–3 times a week.";
            case FIRM:
                return bg ? "По-меко и по-дълго стягане на мимическите мускули на бузите. Тонизира мускулите и пази "
                        + "стегнатостта, постигната с лифтинга.\n\n"
                        + "2–3 пъти седмично след курса за лифтинг."
                        : "A softer, longer hold of the cheek muscles. It tones them and keeps the firmness the lift built."
                        + "\n\n2–3 times a week after the lift course.";
            case DRAIN:
                return bg ? "Кратки ритмични съкращения действат като помпа: изтласкват задържаната течност към лимфните "
                        + "възли пред ухото и под челюстта.\n\n"
                        + "Подпухването намалява, тенът е по-свеж, чертите — по-ясни. Резултатът се вижда още след "
                        + "процедурата.\n\nНай-добре сутрин или преди събитие."
                        : "Short rhythmic contractions work like a pump, moving held fluid towards the lymph nodes in front of "
                        + "the ear and under the jaw.\n\nLess puffiness, a fresher complexion — visible right after.\n\n"
                        + "Best in the morning or before an event.";
            case RELAX:
                return bg ? "Нежен ток по челото — усеща се като приятно изтръпване, веждите не мърдат.\n\n"
                        + "Мимическите мускули на челото се отпускат, линиите от мимика омекват, челото изглежда гладко и "
                        + "отпочинало. Ефектът е за няколко часа и се натрупва с редовни процедури."
                        : "A gentle current on the forehead — a pleasant tingle, the brows stay still.\n\nThe forehead's "
                        + "expression muscles relax and the lines soften. The effect lasts a few hours and builds with "
                        + "regular sessions.";
            case OVAL:
                return bg ? "Скулите и мускулите под брадичката работят на смени — 3 секунди едните, 3 секунди другите.\n\n"
                        + "Така в една процедура се оформя целият контур: повдигнати скули и по-стегната линия под "
                        + "брадичката.\n\nКлиентът седи и не яде и не пие по време на процедурата."
                        : "The cheekbones and the muscles under the chin take turns — 3 seconds each.\n\nOne session sculpts "
                        + "the whole contour: lifted cheekbones and a firmer line under the chin.\n\nSeated, no food or "
                        + "drink during the session.";
            case CALM:
                return bg ? "Нежен ток по челото и дъвкателните мускули — там, където лицето държи напрежението от деня. "
                        + "Мускулите не се движат, усеща се само леко изтръпване.\n\n"
                        + "Челото и челюстта се отпускат, чертите омекват, лицето изглежда свежо.\n\n"
                        + "Идеално вечер или след напрегнат ден."
                        : "A gentle current on the forehead and the jaw muscles, where the face holds the day's tension. "
                        + "Nothing moves, only a light tingle.\n\nThe forehead and the jaw relax, the features soften."
                        + "\n\nBest in the evening or after a long day.";
            case JAW_RELAX:
                return bg ? "Бавно ритмично потупване по дъвкателните мускули.\n\n"
                        + "Мускулите се отпускат, напрежението от стискане на зъби намалява, а долната част на лицето "
                        + "изглежда по-мека.\n\nВинаги, когато челюстта е напрегната."
                        : "A slow rhythmic tapping on the jaw muscles.\n\nThey relax, the tension from clenching eases and the "
                        + "lower face looks softer.\n\nWhenever the jaw feels tense.";
            default:
                return bg ? "Стягане на мускулите под брадичката — те оформят линията между брадичката и шията.\n\n"
                        + "Профилът изглежда по-стегнат и оформен.\n\n"
                        + "Клиентът седи и не яде и не пие по време на процедурата."
                        : "Toning the muscles under the chin, which shape the line between the chin and the neck.\n\n"
                        + "A firmer, more defined profile.\n\nSeated, no food or drink during the session.";
        }
    }

    /** Where the pads go — three short lines next to the picture. {@code pairs2} = XEMS (the connector's sockets). */
    public String[] place(boolean bg, boolean pairs2) {
        if (id == CALM) {
            return bg ? new String[] {"Почисти челото и бузите, без крем",
                    "Чело — двойката близо, два пръста над веждите · челюст — стисни зъби, сложи на мускула",
                    "Никога към окото, никога отстрани на шията"}
                    : new String[] {"Clean the forehead and the cheeks, no cream",
                    "Forehead — two fingers above the brows · jaw — clench and place on the muscle",
                    "Never towards the eye, never on the side of the neck"};
        }
        if (id == OVAL || (pairs2 && (id == LIFT || id == FIRM || id == DRAIN))) {
            return bg ? new String[] {"Почисти лицето, без крем",
                    "Всяка двойка — по линията на мускула си, както на картината",
                    "Нищо по-близо от 2 пръста до окото, нищо на устната"}
                    : new String[] {"Clean the face, no cream", "Each pair along its muscle, as in the picture",
                    "Nothing closer than 2 fingers to the eye, nothing on the lip"};
        }
        switch (target) {
            case CHIN:
                return bg ? new String[] {"Почисти кожата под брадичката",
                        "1 и 2 — под брадичката, от двете страни на средата",
                        "Между костта на брадичката и подезичната кост — никога отстрани на шията"}
                        : new String[] {"Clean the skin under the chin", "1 and 2 — under the chin, either side of the midline",
                        "Between the chin bone and the hyoid — never on the side of the neck"};
            case FOREHEAD:
                return bg ? new String[] {"Почисти челото, без крем",
                        "Двойката близо — един пръст между електродите, в средата на челото",
                        "Два пръста над веждите, под косата — никога към окото"}
                        : new String[] {"Clean the forehead, no cream",
                        "The pair close — one finger between the pads, mid-forehead",
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
                        "1 — под скулата, на мускула, не върху костта",
                        "2 — по линията към ъгъла на устата, не на устната"}
                        : new String[] {"Clean the skin, no cream", "1 — under the cheekbone, on the muscle, not on the bone",
                        "2 — along the line to the mouth corner, not on the lip"};
        }
    }

    /** What the right strength looks like. */
    public String strengthGoal(boolean bg) {
        switch (id) {
            case RELAX:
                return bg ? "Качвай до ясно, приятно изтръпване — веждите не мърдат"
                        : "Raise to a clear, pleasant tingle — the brows stay still";
            case JAW_RELAX:
                return bg ? "Качвай до дълбоко, приятно потупване в мускула — без болка" : "Raise to a deep, pleasant tapping — no pain";
            case CONTOUR:
                return bg ? "Качвай, докато под брадичката се усети ясно стягане — без болка"
                        : "Raise until a clear tightening is felt under the chin — no pain";
            case CALM:
                return bg ? "Качвай до ясно, приятно изтръпване — нищо не мърда" : "Raise to a clear, pleasant tingle — nothing moves";
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
            return id == RELAX ? (bg ? "Затвори очи и отпусни челото" : "Close the eyes, let the forehead go")
                    : id == CALM ? (bg ? "Затвори очи, отпусни челото и челюстта" : "Close the eyes, let the forehead and the jaw go")
                    : (bg ? "Отпусни челюстта, зъбите да не се допират" : "Let the jaw hang, teeth apart");
        }
        if (id == DRAIN) {
            return bg ? "Мускулът изпомпва течността към лимфните възли" : "The muscle pumps the fluid towards the nodes";
        }
        return on ? (bg ? "Лицето отпуснато — мускулът работи сам" : "Face relaxed — the muscle works by itself")
                : (bg ? "Отдих — кръвта се връща в мускула" : "Rest — the blood returns to the muscle");
    }
}
