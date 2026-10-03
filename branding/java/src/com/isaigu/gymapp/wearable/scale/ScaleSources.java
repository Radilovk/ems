package com.isaigu.gymapp.wearable.scale;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import java.util.ArrayList;
import java.util.List;

/**
 * "Научна основа" — where every number of the scale module comes from, said plainly: each source with what we
 * take from it, who and how many people it was measured on, and how much to trust it. Four honest tiers: a
 * peer-reviewed study, a standard / textbook, the scale maker's algorithm (no published validation), an XEMS rule
 * (how it was derived). Data ({@link #all()}) is pure and also goes into the shared HTML.
 */
public final class ScaleSources {
    public static final int T_STUDY = 0, T_STANDARD = 1, T_VENDOR = 2, T_XEMS = 3;

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    public static String tierBg(int t) {
        return t == T_STUDY ? "Проучване" : t == T_STANDARD ? "Стандарт" : t == T_VENDOR ? "Производител" : "XEMS";
    }

    public static String tierEn(int t) {
        return t == T_STUDY ? "Study" : t == T_STANDARD ? "Standard" : t == T_VENDOR ? "Maker" : "XEMS";
    }

    public static int tierColor(int t) {
        return t == T_STUDY ? 0xFF22C55E : t == T_STANDARD ? 0xFF38BDF8 : t == T_VENDOR ? 0xFFF59E0B : 0xFFA78BFA;
    }

    /** One source. */
    public static final class Source {
        public final int tier;
        public final String topicBg, topicEn, useBg, useEn, cite, whoBg, whoEn, doi;
        /** People measured (0 = not one sample). */
        public final int n;

        Source(int tier, String topicBg, String topicEn, String useBg, String useEn, String cite, String whoBg,
                String whoEn, int n, String doi) {
            this.tier = tier;
            this.topicBg = topicBg;
            this.topicEn = topicEn;
            this.useBg = useBg;
            this.useEn = useEn;
            this.cite = cite;
            this.whoBg = whoBg;
            this.whoEn = whoEn;
            this.n = n;
            this.doi = doi;
        }
    }

    public static List<Source> all() {
        List<Source> s = new ArrayList<Source>();
        s.add(new Source(T_STUDY, "Мазнини и безмазнена маса", "Fat and fat-free mass",
                "Уравненията, които превръщат импеданса, ръста и теглото в безмазнена маса — отделни за мъже и жени.",
                "The equations that turn impedance, height and weight into fat-free mass — separate for men and women.",
                "Sun SS, Chumlea WC, Heymsfield SB et al. Am J Clin Nutr 2003;77:331–340",
                "1 829 души · NHANES III · сравнени с 4-компонентен референтен модел",
                "1,829 adults · NHANES III · against a 4-compartment reference model", 1829, "10.1093/ajcn/77.2.331"));
        s.add(new Source(T_STUDY, "Скелетни мускули", "Skeletal muscle",
                "Колко от безмазнената маса са мускулите, които движат тялото — тези, които EMS тренира.",
                "How much of the fat-free mass is the muscle that moves the body — the muscle EMS trains.",
                "Janssen I, Heymsfield SB, Baumgartner RN, Ross R. J Appl Physiol 2000;89:465–471",
                "388 души · ЯМР на цялото тяло", "388 adults · whole-body MRI", 388, "10.1152/jappl.2000.89.2.465"));
        s.add(new Source(T_STUDY, "Нормата за мазнините", "The healthy fat range",
                "Здравословният % мазнини по пол и възраст — средата на скалата и здравословното тегло.",
                "The healthy body fat % by sex and age — the middle of the scale and the healthy weight.",
                "Gallagher D, Heymsfield SB, Heo M et al. Am J Clin Nutr 2000;72:694–701",
                "1 626 души · DXA и 4-компонентен модел · три етнически групи",
                "1,626 adults · DXA and a 4-compartment model · three ethnic groups", 1626, "10.1093/ajcn/72.3.694"));
        s.add(new Source(T_STUDY, "Мускули и мазнини спрямо ръста", "Muscle and fat for the height",
                "FFMI и FMI — защо мускулест човек не е „наднормен“, а слаба жена не е „в дефицит“.",
                "FFMI and FMI — why a muscular person is not \"overweight\" and a lean woman not \"in deficit\".",
                "Schutz Y, Kyle UUG, Pichard C. Int J Obes 2002;26:953–960",
                "5 635 души, 18–98 г.", "5,635 adults aged 18–98", 5635, "10.1038/sj.ijo.0802037"));
        s.add(new Source(T_STUDY, "Граници за наднормено и затлъстяване", "Overweight and obesity limits",
                "Праговете на мазнините спрямо ръста (FMI) — по национална извадка, не по ИТМ.",
                "The fat-for-height (FMI) limits — from a national sample, not from BMI.",
                "Kelly TL, Wilson KE, Heymsfield SB. PLoS One 2009;4(9):e7038",
                "NHANES 1999–2004 · DXA · национална извадка на САЩ", "NHANES 1999–2004 · DXA · US national sample", 0,
                "10.1371/journal.pone.0007038"));
        s.add(new Source(T_STUDY, "Възраст на тялото", "Body age",
                "Мускулите на ръцете и краката и мазнините спрямо хората на твоята възраст (медиана и разсейване) — изразено в години.",
                "Arm + leg muscle and fat against people of the client's own age (median and spread) — said in years.",
                "Imboden MT, Welch WA, Swartz AM et al. PLoS One 2017;12(4):e0175110 и e0176161",
                "3 327 възрастни · DXA", "3,327 adults · DXA", 3327, "10.1371/journal.pone.0175110"));
        s.add(new Source(T_STUDY, "Пулс в покой — норма", "Resting pulse — norms",
                "Пулсът в покой по пол и възраст (квартили) — третата част на възрастта на тялото, когато е измерен.",
                "Resting pulse by sex and age (quartiles) — the third part of body age when measured.",
                "Ostchega Y, Porter KS, Hughes J et al. Natl Health Stat Report 2011;(41):1–16 (NHANES 1999–2008)",
                "35 302 души без болест или лекарство, което мени пулса", "35,302 people without HR-changing illness "
                        + "or medicine", 35302, ""));
        s.add(new Source(T_STUDY, "Пулс в покой — риск", "Resting pulse — risk",
                "Защо пулсът тежи: +10 удара в минута в покой ≈ +9 % смъртност от всички причини (46 проучвания).",
                "Why the pulse counts: +10 bpm at rest ≈ +9 % all-cause mortality (46 studies).",
                "Zhang D, Shen X, Qi X. CMAJ 2016;188(3):E53–E63 (meta-analysis)",
                "46 кохорти · 1,25 млн. души", "46 cohorts · 1.25 million people", 0, "10.1503/cmaj.150535"));
        s.add(new Source(T_STUDY, "Водата в тялото", "Body water",
                "Водата е около 73 % от безмазнената маса — стабилна константа при възрастни.",
                "Water is about 73 % of the fat-free mass — a steady constant in adults.",
                "Wang Z, Deurenberg P, Wang W et al. Am J Clin Nutr 1999;69:833–841",
                "преглед на изследванията на хидратацията", "a review of the hydration studies", 0,
                "10.1093/ajcn/69.5.833"));
        s.add(new Source(T_STUDY, "Обичаен метаболизъм", "Usual resting energy",
                "С какво сравняваме базовия метаболизъм на клиента — обичайното за теглото, ръста и годините.",
                "What the client's resting energy is compared with — the usual for the weight, height and age.",
                "Mifflin MD, St Jeor ST, Hill LA et al. Am J Clin Nutr 1990;51:241–247",
                "498 души · непряка калориметрия", "498 adults · indirect calorimetry", 498, "10.1093/ajcn/51.2.241"));
        s.add(new Source(T_STUDY, "Как работи и кога е точен биоимпедансът", "How bioimpedance works, when it is right",
                "Принципът на двете честоти, точността и условията за измерване.",
                "The two-frequency principle, the accuracy and the measuring conditions.",
                "Kyle UG, Bosaeus I, De Lorenzo AD et al. (ESPEN). Clin Nutr 2004;23:1226–1243 и 1430–1453",
                "преглед на експертна група (ESPEN)", "an expert group review (ESPEN)", 0, "10.1016/j.clnu.2004.06.004"));
        s.add(new Source(T_STUDY, "Почивка и натоварване при EMS", "Rest and load in EMS",
                "Препоръки за почивка, прогресия на натоварването и хидратация при EMS тренировка.",
                "Guidance on rest, load progression and hydration in EMS training.",
                "Kemmler W, Fröhlich M, von Stengel S, Kleinöder H. Dtsch Z Sportmed 2016;67:218–221",
                "препоръки за безопасна WB-EMS тренировка", "guideline for safe WB-EMS training", 0, ""));
        s.add(new Source(T_STUDY, "Изглаждане между измерванията", "Smoothing between measurements",
                "Филтър, който отделя случайните колебания от реалната промяна в състава на тялото.",
                "A filter that separates random variation from real change in body composition.",
                "Kalman RE. J Basic Eng 1960;82:35–45", "математически метод", "a mathematical method", 0,
                "10.1115/1.3662552"));
        s.add(new Source(T_STANDARD, "Базов метаболизъм от мускулите", "Resting energy from the lean mass",
                "Базовият метаболизъм, изчислен от безмазнената маса.",
                "The basal metabolic rate, computed from the fat-free mass.",
                "Katch–McArdle · McArdle WD, Katch FI, Katch VL. Exercise Physiology (учебник)",
                "стандартна формула в спортната физиология", "a standard formula of exercise physiology", 0, ""));
        s.add(new Source(T_STANDARD, "ИТМ", "BMI",
                "Класове на ИТМ. Показват се информативно — не отчитат състава на тялото.",
                "BMI classes. Shown for reference — they do not reflect body composition.",
                "WHO. Obesity: preventing and managing the global epidemic. Technical Report Series 894, 2000",
                "Световна здравна организация", "World Health Organization", 0, ""));
        s.add(new Source(T_VENDOR, "Зоните, костите, висцералните мазнини", "Zones, bone, visceral fat",
                "Алгоритъмът на производителя на сензора (iComon WLA25): сегментен анализ, костна маса и "
                        + "висцерални мазнини.",
                "The sensor maker's algorithm (iComon WLA25): segmental analysis, bone mass and visceral fat.",
                "iComon WLA25", "алгоритъм на производителя", "manufacturer's algorithm", 0, ""));
        s.add(new Source(T_VENDOR, "Норми на костите и подкожните мазнини", "Bone and subcutaneous ranges",
                "Референтни таблици за костна маса и подкожни мазнини.",
                "Reference tables for bone mass and subcutaneous fat.",
                "Tanita / iComon", "таблици на производителите", "manufacturers' tables", 0,
                ""));
        s.add(new Source(T_XEMS, "Готовност за тренировка", "Readiness for training",
                "Съотношението на импеданса при 100 и 20 kHz спрямо личната база на клиента отразява "
                        + "възстановяването след натоварване (принцип по Kyle 2004). При отклонение интензитетът се "
                        + "намалява с 15 % или 30 %.",
                "The 100 / 20 kHz impedance ratio against the client's own baseline reflects recovery after load "
                        + "(principle per Kyle 2004). On a deviation the intensity is reduced by 15 % or 30 %.",
                "XEMS · по принципа на Kyle 2004", "собствена база на всеки клиент", "each client's own baseline", 0, ""));
        s.add(new Source(T_XEMS, "Геометрията на кантара", "The scale's geometry",
                "Уравненията на Sun са за класическо измерване ръка–крак, а кантарът измерва по сегменти. "
                        + "Коефициент на геометрията ги привежда към едно.",
                "Sun's equations are for the classic hand-to-foot reading, while the scale measures by segment. A "
                        + "geometry factor brings them together.",
                "XEMS · калибриране спрямо WLA25", "", "", 0, ""));
        s.add(new Source(T_XEMS, "Обработка на отчитанията", "Processing the readings",
                "Отчитанията с лош контакт се изключват; при няколко се използва средната стойност или медианата.",
                "Readings with poor contact are excluded; with several, the mean or the median is used.",
                "XEMS", "", "", 0, ""));
        s.add(new Source(T_XEMS, "Здравословно тегло", "Healthy weight",
                "Определя се от собствената мускулна маса при здравословен процент мазнини (Gallagher 2000).",
                "Derived from the client's own muscle mass at a healthy fat percentage (Gallagher 2000).",
                "XEMS · изведено от Gallagher 2000 и Schutz 2002", "", "", 0, ""));
        return s;
    }

    /** How the algorithm is built — four levels (also in the shared HTML). */
    public static final String[] HOW_BG = {
            "Тегло и импеданс на тялото при две честоти, в 5 сегмента.",
            "Валидирани уравнения изчисляват мазнини, мускули и вода, отделно за мъже и жени.",
            "Резултатите се сравняват с референтни норми, получени с DXA и ЯМР.",
            "Изглаждане между измерванията и оценка на готовността за тренировка."};
    public static final String[] HOW_EN = {
            "Weight and body impedance at two frequencies, in 5 segments.",
            "Validated equations compute fat, muscle and water, separately for men and women.",
            "The results are compared with reference norms obtained with DXA and MRI.",
            "Smoothing between measurements and an assessment of training readiness."};

    public static final String LIMITS_BG = "Биоимпедансният анализ е метод за оценка на състава на тялото и не "
            + "замества медицинско изследване. Отклонението спрямо DXA обикновено е няколко процентни пункта. За "
            + "най-голяма точност се измервайте при еднакви условия и следете тенденцията, а не единична стойност.";
    public static final String LIMITS_EN = "Bioimpedance analysis estimates body composition and does not replace a "
            + "medical examination. The deviation from DXA is usually a few percentage points. For the best accuracy "
            + "measure under the same conditions and follow the trend rather than a single value.";

    /** Peer-reviewed studies and the people measured in them (those with one sample). */
    public static int[] counts() {
        int studies = 0, people = 0;
        for (Source x : all()) {
            if (x.tier == T_STUDY) {
                studies++;
                people += x.n;
            }
        }
        return new int[] {studies, people};
    }

    // ================================================================ the sheet

    final Activity a;
    final boolean bg;
    XemsUi.Shell sh;
    LinearLayout grid;
    LinearLayout chips;
    int filter = -1;
    boolean portrait;

    ScaleSources(Activity a) {
        this.a = a;
        this.bg = XemsLang.tr("б", "e").equals("б");
    }

    static void open(Activity a) {
        try {
            new ScaleSources(a).show();
        } catch (Throwable t) {
            XemsGuard.report("ScaleSources.open", t);
        }
    }

    int dp(float v) {
        return XemsUi.dp(a, v);
    }

    void show() {
        XemsUi.init(a);
        sh = XemsUi.shell(a, tr("Научна основа", "Scientific basis"),
                tr("Методи и източници", "Methods and sources"), 1280);
        XemsUi.fullScreen(sh);
        int[] c = counts();
        LinearLayout top = XemsUi.horizontal(a);
        top.addView(big(String.valueOf(c[0]), tr("рецензирани научни публикации",
                "peer-reviewed publications"), 0xFF22C55E),
                XemsUi.weight(1, 0, a));
        top.addView(big(tr("над ", "over ") + (c[1] / 1000) + (bg ? " 000" : ",000"),
                tr("участници в изследванията", "study participants"),
                0xFF38BDF8),
                XemsUi.weight(1, 10, a));
        top.addView(big("DXA · " + tr("ЯМР", "MRI") + " · 4C", tr("референтни методи за валидиране",
                "reference methods for validation"), 0xFFA78BFA), XemsUi.weight(1, 10, a));
        sh.body.addView(top, XemsUi.matchWrap(a, 0));

        // how it is built: four levels, side by side
        sh.body.addView(XemsUi.label(a, tr("Методика", "Method")), XemsUi.matchWrap(a, 14));
        LinearLayout how = XemsUi.horizontal(a);
        int[] hc = {0xFF94A3B8, 0xFF22C55E, 0xFF22C55E, 0xFFA78BFA};
        String[] ht = bg ? new String[] {"Измерване", "Изчисление", "Норми", "Оценка"}
                : new String[] {"Measuring", "Calculation", "Norms", "Assessment"};
        String[] hs = bg ? new String[] {"кантар", "наука", "наука", "XEMS"}
                : new String[] {"scale", "science", "science", "XEMS"};
        for (int i = 0; i < 4; i++) {
            LinearLayout st = XemsUi.surface(a);
            st.setPadding(dp(14), dp(10), dp(14), dp(12));
            LinearLayout hh = XemsUi.horizontal(a);
            hh.setGravity(Gravity.CENTER_VERTICAL);
            hh.addView(XemsUi.text(a, (i + 1) + "  " + ht[i], 15, XemsUi.TEXT, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            hh.addView(XemsUi.text(a, hs[i], 12, hc[i], true));
            st.addView(hh);
            TextView tx = XemsUi.text(a, bg ? HOW_BG[i] : HOW_EN[i], 13, XemsUi.MUTED, false);
            tx.setLineSpacing(dp(2), 1f);
            st.addView(tx, XemsUi.matchWrap(a, 4));
            if (ScaleScreen.Columns.narrow(a) && i == 2) {
                // narrow screens: two by two (four side by side were squeezed)
                sh.body.addView(how, XemsUi.matchWrap(a, 6));
                how = XemsUi.horizontal(a);
            }
            how.addView(st, XemsUi.weight(1, i % 2 == 0 && (i == 0 || ScaleScreen.Columns.narrow(a)) ? 0 : 10, a));
        }
        sh.body.addView(how, XemsUi.matchWrap(a, ScaleScreen.Columns.narrow(a) ? 10 : 6));

        LinearLayout[] ch = new LinearLayout[1];
        sh.body.addView(XemsUi.chipRow(a, ch), XemsUi.matchWrap(a, 14));     // scrolls sideways when narrow
        chips = ch[0];
        grid = XemsUi.vertical(a);
        sh.body.addView(grid, XemsUi.matchWrap(a, 10));

        LinearLayout lim = XemsUi.surface(a);
        lim.setPadding(dp(16), dp(12), dp(16), dp(14));
        lim.addView(XemsUi.text(a, tr("Точност", "Accuracy"), 15, XemsUi.TEXT, true));
        TextView lt = XemsUi.text(a, bg ? LIMITS_BG : LIMITS_EN, 14, XemsUi.MUTED, false);
        lt.setLineSpacing(dp(2), 1f);
        lim.addView(lt, XemsUi.matchWrap(a, 4));
        sh.body.addView(lim, XemsUi.matchWrap(a, 12));

        filterChips();
        build();
        if (sh.dialog.getWindow() != null) {
            sh.dialog.getWindow().getDecorView().addOnLayoutChangeListener(new Turn(this));
        }
        sh.footer.addView(XemsUi.text(a, tr("Докоснете източник с DOI, за да отворите публикацията.",
                "Tap a source with a DOI to open the publication."), 13, XemsUi.MUTED, false),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView close = XemsUi.button(a, tr("Затвори", "Close"), XemsUi.PRIMARY);
        close.setOnClickListener(new ScaleScreen.CloseSheet(sh));
        sh.footer.addView(close, new LinearLayout.LayoutParams(dp(260), dp(56)));
        sh.dialog.show();
    }

    LinearLayout big(String value, String label, int color) {
        LinearLayout t = XemsUi.surface(a);
        t.setPadding(dp(16), dp(12), dp(16), dp(12));
        TextView v = XemsUi.text(a, value, 28, color, true);
        v.setIncludeFontPadding(false);
        t.addView(v);
        t.addView(XemsUi.text(a, label, 13, XemsUi.MUTED, false), XemsUi.matchWrap(a, 4));
        return t;
    }

    void filterChips() {
        chips.removeAllViews();
        String[] n = {tr("Всички", "All"), tierBg(T_STUDY), tierBg(T_STANDARD), tierBg(T_VENDOR), "XEMS"};
        if (!bg) {
            n = new String[] {"All", tierEn(T_STUDY), tierEn(T_STANDARD), tierEn(T_VENDOR), "XEMS"};
        }
        for (int i = 0; i < n.length; i++) {
            int tier = i - 1;
            TextView c = XemsUi.chip(a, n[i], filter == tier, tier < 0 ? 0xFF94A3B8 : tierColor(tier));
            c.setOnClickListener(new Filter(this, tier));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
            lp.rightMargin = dp(8);
            chips.addView(c, lp);
        }
    }

    void build() {
        portrait = ScaleScreen.Columns.portrait(a);
        grid.removeAllViews();
        int cols = portrait ? 1 : 2;
        LinearLayout line = null;
        int k = 0;
        for (Source x : all()) {
            if (filter >= 0 && x.tier != filter) {
                continue;
            }
            if (k % cols == 0) {
                line = XemsUi.horizontal(a);
                grid.addView(line, XemsUi.matchWrap(a, k == 0 ? 0 : 10));
            }
            line.addView(card(x), XemsUi.weight(1, k % cols == 0 ? 0 : 10, a));
            k++;
        }
        if (line != null && k % cols != 0) {
            line.addView(new View(a), XemsUi.weight(1, 10, a));
        }
    }

    LinearLayout card(Source x) {
        LinearLayout c = XemsUi.card(a);
        int col = tierColor(x.tier);
        c.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, col, 0.05f), dp(16), XemsUi.alpha(col, 90), dp(1)));
        LinearLayout head = XemsUi.horizontal(a);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.addView(XemsUi.text(a, bg ? x.topicBg : x.topicEn, 16, XemsUi.TEXT, true),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView pill = XemsUi.text(a, bg ? tierBg(x.tier) : tierEn(x.tier), 12, col, true);
        pill.setPadding(dp(10), dp(4), dp(10), dp(4));
        pill.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(col, 34), dp(12), XemsUi.alpha(col, 160), dp(1)));
        head.addView(pill);
        c.addView(head);
        TextView use = XemsUi.text(a, bg ? x.useBg : x.useEn, 14, XemsUi.TEXT, false);
        use.setLineSpacing(dp(2), 1f);
        c.addView(use, XemsUi.matchWrap(a, 6));
        TextView cite = XemsUi.text(a, x.cite, 13, XemsUi.MUTED, false);
        cite.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT,
                android.graphics.Typeface.ITALIC));
        c.addView(cite, XemsUi.matchWrap(a, 8));
        String who = bg ? x.whoBg : x.whoEn;
        if (who.length() > 0 || x.doi.length() > 0) {
            c.addView(XemsUi.text(a, who + (x.doi.length() > 0 ? (who.length() > 0 ? "  ·  " : "") + "DOI " + x.doi
                    + "  ↗" : ""), 12, x.doi.length() > 0 ? XemsUi.alpha(col, 230) : XemsUi.MUTED, true),
                    XemsUi.matchWrap(a, 4));
        }
        if (x.doi.length() > 0) {
            c.setOnClickListener(new OpenDoi(a, x.doi));
            XemsUi.pressable(c);
        }
        return c;
    }

    /**
     * An ⓘ popup's text with the way in at its foot: "Научна основа ›". Set {@link Open#pop} once the popup exists.
     */
    static LinearLayout withButton(Activity a, TextView text, Open open) {
        LinearLayout box = XemsUi.vertical(a);
        box.setBackgroundDrawable(text.getBackground());
        text.setBackgroundDrawable(null);
        box.addView(text);
        TextView b = XemsUi.button(a, tr("Методи и източници ›", "Methods and sources ›"),
                XemsUi.SECONDARY);
        b.setOnClickListener(open);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                XemsUi.dp(a, 52));
        lp.setMargins(XemsUi.dp(a, 16), 0, XemsUi.dp(a, 16), XemsUi.dp(a, 16));
        box.addView(b, lp);
        return box;
    }

    /** Opens the sheet (closing the popup it sits in, if any). */
    static final class Open implements View.OnClickListener {
        final Activity a;
        android.widget.PopupWindow pop;

        Open(Activity a) {
            this.a = a;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            if (pop != null) {
                try {
                    pop.dismiss();
                } catch (Throwable ignored) {
                }
            }
            open(a);
        }
    }

    // ------------------------------------------------------------------ named listeners (dx-safe)

    static final class Filter implements View.OnClickListener {
        final ScaleSources v;
        final int tier;

        Filter(ScaleSources v, int tier) {
            this.v = v;
            this.tier = tier;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.filter = tier;
            v.filterChips();
            v.build();
        }
    }

    static final class OpenDoi implements View.OnClickListener {
        final Activity a;
        final String doi;

        OpenDoi(Activity a, String doi) {
            this.a = a;
            this.doi = doi;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            try {
                a.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse("https://doi.org/" + doi)));
            } catch (Throwable t) {
                XemsGuard.report("ScaleSources.doi", t);
            }
        }
    }

    static final class Turn implements View.OnLayoutChangeListener, Runnable {
        final ScaleSources v;

        Turn(ScaleSources v) {
            this.v = v;
        }

        @Override
        public void onLayoutChange(View view, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            if (r - l > 0 && (b - t > r - l) != v.portrait) {
                v.portrait = b - t > r - l;
                view.post(this);
            }
        }

        @Override
        public void run() {
            v.build();
        }
    }
}
