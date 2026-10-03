package com.isaigu.gymapp.wearable.scale;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * The full report of one weigh-in, as the fitness apps list it — every value with its status word — plus the five
 * zones against their standard and the weight control, without their biases: the target weight is the one this
 * client's own lean mass needs at a healthy fat %, not BMI 22 (a muscular man is not "4 kg over"). Pure Java;
 * both languages in each row.
 */
public final class ScaleDetail {
    public static final int S_NONE = -1, S_LOW = 0, S_STD = 1, S_HIGH = 2, S_VERY_HIGH = 3, S_GOOD = 4;

    private ScaleDetail() {}

    public static String statusBg(int s) {
        switch (s) {
            case S_LOW: return "Ниско";
            case S_STD: return "Стандартно";
            case S_HIGH: return "Високо";
            case S_VERY_HIGH: return "Много високо";
            case S_GOOD: return "Отлично";
            default: return "";
        }
    }

    public static String statusEn(int s) {
        switch (s) {
            case S_LOW: return "Low";
            case S_STD: return "Standard";
            case S_HIGH: return "High";
            case S_VERY_HIGH: return "Very high";
            case S_GOOD: return "Excellent";
            default: return "";
        }
    }

    /** The status colour (good green, standard teal, low / high amber, very high red). */
    public static int statusColor(int s) {
        switch (s) {
            case S_LOW: return ScaleInsight.AMBER;
            case S_STD: return ScaleInsight.TEAL;
            case S_HIGH: return ScaleInsight.ORANGE;
            case S_VERY_HIGH: return ScaleInsight.RED;
            case S_GOOD: return ScaleInsight.GREEN;
            default: return 0xFF94A3B8;
        }
    }

    /** One line of the report. */
    public static final class Row {
        public final String key, bg, en, unit;
        public final double value;
        public final int decimals;
        public final int status;
        /** A text value (body type) instead of the number. */
        public String textBg, textEn;

        Row(String key, String bg, String en, double value, String unit, int decimals, int status) {
            this.key = key;
            this.bg = bg;
            this.en = en;
            this.value = value;
            this.unit = unit;
            this.decimals = decimals;
            this.status = status;
        }

        public String value() {
            if (textBg != null) {
                return textBg;
            }
            return Double.isNaN(value) ? "—" : decimals == 0 ? String.valueOf(Math.round(value))
                    : String.valueOf(Math.round(value * 10) / 10.0);
        }
    }

    static double bmiStd(boolean male) {
        return male ? 22 : 21;
    }

    /** The middle of the healthy fat range for the sex and age (Gallagher 2000, as ScaleInsight.fatNorm). */
    public static double fatTarget(boolean male, int age) {
        ScaleInsight.Norm n = ScaleInsight.fatNorm(Double.NaN, male, age, new String[] {"", "", "", "", ""});
        return (n.edges[2] + n.edges[3]) / 2;
    }

    /** The lowest normal lean mass for the height (FFMI men 17, women 14). */
    static double leanFloor(boolean male, int heightCm) {
        double h2 = Math.pow(heightCm / 100.0, 2);
        return (male ? 17 : 14) * h2;
    }

    /** Weight control: where this body is healthy and what it takes (fat − / muscle +). */
    public static final class Control {
        public double target = Double.NaN, total = Double.NaN, fat = Double.NaN, muscle = Double.NaN;
    }

    public static Control control(JSONObject m, boolean male, int age, int heightCm) {
        Control c = new Control();
        if (m == null || !m.has("lean") || heightCm < 100) {
            return c;
        }
        double w = m.optDouble("w"), lean = m.optDouble("lean"), fat = m.optDouble("fatKg", w - lean);
        double needLean = Math.max(lean, leanFloor(male, heightCm));
        double f = fatTarget(male, age) / 100;
        c.target = needLean / (1 - f);
        c.muscle = needLean - lean;
        c.fat = c.target * f - fat;
        c.total = c.target - w;
        return c;
    }

    static int bySector(int sector, int[] map) {
        return sector < 0 ? S_NONE : map[sector];
    }

    /** Bone mineral standard by weight (the scale vendors' table). */
    static double boneStd(boolean male, double w) {
        return male ? (w < 60 ? 2.5 : w < 75 ? 2.9 : 3.2) : (w < 45 ? 1.8 : w < 60 ? 2.2 : 2.5);
    }

    /** Mifflin–St Jeor resting energy for the weight, height and age. */
    static double mifflin(boolean male, double w, int heightCm, int age) {
        return 10 * w + 6.25 * heightCm - 5 * age + (male ? 5 : -161);
    }

    public static String typeBg(ScaleInsight.Body b) {
        switch (b.type) {
            case ScaleInsight.T_ATHLETIC: return "Атлетично";
            case ScaleInsight.T_BALANCED: return "Балансирано";
            case ScaleInsight.T_STRONG_FAT: return "Силно, с излишни мазнини";
            case ScaleInsight.T_FAT: return b.fatCls >= 3 ? "Затлъстяване" : "Излишни мазнини";
            case ScaleInsight.T_FAT_LOW_MUSCLE: return "Мазнини, малко мускули";
            case ScaleInsight.T_LEAN_LOW_MUSCLE: return "Слабо, малко мускули";
            case ScaleInsight.T_VERY_LEAN: return "Много ниски мазнини";
            default: return "—";
        }
    }

    public static String typeEn(ScaleInsight.Body b) {
        switch (b.type) {
            case ScaleInsight.T_ATHLETIC: return "Athletic";
            case ScaleInsight.T_BALANCED: return "Balanced";
            case ScaleInsight.T_STRONG_FAT: return "Strong, excess fat";
            case ScaleInsight.T_FAT: return b.fatCls >= 3 ? "Obese" : "Excess fat";
            case ScaleInsight.T_FAT_LOW_MUSCLE: return "Fat, little muscle";
            case ScaleInsight.T_LEAN_LOW_MUSCLE: return "Slim, little muscle";
            case ScaleInsight.T_VERY_LEAN: return "Very low fat";
            default: return "—";
        }
    }

    /** Every value of the weigh-in with its status, in the order the apps show them. */
    public static List<Row> rows(JSONObject m, boolean male, int age, int heightCm) {
        List<Row> out = new ArrayList<Row>();
        if (m == null) {
            return out;
        }
        String[] n5 = {"", "", "", "", ""};
        double w = m.optDouble("w", Double.NaN);
        Control c = control(m, male, age, heightCm);
        int ws = Double.isNaN(c.target) ? S_NONE : w < c.target * 0.9 ? S_LOW : w > c.target * 1.1 ? S_HIGH : S_STD;
        out.add(new Row("w", "Тегло", "Weight", w, " кг", 1, ws));
        double bmi = m.optDouble("bmi", Double.NaN);
        out.add(new Row("bmi", "ИТМ", "BMI", bmi, "", 1, Double.isNaN(bmi) ? S_NONE
                : bmi < 18.5 ? S_LOW : bmi < 25 ? S_STD : bmi < 30 ? S_HIGH : S_VERY_HIGH));
        if (!m.has("fat")) {
            return out;
        }
        double fat = m.optDouble("fat"), lean = m.optDouble("lean", Double.NaN);
        int fs = bySector(ScaleInsight.fatNorm(fat, male, age, n5).sector(),
                new int[] {S_LOW, S_GOOD, S_STD, S_HIGH, S_VERY_HIGH});
        out.add(new Row("fat", "Телесни мазнини", "Body fat", fat, " %", 1, fs));
        out.add(new Row("fatKg", "Мазнини", "Fat mass", m.optDouble("fatKg", Double.NaN), " кг", 1, fs));
        out.add(new Row("lean", "Без мазнини", "Fat-free mass", lean, " кг", 1, S_NONE));
        ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
        int ms = bySector(ScaleInsight.muscleNorm(b.ffmi, male, n5).sector(),
                new int[] {S_LOW, S_LOW, S_STD, S_GOOD, S_GOOD});
        double muscle = m.optDouble("muscle", Double.NaN);
        out.add(new Row("muscle", "Мускулна маса", "Muscle mass", muscle, " кг", 1, ms));
        out.add(new Row("musclePct", "Мускули от теглото", "Muscle rate", muscle / w * 100, " %", 1, ms));
        double skel = m.optDouble("skel", Double.NaN);
        double lo = male ? 33.3 : 25.1, hi = male ? 43.5 : 36.1;
        out.add(new Row("skel", "Скелетни мускули", "Skeletal muscle", skel, " %", 1, Double.isNaN(skel) ? S_NONE
                : skel < lo ? S_LOW : skel <= hi ? S_STD : S_GOOD));
        double bone = m.optDouble("bone", Double.NaN), bs = boneStd(male, w);
        out.add(new Row("bone", "Костна маса", "Bone mass", bone, " кг", 1, Double.isNaN(bone) ? S_NONE
                : bone < bs - 0.2 ? S_LOW : bone > bs + 0.2 ? S_GOOD : S_STD));
        double prot = m.optDouble("prot", Double.NaN);
        int ps = Double.isNaN(prot) ? S_NONE : prot < 16 ? S_LOW : prot <= 20 ? S_STD : S_GOOD;
        out.add(new Row("protKg", "Белтък", "Protein", w * prot / 100, " кг", 1, ps));
        out.add(new Row("prot", "Белтък от теглото", "Protein rate", prot, " %", 1, ps));
        double water = m.optDouble("water", Double.NaN);
        int wt = bySector(ScaleInsight.waterNorm(water, male, n5).sector(),
                new int[] {S_LOW, S_LOW, S_STD, S_GOOD, S_GOOD});
        out.add(new Row("waterKg", "Вода", "Body water", w * water / 100, " кг", 1, wt));
        out.add(new Row("water", "Вода от теглото", "Water rate", water, " %", 1, wt));
        double subc = m.optDouble("subc", Double.NaN);
        double slo = male ? 8.6 : 18.5, shi = male ? 16.7 : 26.7;
        out.add(new Row("subc", "Подкожни мазнини", "Subcutaneous fat", subc, " %", 1, Double.isNaN(subc) ? S_NONE
                : subc < slo ? S_LOW : subc <= shi ? S_STD : S_HIGH));
        int visc = m.optInt("visc", -1);
        out.add(new Row("visc", "Висцерални мазнини", "Visceral fat", visc < 0 ? Double.NaN : visc, "", 0,
                visc < 0 ? S_NONE : visc < 10 ? S_STD : visc < 15 ? S_HIGH : S_VERY_HIGH));
        double bmr = m.optDouble("bmr", Double.NaN);
        out.add(new Row("bmr", "Базов метаболизъм", "BMR", bmr, " kcal", 0, Double.isNaN(bmr) ? S_NONE
                : bmr >= mifflin(male, w, heightCm, age) ? S_GOOD : S_STD));
        double pa = b.physicalAge;
        out.add(new Row("page", "Физическа възраст", "Physical age", pa, "", 0, Double.isNaN(pa) ? S_NONE
                : pa <= age - 2 ? S_GOOD : pa <= age + 2 ? S_STD : S_HIGH));
        out.add(new Row("target", "Здравословно тегло", "Healthy weight", c.target, " кг", 1, S_NONE));
        Row t = new Row("type", "Тип тяло", "Body type", Double.NaN, "", 0, S_NONE);
        t.textBg = typeBg(b);
        t.textEn = typeEn(b);
        out.add(t);
        return out;
    }

    /** One zone: fat and muscle in kg and % of the vendor's standard, each with its status. */
    public static final class Zone {
        public double fatKg = Double.NaN, fatPct = Double.NaN, musKg = Double.NaN, musPct = Double.NaN;
        public int fatStatus = S_NONE, musStatus = S_NONE;
        /** The muscle's normal band (% of standard): arms 80–115, trunk and legs 90–110. */
        public double musLo, musHi;
    }

    /** Display order of the zones: left arm, right arm, trunk, left leg, right leg. */
    public static final int[] ORDER = {ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM, ScaleProtocol.TRUNK,
            ScaleProtocol.LEFT_LEG, ScaleProtocol.RIGHT_LEG};

    /**
     * By segment index: WLA25's standards — fat per zone from the standard fat mass (15 % / 23 % of the BMI 22 / 21
     * weight; 80–160 % is standard), muscle as in ScaleInsight.ofNormal.
     */
    public static Zone[] zones(JSONObject m, boolean male, int heightCm) {
        Zone[] z = new Zone[5];
        for (int i = 0; i < 5; i++) {
            z[i] = new Zone();
            boolean arm = i == ScaleProtocol.LEFT_ARM || i == ScaleProtocol.RIGHT_ARM;
            z[i].musLo = arm ? 80 : 90;
            z[i].musHi = arm ? 115 : 110;
        }
        JSONArray f = m != null ? m.optJSONArray("segFat") : null;
        JSONArray k = m != null ? m.optJSONArray("segMus") : null;
        if (f == null || k == null || heightCm < 100) {
            return z;
        }
        double h = heightCm;
        double bfm = ScaleBody.ceil1((male ? 0.15f : 0.23f) * ScaleBody.stdWeight(heightCm, male));
        double armF = bfm * 0.101 + h * -0.004 + 0.331;
        double legF = bfm * 0.215 + h * -0.005 + 0.391;
        double trunkF = h * 0.006 + bfm * 0.389 - 0.683;
        double[][] pct = ScaleInsight.ofNormal(m, male, heightCm);
        for (int i = 0; i < 5; i++) {
            boolean arm = i == ScaleProtocol.LEFT_ARM || i == ScaleProtocol.RIGHT_ARM;
            double std = i == ScaleProtocol.TRUNK ? trunkF : arm ? armF : legF;
            if (!f.isNull(i)) {
                z[i].fatKg = f.optDouble(i);
                if (std > 0) {
                    z[i].fatPct = z[i].fatKg / std * 100;
                    z[i].fatStatus = z[i].fatPct < 80 ? S_LOW : z[i].fatPct <= 160 ? S_STD : S_HIGH;
                }
            }
            if (!k.isNull(i)) {
                z[i].musKg = k.optDouble(i);
                z[i].musPct = pct[0][i];
                if (!Double.isNaN(z[i].musPct)) {
                    z[i].musStatus = z[i].musPct < z[i].musLo ? S_LOW : z[i].musPct <= z[i].musHi ? S_STD : S_GOOD;
                }
            }
        }
        return z;
    }

    public static String zoneBg(int seg) {
        switch (seg) {
            case ScaleProtocol.TRUNK: return "Тяло";
            case ScaleProtocol.LEFT_ARM: return "Лява ръка";
            case ScaleProtocol.RIGHT_ARM: return "Дясна ръка";
            case ScaleProtocol.LEFT_LEG: return "Ляв крак";
            default: return "Десен крак";
        }
    }

    public static String zoneEn(int seg) {
        switch (seg) {
            case ScaleProtocol.TRUNK: return "Trunk";
            case ScaleProtocol.LEFT_ARM: return "Left arm";
            case ScaleProtocol.RIGHT_ARM: return "Right arm";
            case ScaleProtocol.LEFT_LEG: return "Left leg";
            default: return "Right leg";
        }
    }

    // ================================================================ the interactive analysis: metrics as tiles

    public static final int G_FAT = 0, G_MUSCLE = 1, G_BUILD = 2, G_BODY = 3;

    public static String groupBg(int g) {
        return g == G_FAT ? "Мазнини" : g == G_MUSCLE ? "Мускули" : g == G_BUILD ? "Вода и опора" : "Тяло и енергия";
    }

    public static String groupEn(int g) {
        return g == G_FAT ? "Fat" : g == G_MUSCLE ? "Muscle" : g == G_BUILD ? "Water and frame" : "Body and energy";
    }

    /** One tile of the analysis: its value on a 5-sector norm, the status word that matches the sector, a line. */
    public static final class Metric {
        public final String key, bg, en;
        public final int group;
        public double value = Double.NaN;
        public String unit = "";
        public int decimals = 1;
        /** The same value in other units ("49.6 кг" under "60.9 %"). */
        public String subBg = "", subEn = "";
        public ScaleInsight.Norm norm;
        public int status = S_NONE;
        /** Which way is good for the change: 1 more, −1 less, 0 neither (weight). */
        public int dir;
        public String whatBg = "", whatEn = "";

        Metric(String key, int group, String bg, String en) {
            this.key = key;
            this.group = group;
            this.bg = bg;
            this.en = en;
        }

        public String text() {
            return Double.isNaN(value) ? "—" : decimals == 0 ? String.valueOf(Math.round(value))
                    : String.valueOf(Math.round(value * 10) / 10.0);
        }
    }

    static final String[] N_BOTH_BG = {"много ниско", "ниско", "норма", "високо", "много високо"};
    static final String[] N_BOTH_EN = {"very low", "low", "normal", "high", "very high"};
    static final String[] N_MORE_BG = {"много малко", "малко", "норма", "добре", "отлично"};
    static final String[] N_MORE_EN = {"very low", "low", "normal", "good", "excellent"};
    static final String[] N_FAT_BG = {"много ниски", "стегнато", "норма", "наднормено", "затлъстяване"};
    static final String[] N_FAT_EN = {"very low", "lean", "normal", "overweight", "obese"};
    static final String[] N_AGE_BG = {"много млад", "по-млад", "като годините", "по-стар", "много по-стар"};
    static final String[] N_AGE_EN = {"much younger", "younger", "as the years", "older", "much older"};

    static final int[] M_BOTH = {S_LOW, S_LOW, S_STD, S_HIGH, S_VERY_HIGH};
    static final int[] M_MORE = {S_LOW, S_LOW, S_STD, S_GOOD, S_GOOD};
    static final int[] M_FATS = {S_LOW, S_GOOD, S_STD, S_HIGH, S_VERY_HIGH};
    static final int[] M_VISC = {S_STD, S_STD, S_STD, S_HIGH, S_VERY_HIGH};
    static final int[] M_AGE = {S_GOOD, S_GOOD, S_STD, S_HIGH, S_VERY_HIGH};

    static String[] pick(boolean bg, String[] b, String[] e) {
        return bg ? b : e;
    }

    static ScaleInsight.Norm scaled(ScaleInsight.Norm n, double k, double v, String unit, int dec) {
        double[] e = new double[6];
        for (int i = 0; i < 6; i++) {
            e[i] = n.edges[i] * k;
        }
        return ScaleInsight.norm(e, n.colors, n.names, v, unit, dec, n.source);
    }

    static void put(Metric m, ScaleInsight.Norm n, int[] map) {
        m.norm = n;
        int s = n.sector();
        m.status = s < 0 ? S_NONE : map[s];
    }

    static String kg(boolean bg, double v) {
        return Double.isNaN(v) ? "" : Math.round(v * 10) / 10.0 + (bg ? " кг" : " kg");
    }

    /**
     * The analysis tiles of one weigh-in, by group; the status word always matches the sector the bar lights.
     * Language: bg = Bulgarian names on the bars.
     */
    public static List<Metric> metrics(JSONObject m, boolean male, int age, int heightCm, boolean bg) {
        List<Metric> out = new ArrayList<Metric>();
        if (m == null || !m.has("fat") || heightCm < 100) {
            return out;
        }
        double w = m.optDouble("w"), h2 = Math.pow(heightCm / 100.0, 2);
        ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
        String[] both = pick(bg, N_BOTH_BG, N_BOTH_EN), more = pick(bg, N_MORE_BG, N_MORE_EN);
        String u = bg ? " кг" : " kg";

        // fat
        Metric f = new Metric("fat", G_FAT, "Телесни мазнини", "Body fat");
        f.value = m.optDouble("fat");
        f.unit = " %";
        f.subBg = kg(true, m.optDouble("fatKg"));
        f.subEn = kg(false, m.optDouble("fatKg"));
        f.dir = -1;
        put(f, ScaleInsight.fatNorm(f.value, male, age, pick(bg, N_FAT_BG, N_FAT_EN)), M_FATS);
        f.whatBg = "Частта от теглото, която е мазнина. Нормата е по пол и възраст; под нея — стегнато тяло. "
                + "Пада с дефицит на калории и силова работа.";
        f.whatEn = "The share of the weight that is fat. The norm is by sex and age; below it — lean. Falls with a "
                + "calorie deficit and strength work.";
        out.add(f);
        Metric sc = new Metric("subc", G_FAT, "Подкожни мазнини", "Subcutaneous fat");
        sc.value = m.optDouble("subc", Double.NaN);
        sc.unit = " %";
        sc.dir = -1;
        double[] se = male ? new double[] {0, 5, 8.6, 16.7, 22, 35} : new double[] {0, 12, 18.5, 26.7, 32, 45};
        put(sc, ScaleInsight.norm(se, ScaleInsight.LESS, pick(bg, N_FAT_BG, N_FAT_EN), sc.value, " %", 1,
                "WLA25 / Fitdays"), M_FATS);
        sc.whatBg = "Мазнините под кожата — тези, които се хващат с пръсти. Те изолират и тока: повече подкожни "
                + "мазнини — малко повече сила за същото усещане.";
        sc.whatEn = "Fat under the skin — the kind you can pinch. It also insulates the current: more of it — a little "
                + "more strength for the same feel.";
        out.add(sc);
        Metric vf = new Metric("visc", G_FAT, "Висцерални мазнини", "Visceral fat");
        vf.value = m.has("visc") ? m.optInt("visc") : Double.NaN;
        vf.decimals = 0;
        vf.dir = -1;
        put(vf, ScaleInsight.visceralNorm(vf.value, both), M_VISC);
        vf.whatBg = "Мазнините около органите в корема — най-важните за здравето. До 9 е нормата; 10 и нагоре "
                + "е рисково. Падат първи при движение и по-малко захар.";
        vf.whatEn = "Fat around the organs in the belly — the one that matters most for health. Up to 9 is normal; "
                + "10 and up is a risk. It goes first with activity and less sugar.";
        out.add(vf);

        // muscle
        Metric mu = new Metric("muscle", G_MUSCLE, "Мускулна маса", "Muscle mass");
        mu.value = m.optDouble("muscle", Double.NaN);
        mu.unit = u;
        mu.subBg = Math.round(mu.value / w * 1000) / 10.0 + " % от теглото";
        mu.subEn = Math.round(mu.value / w * 1000) / 10.0 + " % of the weight";
        mu.dir = 1;
        put(mu, scaled(ScaleInsight.muscleNorm(Double.NaN, male, more), h2 * 0.933, mu.value, u, 1), M_MORE);
        mu.whatBg = "Всичко меко без мазнини: мускули, органи, вода в тях. Нормата е за ръста — повече е по-добре, "
                + "тежко от мускули тяло не е наднормено.";
        mu.whatEn = "Everything soft that is not fat: muscle, organs, their water. The norm is for the height — more "
                + "is better; a body heavy with muscle is not overweight.";
        out.add(mu);
        Metric sk = new Metric("skel", G_MUSCLE, "Скелетни мускули", "Skeletal muscle");
        sk.value = m.optDouble("skel", Double.NaN);
        sk.unit = " %";
        sk.subBg = kg(true, w * sk.value / 100);
        sk.subEn = kg(false, w * sk.value / 100);
        sk.dir = 1;
        double[] ke = male ? new double[] {20, 28, 33.3, 43.5, 48, 60} : new double[] {15, 21, 25.1, 36.1, 40, 50};
        put(sk, ScaleInsight.norm(ke, ScaleInsight.MORE, more, sk.value, " %", 1, "Janssen 2000 (MRI)"), M_MORE);
        sk.whatBg = "Мускулите, които движат тялото — тези, които EMS тренира. Растат със силова работа и белтък "
                + "(1.6 г на кг тегло).";
        sk.whatEn = "The muscles that move the body — the ones EMS trains. They grow with strength work and protein "
                + "(1.6 g per kg of weight).";
        out.add(sk);
        Metric le = new Metric("lean", G_MUSCLE, "Без мазнини", "Fat-free mass");
        le.value = m.optDouble("lean", Double.NaN);
        le.unit = u;
        le.subBg = "FFMI " + Math.round(b.ffmi * 10) / 10.0;
        le.subEn = le.subBg;
        le.dir = 1;
        put(le, scaled(ScaleInsight.muscleNorm(Double.NaN, male, more), h2, le.value, u, 1), M_MORE);
        le.whatBg = "Теглото без мазнините: мускули, кости, вода, органи. Спрямо ръста казва колко „силно“ е тялото "
                + "— по-точно от ИТМ.";
        le.whatEn = "The weight without the fat: muscle, bone, water, organs. Against the height it tells how strong "
                + "the body is — better than BMI.";
        out.add(le);

        // water and frame
        Metric wa = new Metric("water", G_BUILD, "Вода", "Body water");
        wa.value = m.optDouble("water", Double.NaN);
        wa.unit = " %";
        wa.subBg = kg(true, w * wa.value / 100);
        wa.subEn = kg(false, w * wa.value / 100);
        wa.dir = 1;
        ScaleInsight.Norm wn = ScaleInsight.waterNorm(wa.value, male, both);
        put(wa, ScaleInsight.norm(wn.edges, ScaleInsight.MORE, pick(bg, new String[] {"много ниско", "ниско",
                "норма", "добре", "много"}, new String[] {"very low", "low", "normal", "good", "very high"}),
                wa.value, " %", 1, wn.source), M_MORE);
        wa.whatBg = "Водата в тялото, най-вече в мускулите. Ток минава по вода: ниско — нека пие 2–3 чаши преди "
                + "тренировката.";
        wa.whatEn = "The water in the body, mostly in the muscles. Current travels through water: low — have 2–3 "
                + "glasses before the training.";
        out.add(wa);
        Metric pr = new Metric("prot", G_BUILD, "Белтък", "Protein");
        pr.value = m.optDouble("prot", Double.NaN);
        pr.unit = " %";
        pr.subBg = kg(true, w * pr.value / 100);
        pr.subEn = kg(false, w * pr.value / 100);
        pr.dir = 1;
        put(pr, ScaleInsight.norm(new double[] {8, 12, 16, 20, 22, 26}, ScaleInsight.MORE, more, pr.value, " %", 1,
                "WLA25 / Fitdays"), M_MORE);
        pr.whatBg = "Строителният материал на мускулите. Ниско — повече месо, риба, яйца, извара след тренировка.";
        pr.whatEn = "The building material of muscle. Low — more meat, fish, eggs, cottage cheese after the training.";
        out.add(pr);
        Metric bo = new Metric("bone", G_BUILD, "Костна маса", "Bone mass");
        bo.value = m.optDouble("bone", Double.NaN);
        bo.unit = u;
        bo.dir = 1;
        double bs = boneStd(male, w);
        put(bo, ScaleInsight.norm(new double[] {bs - 1.4, bs - 0.7, bs - 0.2, bs + 0.2, bs + 0.9, bs + 2.2},
                ScaleInsight.MORE, more, bo.value, u, 1, "Tanita / Fitdays"), M_MORE);
        bo.whatBg = "Минералите в костите, оценени от безмазнената маса. Пазят се с натоварване — EMS и ходене — "
                + "и с калций и витамин D.";
        bo.whatEn = "The minerals in the bones, estimated from the fat-free mass. Kept with load — EMS and walking — "
                + "and calcium and vitamin D.";
        out.add(bo);

        // body and energy
        Control c = control(m, male, age, heightCm);
        Metric we = new Metric("w", G_BODY, "Тегло", "Weight");
        we.value = w;
        we.unit = u;
        we.subBg = Double.isNaN(c.target) ? "" : "здравословно " + kg(true, c.target);
        we.subEn = Double.isNaN(c.target) ? "" : "healthy " + kg(false, c.target);
        we.dir = 0;
        if (!Double.isNaN(c.target)) {
            double t = c.target;
            put(we, ScaleInsight.norm(new double[] {0.7 * t, 0.82 * t, 0.92 * t, 1.08 * t, 1.2 * t, 1.45 * t},
                    ScaleInsight.BOTH, both, w, u, 1, "XEMS"), M_BOTH);
        }
        we.whatBg = "Здравословното тегло е за собствените мускули на клиента при здравословни мазнини — не по ИТМ. "
                + "Докосни „Път до здравословното“ вляво.";
        we.whatEn = "The healthy weight is for the client's own muscle at a healthy fat % — not by BMI. Tap the path "
                + "to the healthy weight on the left.";
        out.add(we);
        Metric bm = new Metric("bmi", G_BODY, "ИТМ", "BMI");
        bm.value = m.optDouble("bmi", Double.NaN);
        bm.dir = 0;
        put(bm, ScaleInsight.bmiNorm(bm.value, both), M_BOTH);
        bm.whatBg = "Само теглото спрямо ръста — не знае какво е теглото. При много мускули лъже: виж мазнините.";
        bm.whatEn = "Only the weight against the height — it does not know what the weight is. With much muscle it "
                + "misleads: look at the fat.";
        out.add(bm);
        Metric me = new Metric("bmr", G_BODY, "Метаболизъм", "Resting energy");
        me.value = m.optDouble("bmr", Double.NaN);
        me.unit = " kcal";
        me.decimals = 0;
        me.dir = 1;
        double mf = mifflin(male, w, heightCm, age);
        put(me, ScaleInsight.norm(new double[] {0.72 * mf, 0.85 * mf, 0.95 * mf, 1.05 * mf, 1.15 * mf, 1.35 * mf},
                ScaleInsight.MORE, more, me.value, " kcal", 0, "Katch–McArdle · Mifflin"), M_MORE);
        me.whatBg = "Колко изгаря тялото в покой за ден — от безмазнената маса. Над обичайното за теглото и годините "
                + "е добре: повече мускули — повече изгаряне.";
        me.whatEn = "What the body burns at rest in a day — from the fat-free mass. Above the usual for the weight and "
                + "age is good: more muscle — more burnt.";
        out.add(me);
        Metric pa = new Metric("page", G_BODY, "Физическа възраст", "Physical age");
        pa.value = b.physicalAge;
        pa.decimals = 0;
        pa.subBg = "паспорт " + age;
        pa.subEn = "passport " + age;
        pa.dir = -1;
        ScaleInsight.Norm an = ScaleInsight.ageNorm(pa.value, age, pick(bg, N_AGE_BG, N_AGE_EN));
        put(pa, an, M_AGE);
        pa.whatBg = "Годините, на които отговарят мускулите на ръцете и краката и мазнините (DXA, 3 327 души). "
                + "Мускулите я свалят най-бързо.";
        pa.whatEn = "The age the arm and leg muscle and the fat match (DXA, 3,327 adults). Muscle brings it down "
                + "fastest.";
        out.add(pa);
        return out;
    }

    /** One metric of a weigh-in by key (for its line through the history); NaN when not there. */
    public static double value(JSONObject m, String key, boolean male, int age, int heightCm) {
        for (Metric x : metrics(m, male, age, heightCm, true)) {
            if (x.key.equals(key)) {
                return x.value;
            }
        }
        return Double.NaN;
    }

    /** The zone's fat (% of standard) and muscle (% of standard) on their bars. */
    public static ScaleInsight.Norm zoneFatNorm(double pct, boolean bg) {
        return ScaleInsight.norm(new double[] {20, 50, 80, 160, 220, 300}, ScaleInsight.LESS,
                pick(bg, new String[] {"много малко", "малко", "стандарт", "високо", "много високо"},
                        new String[] {"very low", "low", "standard", "high", "very high"}), pct, " %", 0,
                "WLA25 / Fitdays");
    }

    public static ScaleInsight.Norm zoneMuscleNorm(double pct, boolean arm, boolean bg) {
        double[] e = arm ? new double[] {50, 70, 80, 115, 130, 160} : new double[] {60, 80, 90, 110, 120, 150};
        return ScaleInsight.norm(e, ScaleInsight.MORE, pick(bg, N_MORE_BG, N_MORE_EN), pct, " %", 0,
                "WLA25 / Fitdays");
    }

    /** The metric that needs attention first: very high / high / low before the rest; else body fat. */
    public static int focusOf(List<Metric> ms) {
        int best = 0, rank = -1;
        for (int i = 0; i < ms.size(); i++) {
            int s = ms.get(i).status;
            int r = s == S_VERY_HIGH ? 3 : s == S_HIGH ? 2 : s == S_LOW ? 1 : 0;
            if (ms.get(i).key.equals("bmi")) {
                r = 0;   // BMI alone does not lead
            }
            if (r > rank) {
                rank = r;
                best = i;
            }
        }
        return best;
    }
}
