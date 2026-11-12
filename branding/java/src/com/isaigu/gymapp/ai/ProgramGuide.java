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
                return e("Повече ток в седалището и задното бедро — там е акцентът.",
                        "Клекове, напади и мостове заедно с импулса — стягането е по-дълбоко.",
                        "Оформя линията на седалището и бедрата.",
                        "More current in the glutes and the back of the thighs — that is the focus.",
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
                return e("Повече ток в гърдите, гърба, раменете и ръцете.",
                        "Лицеви опори, гребане и преса заедно с импулса.",
                        "По-стегната и по-силна горна част на тялото.",
                        "More current in the chest, back, shoulders and arms.",
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
                return e("Сила за всеки ден: ставане от стол, стълби, носене на покупки.",
                        "Бавни, сигурни движения, без скокове.",
                        "Първите тренировки са по-кратки — тялото свиква постепенно.",
                        "Strength for every day: getting up from a chair, stairs, carrying shopping.",
                        "Slow, safe movements, no jumps.",
                        "The first sessions are shorter — the body gets used to it step by step.",
                        "1 път седмично в началото, после до 2", "Once a week at first, then up to twice",
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.ANTIAGE:
                return e("Работещите мускули пускат в кръвта вещества, които успокояват възпалението и пазят клетките.",
                        "Ходенето с импулса натоварва целите крака — сигнал, полезен и за мозъка.",
                        "Кратки интервали с всичка сила и веднага отдих — тялото отговаря с повече защита.",
                        "Working muscles release substances into the blood that calm inflammation and protect the cells.",
                        "Walking with the impulse loads the whole legs — a signal that is good for the brain too.",
                        "Short all-out intervals and rest right away — the body answers with more protection.",
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
                        "Коремът работи внимателно, с по-малка сила.",
                        "Най-рано 6 седмици след раждането, след цезарово — 12.",
                        "The pelvic floor, glutes and lower back get their strength and control back.",
                        "The abs work gently, with less strength.",
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
                return e("Ритмичната работа на краката поема захар от кръвта — особено полезно след хранене.",
                        "Краката работят целите — сигнал, полезен и за мозъка.",
                        "Леко потрепване накрая — съдовете на краката стават по-еластични.",
                        "The rhythmic work of the legs takes sugar from the blood — most useful after a meal.",
                        "The whole legs work — a signal that is good for the brain too.",
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
            default:
                return null;
        }
    }
}
