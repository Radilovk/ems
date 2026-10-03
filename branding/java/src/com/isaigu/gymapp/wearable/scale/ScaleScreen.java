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
 * The scale page of one client (client row → scale icon) — a full-screen work surface, landscape, three columns:
 *
 * <ol>
 *   <li><b>Body.</b> The weight, live and big, one line of what to do now; the project's anatomical figure, front
 *       and back, painted segment by segment in the chosen layer (muscle / fat against normal, recovery against
 *       the client's own baseline). A tap on a segment selects it everywhere.</li>
 *   <li><b>Today.</b> The readiness gauge with its verdict for the session (full strength / −15 % / −30 %, the
 *       same factor Auto and the next-client plan apply); the radar of the five segments with the previous
 *       measurement as a ghost; the selected segment's numbers.</li>
 *   <li><b>Trend and EMS.</b> Four tiles (fat, muscle, water, visceral) with their change and sparkline — a tap
 *       puts the metric on the big trend chart; the current's reach per suit channel from the fat over each zone.</li>
 * </ol>
 *
 * Before a result everything shows the last measurement; the new one rolls in with the figure filling from the
 * feet and the radar growing. Saved by itself ("✓ Запазено"); every explanation lives behind ⓘ.
 */
public final class ScaleScreen {
    private ScaleScreen() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /** Height used when the client record has none (remembered per client once set here). */
    static final String H_KEY = "h";

    static final int M_FAT = 0, M_MUSCLE = 1, M_WATER = 2, M_VISC = 3, M_WEIGHT = 4;
    static final String[] M_KEY = {"fat", "muscle", "water", "visc", "w"};

    public static void open(Activity a, TrainUser u) {
        try {
            new Page(a, u).show();
        } catch (Throwable t) {
            XemsGuard.report("ScaleScreen.open", t);
        }
    }

    /** Everything one open page holds. */
    static final class Page implements ScaleLink.Listener, ScaleViews.OnSegment {
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
        TextView weightDelta;
        TextView status;
        TextView saved;
        TextView heightValue;
        LinearLayout heightRow;
        LinearLayout layerHolder;
        ScaleViews.Body body;
        TextView legend;
        ScaleViews.Gauge gauge;
        LinearLayout reasons;
        TextView when;
        ScaleViews.Radar radar;
        TextView detail;
        final LinearLayout[] tiles = new LinearLayout[4];
        final TextView[] tileValue = new TextView[4];
        final TextView[] tileDelta = new TextView[4];
        final ScaleViews.Trend[] spark = new ScaleViews.Trend[4];
        TextView trendTitle;
        ScaleViews.Trend trend;
        ScaleViews.Reach reach;
        TextView again;
        LinearLayout middle;
        LinearLayout right;
        ScaleLink link;
        android.widget.PopupWindow infoPop;

        int layer = ScaleViews.LAYER_MUSCLE;
        int selected = -1;
        int metric = M_FAT;
        JSONArray hist = new JSONArray();
        int at = -1;

        Page(Activity a, TrainUser u) {
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
            if (heightCm <= 0) {
                heightCm = male ? 178 : 165;
            }
        }

        int dp(float v) {
            return XemsUi.dp(a, v);
        }

        // ================================================================ layout

        void show() {
            XemsUi.init(a);
            String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                    : u.nickName != null ? u.nickName.trim() : "";
            s = XemsUi.shell(a, name.length() > 0 ? name : tr("Кантар", "Scale"),
                    tr("Кантар · бос, по тънки дрехи, преди тренировката",
                            "Scale · barefoot, light clothes, before the training"), 1280);
            XemsUi.fullScreen(s);
            s.info.setVisibility(View.VISIBLE);
            s.info.setOnClickListener(new Info(this));
            int screenH = a.getResources().getDisplayMetrics().heightPixels;
            int workH = Math.max(dp(460), screenH - dp(170));

            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.TOP);
            row.addView(leftColumn(workH), new LinearLayout.LayoutParams(0, workH, 0.95f));
            middle = middleColumn(workH);
            LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(0, workH, 1f);
            mp.leftMargin = dp(14);
            row.addView(middle, mp);
            right = rightColumn(workH);
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, workH, 1.12f);
            rp.leftMargin = dp(14);
            row.addView(right, rp);
            s.body.addView(row, XemsUi.matchWrap(a, 2));

            again = XemsUi.button(a, tr("Мери пак", "Measure again"), XemsUi.SECONDARY);
            again.setOnClickListener(new Again(this));
            again.setVisibility(View.INVISIBLE);
            s.footer.addView(again, new LinearLayout.LayoutParams(dp(220), dp(56)));
            s.footer.addView(XemsUi.spacer(a));
            TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
            done.setOnClickListener(new Done(this));
            s.footer.addView(done, new LinearLayout.LayoutParams(dp(260), dp(56)));

            hist = ScaleStore.list(a, userId);
            at = hist.length() - 1;
            render(false);
            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            WearableBlePermissions.ensureConnectPermission(a, new Start(this));
        }

        LinearLayout leftColumn(int h) {
            LinearLayout col = XemsUi.card(a);
            LinearLayout top = XemsUi.horizontal(a);
            top.setGravity(Gravity.BOTTOM);
            weight = XemsUi.text(a, "—", 54, XemsUi.TEXT, true);
            weight.setIncludeFontPadding(false);
            top.addView(weight);
            TextView unit = XemsUi.text(a, tr(" кг", " kg"), 18, XemsUi.MUTED, true);
            unit.setPadding(0, 0, 0, dp(8));
            top.addView(unit);
            weightDelta = XemsUi.text(a, "", 15, XemsUi.MUTED, true);
            weightDelta.setPadding(dp(12), 0, 0, dp(9));
            top.addView(weightDelta);
            top.setOnClickListener(new Metric(this, M_WEIGHT));
            col.addView(top);
            LinearLayout line = XemsUi.horizontal(a);
            line.setGravity(Gravity.CENTER_VERTICAL);
            status = XemsUi.text(a, "", 15, XemsUi.TEXT, true);
            line.addView(status, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            saved = XemsUi.badge(a, tr("✓ Запазено", "✓ Saved"), XemsUi.GO_TEXT);
            saved.setVisibility(View.GONE);
            line.addView(saved);
            col.addView(line, XemsUi.matchWrap(a, 2));
            heightRow = heightStepper();
            heightRow.setVisibility(heightFromProfile ? View.GONE : View.VISIBLE);
            col.addView(heightRow, XemsUi.matchWrap(a, 8));
            layerHolder = XemsUi.horizontal(a);
            col.addView(layerHolder, XemsUi.matchWrap(a, 12));
            body = new ScaleViews.Body(a);
            body.setOnSegment(this);
            col.addView(body, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            legend = XemsUi.text(a, "", 12, XemsUi.MUTED, false);
            legend.setGravity(Gravity.CENTER);
            col.addView(legend, XemsUi.matchWrap(a, 6));
            return col;
        }

        LinearLayout middleColumn(int h) {
            LinearLayout col = XemsUi.vertical(a);
            LinearLayout today = XemsUi.card(a);
            when = XemsUi.label(a, "");
            today.addView(when);
            gauge = new ScaleViews.Gauge(a);
            today.addView(gauge, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    Math.min(dp(230), (int) (h * 0.42f))));
            reasons = XemsUi.horizontal(a);
            reasons.setGravity(Gravity.CENTER);
            today.addView(reasons, XemsUi.matchWrap(a, 6));
            col.addView(today, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            LinearLayout zones = XemsUi.card(a);
            radar = new ScaleViews.Radar(a);
            radar.setOnSegment(this);
            zones.addView(radar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            detail = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            detail.setGravity(Gravity.CENTER);
            zones.addView(detail, XemsUi.matchWrap(a, 4));
            LinearLayout.LayoutParams zp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            zp.topMargin = dp(12);
            col.addView(zones, zp);
            return col;
        }

        LinearLayout rightColumn(int h) {
            LinearLayout col = XemsUi.vertical(a);
            String[] names = {tr("Мазнини", "Body fat"), tr("Мускули", "Muscle"), tr("Вода", "Water"),
                    tr("Висцерални", "Visceral")};
            for (int r = 0; r < 2; r++) {
                LinearLayout line = XemsUi.horizontal(a);
                for (int c = 0; c < 2; c++) {
                    int i = r * 2 + c;
                    LinearLayout t = XemsUi.surface(a);
                    t.setPadding(dp(14), dp(10), dp(14), dp(8));
                    LinearLayout head = XemsUi.horizontal(a);
                    head.setGravity(Gravity.CENTER_VERTICAL);
                    head.addView(XemsUi.text(a, names[i], 13, XemsUi.MUTED, false),
                            new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    tileDelta[i] = XemsUi.text(a, "", 13, XemsUi.MUTED, true);
                    head.addView(tileDelta[i]);
                    t.addView(head);
                    tileValue[i] = XemsUi.text(a, "—", 28, XemsUi.TEXT, true);
                    tileValue[i].setIncludeFontPadding(false);
                    t.addView(tileValue[i], XemsUi.matchWrap(a, 2));
                    spark[i] = new ScaleViews.Trend(a, true);
                    t.addView(spark[i], new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));
                    t.setOnClickListener(new Metric(this, i));
                    XemsUi.pressable(t);
                    tiles[i] = t;
                    line.addView(t, XemsUi.weight(1, c == 0 ? 0 : 10, a));
                }
                col.addView(line, XemsUi.matchWrap(a, r == 0 ? 0 : 10));
            }
            LinearLayout tc = XemsUi.card(a);
            trendTitle = XemsUi.label(a, "");
            tc.addView(trendTitle);
            trend = new ScaleViews.Trend(a, false);
            tc.addView(trend, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            LinearLayout.LayoutParams tp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            tp.topMargin = dp(12);
            col.addView(tc, tp);
            LinearLayout rc = XemsUi.card(a);
            rc.addView(XemsUi.label(a, tr("Ток до мускула · по канали", "Current to the muscle · per channel")));
            reach = new ScaleViews.Reach(a);
            rc.addView(reach, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(118)));
            col.addView(rc, XemsUi.matchWrap(a, 12));
            return col;
        }

        void layerControl() {
            layerHolder.removeAllViews();
            String[] labels = {tr("Мускули", "Muscle"), tr("Мазнини", "Fat"), tr("Възстановяване", "Recovery")};
            layerHolder.addView(XemsUi.segmented(a, labels, layer, new Layer(this)),
                    new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT));
        }

        LinearLayout heightStepper() {
            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.CENTER_VERTICAL);
            r.addView(XemsUi.text(a, tr("Ръст", "Height"), 14, XemsUi.AMBER, true),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            TextView minus = XemsUi.iconButton(a, "−", XemsUi.SURFACE, XemsUi.TEXT, 48);
            heightValue = XemsUi.text(a, "", 17, XemsUi.TEXT, true);
            heightValue.setGravity(Gravity.CENTER);
            TextView plus = XemsUi.iconButton(a, "+", XemsUi.SURFACE, XemsUi.TEXT, 48);
            r.addView(minus, new LinearLayout.LayoutParams(dp(48), dp(48)));
            r.addView(heightValue, new LinearLayout.LayoutParams(dp(96), dp(48)));
            r.addView(plus, new LinearLayout.LayoutParams(dp(48), dp(48)));
            XemsUi.repeatOnHold(minus, new HeightHold(this), -1);
            XemsUi.repeatOnHold(plus, new HeightHold(this), 1);
            updateHeight();
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

        // ================================================================ data → page

        JSONObject cur() {
            return at >= 0 ? hist.optJSONObject(at) : null;
        }

        JSONObject prev() {
            return at >= 1 ? hist.optJSONObject(at - 1) : null;
        }

        /** Paint everything from hist[at]; animate when the measurement just came in. */
        void render(boolean fresh) {
            JSONObject m = cur();
            JSONObject p = prev();
            boolean has = m != null && m.has("fat");
            middle.setAlpha(has ? 1f : 0.45f);
            right.setAlpha(has ? 1f : 0.45f);
            layerControl();
            if (m == null) {
                when.setText(tr("Още няма мерене", "No measurement yet"));
            } else {
                boolean today = System.currentTimeMillis() - m.optLong("t") < ScaleInsight.TODAY_MS;
                when.setText(fresh ? tr("Сега", "Now")
                        : (today ? tr("Днес · ", "Today · ") : tr("Последно · ", "Last · "))
                                + new SimpleDateFormat(today ? "HH:mm" : "d.MM.yyyy", Locale.US)
                                        .format(new Date(m.optLong("t"))));
                if (!fresh && weight.getText().toString().equals("—")) {
                    weight.setText(one(m.optDouble("w")));
                    weight.setTextColor(XemsUi.MUTED);
                }
            }
            setDelta(weightDelta, m, p, "w", tr(" кг", " kg"), false, true);
            readiness(m);
            zones(fresh);
            tilesAndTrend();
            reach.set(has ? ScaleInsight.channelFat(m) : null);
            if (fresh) {
                body.animateIn();
                radar.animateIn();
            }
        }

        double[] layerValues(JSONObject m, int forLayer, boolean forRadar) {
            if (m == null) {
                return null;
            }
            if (forLayer == ScaleViews.LAYER_READY) {
                int idx = indexOf(m);
                ScaleInsight.Readiness r = ScaleInsight.readiness(hist, idx);
                double[] v = new double[5];
                for (int i = 0; i < 5; i++) {
                    v[i] = forRadar ? 100 + r.swell[i] * ScaleViews.Radar.READY_K : r.swell[i];
                }
                return v;
            }
            return ScaleInsight.ofNormal(m, male, heightCm)[forLayer == ScaleViews.LAYER_MUSCLE ? 0 : 1];
        }

        int indexOf(JSONObject m) {
            for (int i = 0; i < hist.length(); i++) {
                if (hist.optJSONObject(i) == m) {
                    return i;
                }
            }
            return at;
        }

        void zones(boolean fresh) {
            JSONObject m = cur();
            body.set(!male, layer, layerValues(m, layer, false), selected);
            radar.set(layer, layerValues(m, layer, true),
                    layer == ScaleViews.LAYER_READY ? null : layerValues(prev(), layer, true), selected);
            legend.setText(layer == ScaleViews.LAYER_MUSCLE
                    ? tr("● под нормата   ● норма   ● над нормата", "● below normal   ● normal   ● above")
                    : layer == ScaleViews.LAYER_FAT
                            ? tr("● ниско   ● норма   ● високо", "● low   ● normal   ● high")
                            : tr("● като обичайно   ● подуване   ● силно подуване",
                                    "● as usual   ● swelling   ● strong swelling"));
            detail.setText(detailText(m));
        }

        String detailText(JSONObject m) {
            if (m == null || !m.has("segMus")) {
                return tr("Докосни зона на фигурата", "Tap a zone on the figure");
            }
            JSONArray k = m.optJSONArray("segMus");
            JSONArray f = m.optJSONArray("segFat");
            if (selected < 0) {
                double arms = ScaleInsight.asymmetry(k, ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM);
                double legs = ScaleInsight.asymmetry(k, ScaleProtocol.LEFT_LEG, ScaleProtocol.RIGHT_LEG);
                return tr("Баланс Л/Д · ръце ", "Balance L/R · arms ") + signedPct(arms)
                        + tr("  ·  крака ", "  ·  legs ") + signedPct(legs);
            }
            double[][] n = ScaleInsight.ofNormal(m, male, heightCm);
            ScaleInsight.Readiness r = ScaleInsight.readiness(hist, indexOf(m));
            String[] names = {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Дясна ръка", "Right arm"),
                    tr("Ляв крак", "Left leg"), tr("Десен крак", "Right leg")};
            StringBuilder b = new StringBuilder(names[selected]);
            b.append("  ·  ").append(tr("мускули ", "muscle ")).append(one(k.optDouble(selected)))
                    .append(tr(" кг (", " kg (")).append(Math.round(n[0][selected])).append(" %)");
            b.append("  ·  ").append(tr("мазнини ", "fat ")).append(one(f.optDouble(selected)))
                    .append(tr(" кг (", " kg (")).append(Math.round(n[1][selected])).append(" %)");
            if (!Double.isNaN(r.swell[selected])) {
                b.append("  ·  ").append(tr("подуване ", "swelling ")).append(signedPct(r.swell[selected]));
            }
            return b.toString();
        }

        void readiness(JSONObject m) {
            reasons.removeAllViews();
            if (m == null || m.optJSONArray("z20") == null) {
                gauge.set(-1, tr("Стъпи на кантара", "Step on the scale"), "");
                return;
            }
            ScaleInsight.Readiness r = ScaleInsight.readiness(hist, indexOf(m));
            if (!r.known()) {
                gauge.set(-1, tr("Базата се трупа", "Building the baseline"),
                        tr("готовността идва от второто мерене", "readiness comes with the second measurement"));
                return;
            }
            String verdict = r.factor >= 1 ? tr("Пълна сила", "Full strength")
                    : "−" + Math.round((1 - r.factor) * 100) + tr(" % днес", " % today");
            String sub = tr("спрямо обичайното за клиента · ", "against the client's usual · ") + r.base
                    + tr(" мерения", " measurements");
            gauge.set(r.score, verdict, sub);
            if (r.worst >= 0 && r.swell[r.worst] >= 0.4) {
                String[] names = {tr("торс", "trunk"), tr("Л. ръка", "L arm"), tr("Д. ръка", "R arm"),
                        tr("Л. крак", "L leg"), tr("Д. крак", "R leg")};
                reasons.addView(XemsUi.badge(a, names[r.worst] + "  " + signedPct(r.swell[r.worst]),
                        ScaleViews.swellCol(r.swell[r.worst])));
            }
            if (!Double.isNaN(r.dry) && r.dry >= 2) {
                TextView w = XemsUi.badge(a, tr("💧 по-малко вода  ", "💧 less water  ") + signedPct(r.dry),
                        XemsUi.AMBER);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.leftMargin = dp(8);
                reasons.addView(w, lp);
            }
        }

        void tilesAndTrend() {
            JSONObject m = cur();
            JSONObject p = prev();
            String[] unit = {" %", tr(" кг", " kg"), " %", ""};
            boolean[] upGood = {false, true, true, false};
            int[] col = {0xFFF59E0B, 0xFF22C55E, 0xFF38BDF8, 0xFFF97316};
            for (int i = 0; i < 4; i++) {
                double v = m != null ? m.optDouble(M_KEY[i], Double.NaN) : Double.NaN;
                tileValue[i].setText(Double.isNaN(v) ? "—" : (i == M_VISC ? String.valueOf((int) v) : one(v))
                        + (i == M_VISC ? "" : unit[i]));
                setDelta(tileDelta[i], m, p, M_KEY[i], "", upGood[i], false);
                spark[i].set(series(M_KEY[i]), times(), col[i], "");
                boolean sel = metric == i;
                tiles[i].setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, dp(14),
                        sel ? col[i] : XemsUi.alpha(XemsUi.STROKE, 0x88), dp(sel ? 2 : 1)));
            }
            String[] titles = {tr("Мазнини · %", "Body fat · %"), tr("Мускули · кг", "Muscle · kg"),
                    tr("Вода · %", "Water · %"), tr("Висцерални", "Visceral"), tr("Тегло · кг", "Weight · kg")};
            int[] colAll = {col[0], col[1], col[2], col[3], 0xFFA78BFA};
            trendTitle.setText(titles[metric]);
            trend.set(series(M_KEY[metric]), times(), colAll[metric], "");
        }

        double[] series(String key) {
            int n = Math.max(0, at + 1);
            double[] v = new double[n];
            for (int i = 0; i < n; i++) {
                JSONObject o = hist.optJSONObject(i);
                v[i] = o != null ? o.optDouble(key, Double.NaN) : Double.NaN;
            }
            return v;
        }

        long[] times() {
            int n = Math.max(0, at + 1);
            long[] t = new long[n];
            for (int i = 0; i < n; i++) {
                JSONObject o = hist.optJSONObject(i);
                t[i] = o != null ? o.optLong("t") : 0;
            }
            return t;
        }

        void setDelta(TextView t, JSONObject m, JSONObject p, String key, String unit, boolean upGood,
                boolean neutral) {
            if (m == null || p == null || !m.has(key) || !p.has(key)) {
                t.setText("");
                return;
            }
            double d = m.optDouble(key) - p.optDouble(key);
            if (Math.abs(d) < 0.05) {
                t.setText("=");
                t.setTextColor(XemsUi.MUTED);
                return;
            }
            t.setText((d > 0 ? "▲ " : "▼ ") + one(Math.abs(d)) + unit);
            boolean good = (d > 0) == upGood;
            t.setTextColor(neutral ? XemsUi.MUTED : good ? XemsUi.GO_TEXT : XemsUi.AMBER);
        }

        static String one(double v) {
            return Double.isNaN(v) ? "—" : String.format(Locale.US, "%.1f", v);
        }

        static String signedPct(double v) {
            return Double.isNaN(v) ? "—" : (v >= 0 ? "+" : "−") + String.format(Locale.US, "%.1f", Math.abs(v)) + " %";
        }

        // ================================================================ interaction

        @Override
        public void onSegment(int seg) {
            selected = seg;
            zones(false);
        }

        void setLayer(int l) {
            layer = l;
            layerControl();
            zones(false);
        }

        void setMetric(int i) {
            metric = i;
            tilesAndTrend();
        }

        void startLink() {
            if (link != null) {
                link.close();
            }
            saved.setVisibility(View.GONE);
            again.setVisibility(View.INVISIBLE);
            link = new ScaleLink(a, userId, male, age, heightCm, lastKg, this);
            link.start();
        }

        // ================================================================ the link

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
            weight.setText(one(kg));
            weight.setTextColor(stable ? XemsUi.TEXT : XemsUi.MUTED);
        }

        @Override
        public void onResult(ScaleProtocol.Reading r) {
            weight.setText(one(r.weightKg));
            weight.setTextColor(XemsUi.TEXT);
            ScaleBody b = ScaleBody.of(r, male, age, heightCm);
            JSONObject o = ScaleStore.save(a, userId, r, b);
            if (o != null) {
                saved.setVisibility(View.VISIBLE);
                XemsUi.enter(saved);
            }
            if (b == null) {
                say(tr("Само тегло — хвани дръжката с двете ръце", "Weight only — hold the handle with both hands"),
                        XemsUi.AMBER);
            }
            lastKg = r.weightKg;
            again.setVisibility(View.VISIBLE);
            hist = ScaleStore.list(a, userId);
            at = hist.length() - 1;
            render(true);
        }

        void showInfo(View anchor) {
            try {
                if (infoPop != null && infoPop.isShowing()) {
                    infoPop.dismiss();
                    infoPop = null;
                    return;
                }
                Context c = anchor.getContext();
                TextView t = XemsUi.text(c, tr("Мерене\n"
                        + "• боси стъпала, голи ръце на дръжката — тънките дрехи не пречат\n"
                        + "• преди тренировката, по едно и също време, 2 ч след хранене\n\n"
                        + "Готовност\n"
                        + "Съпротивлението на 20 и 100 kHz спрямо обичайното за този клиент. Подуването след тежка "
                        + "EMS (ден 2–4) го вдига → днес по-слабо: −15 % или −30 %. Същото прилагат Auto и "
                        + "плана за следващия клиент. По-силното от двете (дни почивка / кантар) печели.\n\n"
                        + "Зони\n"
                        + "100 % = нормата за ръста, теглото и пола (WLA25, като Fitdays). Пунктир = миналото мерене.\n\n"
                        + "Ток до мускула\n"
                        + "Мазнините над всяка зона изолират: къса колона = там токът стига по-малко — нужна е "
                        + "повече сила или по-широк импулс. Числото е спрямо средното за тялото.",
                        "Measuring\n"
                                + "• bare feet, bare hands on the handle — light clothes do not matter\n"
                                + "• before the training, same time of day, 2 h after a meal\n\n"
                                + "Readiness\n"
                                + "The 20 and 100 kHz impedance against this client's usual. Swelling after a hard EMS "
                                + "session (day 2–4) raises it → softer today: −15 % or −30 %. Auto and the next-client "
                                + "plan apply the same; the stronger of rest days and scale wins.\n\n"
                                + "Zones\n"
                                + "100 % = normal for the height, weight and sex (WLA25, as Fitdays). Dashed = last time.\n\n"
                                + "Current to the muscle\n"
                                + "Fat over a zone insulates: a short column = the current reaches less there — more "
                                + "strength or a wider pulse. Relative to the body's mean."), 14, XemsUi.TEXT, false);
                t.setLineSpacing(XemsUi.dp(c, 3), 1f);
                t.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
                t.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f),
                        XemsUi.dp(c, 14), 0xFF42A5F5, XemsUi.dp(c, 1)));
                infoPop = new android.widget.PopupWindow(t, XemsUi.dp(c, 520), ViewGroup.LayoutParams.WRAP_CONTENT,
                        true);
                infoPop.setOutsideTouchable(true);
                infoPop.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
                infoPop.setElevation(XemsUi.dp(c, 8));
                infoPop.showAsDropDown(anchor, -XemsUi.dp(c, 496), XemsUi.dp(c, 6));
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.info", t);
            }
        }
    }

    // ------------------------------------------------------------------ named listeners (dx-safe)

    static final class Start implements Runnable {
        final Page v;

        Start(Page v) {
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
        final Page v;

        Again(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.startLink();
        }
    }

    static final class Done implements View.OnClickListener {
        final Page v;

        Done(Page v) {
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
        final Page v;

        Dismissed(Page v) {
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
        final Page v;

        Info(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            v.showInfo(b);
        }
    }

    static final class HeightHold implements XemsUi.OnStep {
        final Page v;

        HeightHold(Page v) {
            this.v = v;
        }

        @Override
        public void onStep(int dir) {
            v.stepHeight(dir);
        }
    }

    static final class Layer implements XemsUi.OnIndex {
        final Page v;

        Layer(Page v) {
            this.v = v;
        }

        @Override
        public void onIndex(int i) {
            v.setLayer(i);
        }
    }

    static final class Metric implements View.OnClickListener {
        final Page v;
        final int i;

        Metric(Page v, int i) {
            this.v = v;
            this.i = i;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.setMetric(i);
        }
    }
}
