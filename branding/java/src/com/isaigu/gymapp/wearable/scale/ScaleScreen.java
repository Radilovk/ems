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
 * The scale page of one client (client row → scale icon) — a full-screen work surface, landscape, two views behind
 * one switch at the top:
 *
 * <ul>
 *   <li><b>Днес</b> (this measurement): the body figure painted by the chosen layer (muscle / fat against normal,
 *       recovery against the client's own baseline, the current's reach per suit muscle group); the readiness gauge
 *       with today's verdict; the radar of the five segments; fat / muscle / water / physical age; the body-type
 *       map; the reach per channel.</li>
 *   <li><b>Проследяване</b> (comparison): from a chosen earlier measurement (last time · 3 back · the first) to the
 *       newest — the figure painted by the change per segment (muscle gained green, fat lost green), the big trend of
 *       one metric, the radar then vs now, the from → to table, the body-type map with its trail.</li>
 * </ul>
 *
 * The left column (weight live, what to do now, body type, the figure) stays in both. Saved by itself ("✓ Запазено");
 * every explanation lives behind ⓘ.
 */
public final class ScaleScreen {
    private ScaleScreen() {}

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    /** Height used when the client record has none (remembered per client once set here). */
    static final String H_KEY = "h";

    static final int MODE_DAY = 0, MODE_TRACK = 1;
    static final int M_FAT = 0, M_MUSCLE = 1, M_WATER = 2, M_AGE = 3, M_WEIGHT = 4;
    /** "page" = physical age, computed (ScaleInsight.body), not stored. */
    static final String[] M_KEY = {"fat", "muscle", "water", "page", "w"};
    static final int[] M_COL = {0xFFF59E0B, 0xFF22C55E, 0xFF38BDF8, 0xFFA78BFA, 0xFFE879F9};
    static final int LAYER_REACH = 3;
    static final int T_MUSCLE = 0, T_FAT = 1;

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
        int workH;
        LinearLayout modeHolder;
        LinearLayout rangeHolder;
        TextView weight;
        TextView weightDelta;
        TextView status;
        TextView saved;
        TextView heightValue;
        LinearLayout heightRow;
        TextView typeChip;
        LinearLayout layerHolder;
        ScaleViews.Body body;
        TextView legend;
        LinearLayout middle;
        LinearLayout right;
        TextView again;
        ScaleLink link;
        android.widget.PopupWindow infoPop;

        // day
        ScaleViews.Gauge gauge;
        LinearLayout reasons;
        TextView when;
        ScaleViews.Radar radar;
        TextView detail;
        final LinearLayout[] tiles = new LinearLayout[4];
        final TextView[] tileValue = new TextView[4];
        final TextView[] tileDelta = new TextView[4];
        ScaleViews.Reach reach;
        ScaleViews.TypeMap typeMap;
        // track
        LinearLayout metricHolder;
        TextView trendTitle;
        ScaleViews.Trend trend;
        LinearLayout table;

        int mode = MODE_DAY;
        int layer = ScaleViews.LAYER_MUSCLE;
        int trackLayer = T_MUSCLE;
        int selected = -1;
        int metric = M_FAT;
        /** Compare from: 0 = the previous, 1 = three back, 2 = the first. */
        int range = 0;
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
            workH = Math.max(dp(440), screenH - dp(234));

            LinearLayout bar = XemsUi.horizontal(a);
            bar.setGravity(Gravity.CENTER_VERTICAL);
            modeHolder = XemsUi.horizontal(a);
            bar.addView(modeHolder, new LinearLayout.LayoutParams(dp(380), ViewGroup.LayoutParams.WRAP_CONTENT));
            bar.addView(XemsUi.spacer(a));
            rangeHolder = XemsUi.horizontal(a);
            bar.addView(rangeHolder);
            s.body.addView(bar, XemsUi.matchWrap(a, 0));

            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.TOP);
            row.addView(leftColumn(), new LinearLayout.LayoutParams(0, workH, 0.95f));
            middle = XemsUi.vertical(a);
            LinearLayout.LayoutParams mp = new LinearLayout.LayoutParams(0, workH, 1f);
            mp.leftMargin = dp(14);
            row.addView(middle, mp);
            right = XemsUi.vertical(a);
            LinearLayout.LayoutParams rp = new LinearLayout.LayoutParams(0, workH, 1.12f);
            rp.leftMargin = dp(14);
            row.addView(right, rp);
            s.body.addView(row, XemsUi.matchWrap(a, 12));

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
            build();
            render(false);
            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            WearableBlePermissions.ensureConnectPermission(a, new Start(this));
        }

        LinearLayout leftColumn() {
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
            col.addView(top);
            LinearLayout line = XemsUi.horizontal(a);
            line.setGravity(Gravity.CENTER_VERTICAL);
            status = XemsUi.text(a, "", 15, XemsUi.TEXT, true);
            line.addView(status, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            saved = XemsUi.badge(a, tr("✓ Запазено", "✓ Saved"), XemsUi.GO_TEXT);
            saved.setVisibility(View.GONE);
            line.addView(saved);
            col.addView(line, XemsUi.matchWrap(a, 2));
            typeChip = XemsUi.text(a, "", 16, XemsUi.TEXT, true);
            typeChip.setPadding(dp(14), dp(8), dp(14), dp(8));
            typeChip.setVisibility(View.GONE);
            LinearLayout.LayoutParams tcp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            tcp.topMargin = dp(8);
            col.addView(typeChip, tcp);
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

        /** The middle and right columns of the current view. */
        void build() {
            middle.removeAllViews();
            right.removeAllViews();
            modeHolder.removeAllViews();
            modeHolder.addView(XemsUi.segmented(a, new String[] {tr("Днес", "Today"), tr("Проследяване", "Tracking")},
                    mode, new Mode(this)), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            rangeHolder.removeAllViews();
            if (mode == MODE_DAY) {
                buildDay();
            } else {
                buildTrack();
                String[] r = {tr("Спрямо миналото", "Since last time"), tr("3 мерения назад", "3 back"),
                        tr("От началото", "Since the first")};
                for (int i = 0; i < r.length; i++) {
                    TextView c = XemsUi.chip(a, r[i], i == range, 0xFF38BDF8);
                    c.setOnClickListener(new Range(this, i));
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                            dp(48));
                    lp.leftMargin = dp(8);
                    rangeHolder.addView(c, lp);
                }
            }
        }

        void buildDay() {
            LinearLayout today = XemsUi.card(a);
            when = XemsUi.label(a, "");
            today.addView(when);
            gauge = new ScaleViews.Gauge(a);
            today.addView(gauge, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    Math.min(dp(220), (int) (workH * 0.40f))));
            reasons = XemsUi.horizontal(a);
            reasons.setGravity(Gravity.CENTER);
            today.addView(reasons, XemsUi.matchWrap(a, 6));
            middle.addView(today, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            middle.addView(radarCard(), flex(12));

            String[] names = {tr("Мазнини", "Body fat"), tr("Мускули", "Muscle"), tr("Вода", "Water"),
                    tr("Възраст", "Age")};
            for (int r = 0; r < 2; r++) {
                LinearLayout line = XemsUi.horizontal(a);
                for (int c = 0; c < 2; c++) {
                    int i = r * 2 + c;
                    LinearLayout t = XemsUi.surface(a);
                    t.setPadding(dp(14), dp(10), dp(14), dp(10));
                    LinearLayout head = XemsUi.horizontal(a);
                    head.setGravity(Gravity.CENTER_VERTICAL);
                    head.addView(XemsUi.text(a, names[i], 13, XemsUi.MUTED, false),
                            new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    tileDelta[i] = XemsUi.text(a, "", 13, XemsUi.MUTED, true);
                    head.addView(tileDelta[i]);
                    t.addView(head);
                    tileValue[i] = XemsUi.text(a, "—", 30, XemsUi.TEXT, true);
                    tileValue[i].setIncludeFontPadding(false);
                    t.addView(tileValue[i], XemsUi.matchWrap(a, 4));
                    tiles[i] = t;
                    line.addView(t, XemsUi.weight(1, c == 0 ? 0 : 10, a));
                }
                right.addView(line, XemsUi.matchWrap(a, r == 0 ? 0 : 10));
            }
            LinearLayout mc = XemsUi.card(a);
            mc.addView(XemsUi.label(a, tr("Тип тяло · мускули → / мазнини ↑", "Body type · muscle → / fat ↑")));
            typeMap = new ScaleViews.TypeMap(a);
            mc.addView(typeMap, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            right.addView(mc, flex(12));
            LinearLayout rc = XemsUi.card(a);
            rc.addView(XemsUi.label(a, tr("Ток до мускула · по канали", "Current to the muscle · per channel")));
            reach = new ScaleViews.Reach(a);
            rc.addView(reach, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(112)));
            right.addView(rc, XemsUi.matchWrap(a, 12));
        }

        void buildTrack() {
            LinearLayout tc = XemsUi.card(a);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            trendTitle = XemsUi.label(a, "");
            head.addView(trendTitle, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            tc.addView(head);
            metricHolder = XemsUi.horizontal(a);
            tc.addView(metricHolder, XemsUi.matchWrap(a, 8));
            trend = new ScaleViews.Trend(a, false);
            tc.addView(trend, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            middle.addView(tc, flex(0));
            middle.addView(radarCard(), flex(12));

            LinearLayout dc = XemsUi.card(a);
            when = XemsUi.label(a, "");
            dc.addView(when);
            table = XemsUi.vertical(a);
            dc.addView(table, XemsUi.matchWrap(a, 6));
            right.addView(dc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            LinearLayout mc = XemsUi.card(a);
            mc.addView(XemsUi.label(a, tr("Пътят на тялото · мускули → / мазнини ↑",
                    "The body's path · muscle → / fat ↑")));
            typeMap = new ScaleViews.TypeMap(a);
            mc.addView(typeMap, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            right.addView(mc, flex(12));
        }

        LinearLayout radarCard() {
            LinearLayout zones = XemsUi.card(a);
            radar = new ScaleViews.Radar(a);
            radar.setOnSegment(this);
            zones.addView(radar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            detail = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            detail.setGravity(Gravity.CENTER);
            zones.addView(detail, XemsUi.matchWrap(a, 4));
            return zones;
        }

        LinearLayout.LayoutParams flex(int topDp) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            lp.topMargin = dp(topDp);
            return lp;
        }

        void layerControl() {
            layerHolder.removeAllViews();
            String[] labels = mode == MODE_DAY
                    ? new String[] {tr("Мускули", "Muscle"), tr("Мазнини", "Fat"), tr("Подуване", "Swelling"),
                            tr("Ток", "Current")}
                    : new String[] {tr("Промяна · мускули", "Change · muscle"), tr("Промяна · мазнини", "Change · fat")};
            layerHolder.addView(XemsUi.segmented(a, labels, mode == MODE_DAY ? layer : trackLayer, new Layer(this)),
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

        // ================================================================ data

        JSONObject cur() {
            return at >= 0 ? hist.optJSONObject(at) : null;
        }

        JSONObject prev() {
            return at >= 1 ? hist.optJSONObject(at - 1) : null;
        }

        /** Index the comparison starts from (the newest is {@link #at}). */
        int fromIndex() {
            if (at < 1) {
                return at;
            }
            return range == 0 ? at - 1 : range == 1 ? Math.max(0, at - 3) : 0;
        }

        JSONObject from() {
            int i = fromIndex();
            return i >= 0 ? hist.optJSONObject(i) : null;
        }

        void render(boolean fresh) {
            JSONObject m = cur();
            boolean has = m != null && m.has("fat");
            middle.setAlpha(has ? 1f : 0.45f);
            right.setAlpha(has ? 1f : 0.45f);
            layerControl();
            if (m != null && !fresh && weight.getText().toString().equals("—")) {
                weight.setText(one(m.optDouble("w")));
                weight.setTextColor(XemsUi.MUTED);
            }
            setDelta(weightDelta, m, mode == MODE_DAY ? prev() : from(), "w", tr(" кг", " kg"), false, true);
            typeChip(m);
            figure();
            if (mode == MODE_DAY) {
                renderDay(m, fresh);
            } else {
                renderTrack(m);
            }
            if (fresh) {
                body.animateIn();
                radar.animateIn();
            }
        }

        void renderDay(JSONObject m, boolean fresh) {
            if (m == null) {
                when.setText(tr("Още няма мерене", "No measurement yet"));
            } else {
                boolean today = System.currentTimeMillis() - m.optLong("t") < ScaleInsight.TODAY_MS;
                when.setText(fresh ? tr("Сега", "Now")
                        : (today ? tr("Днес · ", "Today · ") : tr("Последно · ", "Last · "))
                                + new SimpleDateFormat(today ? "HH:mm" : "d.MM.yyyy", Locale.US)
                                        .format(new Date(m.optLong("t"))));
            }
            readiness(m);
            radarZones(m, mode == MODE_DAY && layer != LAYER_REACH ? prev() : null, radarLayer());
            JSONObject p = prev();
            String[] unit = {" %", tr(" кг", " kg"), " %", ""};
            boolean[] upGood = {false, true, true, false};
            for (int i = 0; i < 4; i++) {
                if (i == M_AGE) {
                    ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
                    double pa = b.physicalAge;
                    tileValue[i].setText(Double.isNaN(pa) ? "—" : String.valueOf(Math.round(pa)));
                    tileDelta[i].setText(tr("паспорт ", "passport ") + age);
                    tileDelta[i].setTextColor(Double.isNaN(pa) ? XemsUi.MUTED : pa <= age - 2 ? XemsUi.GO_TEXT
                            : pa >= age + 2 ? XemsUi.AMBER : XemsUi.MUTED);
                } else {
                    double v = m != null ? m.optDouble(M_KEY[i], Double.NaN) : Double.NaN;
                    tileValue[i].setText(Double.isNaN(v) ? "—" : one(v) + unit[i]);
                    setDelta(tileDelta[i], m, p, M_KEY[i], "", upGood[i], false);
                }
            }
            typeMap.set(male, last2("ffmi"), last2("fmi"));
            reach.set(m != null && m.has("fat") ? ScaleInsight.channelFat(m) : null);
        }

        void renderTrack(JSONObject m) {
            JSONObject f = from();
            int fi = fromIndex();
            if (m == null || f == null || fi == at) {
                when.setText(tr("Сравнението идва от второто мерене", "The comparison starts with the second one"));
            } else {
                SimpleDateFormat df = new SimpleDateFormat("d.MM", Locale.US);
                long days = Math.round((m.optLong("t") - f.optLong("t")) / 86400000.0);
                when.setText(df.format(new Date(f.optLong("t"))) + "  →  " + df.format(new Date(m.optLong("t")))
                        + tr("  ·  " + days + " дни · " + (at - fi) + " мерения",
                                "  ·  " + days + " days · " + (at - fi) + " measurements"));
            }
            metricHolder.removeAllViews();
            String[] names = {tr("Мазнини", "Fat"), tr("Мускули", "Muscle"), tr("Вода", "Water"),
                    tr("Възраст", "Age"), tr("Тегло", "Weight")};
            int[] order = {M_WEIGHT, M_FAT, M_MUSCLE, M_WATER, M_AGE};
            for (int k : order) {
                TextView c = XemsUi.chip(a, names[k], metric == k, M_COL[k]);
                c.setTextSize(13);
                c.setPadding(dp(4), 0, dp(4), 0);
                c.setSingleLine(true);
                c.setOnClickListener(new MetricPick(this, k));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(48), 1f);
                lp.rightMargin = dp(6);
                metricHolder.addView(c, lp);
            }
            String[] titles = {tr("Мазнини · %", "Body fat · %"), tr("Мускули · кг", "Muscle · kg"),
                    tr("Вода · %", "Water · %"), tr("Физическа възраст", "Physical age"), tr("Тегло · кг", "Weight · kg")};
            trendTitle.setText(titles[metric]);
            int fromI = Math.max(0, fi);
            trend.set(slice(series(M_KEY[metric]), fromI), sliceT(times(), fromI), M_COL[metric], "");
            radarZones(m, fi < at ? f : null, trackLayer == T_MUSCLE ? ScaleViews.LAYER_MUSCLE : ScaleViews.LAYER_FAT);
            deltaTable(f, m, fi < at);
            typeMap.set(male, slice(series("ffmi"), fromI), slice(series("fmi"), fromI));
        }

        int radarLayer() {
            return layer == LAYER_REACH ? ScaleViews.LAYER_MUSCLE : layer;
        }

        void radarZones(JSONObject m, JSONObject ghost, int l) {
            radar.fatMid = ScaleInsight.fatMid(male);
            radar.set(l, layerValues(m, l, true), l == ScaleViews.LAYER_READY ? null : layerValues(ghost, l, true),
                    selected);
            detail.setText(detailText(m));
        }

        /** The from → to table: one row per metric, the change coloured by its good direction. */
        void deltaTable(JSONObject f, JSONObject m, boolean both) {
            table.removeAllViews();
            if (m == null) {
                return;
            }
            ScaleInsight.Body bf = ScaleInsight.body(f, male, heightCm);
            ScaleInsight.Body bm = ScaleInsight.body(m, male, heightCm);
            row(tr("Тегло", "Weight"), f, m, "w", tr(" кг", " kg"), false, true, both);
            row(tr("Мазнини", "Fat"), f, m, "fatKg", tr(" кг", " kg"), false, false, both);
            row(tr("Мускули", "Muscle"), f, m, "muscle", tr(" кг", " kg"), true, false, both);
            row(tr("Мазнини %", "Fat %"), f, m, "fat", " %", false, false, both);
            row(tr("Вода", "Water"), f, m, "water", " %", true, false, both);
            rowValues(tr("Възраст", "Age"), bf.physicalAge, bm.physicalAge, "", false, both, true);
            row(tr("Висцерални", "Visceral"), f, m, "visc", "", false, false, both);
        }

        void row(String name, JSONObject f, JSONObject m, String key, String unit, boolean upGood, boolean neutral,
                boolean both) {
            rowValues(name, f != null ? f.optDouble(key, Double.NaN) : Double.NaN, m.optDouble(key, Double.NaN), unit,
                    upGood, both, neutral);
        }

        void rowValues(String name, double from, double to, String unit, boolean upGood, boolean both,
                boolean neutral) {
            LinearLayout r = XemsUi.horizontal(a);
            r.setGravity(Gravity.CENTER_VERTICAL);
            r.setPadding(0, dp(5), 0, dp(5));
            r.addView(XemsUi.text(a, name, 14, XemsUi.MUTED, false),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.1f));
            TextView fv = XemsUi.text(a, both ? one(from) : "", 14, XemsUi.MUTED, false);
            fv.setGravity(Gravity.END);
            r.addView(fv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 0.8f));
            TextView ar = XemsUi.text(a, both ? "  →  " : "", 14, XemsUi.MUTED, false);
            r.addView(ar);
            TextView tv = XemsUi.text(a, one(to) + unit, 16, XemsUi.TEXT, true);
            r.addView(tv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            double d = to - from;
            TextView dv = XemsUi.text(a, !both || Double.isNaN(d) ? "" : Math.abs(d) < 0.05 ? "="
                    : (d > 0 ? "▲ " : "▼ ") + one(Math.abs(d)), 15, XemsUi.MUTED, true);
            dv.setGravity(Gravity.END);
            if (both && !Double.isNaN(d) && Math.abs(d) >= 0.05) {
                dv.setTextColor(neutral ? XemsUi.TEXT : (d > 0) == upGood ? XemsUi.GO_TEXT : XemsUi.AMBER);
            }
            r.addView(dv, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 0.8f));
            table.addView(r);
        }

        double[] layerValues(JSONObject m, int forLayer, boolean forRadar) {
            if (m == null) {
                return null;
            }
            if (forLayer == ScaleViews.LAYER_READY) {
                ScaleInsight.Readiness r = ScaleInsight.readiness(hist, indexOf(m));
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

        /** The figure: by segment (or by muscle group for the current) in the day view, by change when tracking. */
        void figure() {
            JSONObject m = cur();
            int[] cols = new int[5];
            if (mode == MODE_DAY && layer == LAYER_REACH) {
                double[] cf = m != null ? ScaleInsight.channelFat(m) : null;
                int[] ch = new int[10];
                if (cf != null) {
                    double mean = 0;
                    for (double f : cf) {
                        mean += ScaleViews.Reach.factor(f);
                    }
                    mean /= cf.length;
                    for (int k = 0; k < 10; k++) {
                        ch[k] = ScaleViews.reachCol(ScaleViews.Reach.factor(cf[k]) / mean);
                    }
                }
                body.setChannels(!male, ch);
                legend.setText(tr("● токът стига добре   ● по-малко   ● най-малко — там повече сила",
                        "● the current reaches well   ● less   ● least — more strength there"));
                return;
            }
            if (mode == MODE_DAY) {
                double[] v = layerValues(m, layer, false);
                for (int i = 0; i < 5; i++) {
                    cols[i] = v == null || Double.isNaN(v[i]) ? 0 : ScaleViews.layerCol(layer, v[i]);
                }
                legend.setText(layer == ScaleViews.LAYER_MUSCLE
                        ? tr("● под нормата   ● норма   ● над нормата", "● below normal   ● normal   ● above")
                        : layer == ScaleViews.LAYER_FAT
                                ? tr("● здравословно   ● над средното   ● високо", "● healthy   ● above the middle   ● high")
                                : tr("● като обичайно   ● подуване   ● силно подуване",
                                        "● as usual   ● swelling   ● strong swelling"));
            } else {
                JSONObject f = from();
                boolean muscle = trackLayer == T_MUSCLE;
                JSONArray a0 = f != null && fromIndex() < at ? f.optJSONArray(muscle ? "segMus" : "segFat") : null;
                JSONArray a1 = m != null ? m.optJSONArray(muscle ? "segMus" : "segFat") : null;
                for (int i = 0; i < 5; i++) {
                    if (a0 == null || a1 == null) {
                        cols[i] = 0;
                        continue;
                    }
                    double d = a1.optDouble(i) - a0.optDouble(i);
                    boolean limb = i != ScaleProtocol.TRUNK;
                    cols[i] = ScaleViews.deltaCol(d, muscle, limb ? 0.04 : 0.1, limb ? 0.4 : 1.2);
                }
                legend.setText(muscle ? tr("● мускули прибавени   ● без промяна   ● мускули загубени",
                                "● muscle gained   ● no change   ● muscle lost")
                        : tr("● мазнини свалени   ● без промяна   ● мазнини качени",
                                "● fat lost   ● no change   ● fat gained"));
            }
            body.setSegments(!male, cols, selected);
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
                ScaleInsight.Body bt = ScaleInsight.body(m, male, heightCm);
                String pattern = Double.isNaN(bt.legFatShare) ? ""
                        : bt.legFatShare >= 0.45 ? tr("  ·  мазнини: в краката и бедрата", "  ·  fat: legs and hips")
                        : bt.legFatShare <= 0.32 ? tr("  ·  мазнини: около корема", "  ·  fat: round the belly")
                        : tr("  ·  мазнини: равномерно", "  ·  fat: even");
                return tr("Баланс Л/Д · ръце ", "Balance L/R · arms ") + signedPct(arms)
                        + tr("  ·  крака ", "  ·  legs ") + signedPct(legs)
                        + tr("  ·  висцерални ", "  ·  visceral ") + m.optInt("visc") + pattern;
            }
            double[][] n = ScaleInsight.ofNormal(m, male, heightCm);
            ScaleInsight.Readiness r = ScaleInsight.readiness(hist, indexOf(m));
            String[] names = {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Дясна ръка", "Right arm"),
                    tr("Ляв крак", "Left leg"), tr("Десен крак", "Right leg")};
            StringBuilder b = new StringBuilder(names[selected]);
            b.append("  ·  ").append(tr("мускули ", "muscle ")).append(one(k.optDouble(selected)))
                    .append(tr(" кг (", " kg (")).append(Math.round(n[0][selected])).append(" %)");
            b.append("  ·  ").append(tr("мазнини ", "fat ")).append(one(f.optDouble(selected)))
                    .append(tr(" кг (", " kg (")).append(Math.round(n[1][selected] * ScaleInsight.fatMid(male) / 100))
                    .append(tr(" % от зоната)", " % of the zone)"));
            if (!Double.isNaN(r.swell[selected])) {
                b.append("  ·  ").append(tr("подуване ", "swelling ")).append(signedPct(r.swell[selected]));
            }
            JSONObject fr = from();
            if (mode == MODE_TRACK && fr != null && fromIndex() < at && fr.optJSONArray("segMus") != null) {
                double d = k.optDouble(selected) - fr.optJSONArray("segMus").optDouble(selected);
                b.append("  ·  ").append(tr("промяна ", "change ")).append(d >= 0 ? "+" : "−").append(one(Math.abs(d)))
                        .append(tr(" кг мускули", " kg muscle"));
            }
            return b.toString();
        }

        /** The body type in one line, coloured — the antidote to "muscle = overweight". */
        void typeChip(JSONObject m) {
            ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
            if (!b.known()) {
                typeChip.setVisibility(View.GONE);
                return;
            }
            String t;
            int c;
            switch (b.type) {
                case ScaleInsight.T_ATHLETIC:
                    t = tr("Атлетичен · теглото е мускули", "Athletic · the weight is muscle");
                    c = 0xFF22C55E;
                    break;
                case ScaleInsight.T_BALANCED:
                    t = tr("Балансиран", "Balanced");
                    c = 0xFF22C55E;
                    break;
                case ScaleInsight.T_STRONG_FAT:
                    t = tr("Силен · с излишни мазнини", "Strong · with excess fat");
                    c = 0xFFF59E0B;
                    break;
                case ScaleInsight.T_FAT:
                    t = b.fatCls >= 3 ? tr("Затлъстяване", "Obese") : tr("Излишни мазнини", "Excess fat");
                    c = b.fatCls >= 3 ? 0xFFEF4444 : 0xFFF59E0B;
                    break;
                case ScaleInsight.T_FAT_LOW_MUSCLE:
                    t = tr("Мазнини при малко мускули", "Fat with little muscle");
                    c = 0xFFEF4444;
                    break;
                case ScaleInsight.T_LEAN_LOW_MUSCLE:
                    t = tr("Слаб · малко мускули", "Slim · little muscle");
                    c = 0xFFF59E0B;
                    break;
                default:
                    t = tr("Много ниски мазнини", "Very low fat");
                    c = 0xFF38BDF8;
                    break;
            }
            typeChip.setText(t);
            typeChip.setTextColor(c);
            typeChip.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(c, 34), dp(18), XemsUi.alpha(c, 140), dp(1)));
            typeChip.setVisibility(View.VISIBLE);
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

        double[] series(String key) {
            int n = Math.max(0, at + 1);
            double[] v = new double[n];
            for (int i = 0; i < n; i++) {
                JSONObject o = hist.optJSONObject(i);
                if (o != null && (key.equals("page") || key.equals("ffmi") || key.equals("fmi"))) {
                    ScaleInsight.Body b = ScaleInsight.body(o, male, heightCm);
                    v[i] = key.equals("page") ? b.physicalAge : key.equals("ffmi") ? b.ffmi : b.fmi;
                } else {
                    v[i] = o != null ? o.optDouble(key, Double.NaN) : Double.NaN;
                }
            }
            return v;
        }

        /** Today and the one before — the day view's map shows where the body is, not its whole path. */
        double[] last2(String key) {
            double[] s = series(key);
            return slice(s, Math.max(0, s.length - 2));
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

        static double[] slice(double[] v, int from) {
            int f = Math.max(0, Math.min(from, v.length));
            double[] o = new double[v.length - f];
            System.arraycopy(v, f, o, 0, o.length);
            return o;
        }

        static long[] sliceT(long[] v, int from) {
            int f = Math.max(0, Math.min(from, v.length));
            long[] o = new long[v.length - f];
            System.arraycopy(v, f, o, 0, o.length);
            return o;
        }

        void setDelta(TextView t, JSONObject m, JSONObject p, String key, String unit, boolean upGood,
                boolean neutral) {
            if (m == null || p == null || m == p || !m.has(key) || !p.has(key)) {
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
            figure();
            JSONObject m = cur();
            if (mode == MODE_DAY) {
                radarZones(m, layer != LAYER_REACH ? prev() : null, radarLayer());
            } else {
                radarZones(m, fromIndex() < at ? from() : null,
                        trackLayer == T_MUSCLE ? ScaleViews.LAYER_MUSCLE : ScaleViews.LAYER_FAT);
            }
        }

        void setMode(int m) {
            if (m == mode) {
                return;
            }
            mode = m;
            selected = -1;
            build();
            render(false);
            XemsUi.enter(middle);
            XemsUi.enter(right);
        }

        void setLayer(int l) {
            if (mode == MODE_DAY) {
                layer = l;
            } else {
                trackLayer = l;
            }
            render(false);
        }

        void setRange(int r) {
            range = r;
            build();
            render(false);
        }

        void setMetric(int i) {
            metric = i;
            render(false);
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
            if (mode != MODE_DAY) {
                mode = MODE_DAY;
                build();
            }
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
                        + "EMS (ден 2–4) го вдига → днес по-слабо: −15 % или −30 %. Същото прилагат Auto и плана "
                        + "за следващия клиент; по-силното от двете (дни почивка / кантар) печели.\n\n"
                        + "Тип тяло и възраст\n"
                        + "Мускули и мазнини на м² ръст — плътната мускулатура не е наднормено тегло. Възрастта е "
                        + "тази, на която мускулите на ръцете и краката и мазнините отговарят на медианата от DXA "
                        + "мерения на 3 327 души; въведената възраст не участва.\n\n"
                        + "Зони\n"
                        + "Мускули: 100 % = нормата за ръста и теглото. Мазнини: процентът в зоната спрямо "
                        + "здравословната среда (мъже 15 %, жени 25 %). Пунктир = сравнението.\n\n"
                        + "Ток\n"
                        + "Мазнините над всяка мускулна група изолират: оранжево = там токът стига най-малко — "
                        + "повече сила или по-широк импулс.",
                        "Measuring\n"
                                + "• bare feet, bare hands on the handle — light clothes do not matter\n"
                                + "• before the training, same time of day, 2 h after a meal\n\n"
                                + "Readiness\n"
                                + "The 20 and 100 kHz impedance against this client's usual. Swelling after a hard EMS "
                                + "session (day 2–4) raises it → softer today: −15 % or −30 %. Auto and the next-client "
                                + "plan apply the same; the stronger of rest days and scale wins.\n\n"
                                + "Body type and age\n"
                                + "Muscle and fat per m² of height — dense muscle is not overweight. The age is the one "
                                + "whose median arm + leg muscle and fat (DXA, 3,327 adults) match; the entered age is "
                                + "not used.\n\n"
                                + "Zones\n"
                                + "Muscle: 100 % = normal for height and weight. Fat: the zone's fat % against the "
                                + "healthy middle (men 15 %, women 25 %). Dashed = the comparison.\n\n"
                                + "Current\n"
                                + "Fat over each muscle group insulates: orange = the current reaches least there — "
                                + "more strength or a wider pulse."), 14, XemsUi.TEXT, false);
                t.setLineSpacing(XemsUi.dp(c, 3), 1f);
                t.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
                t.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f),
                        XemsUi.dp(c, 14), 0xFF42A5F5, XemsUi.dp(c, 1)));
                infoPop = new android.widget.PopupWindow(t, XemsUi.dp(c, 560), ViewGroup.LayoutParams.WRAP_CONTENT,
                        true);
                infoPop.setOutsideTouchable(true);
                infoPop.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
                infoPop.setElevation(XemsUi.dp(c, 8));
                infoPop.showAsDropDown(anchor, -XemsUi.dp(c, 536), XemsUi.dp(c, 6));
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

    static final class Mode implements XemsUi.OnIndex {
        final Page v;

        Mode(Page v) {
            this.v = v;
        }

        @Override
        public void onIndex(int i) {
            v.setMode(i);
        }
    }

    static final class Range implements View.OnClickListener {
        final Page v;
        final int i;

        Range(Page v, int i) {
            this.v = v;
            this.i = i;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.setRange(i);
        }
    }

    static final class MetricPick implements View.OnClickListener {
        final Page v;
        final int i;

        MetricPick(Page v, int i) {
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
