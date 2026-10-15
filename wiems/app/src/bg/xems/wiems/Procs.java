package bg.xems.wiems;

/**
 * The ready programs, as XBody has them (owner: "Както при xbody"):
 * <ul>
 * <li>XBody's own training modes — Мускули (Muscle development), Кардио (Cardiovascular), Релакс (Relax): one rhythm
 * each, XBody's defaults (read off its Impulse sheet), changeable in the session's settings;</li>
 * <li>the passive procedures of the XBody panel (xbody/panel/core/xbprog.cpp — the same as the XEMS tablet's,
 * docs/xems-auto-mode-spec.md §6.6–6.10): phases with their own Hz, rhythm, envelope, zone weights or a wave, a second
 * impulse in the pause, and a strategy per length (10 / 15 / 20 / 25 / 30 min).</li>
 * </ul>
 * Zone weights are in WiEMS channel order (XBody's: 0 Трапец, 1 Гръб, 2 Гърди, 3 Кръст, 4 Ръце, 5 Седалище, 6 Корем,
 * 7 Предно бедро, 8 Задно бедро, 9 Прасец). Pure Java.
 */
final class Procs {
    private Procs() {}

    // ---------------------------------------------------------------- XBody's modes

    static final int MODE_MANUAL = 0, MODE_MUSCLE = 1, MODE_CARDIO = 2, MODE_RELAX = 3, MODE_PROC = 4;
    static final String[] MODE_NAME = {"Ръчни настройки", "Мускули", "Кардио", "Релакс", "Процедура"};
    /** One short line under a tile: what the mode gives (XBody's defaults). */
    static final String[] MODE_HOW = {"Всичко се настройва", "80 Hz · 4 s / 2 s · 20 мин", "7 Hz непрекъснато · 25 мин",
            "100 Hz · 1 s / 1 s · 10 мин", ""};

    /** XBody's defaults for its three modes (its Impulse sheet). */
    static Session.Program mode(int m) {
        Session.Program p = new Session.Program();
        if (m == MODE_MUSCLE) {                 // XBody: burst 80 Hz, 4 s / 2 s, no amplification, 350 µs, 20 min
            p.hz = 80;
            p.onS = 4;
            p.offS = 2;
            p.totalS = 20 * 60;
            p.rampMs = 0;
        } else if (m == MODE_CARDIO) {          // XBody: continuous 7 Hz, interval 20 s / 10 s (move / rest), 25 min
            p.hz = 7;
            p.onS = 20;
            p.offS = 10;
            p.totalS = 25 * 60;
            p.rampMs = 0;
            p.cont = true;
        } else if (m == MODE_RELAX) {           // XBody: burst 100 Hz, 1 s / 1 s, 150 µs, 10 min
            p.hz = 100;
            p.onS = 1;
            p.offS = 1;
            p.totalS = 10 * 60;
            p.rampMs = 0;
        }
        return p;
    }

    // ---------------------------------------------------------------- passive procedures

    static final int CH = 10, WAVE_PAUSE = 0, LEN_N = 5, POST_MIN = 10, WORK_MAX = 900000, BREAK_MS = 120000;
    static final int[] LENGTHS = {10, 15, 20, 25, 30};

    static final class Seg {
        final String name;
        int ms;
        final int hz, hz2, onMs, offMs, upMs, downMs;
        int e0;
        final int e1;
        final int[] w;          // weight % per WiEMS channel (null: the wave decides)
        final int[] wave;       // wave steps as channel bit masks, WAVE_PAUSE = a rest
        final int dblHz, dblPct;

        Seg(String name, int ms, int hz, int hz2, int onMs, int offMs, int upMs, int downMs, int e0, int e1, int[] w,
            int[] wave, int dblHz, int dblPct) {
            this.name = name;
            this.ms = ms;
            this.hz = hz;
            this.hz2 = hz2;
            this.onMs = onMs;
            this.offMs = offMs;
            this.upMs = upMs;
            this.downMs = downMs;
            this.e0 = e0;
            this.e1 = e1;
            this.w = w;
            this.wave = wave;
            this.dblHz = dblHz;
            this.dblPct = dblPct;
        }

        Seg copy() {
            return new Seg(name, ms, hz, hz2, onMs, offMs, upMs, downMs, e0, e1, w, wave, dblHz, dblPct);
        }

        /** The unit's program for this phase (whole seconds; the unit rises by itself). */
        Session.Program program(int h) {
            Session.Program p = new Session.Program();
            p.hz = h;
            p.onS = Math.max(1, (onMs + 500) / 1000);
            p.offS = Math.max(1, (offMs + 500) / 1000);
            p.rampMs = upMs;
            p.downS = downMs >= 500 ? 1 : 0;
            p.dbl = dblHz > 0;
            p.dblHz = dblHz > 0 ? dblHz : 5;
            p.dblPct = dblHz > 0 ? dblPct : 50;
            return p;
        }
    }

    static final class Proc {
        final String id, name, how, postHow;
        final int minutes;
        final Seg[] segs, post;

        Proc(String id, String name, String how, int minutes, Seg[] segs, Seg[] post, String postHow) {
            this.id = id;
            this.name = name;
            this.how = how;
            this.minutes = minutes;
            this.segs = segs;
            this.post = post;
            this.postHow = postHow;
        }
    }

    /** A procedure at a chosen length. */
    static final class Plan {
        Proc proc;
        int minutes;
        Seg[] segs;
        boolean post;
        String how, note;

        int totalMs() {
            int t = 0;
            for (Seg g : segs) t += g.ms;
            return t;
        }

        /** The phase at ms since the start (−1: over). */
        int segAt(long el) {
            long t0 = 0;
            for (int i = 0; i < segs.length; i++) {
                if (el < t0 + segs[i].ms) return i;
                t0 += segs[i].ms;
            }
            return -1;
        }

        long segStart(int i) {
            long t = 0;
            for (int j = 0; j < i; j++) t += segs[j].ms;
            return t;
        }

        /** The main phase: the most time at one frequency (what the procedure is about). */
        Seg main() {
            int best = 0, bestMs = -1;
            for (int k = 0; k < segs.length; k++) {
                int t = 0;
                for (Seg g : segs)
                    if (g.hz == segs[k].hz && g.hz2 == segs[k].hz2 && (g.wave == null) == (segs[k].wave == null)) t += g.ms;
                if (t > bestMs) {
                    best = k;
                    bestMs = t;
                }
            }
            return segs[best];
        }
    }

    /** XBody uems order (trapez, back, chest, waist, arm, abdomen, bottom, legext, legflex, calf) → WiEMS channels. */
    private static int[] ch(int... uems) {
        int[] o = new int[CH];
        for (int i = 0; i < CH; i++) o[UEMS_TO_CH[i]] = uems[i];
        return o;
    }

    private static final int[] UEMS_TO_CH = {0, 1, 2, 3, 4, 6, 5, 7, 8, 9};

    private static int z(int uems) {
        return 1 << UEMS_TO_CH[uems];
    }

    private static final int[] W_ALL = ch(100, 100, 100, 100, 100, 100, 100, 100, 100, 100);
    private static final int[] W_CELL = ch(0, 0, 0, 60, 50, 75, 100, 100, 100, 70);
    private static final int[] W_BACK = ch(60, 90, 0, 100, 0, 70, 80, 40, 60, 0);
    private static final int[] W_POST = ch(50, 60, 0, 90, 50, 60, 100, 70, 80, 50);   // chest 0 (breastfeeding)
    private static final int[] W_REGEN = ch(80, 80, 40, 70, 60, 50, 90, 90, 90, 80);
    private static final int[] W_META = ch(40, 70, 40, 60, 60, 60, 100, 100, 100, 90);
    private static final int[] W_SHAPE = ch(40, 70, 40, 100, 80, 100, 100, 90, 90, 60);

    // Drainage (§6.6): central paths first, then the legs upward, then the arms; one group per cycle, the previous
    // one at 50 % (like pneumatic compression), a rest to fill.
    private static final int[] WAVE_OPEN = {z(5) | z(3), z(0)};
    private static final int[] WAVE_LEGS = {z(9), z(8) | z(7), z(6), z(5) | z(3), WAVE_PAUSE};
    private static final int[] WAVE_ARMS = {z(4), z(2) | z(1), z(0), WAVE_PAUSE};

    private static Seg s(String n, int ms, int hz, int hz2, int on, int off, int up, int down, int e0, int e1, int[] w,
                         int[] wave, int dHz, int dPct) {
        return new Seg(n, ms, hz, hz2, on, off, up, down, e0, e1, w, wave, dHz, dPct);
    }

    static final Proc[] ALL = {
        new Proc("drain", "Дренаж", "Легнал, краката леко повдигнати · ясно, не болезнено", 20, new Seg[] {
            s("Отваряне", 180000, 35, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_OPEN, 0, 0),
            s("Вълна: крака", 660000, 35, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_LEGS, 0, 0),
            s("Вълна: ръце", 240000, 35, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_ARMS, 0, 0),
            s("Край", 120000, 3, 0, 10000, 1000, 0, 0, 50, 50, W_ALL, null, 0, 0)}, new Seg[] {
            s("Отваряне", 60000, 35, 0, 3000, 1000, 1000, 500, 80, 80, null, WAVE_OPEN, 0, 0),
            s("Вълна: крака", 300000, 35, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_LEGS, 0, 0),
            s("Вълна: ръце", 120000, 30, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_ARMS, 0, 0),
            s("Помпа 8 Hz", 120000, 8, 0, 2000, 2000, 0, 0, 70, 40, W_ALL, null, 3, 30)},
            "След тренировка: вълна отдолу нагоре и лека помпа с бавен втори импулс"),
        new Proc("shaping", "Оформяне", "Талия, корем, седалище, бедра · 85 и 50 Hz с втори импулс в паузата", 20, new Seg[] {
            s("Загрявка", 180000, 6, 0, 10000, 1000, 0, 0, 60, 100, W_SHAPE, null, 0, 0),
            s("Оформяне 85 Hz", 540000, 85, 0, 4000, 6000, 500, 300, 100, 100, W_SHAPE, null, 8, 40),
            s("Стягане 50 Hz", 300000, 50, 0, 3000, 5000, 500, 300, 100, 100, W_SHAPE, null, 6, 40),
            s("Край", 180000, 4, 0, 10000, 1000, 0, 0, 90, 50, W_SHAPE, null, 0, 0)}, new Seg[] {
            s("Оформяне 85 Hz", 240000, 85, 0, 4000, 6000, 500, 300, 80, 90, W_SHAPE, null, 8, 40),
            s("Стягане 40 Hz", 180000, 40, 0, 3000, 4000, 500, 300, 90, 90, W_SHAPE, null, 6, 40),
            s("Масаж 3 ↔ 8 Hz", 180000, 3, 8, 10000, 2000, 0, 0, 80, 50, W_SHAPE, null, 0, 0)},
            "След тренировка: 85 и 40 Hz с втори импулс, масаж накрая"),
        new Proc("cellulite", "Антицелулит", "Тонус на долната част + дренажна вълна по краката", 25, new Seg[] {
            s("Загрявка", 150000, 5, 0, 10000, 1000, 0, 0, 60, 100, W_CELL, null, 0, 0),
            s("Стягане", 600000, 85, 0, 4000, 6000, 500, 300, 100, 100, W_CELL, null, 8, 50),
            s("Вълна: крака", 600000, 35, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_LEGS, 0, 0),
            s("Край", 150000, 3, 0, 10000, 1000, 0, 0, 90, 50, W_CELL, null, 0, 0)}, new Seg[] {
            s("Стягане 85 Hz", 240000, 85, 0, 4000, 6000, 500, 300, 80, 90, W_CELL, null, 8, 50),
            s("Вълна: крака", 240000, 35, 0, 3000, 1000, 1000, 500, 90, 90, null, WAVE_LEGS, 0, 0),
            s("Масаж 3 ↔ 8 Hz", 120000, 3, 8, 10000, 2000, 0, 0, 80, 50, W_CELL, null, 0, 0)},
            "След тренировка: стягане 85 Hz с втори импулс, вълна по краката, масаж"),
        new Proc("back", "Болки в гърба", "Легнал по корем или седнал · при остра болка — не", 20, new Seg[] {
            s("Отпускане", 240000, 4, 0, 10000, 1000, 0, 0, 60, 100, W_BACK, null, 0, 0),
            s("Стабилизация", 660000, 80, 0, 4000, 8000, 500, 300, 100, 100, W_BACK, null, 0, 0),
            s("Обезболяване", 300000, 2, 0, 10000, 1000, 0, 0, 100, 50, W_BACK, null, 0, 0)}, null, null),
        new Proc("postpartum", "След раждане", "Дишане и свиване на тазовото дъно с импулса", 20, new Seg[] {
            s("Загрявка", 180000, 5, 0, 10000, 1000, 0, 0, 60, 100, W_POST, null, 0, 0),
            s("Тазово дъно", 840000, 40, 0, 4000, 8000, 500, 300, 60, 90, W_POST, null, 0, 0),
            s("Край", 180000, 3, 0, 10000, 1000, 0, 0, 90, 50, W_POST, null, 0, 0)}, null, null),
        new Proc("regen", "Регенерация", "Масаж 3 ↔ 8 Hz · 24–48 ч след активна тренировка", 20, new Seg[] {
            s("Релакс 3 ↔ 8 Hz", 1080000, 3, 8, 10000, 2000, 0, 0, 100, 100, W_REGEN, null, 0, 0),
            s("Край", 120000, 3, 8, 10000, 2000, 0, 0, 100, 50, W_REGEN, null, 0, 0)}, null, null),
        new Proc("metabolic", "Пасивен метаболизъм", "6 Hz за разход + два блока по 3 мин 85 Hz", 25, new Seg[] {
            s("6 Hz", 450000, 6, 0, 10000, 2000, 0, 0, 60, 100, W_META, null, 0, 0),
            s("Блок 85 Hz", 180000, 85, 0, 4000, 6000, 500, 300, 100, 100, W_META, null, 0, 0),
            s("6 Hz", 450000, 6, 0, 10000, 2000, 0, 0, 100, 100, W_META, null, 0, 0),
            s("Блок 85 Hz", 180000, 85, 0, 4000, 6000, 500, 300, 100, 100, W_META, null, 0, 0),
            s("6 Hz · край", 240000, 6, 0, 10000, 2000, 0, 0, 100, 50, W_META, null, 0, 0)}, null, null)};

    static Proc byId(String id) {
        for (Proc p : ALL) if (p.id.equals(id)) return p;
        return null;
    }

    private static boolean lowHz(Seg g) {
        return g.wave == null && g.hz < 20 && g.hz2 < 20;
    }

    private static boolean work(Seg g) {
        return g.wave == null && (g.hz >= 20 || g.hz2 >= 20);
    }

    /**
     * The procedure at a length — xbprog::plan: 10 min = its after-training version (or no warm-up, a softer start);
     * 15 = warm-up and end 2 min each; 20–25 standard; 30 = warm-up and end 3 min each, a ≥ 20 Hz block longer than
     * 15 min split in two with a 2-min 3 ↔ 8 Hz massage between. The work phases share the rest in proportion.
     */
    static Plan plan(Proc p, int minutes) {
        Plan out = new Plan();
        out.proc = p;
        out.minutes = minutes > 0 ? minutes : p.minutes;
        out.post = out.minutes == POST_MIN && p.post != null;
        out.how = out.post ? p.postHow : p.how;
        java.util.List<Seg> segs = new java.util.ArrayList<Seg>();
        if (out.post) {
            out.note = "След тренировка — своя програма";
            for (Seg g : p.post) segs.add(g.copy());
        } else {
            int n = p.segs.length, want = out.minutes * 60000;
            boolean hasWarm = n > 2 && lowHz(p.segs[0]) && p.segs[0].e0 < p.segs[0].e1;
            boolean hasEnd = n > 1 && lowHz(p.segs[n - 1]);
            int first = hasWarm ? 1 : 0, last = hasEnd ? n - 2 : n - 1;
            int warm = hasWarm ? p.segs[0].ms : 0, end = hasEnd ? p.segs[n - 1].ms : 0;
            int m = out.minutes;
            if (m <= POST_MIN) {
                warm = 0;
                end = hasEnd ? 120000 : 0;
                out.note = "След тренировка — без загрявка, по-меко начало";
            } else if (m <= 15) {
                warm = warm > 0 ? 120000 : 0;
                end = end > 0 ? 120000 : 0;
                out.note = "Кратка — загрявка и край по 2 мин";
            } else if (m >= 30) {
                warm = warm > 0 ? 180000 : 0;
                end = end > 0 ? 180000 : 0;
                out.note = "Дълга — загрявка и край по 3 мин";
            } else out.note = "Стандартна";
            if (warm > 0) {
                Seg g = p.segs[0].copy();
                g.ms = warm;
                segs.add(g);
            }
            int own = 0;
            for (int i = first; i <= last; i++) own += p.segs[i].ms;
            int mid = want - warm - end, t = 0;
            for (int i = first; i <= last; i++) {
                Seg g = p.segs[i].copy();
                g.ms = i == last ? mid - t : (int) (((long) p.segs[i].ms * mid / own + 7500) / 15000) * 15000;
                t += g.ms;
                if (i == first && m <= POST_MIN && g.e0 > 80) g.e0 = 80;
                if (work(g) && g.ms > WORK_MAX) {
                    Seg a = g.copy(), b2 = g.copy();
                    a.ms = (g.ms - BREAK_MS) / 30000 * 15000;
                    b2.ms = g.ms - BREAK_MS - a.ms;
                    Seg br = new Seg("Масаж 3 ↔ 8 Hz", BREAK_MS, 3, 8, 10000, 2000, 0, 0, 80, 80, g.w, null, 0, 0);
                    segs.add(a);
                    segs.add(br);
                    segs.add(b2);
                    out.note = "Дълга — два блока работа, между тях масаж";
                } else segs.add(g);
            }
            if (end > 0) {
                Seg g = p.segs[n - 1].copy();
                g.ms = end;
                segs.add(g);
            }
        }
        out.segs = segs.toArray(new Seg[0]);
        return out;
    }

    /**
     * What a phase gives channel c on its cycle k (0, 1, …) at ms ts into the phase, in % of the trainer's level: the
     * envelope × the zone weight, or the wave (the step's group 100 %, the previous one 50 %, a rest step 0).
     */
    static int share(Seg g, int k, long ts, int c) {
        int env = g.e0 + (int) ((long) (g.e1 - g.e0) * Math.max(0, Math.min(ts, g.ms)) / Math.max(1, g.ms));
        env = Math.max(0, Math.min(100, env));
        int w;
        if (g.wave != null) {
            int n = g.wave.length, cur = g.wave[k % n], prev = cur == WAVE_PAUSE ? 0 : g.wave[(k - 1 + n) % n];
            w = (cur & (1 << c)) != 0 ? 100 : (prev & (1 << c)) != 0 ? 50 : 0;
        } else w = g.w[c];
        return env * w / 100;
    }

    /** The Hz of cycle k (3 ↔ 8 Hz alternates by cycle). */
    static int hzOf(Seg g, int k) {
        return g.hz2 > 0 && k % 2 == 1 ? g.hz2 : g.hz;
    }

    /** The zones the main phase works most (weight ≥ 70 %, a wave's zones): a tile lights these. */
    static int mainZones(Plan pl) {
        Seg s = pl.main();
        int bits = 0;
        for (int c = 0; c < CH; c++) {
            boolean on;
            if (s.w != null) on = s.w[c] >= 70;
            else {
                on = false;
                for (int st : s.wave) if ((st & (1 << c)) != 0) on = true;
            }
            if (on) bits |= 1 << c;
        }
        return bits;
    }
}
