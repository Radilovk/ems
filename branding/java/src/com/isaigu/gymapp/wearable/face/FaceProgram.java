package com.isaigu.gymapp.wearable.face;

/**
 * The face procedures as the studio shows them (docs/xems-face.md) — pure Java. One catalogue for both devices:
 * the XEMS suit runs them through the automatic mode ({@code ai/AutoCatalog.FACE*}), Bluetens through its own
 * program files ({@code BluetensPrograms.FACE*}). Words for the client and the staff: the aesthetic result first,
 * the correct name of the muscle second, numbers last.
 */
public final class FaceProgram {
    /** Where it works. */
    public static final int CHEEK = 0, CHIN = 1;

    public static final int LIFT = 0, TONE = 1, CONTOUR = 2;
    public static final int[] XEMS = {LIFT, TONE};
    public static final int[] BLUETENS = {LIFT, TONE, CONTOUR};

    public final int id;
    public final int target;
    public final String nameBg, nameEn;
    /** The result in one line (the card's promise). */
    public final String resultBg, resultEn;
    /** The muscle: plain name · Latin. */
    public final String muscleBg, muscleEn;
    public final String latin;
    public final int hz;
    public final int onS, offS;
    public final int tint;
    /** Days between sessions in the build-up part / later, and how long the course is (weeks; 0 = upkeep). */
    public final int gapEarly, gapLater, weeks;
    /** Sessions the course plans (0 = upkeep, no end). */
    public final int planned;

    private FaceProgram(int id, int target, String nameBg, String nameEn, String resultBg, String resultEn,
                        String muscleBg, String muscleEn, String latin, int hz, int onS, int offS, int tint,
                        int gapEarly, int gapLater, int weeks, int planned) {
        this.id = id;
        this.target = target;
        this.nameBg = nameBg;
        this.nameEn = nameEn;
        this.resultBg = resultBg;
        this.resultEn = resultEn;
        this.muscleBg = muscleBg;
        this.muscleEn = muscleEn;
        this.latin = latin;
        this.hz = hz;
        this.onS = onS;
        this.offS = offS;
        this.tint = tint;
        this.gapEarly = gapEarly;
        this.gapLater = gapLater;
        this.weeks = weeks;
        this.planned = planned;
    }

    /** Lift: 2 weeks × 3 then 10 weeks × 5 = 56 sessions (Kavanagh 2012: 20 min, 5×/week, 12 weeks). */
    private static final FaceProgram[] ALL = {
            new FaceProgram(LIFT, CHEEK, "Повдигане", "Lift",
                    "По-плътна, повдигната скула", "A fuller, lifted cheek",
                    "Голям скулов мускул", "Zygomaticus major", "m. zygomaticus major",
                    70, 3, 6, 0xFFFF6F91, 2, 1, 12, 56),
            new FaceProgram(TONE, CHEEK, "Тонус", "Tone",
                    "Стегнатост, която се задържа", "Firmness that lasts",
                    "Мимически мускули на бузата", "Mid-face muscles", "mm. faciei",
                    35, 5, 5, 0xFFC084FC, 3, 3, 0, 0),
            new FaceProgram(CONTOUR, CHIN, "Контур", "Contour",
                    "По-стегнато под брадичката", "Firmer under the chin",
                    "Надподезични мускули", "Suprahyoid muscles", "m. digastricus · m. mylohyoideus",
                    30, 4, 8, 0xFF818CF8, 2, 2, 0, 0)};

    public static FaceProgram get(int id) {
        return ALL[Math.max(0, Math.min(ALL.length - 1, id))];
    }

    public String name(boolean bg) {
        return bg ? nameBg : nameEn;
    }

    public String result(boolean bg) {
        return bg ? resultBg : resultEn;
    }

    public String muscle(boolean bg) {
        return bg ? muscleBg : muscleEn;
    }

    /** The rhythm as the card shows it: "70 Hz · 3 s стягане · 6 s отдих". */
    public String rhythm(boolean bg) {
        return hz + " Hz · " + onS + (bg ? " s стягане · " : " s hold · ") + offS + (bg ? " s отдих" : " s rest");
    }

    /** How often, in one short line. */
    public String course(boolean bg) {
        if (id == LIFT) {
            return bg ? "12 седмици · 3, после 5 пъти седмично" : "12 weeks · 3, then 5 times a week";
        }
        if (id == TONE) {
            return bg ? "Поддръжка · 2–3 пъти седмично" : "Upkeep · 2–3 times a week";
        }
        return bg ? "3 пъти седмично" : "3 times a week";
    }

    /**
     * What happens, behind ⓘ — correct terms, short, for the client and the staff (the neurophysiology in one
     * breath, then the aesthetic reason).
     */
    public String how(boolean bg) {
        switch (id) {
            case LIFT:
                return bg ? "Импулсът възбужда двигателните разклонения на лицевия нерв (n. facialis) и скуловият мускул се "
                        + "съкращава сам — 3 секунди, после 6 секунди отдих, защото лицевите мускули са бързи и се уморяват бързо. "
                        + "С времето мускулът става по-плътен: повече опора за бузата там, където с възрастта изтъняват "
                        + "мастните възглавнички. В клинично проучване (12 седмици, 5 пъти седмично) мускулът е станал "
                        + "с около 18 % по-дебел."
                        : "The impulse excites the motor branches of the facial nerve (n. facialis) and the cheek muscle contracts "
                        + "by itself — 3 seconds, then 6 seconds of rest, as the face muscles are fast and tire fast. Over time the "
                        + "muscle grows fuller: more support for the cheek where the fat pads thin with age. In a clinical trial "
                        + "(12 weeks, 5 times a week) the muscle grew about 18 % thicker.";
            case TONE:
                return bg ? "По-ниска честота (35 Hz) дава меко, почти слято съкращение, което уморява много по-бавно. "
                        + "Мускулите стават по-издръжливи и пазят постигнатото след курса за повдигане — без него ефектът "
                        + "постепенно отслабва."
                        : "A lower rate (35 Hz) gives a soft, nearly fused contraction that tires far slower. The muscles grow "
                        + "more enduring and keep what the lift course built — without upkeep the effect fades.";
            default:
                return bg ? "Двустомашният и челюстно-подезичният мускул (m. digastricus, m. mylohyoideus) повдигат "
                        + "подезичната кост. Стягането им оформя ъгъла между брадичката и шията. Това са и мускулите на "
                        + "преглъщането — затова процедурата е седнал, без храна и вода. Ефектът за контура не е доказан "
                        + "в изследвания."
                        : "The digastric and mylohyoid (m. digastricus, m. mylohyoideus) lift the hyoid; their tone shapes the "
                        + "angle between chin and neck. They are also the swallowing muscles — so: seated, no food or drink. "
                        + "A contour effect is not proven in studies.";
        }
    }

    /** Where the pads go — the three short steps the placement screen shows next to the picture. */
    public String[] place(boolean bg) {
        if (target == CHIN) {
            return bg ? new String[] {
                    "Почисти кожата под брадичката",
                    "1 и 2 — под брадичката, от двете страни на средата",
                    "Между костта на брадичката и подезичната кост — никога отстрани на шията"}
                    : new String[] {
                    "Clean the skin under the chin",
                    "1 and 2 — under the chin, either side of the midline",
                    "Between the chin bone and the hyoid — never on the side of the neck"};
        }
        return bg ? new String[] {
                "Почисти кожата, без крем",
                "1 — на скулата, два пръста под външния ъгъл на окото",
                "2 — по линията към ъгъла на устата, не на устната"}
                : new String[] {
                "Clean the skin, no cream",
                "1 — on the cheekbone, two fingers below the outer eye corner",
                "2 — along the line to the mouth corner, not on the lip"};
    }

    /** What the right strength looks like. */
    public String strengthGoal(boolean bg) {
        if (target == CHIN) {
            return bg ? "Качвай, докато под брадичката се усети ясно стягане — без болка"
                    : "Raise until a clear tightening is felt under the chin — no pain";
        }
        return bg ? "Качвай, докато ъгълът на устата видимо се повдигне — без болка, без мигане"
                : "Raise until the mouth corner visibly lifts — no pain, no blinking";
    }
}
