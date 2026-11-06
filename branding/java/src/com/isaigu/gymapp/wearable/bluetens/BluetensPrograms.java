package com.isaigu.gymapp.wearable.bluetens;

/**
 * XEMS's own programs for the Bluetens pads — built here, never copied from the vendor (docs/xems-bluetens.md).
 * Each one is warm-in · a cycle repeated to fill the chosen minutes · cool-down, inside the suit's own limits
 * (docs/xems-safety-limits.md): a fused impulse (≥ 20 Hz) only in bursts or ≤ 4 s holds with a longer rest, at most
 * 300 µs from 100 Hz, rest pulses ≤ 10 Hz. Strength (1–60) stays with the person on the screen.
 */
public final class BluetensPrograms {
    public static final int RECOVER = 0, MASSAGE = 1, RELIEF = 2, ACTIVATE = 3, WARMUP = 4, FACE = 5;
    public static final int[] ALL = {RECOVER, MASSAGE, RELIEF, ACTIVATE, WARMUP, FACE};
    public static final int[] MINUTES = {10, 15, 20, 30};

    private BluetensPrograms() {}

    public static String name(int p, boolean bg) {
        switch (p) {
            case RECOVER: return bg ? "Възстановяване" : "Recovery";
            case MASSAGE: return bg ? "Масаж" : "Massage";
            case RELIEF: return bg ? "Облекчаване" : "Relief";
            case ACTIVATE: return bg ? "Активиране" : "Activation";
            case FACE: return bg ? "Лице" : "Face";
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
            case FACE: return bg ? "Бузата се повдига за 3 s и почива 6 s · един уред на страна"
                    : "The cheek lifts for 3 s and rests 6 s · one pad per side";
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
            case FACE: return bg ? "70 Hz · 100 µs за 3 s с плавно качване и спускане, 6 s тишина; 2 min 6 Hz в началото и 4 Hz в края. "
                    + "Електроди: пред ухото на нивото на скулата и по средата на бузата под нея — двойката е от една страна, "
                    + "никога от буза до буза; ≥ 2 cm от окото. Сила: докато ъгълът на устата се повдигне, без болка. "
                    + "Първите 2 седмици 10 min 3 пъти седмично, после 20 min 5 пъти."
                    : "70 Hz · 100 µs for 3 s with a soft rise and fall, 6 s silence; 2 min 6 Hz at the start and 4 Hz at the end. "
                    + "Pads: in front of the ear at cheekbone level and mid-cheek below it — the pair on one side, "
                    + "never cheek to cheek; ≥ 2 cm from the eye. Strength: until the mouth corner lifts, no pain. "
                    + "First 2 weeks 10 min 3 times a week, then 20 min 5 times.";
            default: return bg ? "4 → 12 → 4 Hz · 250 µs" : "4 → 12 → 4 Hz · 250 µs";
        }
    }

    public static int defaultMinutes(int p) {
        switch (p) {
            case MASSAGE: return 15;
            case ACTIVATE: return 15;
            case WARMUP: return 10;
            case FACE: return 10;
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
            case FACE: code = "FAC"; break;
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

    /**
     * Face (docs/xems-face.md, Slendertone Face / Kavanagh 2012): 70 Hz · 100 µs, 3.3 s with a 0.4 s rise and fall,
     * then 6 s silence (face muscles are fast and tire fast). One pad per side — never cheek to cheek.
     */
    static void face(BluetensLok lok, double total) {
        BluetensLok.Section in = lok.section(1);
        BluetensLok.block(in, 1, 0, 100, 60, 6 * 120);                // 6 Hz · 2 min
        BluetensLok.Section cyc = lok.section(1);
        int[] rise = {50, 65, 80, 90};
        for (int w : rise) {
            BluetensLok.block(cyc, 1, 0, w, 700, 7);                  // 0.1 s each — soft rise 0.4 s
        }
        BluetensLok.block(cyc, 1, 0, FACE_US, 700, 175);              // 70 Hz · 2.5 s
        for (int i = rise.length - 1; i >= 0; i--) {
            BluetensLok.block(cyc, 1, i == 0 ? 6000 : 0, rise[i], 700, 7);   // soft fall 0.4 s, then 6 s silence
        }
        BluetensLok.Section out = lok.section(1);
        BluetensLok.block(out, 1, 0, 100, 40, 4 * 120);               // 4 Hz · 2 min
        fill(lok, cyc, total, in.ms() + out.ms());
    }

    /** The face program's pulse width, µs. */
    public static final int FACE_US = 100;

    static void warmup(BluetensLok lok, double total) {
        BluetensLok.Section cyc = lok.section(1);
        int[] up = {4, 6, 8, 10, 12, 10, 8, 6};
        for (int hz : up) {
            BluetensLok.block(cyc, 1, 0, 250, hz * 10, hz * 15);      // 15 s each
        }
        fill(lok, cyc, total, 0);
    }
}
