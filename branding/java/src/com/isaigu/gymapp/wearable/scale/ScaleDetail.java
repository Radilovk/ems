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
            case S_STD: return "Норма";
            case S_HIGH: return "Високо";
            case S_VERY_HIGH: return "Много високо";
            case S_GOOD: return "Отлично";
            default: return "";
        }
    }

    public static String statusEn(int s) {
        switch (s) {
            case S_LOW: return "Low";
            case S_STD: return "Normal";
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
        out.add(new Row("lean", "Безмазнена маса", "Fat-free mass", lean, " кг", 1, S_NONE));
        ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
        int ms = bySector(ScaleInsight.muscleNorm(b.ffmi, male, n5).sector(),
                new int[] {S_LOW, S_LOW, S_STD, S_GOOD, S_GOOD});
        double muscle = m.optDouble("muscle", Double.NaN);
        out.add(new Row("muscle", "Мускулна маса", "Muscle mass", muscle, " кг", 1, ms));
        out.add(new Row("musclePct", "Мускулна маса, %", "Muscle rate", muscle / w * 100, " %", 1, ms));
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
        out.add(new Row("prot", "Белтък, %", "Protein rate", prot, " %", 1, ps));
        double water = m.optDouble("water", Double.NaN);
        int wt = bySector(ScaleInsight.waterNorm(water, male, n5).sector(),
                new int[] {S_LOW, S_LOW, S_STD, S_GOOD, S_GOOD});
        out.add(new Row("waterKg", "Вода", "Body water", w * water / 100, " кг", 1, wt));
        out.add(new Row("water", "Вода, %", "Water rate", water, " %", 1, wt));
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
        out.add(new Row("page", "Възраст на тялото", "Body age", pa, "", 0, Double.isNaN(pa) ? S_NONE
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
        return g == G_FAT ? "Мазнини" : g == G_MUSCLE ? "Мускулатура" : g == G_BUILD ? "Вода, белтък, кости" : "Общи показатели";
    }

    public static String groupEn(int g) {
        return g == G_FAT ? "Fat" : g == G_MUSCLE ? "Muscle" : g == G_BUILD ? "Water, protein, bone" : "General";
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
    static final String[] N_MORE_BG = {"много ниско", "ниско", "норма", "добро", "отлично"};
    static final String[] N_MORE_EN = {"very low", "low", "normal", "good", "excellent"};
    static final String[] N_FAT_BG = {"много ниски", "ниски", "норма", "повишени", "високи"};
    static final String[] N_FAT_EN = {"very low", "low", "normal", "elevated", "high"};
    static final String[] N_AGE_BG = {"много по-ниска", "по-ниска", "отговаря", "по-висока", "много по-висока"};
    static final String[] N_AGE_EN = {"much younger", "younger", "matches", "older", "much older"};

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
        f.whatBg = "Делът на мазнините в теглото. Нормата зависи от пола и възрастта.";
        f.whatEn = "The share of fat in the weight. The norm depends on sex and age.";
        out.add(f);
        Metric sc = new Metric("subc", G_FAT, "Подкожни мазнини", "Subcutaneous fat");
        sc.value = m.optDouble("subc", Double.NaN);
        sc.unit = " %";
        sc.dir = -1;
        double[] se = male ? new double[] {0, 5, 8.6, 16.7, 22, 35} : new double[] {0, 12, 18.5, 26.7, 32, 45};
        put(sc, ScaleInsight.norm(se, ScaleInsight.LESS, pick(bg, N_FAT_BG, N_FAT_EN), sc.value, " %", 1,
                "WLA25 / Fitdays"), M_FATS);
        sc.whatBg = "Мазнините под кожата. Повече подкожни мазнини изискват по-висока сила на тока.";
        sc.whatEn = "Fat under the skin. More of it needs a higher current strength.";
        out.add(sc);
        Metric vf = new Metric("visc", G_FAT, "Висцерални мазнини", "Visceral fat");
        vf.value = m.has("visc") ? m.optInt("visc") : Double.NaN;
        vf.decimals = 0;
        vf.dir = -1;
        put(vf, ScaleInsight.visceralNorm(vf.value, both), M_VISC);
        vf.whatBg = "Мазнините около вътрешните органи. Стойност до 9 е в нормата; от 10 нагоре повишава здравния риск.";
        vf.whatEn = "Fat around the internal organs. Up to 9 is normal; 10 and above raises the health risk.";
        out.add(vf);

        // muscle
        Metric mu = new Metric("muscle", G_MUSCLE, "Мускулна маса", "Muscle mass");
        mu.value = m.optDouble("muscle", Double.NaN);
        mu.unit = u;
        mu.subBg = Math.round(mu.value / w * 1000) / 10.0 + " % от теглото";
        mu.subEn = Math.round(mu.value / w * 1000) / 10.0 + " % of the weight";
        mu.dir = 1;
        put(mu, scaled(ScaleInsight.muscleNorm(Double.NaN, male, more), h2 * 0.933, mu.value, u, 1), M_MORE);
        mu.whatBg = "Мекотъканна маса без мазнини — мускули заедно с водата в тях. Оценява се спрямо ръста.";
        mu.whatEn = "Soft lean mass — muscle together with its water, rated for the height.";
        out.add(mu);
        Metric sk = new Metric("skel", G_MUSCLE, "Скелетни мускули", "Skeletal muscle");
        sk.value = m.optDouble("skel", Double.NaN);
        sk.unit = " %";
        sk.subBg = kg(true, w * sk.value / 100);
        sk.subEn = kg(false, w * sk.value / 100);
        sk.dir = 1;
        double[] ke = male ? new double[] {20, 28, 33.3, 43.5, 48, 60} : new double[] {15, 21, 25.1, 36.1, 40, 50};
        put(sk, ScaleInsight.norm(ke, ScaleInsight.MORE, more, sk.value, " %", 1, "Janssen 2000 (MRI)"), M_MORE);
        sk.whatBg = "Мускулите, които движат тялото и които EMS тренира. Растат при силово натоварване и достатъчно белтък.";
        sk.whatEn = "The muscles that move the body and that EMS trains. They grow with strength work and enough protein.";
        out.add(sk);
        Metric le = new Metric("lean", G_MUSCLE, "Безмазнена маса", "Fat-free mass");
        le.value = m.optDouble("lean", Double.NaN);
        le.unit = u;
        le.subBg = "FFMI " + Math.round(b.ffmi * 10) / 10.0;
        le.subEn = le.subBg;
        le.dir = 1;
        put(le, scaled(ScaleInsight.muscleNorm(Double.NaN, male, more), h2, le.value, u, 1), M_MORE);
        le.whatBg = "Цялото тегло без мазнините: мускули, кости, вода и органи. Индексът спрямо ръста (FFMI) е по-точен от ИТМ.";
        le.whatEn = "All of the weight except fat: muscle, bone, water and organs. The index for the height (FFMI) is more accurate than BMI.";
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
                "норма", "добро", "много високо"}, new String[] {"very low", "low", "normal", "good", "very high"}),
                wa.value, " %", 1, wn.source), M_MORE);
        wa.whatBg = "Общото количество вода в тялото. Добрата хидратация подобрява провеждането на тока.";
        wa.whatEn = "Total body water. Good hydration improves current conduction.";
        out.add(wa);
        Metric pr = new Metric("prot", G_BUILD, "Белтък", "Protein");
        pr.value = m.optDouble("prot", Double.NaN);
        pr.unit = " %";
        pr.subBg = kg(true, w * pr.value / 100);
        pr.subEn = kg(false, w * pr.value / 100);
        pr.dir = 1;
        put(pr, ScaleInsight.norm(new double[] {8, 12, 16, 20, 22, 26}, ScaleInsight.MORE, more, pr.value, " %", 1,
                "WLA25 / Fitdays"), M_MORE);
        pr.whatBg = "Белтъкът в тялото — основен градивен материал на мускулите.";
        pr.whatEn = "Body protein — the main building material of muscle.";
        out.add(pr);
        Metric bo = new Metric("bone", G_BUILD, "Костна маса", "Bone mass");
        bo.value = m.optDouble("bone", Double.NaN);
        bo.unit = u;
        bo.dir = 1;
        double bs = boneStd(male, w);
        put(bo, ScaleInsight.norm(new double[] {bs - 1.4, bs - 0.7, bs - 0.2, bs + 0.2, bs + 0.9, bs + 2.2},
                ScaleInsight.MORE, more, bo.value, u, 1, "Tanita / Fitdays"), M_MORE);
        bo.whatBg = "Минералното съдържание на костите, оценено от безмазнената маса.";
        bo.whatEn = "The bone mineral content, estimated from the fat-free mass.";
        out.add(bo);

        // body and energy
        Control c = control(m, male, age, heightCm);
        Metric we = new Metric("w", G_BODY, "Тегло", "Weight");
        we.value = w;
        we.unit = u;
        we.subBg = Double.isNaN(c.target) ? "" : "здравословно: " + kg(true, c.target);
        we.subEn = Double.isNaN(c.target) ? "" : "healthy " + kg(false, c.target);
        we.dir = 0;
        if (!Double.isNaN(c.target)) {
            double t = c.target;
            put(we, ScaleInsight.norm(new double[] {0.7 * t, 0.82 * t, 0.92 * t, 1.08 * t, 1.2 * t, 1.45 * t},
                    ScaleInsight.BOTH, both, w, u, 1, "XEMS"), M_BOTH);
        }
        we.whatBg = "Здравословното тегло се определя от собствената мускулна маса при здравословен процент мазнини.";
        we.whatEn = "The healthy weight is derived from the client's own muscle mass at a healthy fat percentage.";
        out.add(we);
        Metric bm = new Metric("bmi", G_BODY, "ИТМ", "BMI");
        bm.value = m.optDouble("bmi", Double.NaN);
        bm.dir = 0;
        put(bm, ScaleInsight.bmiNorm(bm.value, both), M_BOTH);
        bm.whatBg = "Съотношение тегло/ръст. Не различава мускули от мазнини и при атлетично телосложение надценява.";
        bm.whatEn = "Weight relative to height. It does not tell muscle from fat and overrates athletic builds.";
        out.add(bm);
        Metric me = new Metric("bmr", G_BODY, "Базов метаболизъм", "Basal metabolic rate");
        me.value = m.optDouble("bmr", Double.NaN);
        me.unit = " kcal";
        me.decimals = 0;
        me.dir = 1;
        double mf = mifflin(male, w, heightCm, age);
        put(me, ScaleInsight.norm(new double[] {0.72 * mf, 0.85 * mf, 0.95 * mf, 1.05 * mf, 1.15 * mf, 1.35 * mf},
                ScaleInsight.MORE, more, me.value, " kcal", 0, "Katch–McArdle · Mifflin"), M_MORE);
        me.whatBg = "Енергията, която тялото изразходва в покой за едно денонощие.";
        me.whatEn = "The energy the body uses at rest in a day.";
        out.add(me);
        Metric pa = new Metric("page", G_BODY, "Възраст на тялото", "Body age");
        pa.value = b.physicalAge;
        pa.decimals = 0;
        pa.subBg = "реална " + age;
        pa.subEn = "actual " + age;
        pa.dir = -1;
        ScaleInsight.Norm an = ScaleInsight.ageNorm(pa.value, age, pick(bg, N_AGE_BG, N_AGE_EN));
        put(pa, an, M_AGE);
        pa.whatBg = "Възрастта, на която съответстват мускулатурата и мазнините, според референтни DXA данни.";
        pa.whatEn = "The age the muscle and fat correspond to, from DXA reference data.";
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
                pick(bg, new String[] {"много ниско", "ниско", "норма", "високо", "много високо"},
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
