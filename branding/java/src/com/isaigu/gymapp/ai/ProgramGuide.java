package com.isaigu.gymapp.ai;

/**
 * What the ⓘ of a ready program says (owner, 1.1.516 — docs/xems-program-info.md): how this training or procedure
 * works for its goal, in three plain lines, and how often it is done. Pure Java (tested by run-auto.sh); the window
 * is {@link ProgramInfo}. The advice for after the session lives in the report (session-report.html, GUIDE).
 * Words: plain, warm Bulgarian, no Hz / µs, no Latin, no promises the studies do not keep.
 */
public final class ProgramGuide {
    private ProgramGuide() {}

    /** One program: three lines of how it works, how often, how long a course is (bg, en pairs). */
    public static final class Entry {
        public final String[] howBg;
        public final String[] howEn;
        public final String oftenBg;
        public final String oftenEn;
        public final String courseBg;
        public final String courseEn;

        Entry(String[] howBg, String[] howEn, String oftenBg, String oftenEn, String courseBg, String courseEn) {
            this.howBg = howBg;
            this.howEn = howEn;
            this.oftenBg = oftenBg;
            this.oftenEn = oftenEn;
            this.courseBg = courseBg;
            this.courseEn = courseEn;
        }

        public String how(int i) {
            return AiText.t(howBg[i], howEn[i]);
        }

        public String often() {
            return AiText.t(oftenBg, oftenEn);
        }

        public String course() {
            return AiText.t(courseBg, courseEn);
        }
    }

    static final String PASSIVE_OFTEN_BG = "2 пъти седмично, в дните без активна";
    static final String PASSIVE_OFTEN_EN = "Twice a week, on the days without an active one";
    static final String PASSIVE_COURSE_BG = "Курс от 10–12 процедури";
    static final String PASSIVE_COURSE_EN = "A course of 10–12 treatments";
    static final String ACTIVE_OFTEN_BG = "1–2 пъти седмично, с 2–3 дни почивка";
    static final String ACTIVE_OFTEN_EN = "1–2 times a week, 2–3 days of rest between";

    private static Entry e(String h1, String h2, String h3, String e1, String e2, String e3,
                           String oftenBg, String oftenEn, String courseBg, String courseEn) {
        return new Entry(new String[] {h1, h2, h3}, new String[] {e1, e2, e3}, oftenBg, oftenEn, courseBg, courseEn);
    }

    /** The program's lines; null for an id it does not know (the ⓘ is then not shown). */
    public static Entry get(String id) {
        if (id == null) {
            return null;
        }
        if (id.startsWith("face")) {
            id = AutoCatalog.FACE;
        }
        switch (id) {
            case AutoCatalog.GENERAL:
                return e("Токът стига и дълбоките мускулни влакна, до които обикновената тренировка трудно достига.",
                        "Стягане и отпускане на равни интервали — мускулите работят по-силно за по-кратко време.",
                        "Цялото тяло наведнъж: крака, седалище, корем, гръб и ръце.",
                        "The current reaches the deep muscle fibres an ordinary workout hardly gets to.",
                        "Hold and release at even intervals — the muscles work harder in less time.",
                        "The whole body at once: legs, glutes, abs, back and arms.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Първите промени се усещат след 4–6 тренировки", "The first changes are felt after 4–6 sessions");
            case AutoCatalog.GLUTES_LEGS:
                return e("Акцентът е в упражненията за седалището и задното бедро; силата по зони я нагласява треньорът.",
                        "Клекове, напади и мостове заедно с импулса — стягането е по-дълбоко.",
                        "Оформя линията на седалището и бедрата.",
                        "The focus is in the glute and hamstring exercises; the trainer sets the strength per zone.",
                        "Squats, lunges and bridges together with the impulse — a deeper hold.",
                        "Shapes the line of the glutes and thighs.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.MASS:
                return e("Бавни тежки повторения с по-дълги стягания — сигнал мускулът да расте.",
                        "Акцент на големите мускули: крака, гръб, гърди.",
                        "Мускулът расте в почивката — затова храната и сънят са част от тренировката.",
                        "Slow heavy reps with longer holds — the signal for the muscle to grow.",
                        "The focus is on the big muscles: legs, back, chest.",
                        "The muscle grows while resting — so food and sleep are part of the training.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.UPPER:
                return e("Гърдите, гърбът, раменете и ръцете работят с упражнения за горната част.",
                        "Лицеви опори, гребане и преса заедно с импулса.",
                        "По-стегната и по-силна горна част на тялото.",
                        "The chest, back, shoulders and arms work with upper-body exercises.",
                        "Push-ups, rows and presses together with the impulse.",
                        "A firmer and stronger upper body.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.CORE:
                return e("Коремът и кръстът работят заедно — гръбнакът е пазен.",
                        "Дълбоките мускули на корема стягат талията като колан.",
                        "Планк, преси и завъртания заедно с импулса.",
                        "The abs and the lower back work together — the spine is protected.",
                        "The deep abdominal muscles tighten the waist like a belt.",
                        "Plank, crunches and twists together with the impulse.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.POWER:
                return e("Кратък силен импулс и дълга почивка — работят бързите мускулни влакна.",
                        "Взривни движения в собствено темпо: клек, отскок, хвърляне.",
                        "За напреднали — след първите 4 тренировки.",
                        "A short strong impulse and a long rest — the fast muscle fibres work.",
                        "Explosive moves at your own pace: squat, jump, throw.",
                        "For the experienced — after the first 4 sessions.",
                        "1 път седмично, с поне 3 дни почивка", "Once a week, at least 3 days of rest",
                        "Курс от 6–8 тренировки", "A course of 6–8 sessions");
            case AutoCatalog.CARDIO:
                return e("Силни стягания се редуват с бързо потрепване — пулсът се вдига и тялото гори мазнини.",
                        "Движението не спира: степ, ходене, клекове.",
                        "Пулсът се държи в зоната, в която се изгарят най-много мазнини.",
                        "Strong holds alternate with a quick twitching — the pulse rises and the body burns fat.",
                        "The movement never stops: step, walking, squats.",
                        "The pulse is kept in the zone where most fat is burned.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.BACK_ACTIVE:
                return e("Гърбът, кръстът и коремът стягат заедно — като корсет около гръбнака.",
                        "Упражнения без усукване под товар.",
                        "За по-изправена стойка и по-малко напрежение при дълго седене.",
                        "The back, lower back and abs hold together — like a corset around the spine.",
                        "Exercises with no twisting under load.",
                        "For a straighter posture and less strain from long sitting.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.SENIOR:
                return e("Сила и бързина за всеки ден: лесно ставане, стълби и сигурна, лека крачка.",
                        "Кости: стягане с леки удари на петите — сигнал костта да пази плътността си.",
                        "Захар и менопауза: краката поемат захар; мускулите и костите остават силни.",
                        "Strength and speed for every day: easy rising, stairs and a sure, light step.",
                        "Bone: holds with light heel drops — a signal for the bone to keep its density.",
                        "Sugar and menopause: the legs take up sugar; muscle and bone stay strong.",
                        "1 път седмично в началото, после до 2", "Once a week at first, then up to twice",
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.ANTIAGE:
                return e("Дълголетие на всяка възраст: пази тялото младо и функциите му в пълна сила.",
                        "Мускулите пускат вещества срещу възпалението; ходенето с импулса храни мозъка.",
                        "Кратки интервали с всичка сила — издръжливостта е най-силният знак за дълъг живот.",
                        "Longevity at any age: keeps the body young and its functions at full strength.",
                        "The muscles release substances against inflammation; walking with the impulse feeds the brain.",
                        "Short all-out intervals — endurance is the strongest sign of a long life.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 16 тренировки за 8 седмици", "A course of 16 sessions in 8 weeks");
            case AutoCatalog.CELLULITE:
                return e("Мускулите под кожата се стягат — видът става по-гладък и стегнат.",
                        "Вълна по краката изтласква задържаната течност нагоре.",
                        "Най-добре действа заедно с вода и движение през деня.",
                        "The muscles under the skin firm up — the look becomes smoother and firmer.",
                        "A wave along the legs pushes the held fluid upwards.",
                        "Works best together with water and movement during the day.",
                        "2 пъти седмично", "Twice a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            case AutoCatalog.POSTPARTUM:
                return e("Тазовото дъно, седалището и кръстът си връщат силата и контрола.",
                        "Коремът — внимателно: силата му я нагласява треньорът.",
                        "Най-рано 6 седмици след раждането, след цезарово — 12.",
                        "The pelvic floor, glutes and lower back get their strength and control back.",
                        "The abs gently: the trainer sets their strength.",
                        "Not before 6 weeks after birth, 12 after a caesarean.",
                        "2 пъти седмично", "Twice a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            case AutoCatalog.DRAIN:
                return e("Вълна от прасеца нагоре към корема и раменете — като ръчен лимфен масаж.",
                        "Мускулите изпомпват задържаната течност към лимфните пътища.",
                        "Краката олекват, подуването намалява.",
                        "A wave from the calf up to the abdomen and shoulders — like a manual lymph massage.",
                        "The muscles pump the held fluid towards the lymph pathways.",
                        "The legs feel lighter, the swelling goes down.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 8–10 процедури", "A course of 8–10 treatments");
            case AutoCatalog.PASSIVE_METABOLIC:
                return e("Ритмично потрепване — мускулите горят енергия, без да се уморяват.",
                        "Кратки блокове стягане между тях пазят тонуса.",
                        "Подходящо, когато активна тренировка днес не е възможна.",
                        "A rhythmic twitching — the muscles burn energy without getting tired.",
                        "Short blocks of holds in between keep the tone.",
                        "Suitable when an active session is not possible today.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            case AutoCatalog.BACK_PAIN:
                return e("Първо се отпускат напрегнатите мускули на гърба.",
                        "Леко стягане на дълбоките мускули — те поемат товара от гръбнака.",
                        "Накрая тиха честота, която намалява усещането за болка.",
                        "First the tense back muscles relax.",
                        "A light hold of the deep muscles — they take the load off the spine.",
                        "At the end a quiet rate that dampens the feeling of pain.",
                        "2 пъти седмично", "Twice a week",
                        "Курс от 8–10 процедури", "A course of 8–10 treatments");
            case AutoCatalog.RECOVERY:
                return e("Бавно и бързо потрепване се редуват — кръвта приижда, мускулите се отпускат.",
                        "Мускулите се възстановяват по-бързо 1–2 дни след натоварване.",
                        "Леко, приятно усещане — като масаж.",
                        "Slow and quick twitching alternate — the blood flows in, the muscles relax.",
                        "The muscles recover faster 1–2 days after a hard session.",
                        "A light, pleasant feeling — like a massage.",
                        "След всяка тежка тренировка", "After every hard session",
                        "Колкото е нужно", "As needed");
            case AutoCatalog.ANTIAGE_PASSIVE:
                return e("Дълголетие в покой: захарта, мозъкът и съдовете остават в добра форма.",
                        "Краката работят целите — поемат захар и подават сигнал, полезен за мозъка.",
                        "Леко потрепване накрая — съдовете на краката стават по-еластични.",
                        "Longevity at rest: sugar, brain and vessels stay in good shape.",
                        "The whole legs work — they take up sugar and send a signal good for the brain.",
                        "A light twitching at the end — the leg vessels grow more elastic.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 12 процедури за 6 седмици", "A course of 12 treatments in 6 weeks");
            case AutoCatalog.FACE:
                return e("Тънък, нежен импулс стяга мускулите на лицето под кожата.",
                        "Всяка процедура има свои места — избират се в студиото за лице.",
                        "Усеща се като леко изтръпване, без болка.",
                        "A thin, gentle impulse firms the face muscles under the skin.",
                        "Every treatment has its own sites — chosen in the face studio.",
                        "It feels like a light tingle, never pain.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            // ---- the passive versions (1.1.526): the same goal at rest — for the days between the active ones,
            // or when moving is not possible today
            case AutoCatalog.GENERAL_P:
                return e("Същата цел като Общо стягане, но в покой: токът стяга мускулите изцяло, без движение.",
                        "Дълго отпускане след всяко стягане — пасивното стягане уморява по-бързо.",
                        "За дните между активните тренировки или когато движение днес не е възможно.",
                        "The same goal as Full-body toning, at rest: the current tightens the muscles fully, no moving.",
                        "A long release after every hold — a passive hold tires sooner.",
                        "For the days between active sessions, or when moving is not possible today.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN, PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.GLUTES_P:
                return e("Седалището и бедрата се стягат в покой — същата цел като активната.",
                        "Накрая вълна по краката изтласква задържаната течност нагоре.",
                        "Между активните тренировки — поддържа тонуса без натоварване.",
                        "The glutes and thighs tighten at rest — the same goal as the active one.",
                        "At the end a wave along the legs pushes the held fluid upwards.",
                        "Between the active sessions — keeps the tone without strain.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN, PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.MASS_P:
                return e("Дълги силни стягания в покой — напрежението в мускула е сигналът за растеж.",
                        "Дълга почивка, за да е пълно всяко стягане.",
                        "Допълва активната, не я заменя: растежът идва с храна, сън и тренировка.",
                        "Long strong holds at rest — the tension in the muscle is the signal to grow.",
                        "A long rest so every hold is full.",
                        "It adds to the active one, it does not replace it: growth needs food, sleep and training.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN, PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.UPPER_P:
                return e("Гърдите, гърбът, раменете и ръцете се стягат в покой.",
                        "Краката почиват — подходящо след тренировка на краката.",
                        "Поддържа горната част между активните тренировки.",
                        "The chest, back, shoulders and arms tighten at rest.",
                        "The legs rest — good after a leg session.",
                        "Keeps the upper body up between the active sessions.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN, PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.CORE_P:
                return e("Коремът, кръстът и гърбът се стягат заедно — корсет около гръбнака.",
                        "Легнал, само дишаш с импулса — без натоварване на гръбнака.",
                        "Същата цел като Талия и корем, за дните без активна тренировка.",
                        "The abs, lower back and back hold together — a corset around the spine.",
                        "Lying down, you only breathe with the impulse — no load on the spine.",
                        "The same goal as Waist & core, for the days without an active session.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN, PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.POWER_P:
                return e("Кратки взривни импулси в покой — бързите влакна се включват изцяло.",
                        "Дълга почивка след всеки импулс — енергията им се връща.",
                        "За напреднали — след първите 4 тренировки.",
                        "Short explosive bursts at rest — the fast fibres fire in full.",
                        "A long rest after every burst — their energy comes back.",
                        "For the experienced — after the first 4 sessions.",
                        "1 път седмично", "Once a week", "Курс от 6–8 процедури", "A course of 6–8 treatments");
            case AutoCatalog.SENIOR_P:
                return e("Седнал, краката работят сами — сила и по-лесно ставане.",
                        "Гърбът и раменете — за изправена, уверена стойка.",
                        "Накрая ритъм на краката за захарта — най-добре 30–60 мин след хранене.",
                        "Seated, the legs work by themselves — strength and easier rising.",
                        "The back and shoulders — for an upright, confident posture.",
                        "At the end a leg rhythm for the blood sugar — best 30–60 min after a meal.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN, "Курс от 12 процедури за 6 седмици",
                        "A course of 12 treatments in 6 weeks");
            default:
                return null;
        }
    }
}
