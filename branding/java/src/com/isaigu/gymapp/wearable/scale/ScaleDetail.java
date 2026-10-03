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
}
