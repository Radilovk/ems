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
        s.add(new Source(T_STUDY, "Физическа възраст", "Physical age",
                "Медианите на мускулите на ръцете и краката и на мазнините по десетилетия — коя възраст им отговаря.",
                "The medians of arm + leg muscle and of fat by decade — which age the body matches.",
                "Imboden MT, Welch WA, Swartz AM et al. PLoS One 2017;12(4):e0175110 и e0176161",
                "3 327 възрастни · DXA", "3,327 adults · DXA", 3327, "10.1371/journal.pone.0175110"));
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
                "Принципът на двете честоти, точността и правилата за мерене: бос, по едно време, без тренировка преди.",
                "The two-frequency principle, the accuracy and the measuring rules: barefoot, same time, no training before.",
                "Kyle UG, Bosaeus I, De Lorenzo AD et al. (ESPEN). Clin Nutr 2004;23:1226–1243 и 1430–1453",
                "преглед на експертна група (ESPEN)", "an expert group review (ESPEN)", 0, "10.1016/j.clnu.2004.06.004"));
        s.add(new Source(T_STUDY, "Почивка и натоварване при EMS", "Rest and load in EMS",
                "Почивка поне 4 дни, по-леки първи тренировки, много течности — основа на плана и на готовността.",
                "At least 4 days of rest, lighter first sessions, plenty of fluid — the base of the plan and readiness.",
                "Kemmler W, Fröhlich M, von Stengel S, Kleinöder H. Dtsch Z Sportmed 2016;67:218–221",
                "препоръки за безопасна WB-EMS тренировка", "guideline for safe WB-EMS training", 0, ""));
        s.add(new Source(T_STUDY, "Изглаждане между мерения", "Smoothing between weigh-ins",
                "Филтър, който отделя шума (контакт, последната вода) от истинската промяна на тъканите.",
                "A filter that separates noise (contact, the last drink) from the real change of tissue.",
                "Kalman RE. J Basic Eng 1960;82:35–45", "математически метод", "a mathematical method", 0,
                "10.1115/1.3662552"));
        s.add(new Source(T_STANDARD, "Базов метаболизъм от мускулите", "Resting energy from the lean mass",
                "370 + 21.6 × безмазнената маса — колко изгаря тялото в покой.",
                "370 + 21.6 × fat-free mass — what the body burns at rest.",
                "Katch–McArdle · McArdle WD, Katch FI, Katch VL. Exercise Physiology (учебник)",
                "стандартна формула в спортната физиология", "a standard formula of exercise physiology", 0, ""));
        s.add(new Source(T_STANDARD, "ИТМ", "BMI",
                "Класовете на ИТМ — показваме ги, но тялото не съдим по тях: ИТМ не знае какво е теглото.",
                "The BMI classes — shown, but the body is not judged by them: BMI does not know what the weight is.",
                "WHO. Obesity: preventing and managing the global epidemic. Technical Report Series 894, 2000",
                "Световна здравна организация", "World Health Organization", 0, ""));
        s.add(new Source(T_VENDOR, "Зоните, костите, висцералните мазнини", "Zones, bone, visceral fat",
                "Алгоритъмът на производителя (iComon WLA25, който ползва Fitdays): мазнини и мускули по 5-те зони, "
                        + "костна маса, висцерални мазнини, стандартите на зоните — там, където няма публикувано по-добро. "
                        + "Числата съвпадат с Fitdays.",
                "The maker's algorithm (iComon WLA25, used by Fitdays): fat and muscle in the 5 zones, bone mass, "
                        + "visceral fat, the zone standards — where nothing better is published. The numbers match Fitdays.",
                "iComon WLA25 · отворен порт sacoma-lib и Fitman (MIT)", "без публикувана проверка",
                "no published validation", 0, ""));
        s.add(new Source(T_VENDOR, "Норми на костите и подкожните мазнини", "Bone and subcutaneous ranges",
                "Таблиците за костна маса по тегло и за подкожните мазнини — от кантарите с електроди.",
                "The tables for bone mass by weight and subcutaneous fat — from electrode scales.",
                "Tanita / Fitdays · таблици на производителите", "без публикувана проверка", "no published validation", 0,
                ""));
        s.add(new Source(T_XEMS, "Готовност за тренировка", "Readiness for training",
                "Съотношението на импеданса на 100 и 20 kHz спрямо собствената база на клиента: подуването след тежка "
                        + "EMS го вдига (принципът е по Kyle 2004). Праговете −15 % и −30 % сила са наше правило и се "
                        + "проверяват с повторни мерения.",
                "The 100 / 20 kHz impedance ratio against the client's own baseline: swelling after hard EMS raises it "
                        + "(the principle per Kyle 2004). The −15 % and −30 % strength steps are our rule, checked on "
                        + "repeated measurements.",
                "XEMS · по принципа на Kyle 2004", "собствена база на всеки клиент", "each client's own baseline", 0, ""));
        s.add(new Source(T_XEMS, "Геометрията на кантара", "The scale's geometry",
                "Уравненията на Sun са за класическо мерене ръка–крак; кантарът мери по зони. Един коефициент ги "
                        + "изравнява — нагласен по реално мерене на мъж, еднакъв за двата пола.",
                "Sun's equations are for the classic hand-to-foot reading; the scale reads by zone. One factor matches "
                        + "them — set on a real measurement of a man, the same for both sexes.",
                "XEMS · калибриране спрямо WLA25", "отворено за повече референтни мерения (DXA)",
                "open to more reference measurements (DXA)", 0, ""));
        s.add(new Source(T_XEMS, "Едно мерене от няколко стъпвания", "One measurement from several step-ons",
                "При лош контакт, първо мерене, резултат далеч от последните дни или разминаване — още едно "
                        + "стъпване; лошите отпадат, от две — средното, от три — медианата.",
                "On poor contact, a first measurement, a result far from the last days or a disagreement — one more "
                        + "step-on; the bad ones out, the mean of two, the median of three.",
                "XEMS · правила на сесията", "проверено в симулация", "checked in simulation", 0, ""));
        s.add(new Source(T_XEMS, "Здравословно тегло", "Healthy weight",
                "Собствените мускули на клиента при здравословен % мазнини (по Gallagher 2000) — не ИТМ 22.",
                "The client's own muscle at a healthy fat % (per Gallagher 2000) — not BMI 22.",
                "XEMS · изведено от Gallagher 2000 и Schutz 2002", "", "", 0, ""));
        return s;
    }

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
                tr("Откъде идва всяко число на кантара — и колко да му вярваме",
                        "Where every number of the scale comes from — and how far to trust it"), 1280);
        XemsUi.fullScreen(sh);
        int[] c = counts();
        LinearLayout top = XemsUi.horizontal(a);
        top.addView(big(String.valueOf(c[0]), tr("рецензирани проучвания", "peer-reviewed studies"), 0xFF22C55E),
                XemsUi.weight(1, 0, a));
        top.addView(big(tr("над ", "over ") + (c[1] / 1000) + (bg ? " 000" : ",000"),
                tr("души в техните референтни мерения", "people in their reference measurements"), 0xFF38BDF8),
                XemsUi.weight(1, 10, a));
        top.addView(big("DXA · " + tr("ЯМР", "MRI") + " · 4C", tr("златният стандарт, с който са сверени",
                "the gold standards they were checked against"), 0xFFA78BFA), XemsUi.weight(1, 10, a));
        sh.body.addView(top, XemsUi.matchWrap(a, 0));

        chips = XemsUi.horizontal(a);
        sh.body.addView(chips, XemsUi.matchWrap(a, 14));
        grid = XemsUi.vertical(a);
        sh.body.addView(grid, XemsUi.matchWrap(a, 10));

        LinearLayout lim = XemsUi.surface(a);
        lim.setPadding(dp(16), dp(12), dp(16), dp(14));
        lim.addView(XemsUi.text(a, tr("Граници — честно", "Limits — honestly"), 15, XemsUi.TEXT, true));
        TextView lt = XemsUi.text(a, tr("Кантарът с електроди е ориентир, не медицинско изследване. За отделен човек "
                + "оценката на мазнините обикновено се отклонява с няколко процентни пункта от DXA, а водата и "
                + "контактът местят импеданса от ден на ден. Затова мерим повторно при съмнение, изглаждаме между "
                + "мерения и гледаме тенденцията — тя е по-точна от едно число.",
                "An electrode scale is a guide, not a medical test. For one person the fat estimate is usually a few "
                        + "percentage points off DXA, and water and contact move the impedance from day to day. So we "
                        + "measure again when in doubt, smooth between weigh-ins and read the trend — it is more "
                        + "accurate than one number."), 14, XemsUi.MUTED, false);
        lt.setLineSpacing(dp(2), 1f);
        lim.addView(lt, XemsUi.matchWrap(a, 4));
        sh.body.addView(lim, XemsUi.matchWrap(a, 12));

        filterChips();
        build();
        if (sh.dialog.getWindow() != null) {
            sh.dialog.getWindow().getDecorView().addOnLayoutChangeListener(new Turn(this));
        }
        sh.footer.addView(XemsUi.text(a, tr("Докосни източник с DOI — отваря публикацията.",
                "Tap a source with a DOI — it opens the paper."), 13, XemsUi.MUTED, false),
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
        TextView b = XemsUi.button(a, tr("Научна основа — откъде са числата ›", "Scientific basis — where the numbers come from ›"),
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
