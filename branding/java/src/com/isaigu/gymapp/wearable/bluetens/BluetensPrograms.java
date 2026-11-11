package com.isaigu.gymapp.wearable.bluetens;

/**
 * XEMS's own programs for the Bluetens pads — built here, never copied from the vendor (docs/xems-bluetens.md).
 * Each one is warm-in · a cycle repeated to fill the chosen minutes · cool-down, inside the suit's own limits
 * (docs/xems-safety-limits.md): a fused impulse (≥ 20 Hz) only in bursts or ≤ 4 s holds with a longer rest, at most
 * 300 µs from 100 Hz, rest pulses ≤ 10 Hz. Strength (1–60) stays with the person on the screen.
 */
public final class BluetensPrograms {
    public static final int RECOVER = 0, MASSAGE = 1, RELIEF = 2, ACTIVATE = 3, WARMUP = 4,
            FACE = 5, FACE_TONE = 6, CHIN = 7, FACE_DRAIN = 8, FACE_DRAIN_B = 9, FACE_RELAX = 10, JAW = 11;
    public static final int[] ALL = {RECOVER, MASSAGE, RELIEF, ACTIVATE, WARMUP, FACE, FACE_TONE, CHIN, FACE_DRAIN, FACE_DRAIN_B,
            FACE_RELAX, JAW};
    public static final int[] MINUTES = {10, 15, 20, 30};

    private BluetensPrograms() {}

    public static String name(int p, boolean bg) {
        switch (p) {
            case RECOVER: return bg ? "Възстановяване" : "Recovery";
            case MASSAGE: return bg ? "Масаж" : "Massage";
            case RELIEF: return bg ? "Облекчаване" : "Relief";
            case ACTIVATE: return bg ? "Активиране" : "Activation";
            case FACE: return bg ? "Лице · Лифтинг" : "Face · Lift";
            case FACE_TONE: return bg ? "Лице · Миостимулация" : "Face · Myostimulation";
            case CHIN: return bg ? "Под брадичката" : "Under the chin";
            case FACE_DRAIN:
            case FACE_DRAIN_B: return bg ? "Лимфен дренаж" : "Depuff";
            case FACE_RELAX: return bg ? "Ботокс ефект" : "Botox effect";
            case JAW: return bg ? "Релакс на челюстта" : "Jaw relax";
            default: return bg ? "Загряване" : "Warm-up";
        }
    }

    /** One line under the name: what the person will feel. */
    public static String feel(int p, boolean bg) {
        switch (p) {
            case RECOVER: return bg ? "Леко потрепване, което раздвижва уморения мускул" : "Gentle twitches that flush a tired muscle";
            case MASSAGE: return bg ? "Меко месене и потупване" : "Soft kneading and tapping";
            case RELIEF: return bg ? "Бързи тръпки, които заглушават болката" : "Quick tingles that quiet the pain";
            case ACTIVATE: return bg ? "Кратки силни свивания с дълга почивка" : "Short strong contractions, long rest";
            case FACE: return bg ? "Бузата се повдига за 3 s и почива 6 s · уред за всяка буза, своя сила"
                    : "The cheek lifts for 3 s and rests 6 s · a pad per cheek, its own strength";
            case FACE_TONE: return bg ? "По-дълго меко стягане · поддръжка след курса" : "Longer soft holds · upkeep after the course";
            case CHIN: return bg ? "Стягане под брадичката · седнал, без храна и вода" : "Firming under the chin · seated, no food or drink";
            case FACE_DRAIN:
            case FACE_DRAIN_B: return bg ? "Мускулна помпа, бузите се редуват" : "A muscle pump, the cheeks take turns";
            case FACE_RELAX: return bg ? "Нежно изтръпване на челото" : "A gentle tingle on the forehead";
            case JAW: return bg ? "Дълбоко ритмично потупване" : "A deep rhythmic tapping";
            default: return bg ? "Вълна от бавно към по-бързо и обратно" : "A wave from slow to quicker and back";
        }
    }

    /** What the ⓘ says: the impulse in plain numbers. */
    public static String detail(int p, boolean bg) {
        switch (p) {
            case RECOVER: return bg ? "3–8 Hz · 250 µs, без пауза" : "3–8 Hz · 250 µs, continuous";
            case MASSAGE: return bg ? "Серии от 80 Hz по 0,1 s два пъти в секунда + 4 Hz · 200 µs"
                    : "80 Hz bursts of 0.1 s twice a second + 4 Hz · 200 µs";
            case RELIEF: return bg ? "Серии от 100 Hz (7 и 5 импулса) 2–3 пъти в секунда · 150 µs"
                    : "100 Hz bursts (7 and 5 pulses) 2–3 times a second · 150 µs";
            case ACTIVATE: return bg ? "50 Hz · 300 µs за 4 s с плавно качване, 6 s почивка на 4 Hz"
                    : "50 Hz · 300 µs for 4 s with a soft rise, 6 s rest at 4 Hz";
            case FACE: return bg ? "70 Hz · 100 µs: 3 s с плавно качване и спускане, 6 s тишина; включване 2 min (2 s : 8 s), "
                    + "отпускане 2 min на 30 Hz. Нищо под 20 Hz — на лицето потрепванията са неприятни. " + CHEEK_BG
                    + " Курс: 2 седмици по 10 min 3 пъти, после 20 min 5 пъти седмично, 12 седмици."
                    : "70 Hz · 100 µs: 3 s with a soft rise and fall, 6 s silence; 2 min wake-up (2 s : 8 s), "
                    + "2 min let-go at 30 Hz. Nothing under 20 Hz — twitches are unpleasant on the face. " + CHEEK_EN
                    + " Course: 2 weeks of 10 min 3 times, then 20 min 5 times a week, 12 weeks.";
            case FACE_TONE: return bg ? "35 Hz · 100 µs: 5 s меко стягане, 5 s тишина — уморява много по-бавно от 70 Hz. " + CHEEK_BG
                    + " След курса за повдигане: 10–15 min 2–3 пъти седмично."
                    : "35 Hz · 100 µs: 5 s soft hold, 5 s silence — tires far slower than 70 Hz. " + CHEEK_EN
                    + " After the lift course: 10–15 min 2–3 times a week.";
            case CHIN: return bg ? "30 Hz · 150 µs: 4 s стягане, 8 s тишина (малки мускули — ниска честота). Двата електрода под брадичката, "
                    + "вляво и вдясно от средата, между костта на брадичката и подезичната кост; никога отстрани на шията. "
                    + "Седнал, без храна и вода — токът движи мускулите на преглъщането. Ефект за контура не е доказан."
                    : "30 Hz · 150 µs: 4 s hold, 8 s silence (small muscles — low rate). Both pads under the chin, left and right "
                    + "of the midline, between the chin bone and the hyoid; never on the side of the neck. Seated, no food or "
                    + "drink — the current moves the swallowing muscles. A contour effect is not proven.";
            case FACE_DRAIN:
            case FACE_DRAIN_B: return bg ? "30 Hz · 100 µs: 1 s стягане, 2 s отдих; втората буза със закъснение 1,5 s — вълна"
                    : "30 Hz · 100 µs: 1 s hold, 2 s rest; the second cheek 1.5 s later — a wave";
            case FACE_RELAX: return bg ? "100 Hz · 50 µs, само сетивно — без движение; всеки цуг започва меко"
                    : "100 Hz · 50 µs, sensory only — no movement; every train starts soft";
            case JAW: return bg ? "Серии от 7 импулса при 100 Hz, 2 пъти в секунда · 150 µs; сменя се с 3 серии в секунда"
                    : "Bursts of 7 pulses at 100 Hz, twice a second · 150 µs; alternates with 3 a second";
            default: return bg ? "4 → 12 → 4 Hz · 250 µs" : "4 → 12 → 4 Hz · 250 µs";
        }
    }

    public static int defaultMinutes(int p) {
        switch (p) {
            case MASSAGE: return 15;
            case ACTIVATE: return 15;
            case WARMUP: return 10;
            case FACE: return 10;
            case FACE_TONE: return 10;
            case CHIN: return 10;
            case FACE_DRAIN:
            case FACE_DRAIN_B: return 10;
            case FACE_RELAX: return 20;
            case JAW: return 15;
            default: return 20;
        }
    }

    public static int tint(int p) {
        switch (p) {
            case RECOVER: return 0xFF37D0EB;
            case MASSAGE: return 0xFFA78BFA;
            case RELIEF: return 0xFF34D399;
            case ACTIVATE: return 0xFFF59E0B;
            case FACE: return 0xFFF472B6;
            case FACE_TONE: return 0xFFE879F9;
            case CHIN: return 0xFF818CF8;
            case FACE_DRAIN:
            case FACE_DRAIN_B: return 0xFF38BDF8;
            case FACE_RELAX: return 0xFFF5B021;
            case JAW: return 0xFF34D399;
            default: return 0xFFFB7185;
        }
    }

    /** The file name on the device (short, no extension — the vendor's own names have none either). */
    public static String fileName(int p, int minutes) {
        String code;
        switch (p) {
            case RECOVER: code = "REC"; break;
            case MASSAGE: code = "MAS"; break;
            case RELIEF: code = "REL"; break;
            case ACTIVATE: code = "ACT"; break;
            case FACE: code = "FLF"; break;
            case FACE_TONE: code = "FTN"; break;
            case CHIN: code = "CHN"; break;
            case FACE_DRAIN: code = "FDR"; break;
            case FACE_DRAIN_B: code = "FDB"; break;
            case FACE_RELAX: code = "FRX"; break;
            case JAW: code = "JAW"; break;
            default: code = "WRM"; break;
        }
        return "X" + code + minutes;
    }

    public static BluetensLok build(int p, int minutes) {
        BluetensLok lok = new BluetensLok();
        double totalMs = Math.max(1, minutes) * 60000.0;
        switch (p) {
            case MASSAGE: massage(lok, totalMs); break;
            case RELIEF: relief(lok, totalMs); break;
            case ACTIVATE: activate(lok, totalMs); break;
            case WARMUP: warmup(lok, totalMs); break;
            case FACE: face(lok, totalMs); break;
            case FACE_TONE: faceTone(lok, totalMs); break;
            case CHIN: chin(lok, totalMs); break;
            case FACE_DRAIN: drain(lok, totalMs, false); break;
            case FACE_DRAIN_B: drain(lok, totalMs, true); break;
            case FACE_RELAX: relax(lok, totalMs); break;
            case JAW: jaw(lok, totalMs); break;
            default: recover(lok, totalMs); break;
        }
        return lok;
    }

    /** The cycle section repeated to fill what warm-in and cool-down leave. */
    static void fill(BluetensLok lok, BluetensLok.Section cycle, double totalMs, double aroundMs) {
        double one = cycle.ms();
        cycle.repeat = (int) Math.max(1, Math.round((totalMs - aroundMs) / one));
    }

    static void recover(BluetensLok lok, double total) {
        BluetensLok.Section in = lok.section(1);
        BluetensLok.block(in, 1, 0, 250, 80, 8 * 60);                 // 8 Hz · 60 s
        BluetensLok.Section cyc = lok.section(1);
        BluetensLok.block(cyc, 1, 0, 250, 30, 3 * 30);                // 3 Hz · 30 s
        BluetensLok.block(cyc, 1, 0, 250, 50, 5 * 15);                // 5 Hz · 15 s
        BluetensLok.block(cyc, 1, 0, 250, 70, 7 * 15);                // 7 Hz · 15 s
        BluetensLok.Section out = lok.section(1);
        BluetensLok.block(out, 1, 0, 200, 20, 2 * 60);                // 2 Hz · 60 s
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    static void massage(BluetensLok lok, double total) {
        BluetensLok.Section in = lok.section(1);
        BluetensLok.block(in, 1, 0, 200, 40, 4 * 30);                 // 4 Hz · 30 s
        BluetensLok.Section cyc = lok.section(1);
        BluetensLok.block(cyc, 40, 400, 200, 800, 8);                 // 8 × 80 Hz (0.1 s) + 0.4 s, 20 s
        BluetensLok.block(cyc, 1, 0, 200, 40, 4 * 10);                // 4 Hz · 10 s
        BluetensLok.Section out = lok.section(1);
        BluetensLok.block(out, 1, 0, 200, 20, 2 * 30);                // 2 Hz · 30 s
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    static void relief(BluetensLok lok, double total) {
        BluetensLok.Section cyc = lok.section(1);
        BluetensLok.block(cyc, 20, 430, 150, 1000, 7);                // 7 × 100 Hz + 0.43 s ≈ 2 Hz · 10 s
        BluetensLok.block(cyc, 30, 283, 150, 1000, 5);                // 5 × 100 Hz + 0.28 s ≈ 3 Hz · 10 s
        fill(lok, cyc, total, 0);
    }

    static void activate(BluetensLok lok, double total) {
        BluetensLok.Section in = lok.section(1);
        BluetensLok.block(in, 1, 0, 300, 60, 6 * 120);                // 6 Hz · 2 min
        BluetensLok.Section cyc = lok.section(1);
        int[] rise = {120, 160, 200, 240, 280};
        for (int w : rise) {
            BluetensLok.block(cyc, 1, 0, w, 500, 5);                  // 0.1 s each — soft rise 0.5 s
        }
        BluetensLok.block(cyc, 1, 0, 300, 500, 175);                  // 50 Hz · 3.5 s
        BluetensLok.block(cyc, 1, 0, 200, 40, 24);                    // 4 Hz · 6 s rest
        BluetensLok.Section out = lok.section(1);
        BluetensLok.block(out, 1, 0, 250, 30, 3 * 120);               // 3 Hz · 2 min
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    /** Where the cheek pads go (the zygomaticus line — not the nerve trunk in front of the ear, which reaches the eye). */
    static final String CHEEK_BG = "Електроди по линията на скуловия мускул: горният под скулата, на мускула, не върху костта, "
            + "долният 2–3 cm по-надолу към ъгъла на устата (не на устната). Не пред ухото — там нервът стига до окото (мигане). "
            + "Двойката е от една страна; лява и дясна буза — отделен уред, всяка със своя сила.";
    static final String CHEEK_EN = "Pads along the cheek muscle: the upper under the cheekbone, on the muscle, not on the bone, "
            + "the lower 2–3 cm further towards the mouth corner (not on the lip). Not in front of the ear — the nerve there "
            + "reaches the eye (blinking). The pair on one side; left and right cheek — a pad each, its own strength.";

    /**
     * The file a Bluetens device runs in a face procedure (docs/xems-face.md §9): by the procedure
     * ({@code FaceProgram} id), the device's site ({@code FaceArt} site) and how many devices take part.
     */
    public static int faceFile(int program, int site, int devices) {
        boolean chin = site == com.isaigu.gymapp.wearable.face.FaceArt.CHIN;
        switch (program) {
            case com.isaigu.gymapp.wearable.face.FaceProgram.FIRM: return FACE_TONE;
            case com.isaigu.gymapp.wearable.face.FaceProgram.OVAL: return chin ? CHIN : FACE;
            case com.isaigu.gymapp.wearable.face.FaceProgram.DRAIN:
                // the chin opens first; the cheeks follow half a cycle later (with two devices: the cheeks take turns)
                if (chin) {
                    return FACE_DRAIN;
                }
                return devices >= 3 || site == com.isaigu.gymapp.wearable.face.FaceArt.ZM_R ? FACE_DRAIN_B : FACE_DRAIN;
            case com.isaigu.gymapp.wearable.face.FaceProgram.RELAX: return FACE_RELAX;
            case com.isaigu.gymapp.wearable.face.FaceProgram.CALM:
                return site == com.isaigu.gymapp.wearable.face.FaceArt.FOREHEAD ? FACE_RELAX : JAW;
            case com.isaigu.gymapp.wearable.face.FaceProgram.JAW_RELAX: return JAW;
            case com.isaigu.gymapp.wearable.face.FaceProgram.CONTOUR: return CHIN;
            default: return FACE;
        }
    }

    /** Face pulse width, µs (facial NMES 10–100 µs per phase — Efthimiou 2024). */
    public static final int FACE_US = 100;
    /** Under the chin: thicker tissue over the suprahyoid muscles. */
    public static final int CHIN_US = 150;
    /** Nothing under this rate on the face (single twitches are uncomfortable and visible). */
    public static final int FACE_HZ_MIN = 20;

    /**
     * One contraction: a soft rise through {@code rise} widths (0.1 s each), {@code holdMs} at {@code us}, the same
     * fall, then {@code restMs} of silence.
     */
    static void hold(BluetensLok.Section s, int hz, int[] rise, int us, int holdMs, int restMs) {
        int step = Math.max(1, Math.round(hz / 10f));                           // pulses in 0.1 s
        for (int w : rise) {
            BluetensLok.block(s, 1, 0, w, hz * 10, step);
        }
        BluetensLok.block(s, 1, 0, us, hz * 10, Math.max(1, Math.round(holdMs * hz / 1000f)));
        for (int i = rise.length - 1; i >= 0; i--) {
            BluetensLok.block(s, 1, i == 0 ? restMs : 0, rise[i], hz * 10, step);
        }
    }

    /** 2 min of short holds at a lower width: the muscle wakes up at the working rate, no twitches. */
    static BluetensLok.Section wake(BluetensLok lok, int hz, int us, int onMs, int offMs) {
        BluetensLok.Section in = lok.section(1);
        hold(in, hz, new int[] {Math.max(50, us * 2 / 3)}, us, onMs - 200, offMs);
        in.repeat = (int) Math.max(1, Math.round(120000.0 / in.ms()));
        return in;
    }

    /**
     * Face · Lift (docs/xems-face.md; Kavanagh 2012 RCT, Slendertone 70–80 Hz · 80–100 µs): 70 Hz · 100 µs, 3 s
     * (0.4 s rise and fall), 6 s silence — the mimetic muscles are fast and tire within seconds above 50 Hz.
     */
    static void face(BluetensLok lok, double total) {
        BluetensLok.Section in = wake(lok, 70, 70, 2000, 8000);
        BluetensLok.Section cyc = lok.section(1);
        hold(cyc, 70, new int[] {50, 65, 80, 90}, FACE_US, 2200, 6000);
        BluetensLok.Section out = wake(lok, 30, 70, 2000, 8000);
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    /** Face · Tone: 35 Hz · 100 µs, 5 s soft hold, 5 s silence — fatigues far slower than 70 Hz (upkeep after the course). */
    static void faceTone(BluetensLok lok, double total) {
        BluetensLok.Section in = wake(lok, 35, 70, 3000, 7000);
        BluetensLok.Section cyc = lok.section(1);
        hold(cyc, 35, new int[] {50, 70, 85}, FACE_US, 4400, 5000);
        BluetensLok.Section out = wake(lok, 30, 70, 2000, 8000);
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    /**
     * Under the chin (suprahyoid: digastric, mylohyoid, geniohyoid): 30 Hz · 150 µs, 4 s : 8 s. Small muscles → low rate
     * (submental NMES studies use 30–80 Hz); seated, never during eating or drinking. A cosmetic effect is not proven.
     */
    static void chin(BluetensLok lok, double total) {
        BluetensLok.Section in = wake(lok, 30, 100, 2000, 8000);
        BluetensLok.Section cyc = lok.section(1);
        hold(cyc, 30, new int[] {70, 100, 125, 140}, CHIN_US, 3200, 8000);
        BluetensLok.Section out = wake(lok, 30, 100, 2000, 8000);
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    /** The forehead's sensory width (conventional TENS, docs/xems-face.md §12) and the masseter's bursts. */
    public static final int RELAX_US = 50, JAW_US = 150;

    /**
     * The face width the studio may choose (docs/xems-face.md §12): 20–150 µs, 5 µs steps (the pad takes µs as they
     * are). Under ~20 µs the charge needs a current density that prickles the skin — the reason for a narrow pulse is lost.
     */
    public static final int FACE_PW_MIN = 20, FACE_PW_MAX = 150, FACE_PW_STEP = 5;

    /**
     * A face file at another width: every pulse scaled by {@code us / full} (the soft rises keep their shape),
     * never under {@link #FACE_PW_MIN} and never over {@code us}. Rate, rhythm and length stay as they were.
     */
    public static BluetensLok withWidth(BluetensLok lok, int full, int us) {
        int target = Math.max(FACE_PW_MIN, Math.min(FACE_PW_MAX, us));
        for (BluetensLok.Section sec : lok.sections) {
            for (BluetensLok.Block b : sec.blocks) {
                int w = (int) Math.round(b.impulse * (double) target / Math.max(1, full));
                b.impulse = Math.max(FACE_PW_MIN, Math.min(target, w));
            }
        }
        return lok;
    }

    /**
     * Depuff: a muscle pump — 30 Hz · 100 µs, 1 s (0.2 s rise / fall) : 2 s; {@code late} = the second cheek, half a
     * cycle (1.5 s) later, so the two take turns like a wave (one pad per cheek, each its own file).
     */
    static void drain(BluetensLok lok, double total, boolean late) {
        if (late) {
            BluetensLok.Section d = lok.section(1);
            BluetensLok.block(d, 1, 1500, 50, 300, 1);                 // one faint pulse, then the half-cycle wait
        }
        BluetensLok.Section in = wake(lok, 30, 70, 1000, 3000);
        BluetensLok.Section cyc = lok.section(1);
        hold(cyc, 30, new int[] {60, 80}, FACE_US, 600, 2000);
        BluetensLok.Section out = wake(lok, 30, 70, 2000, 8000);
        fill(lok, cyc, total, in.ms() + out.ms() + (late ? 1500 : 0));
    }

    /**
     * The botox effect: a sensory current on the forehead in the conventional-TENS band — 100 Hz, 50 µs (the large
     * touch fibres, not the pain fibres of the periosteum, which need long pulses; docs/xems-face.md §12). Every 5.5 s
     * train starts soft — 40 → 70 → 100 Hz over 0.3 s (the width is already at its floor) — and rests 0.5 s (the
     * fused-impulse limit), so no train begins with a sting.
     */
    static void relax(BluetensLok lok, double total) {
        BluetensLok.Section cyc = lok.section(1);
        BluetensLok.block(cyc, 1, 0, RELAX_US, 400, 4);               // 40 Hz · 0.1 s
        BluetensLok.block(cyc, 1, 0, RELAX_US, 700, 7);               // 70 Hz · 0.1 s
        BluetensLok.block(cyc, 1, 0, RELAX_US, 1000, 10);             // 100 Hz · 0.1 s
        BluetensLok.block(cyc, 1, 500, RELAX_US, 1000, 520);          // 100 Hz · 5.2 s, then 0.5 s rest
        fill(lok, cyc, total, 0);
    }

    /**
     * Relaxed jaw: burst TENS on the masseter — 7 pulses at 100 Hz, twice a second, 150 µs, alternating every 20 s
     * with 3 bursts a second (5 pulses) so the nerves do not get used to one rhythm.
     */
    static void jaw(BluetensLok lok, double total) {
        BluetensLok.Section cyc = lok.section(1);
        BluetensLok.block(cyc, 40, 430, JAW_US, 1000, 7);              // 7 × 100 Hz + 0.43 s ≈ 2 Hz · 20 s
        BluetensLok.block(cyc, 60, 283, JAW_US, 1000, 5);              // 5 × 100 Hz + 0.28 s ≈ 3 Hz · 20 s
        fill(lok, cyc, total, 0);
    }

    static void warmup(BluetensLok lok, double total) {
        BluetensLok.Section cyc = lok.section(1);
        int[] up = {4, 6, 8, 10, 12, 10, 8, 6};
        for (int hz : up) {
            BluetensLok.block(cyc, 1, 0, 250, hz * 10, hz * 15);      // 15 s each
        }
        fill(lok, cyc, total, 0);
    }
}
