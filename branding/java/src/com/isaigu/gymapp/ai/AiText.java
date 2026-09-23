package com.isaigu.gymapp.ai;

import java.util.Locale;

/** Bulgarian-first UI text for the Smart Session (English when the system language is not bg). */
final class AiText {
    private AiText() {}

    static boolean bg() {
        try {
            return !"en".equals(Locale.getDefault().getLanguage());
        } catch (Throwable ignored) {
            return true;
        }
    }

    static String t(String bg, String en) {
        return bg() ? bg : en;
    }

    static String goal(AiModel.Goal g) {
        switch (g) {
            case TONE: return t("Тонус", "Tone");
            case FAT: return t("Изгаряне", "Fat burn");
            case MASSAGE: return t("Масаж", "Massage");
            case DRAIN: return t("Дренаж", "Drainage");
            default: return t("Целулит", "Cellulite");
        }
    }

    static String goalHint(AiModel.Goal g) {
        switch (g) {
            case TONE: return t("Сила и стягане · до 20 мин", "Strength · up to 20 min");
            case FAT: return t("Метаболитна · 30–40 мин", "Metabolic · 30–40 min");
            case MASSAGE: return t("Отпускане · ниски честоти", "Relax · low frequency");
            case DRAIN: return t("Лимфен поток · 1 Hz", "Lymph flow · 1 Hz");
            default: return t("Бедра и седалище", "Thighs and glutes");
        }
    }

    static String phase(AiModel.PhaseId p) {
        switch (p) {
            case WARMUP: return t("Загрявка", "Warm-up");
            case MAIN: return t("Основна", "Main");
            case METABOLIC: return t("Метаболитна", "Metabolic");
            default: return t("Разпускане", "Cool-down");
        }
    }

    static String state(AiEngine.State s, String pauseReason) {
        switch (s) {
            case RUN: return t("Работа", "Work");
            case REST: return t("Почивка", "Rest");
            case CHECKPOINT: return t("Контролна точка", "Checkpoint");
            case STIM_PAUSE: return "hr_cap".equals(pauseReason)
                    ? t("Пауза — пулсът достигна тавана", "Paused — HR ceiling reached")
                    : t("Пауза — чака отговор", "Paused — waiting for answer");
            case USER_PAUSE: return t("На пауза", "Paused");
            case RECOVERY: return t("Възстановяване · 60 s", "Recovery · 60 s");
            case DONE: return t("Готово", "Done");
            case STOPPED: return t("Спряна", "Stopped");
            default: return t("Готова", "Ready");
        }
    }

    /** Human text for the engine's last decision code. */
    static String action(String code) {
        if (code == null) {
            return "";
        }
        if (code.startsWith("phase:")) {
            try {
                return t("Фаза: ", "Phase: ")
                        + phase(AiModel.PhaseId.valueOf(code.substring(6)));
            } catch (Throwable ignored) {
                return code;
            }
        }
        if ("rest".equals(code)) return t("Мускулна умора — почивка", "Muscle fatigue — rest");
        if ("rest_timeout".equals(code)) return t("Дълга почивка — следващият блок е по-мек", "Long rest — next block softer");
        if ("rest_ready".equals(code)) return t("Почивката стига — следващият блок е с бутон", "Rest done — start the next block by hand");
        if ("continue".equals(code)) return t("Следващ блок", "Next block");
        if ("reentry".equals(code)) return t("След дълга пауза — по-меко начало", "After a long pause — softer start");
        if ("hr_block_end".equals(code)) return t("Пулсът е над коридора — блокът приключва, почивка", "HR above corridor — block ends, rest");
        if ("l3_longer_pause".equals(code)) return t("Пулсът е над коридора — по-дълга пауза", "HR above corridor — longer pause");
        if ("l4_softer_b".equals(code)) return t("Пулсът е висок — по-мек сегмент B", "HR high — softer segment B");
        if ("u_down".equals(code)) return t("Пулсът остава висок — по-ниска сила", "HR stays high — lower strength");
        if ("l2_shorter_blocks".equals(code)) return t("Сърцето реагира силно — по-къси блокове", "Strong HR response — shorter blocks");
        if ("l1_budget".equals(code)) return t("Устойчиво натоварване — по-малка обща доза", "Sustained load — smaller total dose");
        if ("l1_cooldown".equals(code) || "budget_cooldown".equals(code)) return t("Достатъчно за днес — разпускане", "Enough for today — cool-down");
        if ("below_corridor".equals(code)) return t("Под коридора — по-кратки почивки", "Below corridor — shorter rests");
        if ("hr_cap".equals(code)) return t("Таван на пулса — стимулацията е спряна", "HR ceiling — stimulation stopped");
        if ("can_resume".equals(code)) return t("Пулсът се възстанови — може да продължи", "HR recovered — you may continue");
        if ("band_lost_soft".equals(code)) return t("Няма пулс 30 s — сила до 80%", "No HR for 30 s — strength capped at 80%");
        if ("band_lost_cooldown".equals(code)) return t("Няма пулс 2 мин — разпускане", "No HR for 2 min — cool-down");
        if ("non_responder".equals(code)) return t("Пулсът не реагира — управлява само планът", "HR not responding — plan only");
        if ("checkpoint".equals(code)) return t("Контролна точка — оцени усещането", "Checkpoint — rate the sensation");
        if ("checkpoint_timeout".equals(code)) return t("Няма отговор — пауза", "No answer — paused");
        if ("cr10_down".equals(code)) return t("Силата е намалена според усещането", "Strength lowered to match sensation");
        if ("cr10_up".equals(code)) return t("Силата е върната към калибрирането", "Strength restored towards calibration");
        if ("cr10_ok".equals(code)) return t("Усещането е в целта", "Sensation on target");
        if ("reduce".equals(code)) return t("Намалено ръчно −10%", "Reduced manually −10%");
        if ("user_pause".equals(code)) return t("Пауза", "Paused");
        if ("resume".equals(code)) return t("Продължава", "Resumed");
        if ("stop".equals(code)) return t("Спряна от оператора", "Stopped by operator");
        if ("done".equals(code)) return t("Сесията приключи", "Session complete");
        if ("start".equals(code)) return t("Старт", "Start");
        return code;
    }

    static String contraindication(String key) {
        if ("pregnancy".equals(key)) return t("Бременност", "Pregnancy");
        if ("implant".equals(key)) return t("Пейсмейкър / електронен имплант", "Pacemaker / electronic implant");
        if ("cardiovascular".equals(key)) return t("Сърдечно-съдово заболяване", "Cardiovascular disease");
        if ("circulation".equals(key)) return t("Артериални нарушения / тромбоза", "Arterial disorder / thrombosis");
        if ("hernia".equals(key)) return t("Херния (коремна / ингвинална)", "Hernia (abdominal / inguinal)");
        if ("cancer".equals(key)) return t("Онкологично заболяване", "Cancer");
        if ("bleeding".equals(key)) return t("Нарушено кръвосъсирване", "Bleeding disorder");
        if ("epilepsy".equals(key)) return t("Епилепсия", "Epilepsy");
        if ("neurological".equals(key)) return t("Тежко неврологично заболяване", "Severe neurological disease");
        if ("recent_surgery".equals(key)) return t("Скорошна операция", "Recent surgery");
        if ("skin_lesion".equals(key)) return t("Рани / кожни лезии под електродите", "Wounds / skin lesions under electrodes");
        if ("kidney".equals(key)) return t("Бъбречно заболяване", "Kidney disease");
        if ("tuberculosis".equals(key)) return t("Туберкулоза", "Tuberculosis");
        return key;
    }

    static String screeningCode(String code) {
        if (code.startsWith("contra:")) return contraindication(code.substring(7));
        if ("age_under_18".equals(code)) return t("Под 18 години", "Under 18");
        if ("invalid_combination".equals(code)) return t("Целта изисква пасивен режим", "This goal needs passive mode");
        if ("fever".equals(code)) return t("Температура / заболяване", "Fever / illness");
        if ("alcohol_stress".equals(code)) return t("Алкохол или силен стрес (48 ч)", "Alcohol or heavy stress (48 h)");
        if ("arrhythmia".equals(code)) return t("Известна аритмия", "Known arrhythmia");
        if ("not_eaten".equals(code)) return t("Хапни ~250 kcal въглехидрати преди", "Eat ~250 kcal carbs before");
        if ("not_hydrated".equals(code)) return t("Изпий 250–500 ml вода", "Drink 250–500 ml water");
        if ("hr_medication".equals(code)) return t("Лекарства за пулса — пулсът тежи по-малко", "HR medication — HR weighted less");
        if ("not_rested".equals(code)) return t("Измерването в покой ще е по-дълго", "Rest measurement will be longer");
        return code;
    }

    static String flag(String f) {
        if ("NO_BAND".equals(f)) return t("Без гривна", "No band");
        if ("HR_SLOW".equals(f)) return t("Пулсът идва рядко — само таван", "HR too slow — ceiling only");
        if ("FLAG_TACHY".equals(f)) return t("Пулс в покой ≥ 100", "Resting HR ≥ 100");
        if ("FLAG_BRADY".equals(f)) return t("Пулс в покой < 40", "Resting HR < 40");
        if ("BAND_LOST".equals(f)) return t("Загубена гривна", "Band lost");
        if ("NON_RESPONDER".equals(f)) return t("Пулсът не реагира", "HR non-responder");
        if ("BUDGET".equals(f)) return t("Изчерпан бюджет на дозата", "Dose budget reached");
        return f;
    }

    static String mmss(double seconds) {
        int s = (int) Math.max(0, Math.round(seconds));
        return String.format(Locale.US, "%d:%02d", s / 60, s % 60);
    }
}
