package com.isaigu.gymapp.widget;

import android.app.Activity;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.StyleSpan;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * The "i" of every XEMS module: what it is, what it gives (value first), how to work with it.
 * A locked module shows only what it is and what it gives, plus "Абонирай се" (prices and payment come later:
 * {@link #subscribe}). Opened from the module tiles (XemsNav: the "i", and a tap on a locked tile) and from
 * Settings → Access & license (the module chips).
 */
public final class XemsModuleInfo {

    /** VR haptics (Quest 3): not a licence module — always open; its "i" lives in VrPanel's header and tile. */
    public static final String VR = "vr";

    private XemsModuleInfo() {}

    private static boolean open(String id) {
        return VR.equals(id) || XemsLicense.has(id);
    }

    /** One module's text; value lines are "Lead — rest" (the lead is bold). */
    static final class Entry {
        String glyph;
        int tint;
        String name;
        String tagline;
        String[] value;
        String[] how;
    }

    static Entry entry(String id) {
        Entry e = new Entry();
        if (XemsLicense.TIMER.equals(id)) {
            e.glyph = "⏱";
            e.tint = XemsUi.AMBER;
            e.name = tr("Таймер", "Timer");
            e.tagline = tr("Интервали и блокови програми, които вървят сами", "Intervals and block programs that run by themselves");
            e.value = new String[] {
                tr("Тренировка с ясна структура — работа и почивка се сменят сами, а ти следиш клиента и техниката.",
                        "A clear structure — work and rest switch by themselves while you watch the client and the technique."),
                tr("Блокови програми — загрявка, основна част и разпускане с различна сила, честота и ширина в една тренировка.",
                        "Block programs — warm-up, main part and cool-down with their own strength, frequency and width in one session."),
                tr("Звуков сигнал при всяка смяна — клиентът знае кога да натовари и кога да отпусне.",
                        "A sound at every switch — the client knows when to work and when to relax."),
                tr("Запазени програми — любимите схеми се пускат с едно докосване, еднакво от всеки треньор.",
                        "Saved programs — favourite schemes start with one tap, the same for every trainer."),
                tr("Върви с тренировката — тръгва със старта и спира при пауза или край.",
                        "Runs with the training — starts with it, stops on pause or at the end."),
            };
            e.how = new String[] {
                tr("Докосни плочката „Таймер“.", "Tap the Timer tile."),
                tr("Задай интервал (работа, почивка, повторения) или избери блокова програма от „Програми“.",
                        "Set an interval (work, rest, repeats) or pick a block program under Programs."),
                tr("Натисни „Активирай“ — таймерът е готов.", "Press Activate — the timer is ready."),
                tr("Пусни тренировката — таймерът тръгва с нея.", "Start the training — the timer starts with it."),
                tr("„Запази“ пази схемата за следващия път, „Звук“ сменя сигнала.",
                        "Save keeps the scheme for next time; Sound changes the signal."),
            };
        } else if (XemsLicense.MUSIC.equals(id)) {
            e.glyph = "♫";
            e.tint = XemsUi.GO;
            e.name = tr("Музика", "Music");
            e.tagline = tr("Импулсите следват ритъма на музиката", "The impulses follow the music");
            e.value = new String[] {
                tr("Тренировка в ритъм — силата на импулса следва бийта и динамиката на песента в реално време.",
                        "Training in rhythm — the impulse strength follows the beat and the dynamics of the song in real time."),
                tr("Повече мотивация — клиентът усеща музиката с цялото тяло и времето минава неусетно.",
                        "More motivation — the client feels the music with the whole body and the time flies."),
                tr("Безопасно — таванът на силата на всеки клиент никога не се надхвърля.",
                        "Safe — each client's strength ceiling is never exceeded."),
                tr("Нагласява се сам — ритъм, минимум, мекота и честота се сменят според всяка част на песента.",
                        "Tunes itself — rhythm, minimum, softness and frequency follow each part of the song."),
                tr("Точно на удара — забавянето по Bluetooth до костюма се измерва и компенсира.",
                        "Right on the beat — the Bluetooth delay to the suit is measured and compensated."),
            };
            e.how = new String[] {
                tr("Добави клиента на екрана „Тренировка“ и задай тавана на силата от кръговия слайдер на реда му.",
                        "Add the client on the Training screen and set the strength ceiling with the round slider on their row."),
                tr("Докосни „Музика“ и добави песни с ☰.", "Tap Music and add songs with ☰."),
                tr("Натисни ▶ — импулсите тръгват с музиката.", "Press ▶ — the impulses start with the music."),
                tr("С ⚙ промени усещането (Ритъм, Минимум, Мекота, Чувствителност) или остави „Авто“.",
                        "Use ⚙ to change the feel (Rhythm, Minimum, Softness, Sensitivity) or keep Auto."),
                tr("✕ спира музиката и затваря плейъра.", "✕ stops the music and closes the player."),
            };
        } else if (XemsLicense.PULSE.equals(id)) {
            e.glyph = "♥";
            e.tint = XemsUi.ACCENT;
            e.name = tr("Пулс", "Heart rate");
            e.tagline = tr("Пулсът на живо и защита от претоварване", "Live heart rate and overload protection");
            e.value = new String[] {
                tr("Пулсът пред очите ти — голям циферблат със зоните, от гривна Xiaomi Smart Band на ръката на клиента.",
                        "The heart rate in front of you — a big dial with zones, from a Xiaomi Smart Band on the client's wrist."),
                tr("Автоматично намаляване — щом пулсът тръгне над безопасната граница, натоварването се сваля плавно. Системата гледа 20 секунди напред и реагира навреме.",
                        "Automatic reduction — when the heart rate heads above the safe limit, the load goes down smoothly. The system looks 20 seconds ahead and reacts in time."),
                tr("Връща се само — когато пулсът се успокои, натоварването се вдига обратно, никога над зададеното от теб.",
                        "Comes back by itself — once the heart rate settles, the load goes back up, never above what you set."),
                tr("Лична граница — 30 секунди калибриране в покой нагласяват прага за конкретния човек.",
                        "A personal limit — 30 seconds of calibration at rest set the threshold for this person."),
                tr("Калории и графика на пулса за цялата тренировка.", "Calories and a heart-rate chart for the whole session."),
            };
            e.how = new String[] {
                tr("Въведи гривната веднъж: Настройки → Гривна.", "Set up the band once: Settings → Band."),
                tr("Сложи гривната на клиента и докосни „Пулс“.", "Put the band on the client and tap Heart rate."),
                tr("Натисни ↻ на кръга — 30 секунди калибриране в покой.", "Press ↻ on the dial — 30 seconds of calibration at rest."),
                tr("Включи „Авто-намаляване“, ако искаш системата да пази клиента сама (по подразбиране е изключено).",
                        "Turn on Auto-reduce if you want the system to protect the client (off by default)."),
                tr("Твоята ръчна промяна на силата винаги е с приоритет.", "Your manual strength change always wins."),
            };
        } else if (XemsLicense.AUTO.equals(id)) {
            e.glyph = "A";
            e.tint = 0xFF26A69A;
            e.name = tr("Авто", "Auto");
            e.tagline = tr("Готови програми с вградени граници", "Ready programs with built-in limits");
            e.value = new String[] {
                tr("13 готови програми по цел — стягане, отслабване и здраве; активни и в покой (антицелулит, дренаж, гръб, 50+, следродилно възстановяване).",
                        "13 ready programs by goal — toning, weight loss and health; active and at rest (anti-cellulite, drainage, back, 50+, postpartum)."),
                tr("Нагласени по клиента — полът, възрастта, ръстът, теглото и здравето сменят времето, силата и зоните.",
                        "Fitted to the client — sex, age, height, weight and health change the time, strength and zones."),
                tr("Твърди граници — силата и параметрите се местят само в разрешеното за всеки момент от програмата.",
                        "Hard limits — strength and parameters move only within what each moment of the program allows."),
                tr("Групова тренировка — една програма за всички, но границите и силата са за всеки човек поотделно.",
                        "Group training — one program for everyone, with limits and strength per person."),
                tr("Еднакво качество — нов треньор провежда тренировка като опитен.",
                        "Consistent quality — a new trainer runs a session like an experienced one."),
                tr("Отчетът влиза в клиентския картон.", "The report goes into the client's card."),
            };
            e.how = new String[] {
                tr("Докосни „Авто“ и избери цел — препоръчаната програма е първа.",
                        "Tap Auto and pick a goal — the recommended program comes first."),
                tr("Провери клиента (профилът е на един ред) и потвърди здравето.",
                        "Check the client (the profile is one line) and confirm their health."),
                tr("Прегледай плана — време, усещане, пулс; при нужда смени продължителността или интензитета.",
                        "Review the plan — time, feel, heart rate; change duration or intensity if needed."),
                tr("„Пусни импулсите“ → нагласи силата по редове → „Старт“.",
                        "Start the impulses → set the strength per row → Start."),
                tr("По време на сесията: сила ±, пауза и „Приключи“.", "During the session: strength ±, pause and Finish."),
            };
        } else if (XemsLicense.AI.equals(id)) {
            e.glyph = "AI";
            e.tint = XemsUi.ORANGE;
            e.name = tr("AI тренировка", "AI session");
            e.tagline = tr("Умна сесия, която се нагласява по пулса и умората в реално време",
                    "A smart session that adapts to heart rate and fatigue in real time");
            e.value = new String[] {
                tr("Води тренировката сама — всяка секунда следи пулса и умората на мускулите и решава сила, паузи и почивки.",
                        "Leads the session — every second it watches heart rate and muscle fatigue and sets strength, pauses and rests."),
                tr("Личен план — от целта, профила и пулса в покой се строи план с фази и блокове за този човек.",
                        "A personal plan — goal, profile and resting heart rate build a plan with phases and blocks for this person."),
                tr("Многопластова безопасност — защитни граници, бутони СТОП и НАМАЛИ, никога увеличение над плана.",
                        "Layered safety — protective limits, STOP and REDUCE buttons, never an increase above the plan."),
                tr("Обяснява се — на екрана се вижда какво прави AI и защо.", "Explains itself — the screen shows what the AI does and why."),
                tr("Отчет с резултат — време в зоната, максимален пулс, възстановяване и доза; споделя се с клиента.",
                        "A report with results — time in zone, max heart rate, recovery and dose; shareable with the client."),
                tr("Може и самостоятелно — клиентът тренира и без треньор до себе си, при по-строги граници.",
                        "Works solo too — the client can train without a trainer next to them, with stricter limits."),
            };
            e.how = new String[] {
                tr("Докосни „AI тренировка“ и избери цел и продължителност.", "Tap AI session and pick a goal and duration."),
                tr("Потвърди клиента и здравето („Без противопоказания, добре е днес“).",
                        "Confirm the client and their health (\"No contraindications, feeling well today\")."),
                tr("Пулс в покой — 30 секунди с гривната на ръката.", "Resting heart rate — 30 seconds with the band on the wrist."),
                tr("Прегледай плана и нагласи силата по скалата на усещането (0–10).",
                        "Review the plan and set the strength on the feel scale (0–10)."),
                tr("„Старт“ — AI води; ти можеш да паузираш, да намалиш или да спреш по всяко време.",
                        "Start — the AI leads; you can pause, reduce or stop at any time."),
                tr("„Затвори“ приключва сесията и отваря отчета в клиентския картон.",
                        "Close ends the session and opens the report in the client's card."),
            };
        } else if (VR.equals(id)) {
            e.glyph = "VR";
            e.tint = 0xFF5C6BC0;                        // = VrPanel.TINT
            e.name = tr("VR хаптика", "VR haptics");
            e.tagline = tr("Ударите в играта на Quest 3 стават импулси в костюма", "Hits in a Quest 3 game become impulses in the suit");
            e.value = new String[] {
                tr("Тренировка-игра — клиентът боксира, сече или стреля във VR и усеща всеки удар с мускулите.",
                        "A training game — the client boxes, slices or shoots in VR and feels every hit in the muscles."),
                tr("Безопасно — силата никога не минава тавана на треньора и абсолютните граници на костюма.",
                        "Safe — the strength never goes above the trainer's ceiling and the suit's absolute limits."),
                tr("Само истинските удари — щраквания в менюта и фоново бръмчене се отрязват; колко строго решаваш ти.",
                        "Only the real hits — menu clicks and background rumble are dropped; you decide how strictly."),
                tr("По-малко умора — избраните мускулни групи почиват, докато играта води силата.",
                        "Less fatigue — the chosen muscle groups rest while the game drives the strength."),
            };
            e.how = new String[] {
                tr("Веднъж: подготви играта с приложението XEMS VR (Termux) на таблета.",
                        "Once: prepare the game with the XEMS VR app (Termux) on the tablet."),
                tr("Отвори „Тренировка“, добави клиента и задай силата — тя е таванът.",
                        "Open Training, add the client and set the strength — it is the ceiling."),
                tr("Пусни играта в шлема — плочката „VR“ показва „● игра“.", "Start the game on the headset — the VR tile shows \"● game\"."),
                tr("Пусни реда — ударите в играта движат силата.", "Start the row — hits in the game move the strength."),
                tr("„Кои удари минават“: „Само силни“ при много шум, „Всички“ при тихи игри.",
                        "Which hits pass: Strong only for noisy games, All for quiet ones."),
                tr("„Най-слаб удар“ вдига слабите удари; „Нарастване“ ги омекотява.",
                        "Weakest hit lifts the faint hits; Rise softens them."),
            };
        } else {
            e.glyph = "⌚";
            e.tint = 0xFF42A5F5;
            e.name = tr("Гривна", "Band");
            e.tagline = tr("Тренировката в ръката ти", "The training on your wrist");
            e.value = new String[] {
                tr("Свобода от таблета — старт, пауза и сила от гривната, докато си до клиента.",
                        "Free from the tablet — start, pause and strength from the band while you are next to the client."),
                tr("Приложение XEMS на гривната — пулс, таймер, музика, AI и обобщение след тренировката на китката.",
                        "The XEMS app on the band — heart rate, timer, music, AI and the session summary on the wrist."),
                tr("Работи и без инсталиране — музикалният екран на гривната става дистанционно за тренировката.",
                        "Works without installing too — the band's music screen becomes the training remote."),
                tr("Xiaomi Smart Band 8, 9 и 10.", "Xiaomi Smart Band 8, 9 and 10."),
            };
            e.how = new String[] {
                tr("Настройки → Гривна: избери гривната и въведи ключа ѝ веднъж.", "Settings → Band: pick the band and enter its key once."),
                tr("От същия екран инсталирай приложението XEMS на гривната.", "Install the XEMS app on the band from the same screen."),
                tr("При старт на тренировката приложението на гривната се отваря само.", "At the start of a session the band app opens by itself."),
                tr("От гривната: старт и пауза, сила + и −.", "On the band: start and pause, strength + and −."),
            };
        }
        return e;
    }

    /** Info of module {@code id} (XemsLicense ids); {@code open} (may be null) opens the module from the sheet. */
    public static void show(Activity a, String id, Runnable open) {
        if (a == null || id == null) {
            return;
        }
        try {
            build(a, id, open);
        } catch (Throwable t) {
            XemsGuard.report("XemsModuleInfo.show", t);
        }
    }

    private static void build(Activity a, String id, Runnable open) {
        Entry e = entry(id);
        boolean on = open(id);
        XemsUi.Shell s = XemsUi.shell(a, e.name, null, 640);

        // hero: the module's mark + what it is + whether it is in the subscription
        LinearLayout hero = XemsUi.horizontal(a);
        hero.setGravity(Gravity.CENTER_VERTICAL);
        TextView mark = XemsUi.text(a, e.glyph, e.glyph.length() > 1 ? 20 : 28, e.tint, true);
        mark.setGravity(Gravity.CENTER);
        GradientDrawable disc = new GradientDrawable();
        disc.setShape(GradientDrawable.OVAL);
        disc.setColor(XemsUi.alpha(e.tint, 0x2E));
        disc.setStroke(XemsUi.dp(a, 2), XemsUi.alpha(e.tint, 0x88));
        mark.setBackgroundDrawable(disc);
        int ms = XemsUi.dp(a, 64);
        hero.addView(mark, new LinearLayout.LayoutParams(ms, ms));
        LinearLayout heroText = XemsUi.vertical(a);
        TextView tagline = XemsUi.text(a, e.tagline, 17, XemsUi.TEXT, true);
        tagline.setLineSpacing(0, 1.15f);
        heroText.addView(tagline);
        TextView state = XemsUi.text(a, VR.equals(id) ? tr("✓ Винаги включено", "✓ Always on")
                : on ? tr("✓ Включено в абонамента ти", "✓ Included in your subscription")
                : tr("🔒 Не е включено в абонамента ти", "🔒 Not in your subscription"), 13, on ? XemsUi.GO_TEXT : XemsUi.AMBER, true);
        heroText.addView(state, XemsUi.matchWrap(a, 6));
        LinearLayout.LayoutParams htp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        htp.leftMargin = XemsUi.dp(a, 16);
        hero.addView(heroText, htp);
        s.body.addView(hero, XemsUi.matchWrap(a, 6));

        // what it gives
        s.body.addView(XemsUi.label(a, tr("Какво ти дава", "What it gives you")), XemsUi.matchWrap(a, 22));
        LinearLayout values = XemsUi.vertical(a);
        for (int i = 0; i < e.value.length; i++) {
            values.addView(valueRow(a, e.value[i], e.tint), XemsUi.matchWrap(a, i == 0 ? 0 : 8));
        }
        s.body.addView(values);

        if (on) {
            // how to work with it (only when it is unlocked)
            s.body.addView(XemsUi.label(a, tr("Как се работи", "How to use it")), XemsUi.matchWrap(a, 22));
            for (int i = 0; i < e.how.length; i++) {
                s.body.addView(stepRow(a, i + 1, e.how[i], e.tint), XemsUi.matchWrap(a, i == 0 ? 0 : 10));
            }
            TextView ok = XemsUi.button(a, tr("Разбрах", "Got it"), open != null ? XemsUi.SECONDARY : XemsUi.PRIMARY);
            ok.setOnClickListener(new Close(s, null));
            s.footer.addView(ok, XemsUi.weight(1f, 0, a));
            if (open != null) {
                TextView go = XemsUi.button(a, tr("Отвори ", "Open ") + e.name, XemsUi.PRIMARY);
                go.setOnClickListener(new Close(s, open));
                s.footer.addView(go, XemsUi.weight(1.4f, 10, a));
            }
        } else {
            TextView later = XemsUi.button(a, tr("Не сега", "Not now"), XemsUi.GHOST);
            later.setOnClickListener(new Close(s, null));
            s.footer.addView(later, XemsUi.weight(1f, 0, a));
            TextView sub = XemsUi.button(a, tr("Абонирай се", "Subscribe"), XemsUi.ACCENT_BTN);
            sub.setOnClickListener(new Close(s, new Subscribe(a, id)));
            s.footer.addView(sub, XemsUi.weight(1.4f, 10, a));
        }

        s.dialog.show();
        XemsUi.fitHeight(a, s, 0.9f);
        stagger(s.body);
    }

    /** "Lead — rest": a tinted check, the lead in bold. */
    private static View valueRow(Activity a, String line, int tint) {
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.TOP);
        int pad = XemsUi.dp(a, 12);
        row.setPadding(pad, pad, XemsUi.dp(a, 14), pad);
        row.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 14), XemsUi.STROKE, XemsUi.dp(a, 1)));
        TextView check = XemsUi.text(a, "✓", 13, tint, true);
        check.setGravity(Gravity.CENTER);
        GradientDrawable d = new GradientDrawable();
        d.setShape(GradientDrawable.OVAL);
        d.setColor(XemsUi.alpha(tint, 0x2E));
        check.setBackgroundDrawable(d);
        int cs = XemsUi.dp(a, 24);
        row.addView(check, new LinearLayout.LayoutParams(cs, cs));
        TextView t = XemsUi.text(a, "", 15, XemsUi.TEXT, false);
        t.setLineSpacing(0, 1.2f);
        int cut = line.indexOf(" — ");
        SpannableString sp = new SpannableString(line);
        if (cut > 0) {
            sp.setSpan(new StyleSpan(Typeface.BOLD), 0, cut, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        }
        t.setText(sp);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(a, 12);
        tp.topMargin = XemsUi.dp(a, 2);
        row.addView(t, tp);
        return row;
    }

    private static View stepRow(Activity a, int n, String line, int tint) {
        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.TOP);
        TextView num = XemsUi.text(a, String.valueOf(n), 13, XemsUi.ON_ACCENT, true);
        num.setGravity(Gravity.CENTER);
        GradientDrawable d = new GradientDrawable();
        d.setShape(GradientDrawable.OVAL);
        d.setColor(tint);
        num.setBackgroundDrawable(d);
        int ns = XemsUi.dp(a, 26);
        row.addView(num, new LinearLayout.LayoutParams(ns, ns));
        TextView t = XemsUi.text(a, line, 15, XemsUi.TEXT, false);
        t.setLineSpacing(0, 1.2f);
        LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tp.leftMargin = XemsUi.dp(a, 12);
        tp.topMargin = XemsUi.dp(a, 4);
        row.addView(t, tp);
        return row;
    }

    /** Rows rise in one after another (the body and the value list). */
    private static void stagger(LinearLayout body) {
        int k = 0;
        for (int i = 0; i < body.getChildCount(); i++) {
            View v = body.getChildAt(i);
            if (v instanceof LinearLayout && ((LinearLayout) v).getOrientation() == LinearLayout.VERTICAL) {
                LinearLayout list = (LinearLayout) v;
                for (int j = 0; j < list.getChildCount(); j++) {
                    rise(list.getChildAt(j), k++);
                }
            } else {
                rise(v, k++);
            }
        }
    }

    private static void rise(View v, int k) {
        v.setAlpha(0f);
        v.setTranslationY(XemsUi.dp(v.getContext(), 10));
        v.animate().alpha(1f).translationY(0).setStartDelay(Math.min(k, 12) * 35L).setDuration(220).start();
    }

    /**
     * "Абонирай се" for a locked module. Prices and the payment are not set yet: for now it tells what comes
     * and how to unlock with a key. Replace the body here when the prices and the payment are ready.
     */
    public static void subscribe(Activity a, String id) {
        if (a == null) {
            return;
        }
        try {
            Entry e = entry(id);
            XemsUi.Shell s = XemsUi.shell(a, tr("Абонамент · ", "Subscription · ") + e.name, e.tagline, 520);
            TextView lead = XemsUi.text(a, tr("Цените и плащането идват съвсем скоро — тук, с едно докосване.",
                    "Prices and payment are coming very soon — right here, in one tap."), 16, XemsUi.TEXT, true);
            lead.setLineSpacing(0, 1.2f);
            s.body.addView(lead, XemsUi.matchWrap(a, 4));
            TextView key = XemsUi.text(a, tr("Имаш ключ за достъп? Въведи го в Настройки → Достъп и лиценз и модулът се отключва веднага.",
                    "Have an access key? Enter it in Settings → Access & license and the module unlocks at once."), 14, XemsUi.MUTED, false);
            key.setLineSpacing(0, 1.2f);
            s.body.addView(key, XemsUi.matchWrap(a, 12));
            TextView dev = XemsUi.text(a, tr("ID на таблета: ", "Tablet ID: ") + XemsLicense.deviceIdShown(), 13, XemsUi.HINT, false);
            s.body.addView(dev, XemsUi.matchWrap(a, 14));
            TextView ok = XemsUi.button(a, tr("Разбрах", "Got it"), XemsUi.PRIMARY);
            ok.setOnClickListener(new Close(s, null));
            s.footer.addView(ok, XemsUi.weight(1f, 0, a));
            s.dialog.show();
            XemsUi.fitHeight(a, s, 0.9f);
            stagger(s.body);
        } catch (Throwable t) {
            XemsGuard.report("XemsModuleInfo.subscribe", t);
        }
    }

    static String tr(String bg, String en) {
        try {
            return XemsLang.tr(bg, en);
        } catch (Throwable t) {
            return bg;
        }
    }

    // ================================================================ listeners

    static final class Close implements View.OnClickListener {
        private final XemsUi.Shell shell;
        private final Runnable then;

        Close(XemsUi.Shell shell, Runnable then) {
            this.shell = shell;
            this.then = then;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            try {
                shell.dialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (then != null) {
                try {
                    then.run();
                } catch (Throwable t) {
                    XemsGuard.report("XemsModuleInfo.then", t);
                }
            }
        }
    }

    static final class Subscribe implements Runnable {
        private final Activity activity;
        private final String id;

        Subscribe(Activity activity, String id) {
            this.activity = activity;
            this.id = id;
        }

        @Override
        public void run() {
            subscribe(activity, id);
        }
    }

    /** Settings chip → the module's info (no "open" there: modules live on the training page). */
    public static final class ChipClick implements View.OnClickListener {
        private final String id;

        public ChipClick(String id) {
            this.id = id;
        }

        @Override
        public void onClick(View v) {
            XemsUi.haptic(v);
            Activity a = null;
            android.content.Context c = v.getContext();
            while (c instanceof android.content.ContextWrapper) {
                if (c instanceof Activity) {
                    a = (Activity) c;
                    break;
                }
                c = ((android.content.ContextWrapper) c).getBaseContext();
            }
            show(a, id, null);
        }
    }
}
