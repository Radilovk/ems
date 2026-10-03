package com.isaigu.gymapp.wearable.scale;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.ai.AiModel;
import com.isaigu.gymapp.ai.AiProfile;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.wearable.WearableBlePermissions;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import org.json.JSONArray;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * The weigh-in sheet of one client (client row → scale icon), landscape: on the left the live weight, big, with
 * one line that says what to do now; on the right the result — body fat, muscle, water, visceral fat with the
 * change since last time, then the five segments. Before a result the right side shows the last measurement.
 * Saved by itself the moment the scale finishes ("✓ Запазено"); ⓘ holds how to measure.
 */
public final class ScaleScreen {
    private ScaleScreen() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /** Height used when the client record has none (remembered per client once set here). */
    static final String H_KEY = "h";

    public static void open(Activity a, TrainUser u) {
        try {
            new View_(a, u).show();
        } catch (Throwable t) {
            XemsGuard.report("ScaleScreen.open", t);
        }
    }

    /** Everything one open sheet holds. */
    static final class View_ implements ScaleLink.Listener {
        final Activity a;
        final TrainUser u;
        final long userId;
        boolean male = true;
        int age = 35;
        int heightCm;
        boolean heightFromProfile;
        double lastKg;
        XemsUi.Shell s;
        TextView weight;
        TextView status;
        TextView saved;
        LinearLayout results;
        LinearLayout heightRow;
        TextView heightValue;
        TextView again;
        ScaleLink link;
        android.widget.PopupWindow infoPop;

        View_(Activity a, TrainUser u) {
            this.a = a;
            this.u = u;
            this.userId = u.id;
            AiProfile p = AiProfile.of(u);
            if (p != null) {
                if (p.sex != null) {
                    male = p.sex != AiModel.Sex.FEMALE;
                }
                if (p.age != null) {
                    age = p.age;
                }
                heightCm = p.heightCm;
                if (p.weightKg != null) {
                    lastKg = p.weightKg;
                }
            }
            heightFromProfile = heightCm > 0;
            if (heightCm <= 0) {
                heightCm = ScaleStore.prefs(a).getInt(H_KEY + userId, 0);
            }
        }

        void show() {
            XemsUi.init(a);
            String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                    : u.nickName != null ? u.nickName.trim() : "";
            s = XemsUi.shell(a, tr("Кантар", "Scale") + (name.length() > 0 ? " · " + name : ""),
                    tr("Бос, по тънки дрехи, преди тренировката", "Barefoot, light clothes, before the training"),
                    1080);
            s.info.setVisibility(View.VISIBLE);
            s.info.setOnClickListener(new Info(this));

            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.TOP);

            // left: the live weight and what to do now
            LinearLayout left = XemsUi.card(a);
            left.setGravity(Gravity.CENTER_HORIZONTAL);
            int pd = XemsUi.dp(a, 20);
            left.setPadding(pd, pd, pd, pd);
            weight = XemsUi.text(a, "—", 60, XemsUi.TEXT, true);
            weight.setGravity(Gravity.CENTER);
            left.addView(weight, XemsUi.matchWrap(a, 6));
            TextView unit = XemsUi.text(a, tr("кг", "kg"), 15, XemsUi.MUTED, false);
            unit.setGravity(Gravity.CENTER);
            left.addView(unit, XemsUi.matchWrap(a, 0));
            status = XemsUi.text(a, "", 16, XemsUi.TEXT, true);
            status.setGravity(Gravity.CENTER);
            left.addView(status, XemsUi.matchWrap(a, 18));
            saved = XemsUi.text(a, "", 14, XemsUi.GO_TEXT, true);
            saved.setGravity(Gravity.CENTER);
            saved.setVisibility(View.GONE);
            left.addView(saved, XemsUi.matchWrap(a, 8));
            heightRow = heightStepper();
            left.addView(heightRow, XemsUi.matchWrap(a, 16));
            heightRow.setVisibility(heightFromProfile ? View.GONE : View.VISIBLE);
            if (heightCm <= 0) {
                heightCm = male ? 178 : 165;
            }
            updateHeight();
            row.addView(left, new LinearLayout.LayoutParams(XemsUi.dp(a, 320), ViewGroup.LayoutParams.WRAP_CONTENT));

            // right: the result (or the last one)
            results = XemsUi.vertical(a);
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            rp.leftMargin = XemsUi.dp(a, 16);
            row.addView(results, rp);
            s.body.addView(row, XemsUi.matchWrap(a, 4));

            JSONObject last = ScaleStore.latest(a, userId);
            showResult(last, ScaleStore.previous(a, userId), false);

            again = XemsUi.button(a, tr("Мери пак", "Measure again"), XemsUi.SECONDARY);
            again.setOnClickListener(new Again(this));
            again.setVisibility(View.GONE);
            s.footer.addView(again, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 56), 1f));
            s.footer.addView(XemsUi.spacer(a), new LinearLayout.LayoutParams(XemsUi.dp(a, 12), 1));
            TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
            done.setOnClickListener(new Done(this));
            s.footer.addView(done, new LinearLayout.LayoutParams(0, XemsUi.dp(a, 56), 1f));

            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            XemsUi.fitHeight(a, s, 0.92f);
            WearableBlePermissions.ensureConnectPermission(a, new Start(this));
        }

        LinearLayout heightStepper() {
            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.CENTER);
            TextView minus = XemsUi.iconButton(a, "−", XemsUi.SURFACE, XemsUi.TEXT, 48);
            heightValue = XemsUi.text(a, "", 18, XemsUi.TEXT, true);
            heightValue.setGravity(Gravity.CENTER);
            TextView plus = XemsUi.iconButton(a, "+", XemsUi.SURFACE, XemsUi.TEXT, 48);
            LinearLayout col = XemsUi.vertical(a);
            col.setGravity(Gravity.CENTER_HORIZONTAL);
            TextView why = XemsUi.text(a, tr("Ръст (липсва в профила)", "Height (not in the profile)"), 13,
                    XemsUi.AMBER, false);
            why.setGravity(Gravity.CENTER);
            col.addView(why);
            LinearLayout line = XemsUi.horizontal(a);
            line.setGravity(Gravity.CENTER);
            line.addView(minus, new LinearLayout.LayoutParams(XemsUi.dp(a, 48), XemsUi.dp(a, 48)));
            line.addView(heightValue, new LinearLayout.LayoutParams(XemsUi.dp(a, 110), XemsUi.dp(a, 48)));
            line.addView(plus, new LinearLayout.LayoutParams(XemsUi.dp(a, 48), XemsUi.dp(a, 48)));
            col.addView(line, XemsUi.matchWrap(a, 4));
            r.addView(col);
            XemsUi.repeatOnHold(minus, new HeightHold(this), -1);
            XemsUi.repeatOnHold(plus, new HeightHold(this), 1);
            return r;
        }

        void stepHeight(int d) {
            heightCm = Math.max(100, Math.min(220, heightCm + d));
            ScaleStore.prefs(a).edit().putInt(H_KEY + userId, heightCm).apply();
            updateHeight();
        }

        void updateHeight() {
            if (heightValue != null) {
                heightValue.setText(heightCm + tr(" см", " cm"));
            }
        }

        void startLink() {
            if (link != null) {
                link.close();
            }
            saved.setVisibility(View.GONE);
            again.setVisibility(View.GONE);
            link = new ScaleLink(a, userId, male, age, heightCm, lastKg, this);
            link.start();
        }

        // ---------------------------------------------------------------- the link

        @Override
        public void onState(int st) {
            switch (st) {
                case ScaleLink.SEARCHING:
                    say(tr("Стъпи бос на кантара", "Step on the scale barefoot"), XemsUi.TEXT);
                    break;
                case ScaleLink.CONNECTING:
                    say(tr("Свързвам се…", "Connecting…"), XemsUi.MUTED);
                    break;
                case ScaleLink.READY:
                case ScaleLink.MEASURING:
                    say(tr("Хвани дръжката и задръж", "Hold the handle and stay still"), XemsUi.AMBER);
                    break;
                case ScaleLink.DONE:
                    say(tr("✓ Готово — може да слезе", "✓ Done — step off"), XemsUi.GO_TEXT);
                    break;
                case ScaleLink.NO_BLUETOOTH:
                    say(tr("Включи Bluetooth на таблета", "Turn Bluetooth on"), XemsUi.DANGER);
                    break;
                default:
                    break;
            }
        }

        void say(String text, int color) {
            status.setText(text);
            status.setTextColor(color);
        }

        @Override
        public void onLive(double kg, boolean stable) {
            weight.setText(kg1(kg));
            weight.setTextColor(stable ? XemsUi.TEXT : XemsUi.MUTED);
        }

        @Override
        public void onResult(ScaleProtocol.Reading r) {
            weight.setText(kg1(r.weightKg));
            weight.setTextColor(XemsUi.TEXT);
            ScaleBody b = ScaleBody.of(r, male, age, heightCm);
            JSONObject prev = ScaleStore.latest(a, userId);
            JSONObject o = ScaleStore.save(a, userId, r, b);
            if (o != null) {
                saved.setText(tr("✓ Запазено", "✓ Saved"));
                saved.setVisibility(View.VISIBLE);
            }
            if (b == null) {
                say(tr("Само тегло — хвани дръжката с двете ръце", "Weight only — hold the handle with both hands"),
                        XemsUi.AMBER);
            }
            lastKg = r.weightKg;
            again.setVisibility(View.VISIBLE);
            showResult(o, prev, true);
            XemsUi.fitHeight(a, s, 0.92f);
        }

        // ---------------------------------------------------------------- the result

        void showResult(JSONObject m, JSONObject prev, boolean fresh) {
            results.removeAllViews();
            if (m == null || !m.has("fat")) {
                TextView t = XemsUi.text(a, tr("Още няма измерване с кантара.\nСтъпи бос, хвани дръжката — "
                        + "резултатът се появява тук и се пази при клиента.",
                        "No scale measurement yet.\nStep on barefoot and hold the handle — the result appears here "
                                + "and stays with the client."), 15, XemsUi.MUTED, false);
                t.setLineSpacing(XemsUi.dp(a, 3), 1f);
                results.addView(t, XemsUi.matchWrap(a, 24));
                return;
            }
            String when = fresh ? tr("Сега", "Now")
                    : tr("Последно · ", "Last · ") + new SimpleDateFormat("d.MM.yyyy", Locale.US)
                            .format(new Date(m.optLong("t")));
            results.addView(XemsUi.label(a, when), XemsUi.matchWrap(a, 0));

            LinearLayout hero = XemsUi.horizontal(a);
            hero.addView(tile(tr("Мазнини", "Body fat"), pct(m.optDouble("fat")),
                    delta(m, prev, "fat", " %", false)), XemsUi.weight(1, 0, a));
            hero.addView(tile(tr("Мускули", "Muscle"), kg1(m.optDouble("muscle")) + tr(" кг", " kg"),
                    delta(m, prev, "muscle", tr(" кг", " kg"), true)), XemsUi.weight(1, 8, a));
            hero.addView(tile(tr("Вода", "Water"), pct(m.optDouble("water")),
                    delta(m, prev, "water", " %", true)), XemsUi.weight(1, 8, a));
            hero.addView(tile(tr("Висцерални", "Visceral"), String.valueOf(m.optInt("visc")),
                    delta(m, prev, "visc", "", false)), XemsUi.weight(1, 8, a));
            results.addView(hero, XemsUi.matchWrap(a, 8));

            JSONArray f = m.optJSONArray("segFat");
            JSONArray k = m.optJSONArray("segMus");
            if (f != null && k != null) {
                results.addView(XemsUi.label(a, tr("По зони · мускули / мазнини", "By zone · muscle / fat")),
                        XemsUi.matchWrap(a, 16));
                LinearLayout seg = XemsUi.horizontal(a);
                int[] order = {ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM, ScaleProtocol.TRUNK,
                        ScaleProtocol.LEFT_LEG, ScaleProtocol.RIGHT_LEG};
                String[] names = {tr("Л. ръка", "L arm"), tr("Д. ръка", "R arm"), tr("Торс", "Trunk"),
                        tr("Л. крак", "L leg"), tr("Д. крак", "R leg")};
                for (int i = 0; i < order.length; i++) {
                    seg.addView(segTile(names[i], k.optDouble(order[i]), f.optDouble(order[i])),
                            XemsUi.weight(1, i == 0 ? 0 : 8, a));
                }
                results.addView(seg, XemsUi.matchWrap(a, 6));
            }

            TextView more = XemsUi.text(a, tr("ИТМ ", "BMI ") + one(m.optDouble("bmi"))
                    + tr("  ·  Скелетни мускули ", "  ·  Skeletal muscle ") + pct(m.optDouble("skel"))
                    + tr("  ·  Кости ", "  ·  Bone ") + kg1(m.optDouble("bone")) + tr(" кг", " kg")
                    + tr("  ·  Обмяна ", "  ·  BMR ") + m.optInt("bmr") + tr(" ккал", " kcal")
                    + tr("  ·  Възраст на тялото ", "  ·  Body age ") + m.optInt("bage"), 13, XemsUi.MUTED, false);
            results.addView(more, XemsUi.matchWrap(a, 14));
            if (fresh) {
                XemsUi.enter(results);
            }
        }

        View tile(String label, String value, String change) {
            LinearLayout t = XemsUi.surface(a);
            t.setGravity(Gravity.CENTER_HORIZONTAL);
            int p = XemsUi.dp(a, 12);
            t.setPadding(p, p, p, p);
            TextView l = XemsUi.text(a, label, 13, XemsUi.MUTED, false);
            l.setGravity(Gravity.CENTER);
            t.addView(l);
            TextView v = XemsUi.text(a, value, 26, XemsUi.TEXT, true);
            v.setGravity(Gravity.CENTER);
            t.addView(v, XemsUi.matchWrap(a, 4));
            if (change != null) {
                boolean good = change.startsWith("+") == change.endsWith("•");
                String shown = change.substring(0, change.length() - 1);
                TextView c = XemsUi.text(a, shown, 13, good ? XemsUi.GO_TEXT : XemsUi.AMBER, true);
                c.setGravity(Gravity.CENTER);
                t.addView(c, XemsUi.matchWrap(a, 2));
            }
            return t;
        }

        View segTile(String name, double muscleKg, double fatKg) {
            LinearLayout t = XemsUi.surface(a);
            t.setGravity(Gravity.CENTER_HORIZONTAL);
            int p = XemsUi.dp(a, 10);
            t.setPadding(p, p, p, p);
            TextView n = XemsUi.text(a, name, 13, XemsUi.MUTED, false);
            n.setGravity(Gravity.CENTER);
            t.addView(n);
            TextView v = XemsUi.text(a, kg1(muscleKg), 18, XemsUi.TEXT, true);
            v.setGravity(Gravity.CENTER);
            t.addView(v, XemsUi.matchWrap(a, 2));
            TextView ft = XemsUi.text(a, kg1(fatKg), 13, XemsUi.AMBER, false);
            ft.setGravity(Gravity.CENTER);
            t.addView(ft, XemsUi.matchWrap(a, 0));
            return t;
        }

        /**
         * "+0.4 %" with a trailing marker: '•' when up is the good direction, '◦' when down is — the tile colours
         * it; null when there is nothing to compare or no change.
         */
        static String delta(JSONObject m, JSONObject prev, String key, String unit, boolean upGood) {
            if (prev == null || !prev.has(key) || !m.has(key)) {
                return null;
            }
            double d = m.optDouble(key) - prev.optDouble(key);
            if (Math.abs(d) < 0.05) {
                return null;
            }
            String s = (d > 0 ? "+" : "−") + one(Math.abs(d)) + unit;
            return s + (upGood ? "•" : "◦");
        }

        static String one(double v) {
            return Double.isNaN(v) ? "—" : String.format(Locale.US, "%.1f", v);
        }

        static String kg1(double v) {
            return one(v);
        }

        static String pct(double v) {
            return one(v) + " %";
        }

        void showInfo(View anchor) {
            try {
                if (infoPop != null && infoPop.isShowing()) {
                    infoPop.dismiss();
                    infoPop = null;
                    return;
                }
                Context c = anchor.getContext();
                TextView t = XemsUi.text(c, tr("Как да е точно и сравнимо:\n"
                        + "• боси стъпала, голи ръце на дръжката — дрехите не пречат\n"
                        + "• преди тренировката, не след нея (потта сваля мазнините на хартия)\n"
                        + "• по едно и също време, поне 2 ч след хранене\n\n"
                        + "Числата са по алгоритъма на Fitdays (WLA25) от съпротивлението на 20 и 100 kHz. "
                        + "Най-вярна е промяната при един и същ човек.",
                        "For accurate, comparable numbers:\n"
                                + "• bare feet, bare hands on the handle — clothes do not matter\n"
                                + "• before the training, not after it\n"
                                + "• same time of day, at least 2 h after a meal\n\n"
                                + "Computed with the Fitdays algorithm (WLA25) from the 20 and 100 kHz impedance. "
                                + "The change for one person is the most reliable."), 14, XemsUi.TEXT, false);
                t.setLineSpacing(XemsUi.dp(c, 3), 1f);
                t.setPadding(XemsUi.dp(c, 16), XemsUi.dp(c, 12), XemsUi.dp(c, 16), XemsUi.dp(c, 12));
                t.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f),
                        XemsUi.dp(c, 14), 0xFF42A5F5, XemsUi.dp(c, 1)));
                infoPop = new android.widget.PopupWindow(t, XemsUi.dp(c, 400), ViewGroup.LayoutParams.WRAP_CONTENT,
                        true);
                infoPop.setOutsideTouchable(true);
                infoPop.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
                infoPop.setElevation(XemsUi.dp(c, 8));
                infoPop.showAsDropDown(anchor, -XemsUi.dp(c, 376), XemsUi.dp(c, 6));
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.info", t);
            }
        }
    }

    // ------------------------------------------------------------------ named listeners (dx-safe)

    static final class Start implements Runnable {
        final View_ v;

        Start(View_ v) {
            this.v = v;
        }

        @Override
        public void run() {
            try {
                v.startLink();
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.start", t);
            }
        }
    }

    static final class Again implements View.OnClickListener {
        final View_ v;

        Again(View_ v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.startLink();
        }
    }

    static final class Done implements View.OnClickListener {
        final View_ v;

        Done(View_ v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            try {
                v.s.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Dismissed implements DialogInterface.OnDismissListener {
        final View_ v;

        Dismissed(View_ v) {
            this.v = v;
        }

        @Override
        public void onDismiss(DialogInterface d) {
            if (v.link != null) {
                v.link.close();
                v.link = null;
            }
        }
    }

    static final class Info implements View.OnClickListener {
        final View_ v;

        Info(View_ v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            v.showInfo(b);
        }
    }

    static final class HeightHold implements XemsUi.OnStep {
        final View_ v;

        HeightHold(View_ v) {
            this.v = v;
        }

        @Override
        public void onStep(int dir) {
            v.stepHeight(dir);
        }
    }
}
