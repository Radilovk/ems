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
                return e("По-стегнато тяло и по-силни мускули — крака, седалище, корем, гръб и ръце наведнъж.",
                        "Импулсът включва и дълбоките мускулни влакна, до които обикновената тренировка трудно стига.",
                        "Кратко стягане, кратка почивка — мускулите работят интензивно за по-кратко време.",
                        "A firmer body and stronger muscles — legs, glutes, abs, back and arms at once.",
                        "The impulse reaches the deep muscle fibres an ordinary workout hardly gets to.",
                        "A short hold, a short rest — the muscles work hard in less time.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Първите промени се усещат след 4–6 тренировки", "The first changes are felt after 4–6 sessions");
            case AutoCatalog.GLUTES_LEGS:
                return e("Оформя седалището и стяга бедрата — по-стегнат силует.",
                        "Клекове, напади и мостове заедно с импулса — мускулите работят по-дълбоко.",
                        "Силата по зони се нагласява според усещането — треньорът я пази в комфорт.",
                        "Shapes the glutes and firms the thighs — a tighter silhouette.",
                        "Squats, lunges and bridges together with the impulse — the muscles work deeper.",
                        "The strength per zone is set by feel — the trainer keeps it comfortable.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.MASS:
                return e("Повече мускулна маса и сила — бавни, тежки повторения с по-дълги стягания.",
                        "Напрежението в мускула е сигналът за растеж; почивката между сериите го прави пълен.",
                        "Мускулът расте, докато почиваш — храната с белтък и сънят са част от резултата.",
                        "More muscle and strength — slow, heavy reps with longer holds.",
                        "Tension in the muscle is the signal to grow; the rest between sets makes it full.",
                        "The muscle grows while you rest — protein and sleep are part of the result.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.UPPER:
                return e("Сила и релеф на гърдите, гърба, раменете и ръцете.",
                        "Лицеви опори, гребане и преса заедно с импулса.",
                        "Добро допълнение към тренировката за крака в друг ден.",
                        "Strength and definition in the chest, back, shoulders and arms.",
                        "Push-ups, rows and presses together with the impulse.",
                        "A good partner to a leg session on another day.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.CORE:
                return e("По-тънка талия и силен корем, който пази гърба.",
                        "Коремът и кръстът работят заедно — като естествен колан около гръбнака.",
                        "Планк, преси и завъртания заедно с импулса.",
                        "A slimmer waist and a strong core that protects the back.",
                        "The abs and lower back work together — like a natural belt around the spine.",
                        "Plank, crunches and twists together with the impulse.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.POWER:
                return e("Експлозивна сила и бързина — за спорт и за по-пъргави движения.",
                        "Кратък силен импулс и дълга почивка — работят бързите мускулни влакна.",
                        "За напреднали — след първите 4 тренировки.",
                        "Explosive strength and speed — for sport and quicker movement.",
                        "A short strong impulse and a long rest — the fast muscle fibres work.",
                        "For the experienced — after the first 4 sessions.",
                        "1 път седмично, с поне 3 дни почивка", "Once a week, at least 3 days of rest",
                        "Курс от 6–8 тренировки", "A course of 6–8 sessions");
            case AutoCatalog.CARDIO:
                return e("Ускорява изгарянето на мазнини и подобрява издръжливостта.",
                        "Силни стягания се редуват с леко потрепване, а движението не спира — пулсът се вдига.",
                        "Пулсът се държи в зоната, в която тялото гори най-много мазнини.",
                        "Speeds up fat burning and improves endurance.",
                        "Strong holds alternate with a light twitching and the moving never stops — the pulse rises.",
                        "The pulse is kept in the zone where the body burns the most fat.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.BACK_ACTIVE:
                return e("Силни мускули на гърба и корема — по-изправена стойка и по-малко напрежение.",
                        "Гърбът, кръстът и коремът работят заедно и поемат товара от гръбнака.",
                        "Особено полезно при много седене; упражненията са без усукване под товар.",
                        "Strong back and core muscles — a more upright posture and less strain.",
                        "The back, lower back and abs work together and take the load off the spine.",
                        "Especially useful with a lot of sitting; the exercises have no loaded twisting.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 8–12 тренировки", "A course of 8–12 sessions");
            case AutoCatalog.SENIOR:
                return e("Сила и стабилност на краката, по-добър баланс — увереност при ходене и по стълби.",
                        "Бързата крачка с импулса тренира реакцията и равновесието; повдигането на пръсти укрепва костите.",
                        "Помага за нормална кръвна захар и за мускулите и костите през менопаузата.",
                        "Leg strength and stability, better balance — confidence on walks and stairs.",
                        "A quick step with the impulse trains reaction and balance; rising on the toes strengthens the bones.",
                        "Helps keep blood sugar healthy and muscle and bone strong through menopause.",
                        "1 път седмично в началото, после до 2", "Once a week at first, then up to twice",
                        "Курс от 10–12 тренировки", "A course of 10–12 sessions");
            case AutoCatalog.ANTIAGE:
                return e("Здравословно дълголетие на всяка възраст — тялото и функциите му остават в добра форма.",
                        "Работещите мускули отделят вещества, които намаляват възпалението; ходенето с импулса е добро и за мозъка.",
                        "Кратки интервали с пълно усилие — добрата издръжливост е един от най-силните знаци за дълъг живот.",
                        "Healthy longevity at any age — the body and its functions stay in good shape.",
                        "Working muscles release substances that lower inflammation; walking with the impulse helps the brain too.",
                        "Short all-out intervals — good endurance is one of the strongest signs of a long life.",
                        ACTIVE_OFTEN_BG, ACTIVE_OFTEN_EN,
                        "Курс от 16 тренировки за 8 седмици", "A course of 16 sessions in 8 weeks");
            case AutoCatalog.CELLULITE:
                return e("По-гладка и стегната кожа на бедрата и седалището.",
                        "Мускулите под кожата се стягат, а вълна по краката изтласква задържаната течност нагоре.",
                        "Действа най-добре с достатъчно вода и движение през деня.",
                        "Smoother, firmer skin on the thighs and glutes.",
                        "The muscles under the skin firm up and a wave along the legs pushes the held fluid upwards.",
                        "Works best with enough water and movement during the day.",
                        "2 пъти седмично", "Twice a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            case AutoCatalog.POSTPARTUM:
                return e("Тазовото дъно, коремът и кръстът си връщат силата и контрола след раждането.",
                        "Внимателно и постепенно — силата на корема се нагласява според усещането.",
                        "Най-рано 6 седмици след раждането, след цезарово сечение — 12.",
                        "The pelvic floor, abs and lower back regain strength and control after birth.",
                        "Gently and step by step — the strength on the abs is set by feel.",
                        "Not before 6 weeks after birth, 12 after a caesarean.",
                        "2 пъти седмично", "Twice a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            case AutoCatalog.DRAIN:
                return e("По-малко отоци и задържана течност — краката олекват.",
                        "Мускулите се свиват един след друг от прасеца нагоре, като при ръчен лимфен масаж.",
                        "Подходящо при тежки крака, след дълъг път или много стоене.",
                        "Less swelling and fluid retention — the legs feel lighter.",
                        "The muscles contract one after another from the calf upwards, like a manual lymph massage.",
                        "Good for heavy legs, after a long trip or a lot of standing.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 8–10 процедури", "A course of 8–10 treatments");
            case AutoCatalog.PASSIVE_METABOLIC:
                return e("Тялото изразходва енергия в покой, без да се натоварва.",
                        "Ритмичното потрепване държи мускулите в работа, без да ги уморява; кратките стягания пазят тонуса.",
                        "Подходящо, когато днес активна тренировка не е възможна.",
                        "The body uses energy at rest, without strain.",
                        "The rhythmic twitching keeps the muscles working without tiring them; short holds keep the tone.",
                        "Suitable when an active session is not possible today.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 10–12 процедури", "A course of 10–12 treatments");
            case AutoCatalog.BACK_PAIN:
                return e("Облекчава болката и напрежението в гърба и кръста.",
                        "Първо отпуска стегнатите мускули, после укрепва дълбоките, които пазят гръбнака.",
                        "Накрая спокойна честота, която намалява усещането за болка.",
                        "Eases the pain and tension in the back and lower back.",
                        "First it relaxes the tight muscles, then strengthens the deep ones that protect the spine.",
                        "At the end a calm rate that dampens the feeling of pain.",
                        "2 пъти седмично", "Twice a week",
                        "Курс от 8–10 процедури", "A course of 8–10 treatments");
            case AutoCatalog.RECOVERY:
                return e("По-бързо възстановяване след натоварване и отпуснати мускули.",
                        "Бавно и бързо потрепване се редуват — кръвообращението се подобрява.",
                        "Приятно, леко усещане — като масаж; 1–2 дни след тежка тренировка.",
                        "Faster recovery after training and relaxed muscles.",
                        "Slow and quick twitching alternate — the circulation improves.",
                        "A pleasant, light feeling — like a massage; 1–2 days after a hard session.",
                        "След всяка тежка тренировка", "After every hard session",
                        "Колкото е нужно", "As needed");
            case AutoCatalog.ANTIAGE_PASSIVE:
                return e("Здравословно дълголетие в покой — за кръвната захар, мозъка и съдовете.",
                        "Ритмичната работа на краката помага за контрола на кръвната захар — най-добре след хранене.",
                        "Леко потрепване накрая — съдовете на краката стават по-еластични.",
                        "Healthy longevity at rest — for blood sugar, brain and vessels.",
                        "The rhythmic work of the legs helps control blood sugar — best after a meal.",
                        "A light twitching at the end — the leg vessels grow more elastic.",
                        "2–3 пъти седмично", "2–3 times a week",
                        "Курс от 12 процедури за 6 седмици", "A course of 12 treatments in 6 weeks");
            case AutoCatalog.GENERAL_P:
                return e("Стягане на цялото тяло в покой — без упражнения.",
                        "Импулсът стяга мускулите изцяло; дългата почивка след всяко стягане пази качеството му.",
                        "За дните между активните тренировки или когато днес движението не е възможно.",
                        "Full-body toning at rest — no exercises.",
                        "The impulse tightens the muscles fully; the long rest after each hold keeps its quality.",
                        "For the days between active sessions, or when moving is not possible today.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN,
                        PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.GLUTES_P:
                return e("Седалище и бедра в покой — тонус и по-стегнат силует.",
                        "Накрая лимфен дренаж на краката изтласква задържаната течност нагоре.",
                        "Между активните тренировки — поддържа резултата без натоварване.",
                        "Glutes and thighs at rest — tone and a tighter silhouette.",
                        "At the end a leg lymphatic drainage pushes the held fluid upwards.",
                        "Between the active sessions — keeps the result without strain.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN,
                        PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.MASS_P:
                return e("Дълги, силни стягания на големите мускули в покой.",
                        "Напрежението в мускула е сигналът за растеж; дългата почивка прави всяко стягане пълно.",
                        "Допълва активната тренировка, не я замества — растежът идва с храна, сън и тренировка.",
                        "Long, strong holds of the big muscles at rest.",
                        "Tension in the muscle is the signal to grow; the long rest makes each hold full.",
                        "It adds to the active session, it does not replace it — growth needs food, sleep and training.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN,
                        PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.UPPER_P:
                return e("Гърди, гръб, рамене и ръце в покой.",
                        "Краката почиват — подходящо в деня след тренировка на краката.",
                        "Поддържа силата на горната част между активните тренировки.",
                        "Chest, back, shoulders and arms at rest.",
                        "The legs rest — good on the day after a leg session.",
                        "Keeps the upper body's strength between the active sessions.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN,
                        PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.CORE_P:
                return e("Коремът, кръстът и гърбът се стягат заедно — опора за гръбнака.",
                        "Легнал, само дишаш с импулса — без натоварване на гърба.",
                        "За дните без активна тренировка — поддържа талията и корема.",
                        "The abs, lower back and back tighten together — support for the spine.",
                        "Lying down, you just breathe with the impulse — no load on the back.",
                        "For the days without an active session — keeps the waist and core.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN,
                        PASSIVE_COURSE_BG, PASSIVE_COURSE_EN);
            case AutoCatalog.POWER_P:
                return e("Кратки силни импулси в покой — работят бързите мускулни влакна.",
                        "След всеки импулс — дълга почивка, за да се възстанови енергията им.",
                        "За напреднали — след първите 4 тренировки.",
                        "Short strong bursts at rest — the fast muscle fibres work.",
                        "After each burst — a long rest so their energy comes back.",
                        "For the experienced — after the first 4 sessions.",
                        "1 път седмично", "Once a week",
                        "Курс от 6–8 процедури", "A course of 6–8 treatments");
            case AutoCatalog.SENIOR_P:
                return e("Седнал, краката работят сами — сила и стабилност, по-лесно ставане.",
                        "Гърбът и раменете се укрепват — за изправена, уверена стойка.",
                        "Накрая ритмична работа на краката за кръвната захар — най-добре 30–60 мин след хранене.",
                        "Seated, the legs work by themselves — strength and stability, easier rising.",
                        "The back and shoulders get stronger — for an upright, confident posture.",
                        "At the end a rhythmic leg rhythm for blood sugar — best 30–60 min after a meal.",
                        PASSIVE_OFTEN_BG, PASSIVE_OFTEN_EN,
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
