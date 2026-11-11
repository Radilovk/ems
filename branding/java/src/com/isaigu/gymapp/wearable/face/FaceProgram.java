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
            new FaceProgram(LIFT, CHEEK, false, "Лифтинг на лицето", "Face lift",
                    "Повдигнати скули, по-мека бразда", "Lifted cheekbones, a softer fold",
                    "Скулови мускули и повдигачите на устната", "Cheek and lip-lifting muscles",
                    "m. zygomaticus major et minor · m. levator labii sup.",
                    70, 3, 6, 0xFFFF6F91, "↗", 3, 2, 1, 12, 56),
            new FaceProgram(FIRM, CHEEK, false, "Тонизиране", "Toning",
                    "Пази лифтинга стегнат", "Keeps the lift firm",
                    "Мимически мускули на бузата", "Mid-face muscles", "mm. faciei",
                    35, 5, 5, 0xFFC084FC, "◇", 2, 3, 3, 0, 0),
            new FaceProgram(DRAIN, CHEEK, false, "Лимфен дренаж на лицето", "Facial lymphatic drainage",
                    "По-малко подпухване, по-свежи черти", "Less puffiness, fresher features",
                    "Мускулна помпа на бузата", "Cheek muscle pump", "m. zygomaticus · m. buccinator",
                    30, 1, 2, 0xFF38BDF8, "≋", 2, 1, 1, 0, 0),
            new FaceProgram(OVAL, CHEEK, false, "Стегнат овал", "Firm contour",
                    "Ясен контур от скулите до брадичката", "A clear line from cheekbones to chin",
                    "Скулови и надподезични мускули", "Cheek and suprahyoid muscles", "m. zygomaticus · m. digastricus",
                    70, 3, 6, 0xFFFB7185, "◎", 2, 2, 1, 12, 56),
            new FaceProgram(CALM, FOREHEAD, true, "Свежо лице", "Fresh face",
                    "Без напрежение, свеж вид", "No tension, a fresh look",
                    "Сетивни нерви на челото и дъвкателните мускули", "Forehead nerves and the masseters",
                    "n. supraorbitalis · m. masseter",
                    100, 0, 0, 0xFF2DD4BF, "◌", 2, 1, 1, 0, 0),
            // supraorbital TENS (Cefaly: 60 Hz, 250–300 µs, 20 min daily) + TENS lowers muscle tone (meta-analyses)
            new FaceProgram(RELAX, FOREHEAD, true, "Ботокс ефект", "Botox effect",
                    "Гладко чело без игла", "A smooth forehead, no needle",
                    "Сетивни нерви на челото", "Forehead sensory nerves", "n. supraorbitalis · n. supratrochlearis",
                    100, 0, 0, 0xFFF5B021, "∿", 2, 1, 1, 0, 0),
            // TENS on the masseter lowers its resting EMG (RCT in TMD, short term)
            new FaceProgram(JAW_RELAX, JAW, true, "Релаксация на челюстта", "Jaw relaxation",
                    "По-мек долен овал", "A softer jawline",
                    "Дъвкателен мускул", "Masseter", "m. masseter",
                    2, 0, 0, 0xFF34D399, "◠", 2, 2, 2, 0, 0),
            new FaceProgram(CONTOUR, CHIN, false, "Стегната брадичка", "Firm chin",
                    "По-стегнат профил", "A firmer profile",
                    "Надподезични мускули", "Suprahyoid muscles", "m. digastricus · m. mylohyoideus",
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

    /** What happens, behind ⓘ — the neurophysiology in plain words, then the aesthetic reason, then how sure. */
    public String how(boolean bg) {
        switch (id) {
            case LIFT:
                return bg ? "Лифтинг на лицето работи с трите мускула, които държат средната част на лицето: големия скулов, "
                        + "повдигачите на горната устна (назолабиалната зона) и мускулите на долната буза. "
                        + "Импулсът възбужда двигателните разклонения на лицевия нерв (n. facialis) и мускулите се "
                        + "съкращават сами — 3 секунди работа, 6 секунди отдих, защото лицевите мускули са бързи и се уморяват бързо. "
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
                return bg ? "Нежен ток (100 Hz, тесен импулс 50 µs) докосва само сетивните влакна на допир в кожата на челото — "
                        + "мускулът не се движи. Сетивният поток потиска възбудимостта на двигателните неврони и тонусът на "
                        + "мимическите мускули спада: челото и междувеждието се отпускат, бръчките от мимика омекват. Че такъв "
                        + "ток намалява мускулния тонус, е доказано (мета-анализи; 100 Hz е най-ефективната честота). Импулсът е "
                        + "тесен нарочно: болковите влакна на костната обвивка отговарят само на дълги импулси, затова на тънката "
                        + "кожа на челото усещането остава приятно изтръпване, а не болка в костта. Ефектът е за часове и се "
                        + "натрупва с редовност. Не замества ботулиновия токсин."
                        : "A gentle current (100 Hz, a narrow 50 µs pulse) touches only the touch fibres of the forehead skin — the "
                        + "muscle does not move. The sensory input damps the excitability of the motor neurons and the tone of the "
                        + "expression muscles drops: the forehead and the frown relax, expression lines soften. That such current "
                        + "lowers muscle tone is proven (meta-analyses; 100 Hz works best). The pulse is narrow on purpose: the pain "
                        + "fibres of the bone's lining answer only long pulses, so on the thin forehead skin it stays a pleasant "
                        + "tingle, not an ache in the bone. The effect lasts hours and builds with regular use. It does not "
                        + "replace botulinum toxin.";
            case OVAL:
                return bg ? "Скулите и мускулите под брадичката работят на смени — 3 секунди скулите, 3 секунди брадичката: всеки "
                        + "мускул почива двойно по-дълго, отколкото работи. Скулите получават лифтинга (клинично проучване: "
                        + "+18 % дебелина за 12 седмици), брадичката — стягане на ъгъла между нея и шията. Цял овал в една "
                        + "сесия. Мускулите под брадичката са и мускулите на преглъщането — седнал, без храна и вода."
                        : "The cheeks and the muscles under the chin take turns — 3 seconds each, so every muscle rests twice as "
                        + "long as it works. The cheeks get the lift (a clinical trial: +18 % thickness in 12 weeks), the chin a "
                        + "firmer angle to the neck. The whole oval in one session; seated, no food or drink.";
            case CALM:
                return bg ? "Нежен сетивен ток едновременно по челото и по двата дъвкателни мускула — там, където лицето държи "
                        + "напрежението от деня. Сетивният поток сваля тонуса на мускулите (доказано за такъв ток); "
                        + "честотата се сменя между 80 и 100 Hz, при тесен импулс, за да не привикнат нервите и да няма дълбока болка. Челото се отпуска, челюстта се "
                        + "разтваря, чертите омекват. Идеално вечер или след стрес."
                        : "A gentle sensory current on the forehead and both masseters at once — where the face holds the day's "
                        + "tension. The sensory input lowers muscle tone (proven for such current); the rate alternates 80 ↔ 100 Hz at a narrow pulse "
                        + "so the nerves do not get used to it. Best in the evening or after stress.";
            case JAW_RELAX:
                return bg ? "Бавни ритмични импулси, два пъти в секунда, върху дъвкателния мускул (m. masseter) — при Bluetens "
                        + "като кратки серии — усещат се като дълбоко потупване. В клинично проучване при напрежение в челюстта "
                        + "такъв ток намалява активността на мускула в покой. Резултат: отпусната челюст, по-мек долен овал, "
                        + "по-малко напрежение от стискане на зъби. Укрепване на този мускул никога: то разширява челюстта."
                        : "Slow rhythmic impulses, twice a second, on the masseter (on Bluetens as short bursts) — felt as a deep "
                        + "tapping. In a clinical trial in jaw tension such current lowered the muscle's resting activity: a "
                        + "relaxed jaw, a softer lower face. Never strengthening this muscle: that widens the jaw.";
            default:
                return bg ? "Двустомашният и челюстно-подезичният мускул (m. digastricus, m. mylohyoideus) повдигат подезичната "
                        + "кост; стягането им оформя ъгъла между брадичката и шията. Това са и мускулите на преглъщането — "
                        + "процедурата е седнал, без храна и вода. Ефектът за контура не е измерен в проучване."
                        : "The digastric and mylohyoid lift the hyoid; their tone shapes the angle between chin and neck. They are "
                        + "also the swallowing muscles — seated, no food or drink. A contour effect is not measured in studies.";
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
            return id == RELAX ? (bg ? "Затвори очи, отпусни челото — токът работи по нервите" : "Close the eyes, let the forehead go")
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
