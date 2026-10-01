package com.isaigu.gymapp.ai;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * The client's own profile beyond sex / age / weight / fitness / goal: focus zones and state
 * (the client form's "Зони за акцент" and "Състояние", keys as XemsLocalUserForm.FOCUS / COND).
 * The state never blocks a session (contraindications do that, AiScreening) — it shapes it:
 * which zones carry the load, how high the strength may go, how long the pause and how soft the
 * onset. The automatic mode applies all of it per person; the AI mode applies the ceiling and the
 * cycles to its plan and the zones once to each client's channels at the start.
 *
 * <p>Same rules as the next-training recommendation (wearable/NextPlan.condition).
 */
public final class AiPersonal {
    // Channels: chest 0, abs 1, front thigh 2, calves 3, arms 4, traps 5, back 6, lower back 7, glutes 8, back thigh 9.
    static final int CH = 10;
    private static final int[] BIG = {2, 9, 8, 6};
    private static final int[] LEGS_GLUTES = {2, 9, 8};

    /** What the profile does to a session. */
    public static final class Effect {
        /** Percentage points per channel (added to the program / trainer zones). */
        public final int[] zoneDelta = new int[CH];
        /** Per channel maximum (100 = none). */
        public final int[] zoneMax = new int[CH];
        /** × the strength ceiling (1 = unchanged). */
        public double phi = 1.0;
        /** + seconds of pause in tetanic cycles. */
        public int offS;
        /** + ms of ramp-up (softer onset). */
        public int rampUpMs;
        public final List<String> notesBg = new ArrayList<String>();
        public final List<String> notesEn = new ArrayList<String>();

        Effect() {
            for (int i = 0; i < CH; i++) {
                zoneMax[i] = 100;
            }
        }

        public boolean isEmpty() {
            return notesBg.isEmpty();
        }

        void note(String bg, String en) {
            notesBg.add(bg);
            notesEn.add(en);
        }

        void add(int[] chs, int pct) {
            for (int ch : chs) {
                zoneDelta[ch] += pct;
            }
        }

        /** Trainer / program zones → the person's zones (a zone that is off stays off). */
        public int[] apply(int[] zones) {
            int[] z = zones.clone();
            for (int i = 0; i < Math.min(CH, z.length); i++) {
                if (z[i] <= 0) {
                    continue;
                }
                int v = z[i] + zoneDelta[i];
                z[i] = Math.max(zoneDelta[i] < 0 ? Math.min(z[i], 20) : 1, Math.min(Math.min(100, zoneMax[i]), v));
            }
            return z;
        }
    }

    private AiPersonal() {}

    /** How the client is today: one tap each on the client step of the AI and the automatic mode. */
    public static final String[] TODAY = {"t_sleep", "t_food", "t_active", "t_stress", "t_sore", "t_period"};

    public static String todayName(String k) {
        if ("t_sleep".equals(k)) return AiText.t("Недоспал(а)", "Short on sleep");
        if ("t_food".equals(k)) return AiText.t("Хапнал(а) малко", "Ate little");
        if ("t_active".equals(k)) return AiText.t("Натоварен ден", "Heavy day");
        if ("t_stress".equals(k)) return AiText.t("Стрес / напрежение", "Stress / tension");
        if ("t_sore".equals(k)) return AiText.t("Мускулна треска", "Sore muscles");
        if ("t_period".equals(k)) return AiText.t("Месечен цикъл", "Period");
        return k;
    }

    /** The period is offered to a woman of an age with a cycle who has not marked menopause. */
    public static boolean periodApplies(AiModel.Sex sex, int age, Set<String> cond) {
        return sex == AiModel.Sex.FEMALE && age >= 12 && age <= 55 && (cond == null || !cond.contains("menopause"));
    }

    public static Effect of(Set<String> focus, Set<String> cond) {
        return of(focus, cond, null);
    }

    /**
     * The profile plus how the client is today. Today's state never stops the session — it is folded in quietly:
     * lower ceiling, longer pauses, softer onset, lower belly during the period.
     */
    public static Effect of(Set<String> focus, Set<String> cond, Set<String> today) {
        Effect e = ofProfile(focus, cond);
        if (today == null || today.isEmpty()) {
            return e;
        }
        if (today.contains("t_sleep")) {
            e.phi *= 0.9;
            e.offS += 1;
            e.note("Днес: недоспиване — −10 %, +1 s пауза", "Today: short on sleep — −10 %, +1 s pause");
        }
        if (today.contains("t_food")) {
            e.phi *= 0.92;
            e.offS += 1;
            e.note("Днес: малко храна — −8 %, +1 s пауза", "Today: little food — −8 %, +1 s pause");
        }
        if (today.contains("t_active")) {
            e.phi *= 0.9;
            e.rampUpMs += 200;
            e.note("Днес: натоварен ден — −10 %, по-плавно включване", "Today: heavy day — −10 %, softer onset");
        }
        if (today.contains("t_stress")) {
            e.phi *= 0.95;
            e.offS += 1;
            e.rampUpMs += 200;
            e.note("Днес: стрес — −5 %, +1 s пауза, по-плавно", "Today: stress — −5 %, +1 s pause, softer");
        }
        if (today.contains("t_sore")) {
            e.phi *= 0.9;
            e.rampUpMs += 300;
            e.note("Днес: мускулна треска — −10 %, по-плавно включване", "Today: sore muscles — −10 %, softer onset");
        }
        if (today.contains("t_period")) {
            e.add(new int[] {1}, -30);
            e.add(new int[] {7}, -10);
            e.phi *= 0.95;
            e.note("Днес: цикъл — корем −30 %, кръст −10 %, −5 %", "Today: period — abs −30 %, lower back −10 %, −5 %");
        }
        e.phi = Math.max(0.75, e.phi);
        e.offS = Math.min(2, e.offS);
        e.rampUpMs = Math.min(400, e.rampUpMs);
        return e;
    }

    private static Effect ofProfile(Set<String> focus, Set<String> cond) {
        Effect e = new Effect();
        if (focus != null && !focus.isEmpty()) {
            List<String> names = new ArrayList<String>();
            for (String f : focus) {
                int[] chs = focusChannels(f);
                if (chs.length > 0) {
                    e.add(chs, 10);
                    names.add(AiText.t(focusBg(f), focusEn(f)));
                }
            }
            if (!names.isEmpty()) {
                e.note("Акцент: " + join(names) + " +10 %", "Focus: " + join(names) + " +10 %");
            }
        }
        if (cond == null || cond.isEmpty()) {
            return e;
        }
        // hormones and metabolism
        if (cond.contains("prediabetes")) {
            e.add(LEGS_GLUTES, 10);
            e.note("Преддиабет: бедра и седалище +10 % (най-голямо усвояване на глюкоза)",
                    "Prediabetes: thighs and glutes +10 % (most glucose uptake)");
        } else if (cond.contains("pcos")) {
            e.add(LEGS_GLUTES, 5);
            e.note("ПКОС: бедра и седалище +5 %", "PCOS: thighs and glutes +5 %");
        }
        if (cond.contains("menopause")) {
            e.add(BIG, 5);
            e.note("Менопауза: големите мускули +5 % (мускули и кости)", "Menopause: big muscles +5 % (muscle and bone)");
        }
        if (cond.contains("thyroid")) {
            e.phi *= 0.95;
            e.note("Щитовидна жлеза: −5 % сила", "Thyroid: −5 % strength");
        }
        if (cond.contains("water")) {
            e.add(new int[] {3}, -10);
            e.note("Задържане на течности: прасци −10 %", "Water retention: calves −10 %");
        }
        if (cond.contains("postpartum")) {
            e.add(new int[] {1}, -15);
            e.note("След бременност: корем −15 %", "After pregnancy: abs −15 %");
        }
        // body and joints
        if (cond.contains("diastasis")) {
            e.zoneMax[1] = 40;
            e.note("Диастаза: коремът до 40 %", "Diastasis: abs up to 40 %");
        }
        if (cond.contains("back")) {
            e.add(new int[] {7}, -15);
            e.note("Кръст: кръстът −15 %", "Lower back: lower back −15 %");
        }
        if (cond.contains("neck")) {
            e.add(new int[] {5}, -15);
            e.note("Врат / рамене: трапец −15 %", "Neck / shoulders: traps −15 %");
        }
        if (cond.contains("knees")) {
            e.add(new int[] {2}, -10);
            e.note("Колене: предно бедро −10 %", "Knees: front thigh −10 %");
        }
        if (cond.contains("varicose")) {
            e.add(new int[] {3, 9}, -10);
            e.note("Разширени вени: прасци и задно бедро −10 %", "Varicose veins: calves and back thigh −10 %");
        }
        if (cond.contains("joints")) {
            e.phi *= 0.95;
            e.rampUpMs += 200;
            e.note("Стави: −5 %, по-плавно включване", "Joints: −5 %, softer onset");
        }
        if (cond.contains("osteo")) {
            e.phi *= 0.95;
            e.rampUpMs += 300;
            e.offS += 1;
            e.note("Остеопороза: −5 %, по-плавно, +1 s пауза", "Osteoporosis: −5 %, softer, +1 s pause");
        }
        // lifestyle
        if (cond.contains("desk")) {
            e.add(new int[] {6, 8}, 5);
            e.note("Седяща работа: гръб и седалище +5 %", "Desk job: back and glutes +5 %");
        }
        if (cond.contains("senior")) {
            e.add(BIG, 5);
            e.phi *= 0.95;
            e.rampUpMs += 200;
            e.offS += 1;
            e.note("60+ / слаби мускули: големите мускули +5 %, −5 % сила, +1 s пауза",
                    "60+ / low muscle: big muscles +5 %, −5 % strength, +1 s pause");
        }
        if (cond.contains("stress")) {
            e.phi *= 0.95;
            e.offS += 1;
            e.note("Напрежение и стрес: −5 %, +1 s пауза", "Tension and stress: −5 %, +1 s pause");
        }
        if (cond.contains("sleep")) {
            e.phi *= 0.9;
            e.offS += 1;
            e.note("Лош сън / умора: −10 %, +1 s пауза", "Poor sleep / fatigue: −10 %, +1 s pause");
        }
        if (cond.contains("sensitive")) {
            e.phi *= 0.9;
            e.rampUpMs += 300;
            e.note("Чувствителен към тока: −10 %, по-плавно включване", "Sensitive to current: −10 %, softer onset");
        }
        if (cond.contains("injury")) {
            e.note("Стара травма: попитай къде, преди старта", "Old injury: ask where before the start");
        }
        e.phi = Math.max(0.75, e.phi);
        e.offS = Math.min(2, e.offS);
        e.rampUpMs = Math.min(400, e.rampUpMs);
        return e;
    }

    static int[] focusChannels(String k) {
        if ("abs".equals(k)) return new int[] {1};
        if ("glutes".equals(k)) return new int[] {8};
        if ("legs".equals(k)) return new int[] {2, 9};
        if ("arms".equals(k)) return new int[] {4};
        if ("back".equals(k)) return new int[] {6};
        if ("chest".equals(k)) return new int[] {0};
        return new int[0];
    }

    private static String focusBg(String k) {
        if ("abs".equals(k)) return "корем";
        if ("glutes".equals(k)) return "седалище";
        if ("legs".equals(k)) return "бедра";
        if ("arms".equals(k)) return "ръце";
        if ("back".equals(k)) return "гръб";
        return "гърди";
    }

    private static String focusEn(String k) {
        if ("abs".equals(k)) return "abs";
        if ("glutes".equals(k)) return "glutes";
        if ("legs".equals(k)) return "legs";
        if ("arms".equals(k)) return "arms";
        if ("back".equals(k)) return "back";
        return "chest";
    }

    private static String join(List<String> xs) {
        StringBuilder b = new StringBuilder();
        for (String x : xs) {
            b.append(b.length() > 0 ? ", " : "").append(x);
        }
        return b.toString();
    }
}
