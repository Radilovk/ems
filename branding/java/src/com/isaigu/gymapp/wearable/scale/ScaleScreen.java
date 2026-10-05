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
 * The figure card first in both; the page scrolls — wide = cards two by two, narrow = one column ({@link Dens}).
 * Saved by itself ("✓ Запазено"), no "is this the client?" (the page is the client's); explanations behind ⓘ.
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
        /** The profile gives the age (else 35 is only a placeholder — no cycle question on a guess). */
        boolean ageKnown;
        int heightCm;
        boolean heightFromProfile;
        double lastKg;

        XemsUi.Shell s;
        LinearLayout modeHolder;
        LinearLayout rangeHolder;
        TextView weight;
        TextView weightDelta;
        TextView status;
        TextView heightValue;
        LinearLayout heightRow;
        TextView typeChip;
        LinearLayout layerHolder;
        ScaleViews.Body body;
        TextView legend;
        /** The figure card — first in both views. */
        LinearLayout leftCard;
        /**
         * Under the bar: rows of cards, the page scrolls (nothing is tied to the screen's height). Wide: the figure
         * card and the cards of the view two by two; narrow (upright tablet, phone): one column in reading order.
         */
        LinearLayout grid;
        /** The cards of the current view besides the figure card, most important first. */
        final java.util.ArrayList<View> cards = new java.util.ArrayList<View>();
        boolean narrow;
        LinearLayout barTools;
        LinearLayout barChips;
        TextView readyNote;
        TextView again;
        ScaleLink link;
        android.widget.PopupWindow infoPop;
        LinearLayout barTop;
        LinearLayout barRange;
        boolean portrait;
        int orientationBefore = Integer.MIN_VALUE;
        /** The open "send to the client" choice (closed when one is picked). */
        android.widget.PopupWindow exportPop;
        LinearLayout history;
        /** The measuring stage (shown first and whenever someone steps on) and the step-ons of this measurement. */
        ScaleStage stage;
        boolean staging;
        final android.os.Handler main = new android.os.Handler(android.os.Looper.getMainLooper());

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
        ScaleViews.BandMeter meter;
        ScaleViews.Change change;
        TextView changeHead;
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
                    ageKnown = true;
                }
                heightCm = p.heightCm;
                if (p.weightKg != null) {
                    lastKg = p.weightKg;
                }
            }
            // the scale's own last weight (any age) before the client's own guess in the card
            JSONObject last = ScaleStore.latest(a, userId);
            double w = last != null ? last.optDouble("w", Double.NaN) : Double.NaN;
            if (w >= 20 && w <= 250) {
                lastKg = w;
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
            Dens.begin(a);
            XemsUi.init(a);
            String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                    : u.nickName != null ? u.nickName.trim() : "";
            s = XemsUi.shell(a, name.length() > 0 ? name : tr("Кантар", "Scale"),
                    tr("Телесен анализ", "Body composition"), 1280);
            XemsUi.fullScreen(s);
            s.info.setVisibility(View.VISIBLE);
            s.info.setOnClickListener(new Info(this));
            barTop = XemsUi.horizontal(a);
            barTop.setGravity(Gravity.CENTER_VERTICAL);
            modeHolder = XemsUi.horizontal(a);
            rangeHolder = XemsUi.horizontal(a);
            rangeHolder.setGravity(Gravity.CENTER_VERTICAL);
            barTools = XemsUi.horizontal(a);
            TextView det = XemsUi.button(a, tr("Анализ", "Analysis"), XemsUi.SECONDARY);
            det.setOnClickListener(new Details(this));
            barTools.addView(det);
            TextView sum = XemsUi.button(a, tr("Обобщение", "Summary"), XemsUi.SECONDARY);
            sum.setOnClickListener(new Summary(this));
            barTools.addView(sum);
            s.body.addView(barTop, XemsUi.matchWrap(a, 0));
            barRange = XemsUi.horizontal(a);
            barRange.setGravity(Gravity.CENTER_VERTICAL);
            s.body.addView(barRange, XemsUi.matchWrap(a, 10));
            barChips = XemsUi.horizontal(a);
            barChips.setGravity(Gravity.CENTER_VERTICAL);
            s.body.addView(barChips, XemsUi.matchWrap(a, 10));

            leftCard = leftColumn();
            grid = XemsUi.vertical(a);
            stage = new ScaleStage(a, !male);
            stage.chip.setOnLongClickListener(new ShareLog(a));
            stage.results.setOnClickListener(new ToResults(this));
            s.body.addView(stage.view(), XemsUi.matchWrap(a, 12));
            s.body.addView(grid, XemsUi.matchWrap(a, 14));

            again = XemsUi.button(a, tr("Ново измерване", "Measure again"), XemsUi.SECONDARY);
            again.setOnClickListener(new Again(this));
            again.setVisibility(View.INVISIBLE);
            s.footer.addView(again, new LinearLayout.LayoutParams(dp(220), dp(56)));
            s.footer.addView(XemsUi.spacer(a));
            TextView done = XemsUi.button(a, tr("Готово", "Done"), XemsUi.PRIMARY);
            done.setOnClickListener(new Done(this));
            s.footer.addView(done, new LinearLayout.LayoutParams(dp(260), dp(56)));

            hist = ScaleStore.upgrade(a, userId, male, age, heightCm);   // older model → rebuilt from raw
            at = hist.length() - 1;
            ScaleUploader.schedule(a, userId, male, age, heightCm);   // anything not on the client's card yet
            build();
            arrange();
            render(false);
            showStage(true);
            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            // landscape only (owner, 1.1.310-ai): the page no longer turns upright — turning the host and back left the
            // client list with rows of mixed sizes; the upright layout lives on only in the exports (image / web page)
            if (s.dialog.getWindow() != null) {
                s.dialog.getWindow().getDecorView().addOnLayoutChangeListener(new Rotate(this));
            }
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
            top.setOnClickListener(new CardInfo(this, "weight"));
            col.addView(top);
            LinearLayout line = XemsUi.horizontal(a);
            line.setGravity(Gravity.CENTER_VERTICAL);
            status = XemsUi.text(a, "", 15, XemsUi.TEXT, true);
            status.setOnLongClickListener(new ShareLog(a));
            line.addView(status, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
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
            col.addView(body, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(380)));
            legend = XemsUi.text(a, "", 12, XemsUi.MUTED, false);
            legend.setGravity(Gravity.CENTER);
            col.addView(legend, XemsUi.matchWrap(a, 6));
            return col;
        }

        /**
         * The bar and the cards for the width at hand. Wide (landscape): the switch, the comparison chips and the two
         * sheet buttons on one line; the cards two by two. Narrow (upright, phone): the switch on its own line, the
         * buttons under it, the chips under them; the cards one under the other. Heights come from the content, so
         * the page simply scrolls on a small screen and does not stretch on a big one.
         */
        void arrange() {
            portrait = Columns.portrait(a);
            narrow = Columns.narrow(a);
            int stageH = Columns.landH(a, 234);
            Columns.apply(a, stage.root, narrow, new float[] {1.2f, 1f}, new int[] {340, 560}, stageH);
            // the theatre keeps a set height (its picture would otherwise ask for its full pixel size)
            LinearLayout.LayoutParams th = (LinearLayout.LayoutParams) stage.theatre.getLayoutParams();
            th.height = narrow ? dp(340) : stageH;
            stage.theatre.setLayoutParams(th);
            detach(modeHolder);
            detach(barTools);
            detach(rangeHolder);
            barTop.removeAllViews();
            barRange.removeAllViews();
            barChips.removeAllViews();
            for (int i = 0; i < barTools.getChildCount(); i++) {
                LinearLayout.LayoutParams lp = narrow
                        ? new LinearLayout.LayoutParams(0, dp(52), 1f)
                        : new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
                lp.leftMargin = i > 0 ? dp(10) : 0;
                barTools.getChildAt(i).setLayoutParams(lp);
            }
            if (narrow) {
                barTop.addView(modeHolder, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                barRange.addView(barTools, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
                barChips.addView(rangeHolder);
            } else {
                barTop.addView(modeHolder, new LinearLayout.LayoutParams(dp(380), ViewGroup.LayoutParams.WRAP_CONTENT));
                barTop.addView(XemsUi.spacer(a));
                barTop.addView(rangeHolder);
                LinearLayout.LayoutParams tl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                tl.leftMargin = dp(12);
                barTop.addView(barTools, tl);
            }
            lay();
            bars();
        }

        /** Which bar lines show: none while measuring; the extra lines only when narrow. */
        void bars() {
            barTop.setVisibility(staging ? View.GONE : View.VISIBLE);
            barRange.setVisibility(narrow && !staging ? View.VISIBLE : View.GONE);
            barChips.setVisibility(narrow && !staging && mode == MODE_TRACK ? View.VISIBLE : View.GONE);
        }

        static void detach(View v) {
            if (v != null && v.getParent() != null) {
                ((ViewGroup) v.getParent()).removeView(v);
            }
        }

        /** The figure card and the view's cards into the grid: pairs side by side when wide, one column when narrow. */
        void lay() {
            grid.removeAllViews();
            java.util.ArrayList<View> all = new java.util.ArrayList<View>();
            all.add(leftCard);
            all.addAll(cards);
            for (View v : all) {
                detach(v);
            }
            if (narrow) {
                for (int i = 0; i < all.size(); i++) {
                    grid.addView(all.get(i), XemsUi.matchWrap(a, i == 0 ? 0 : 14));
                }
                return;
            }
            for (int i = 0; i < all.size(); i += 2) {
                LinearLayout r = XemsUi.horizontal(a);
                r.setGravity(Gravity.TOP);
                r.setBaselineAligned(false);
                r.addView(all.get(i), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
                if (i + 1 < all.size()) {
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                            ViewGroup.LayoutParams.MATCH_PARENT, 1f);
                    lp.leftMargin = dp(14);
                    r.addView(all.get(i + 1), lp);
                }
                grid.addView(r, XemsUi.matchWrap(a, i == 0 ? 0 : 14));
            }
        }

        /** The cards of the current view (the figure card stays). */
        void build() {
            cards.clear();
            modeHolder.removeAllViews();
            modeHolder.addView(XemsUi.segmented(a, new String[] {tr("Днес", "Today"), tr("Развитие", "Progress")},
                    mode, new Mode(this)), new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            rangeHolder.removeAllViews();
            if (mode == MODE_DAY) {
                buildDay();
            } else {
                buildTrack();
                String[] r = {tr("Спрямо предишното", "Since last time"), tr("3 измервания назад", "3 back"),
                        tr("От първото", "Since the first")};
                for (int i = 0; i < r.length; i++) {
                    TextView c = XemsUi.chip(a, r[i], i == range, 0xFF38BDF8);
                    c.setOnClickListener(new Range(this, i));
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                            dp(48));
                    lp.leftMargin = i > 0 ? dp(8) : 0;
                    rangeHolder.addView(c, lp);
                }
            }
            if (grid != null && barTools != null) {
                lay();
                bars();
            }
        }

        /**
         * Today: the four numbers, readiness (only once there is a baseline — before that one line says when it
         * comes) and the body type in one card; then the zones; then the current per channel.
         */
        void buildDay() {
            LinearLayout key = XemsUi.card(a);
            String[] names = {tr("Мазнини", "Body fat"), tr("Мускулна маса", "Muscle mass"), tr("Вода", "Water"),
                    tr("Възраст на тялото", "Body age")};
            for (int r = 0; r < 2; r++) {
                LinearLayout line = XemsUi.horizontal(a);
                for (int c = 0; c < 2; c++) {
                    int i = r * 2 + c;
                    LinearLayout t = XemsUi.surface(a);
                    t.setPadding(dp(14), dp(10), dp(14), dp(12));
                    LinearLayout head = XemsUi.horizontal(a);
                    head.setGravity(Gravity.CENTER_VERTICAL);
                    head.addView(XemsUi.text(a, names[i] + "  ⓘ", 14, XemsUi.MUTED, false),
                            new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    tileDelta[i] = XemsUi.text(a, "", 14, XemsUi.MUTED, true);
                    head.addView(tileDelta[i]);
                    t.addView(head);
                    tileValue[i] = XemsUi.text(a, "—", 32, XemsUi.TEXT, true);
                    tileValue[i].setIncludeFontPadding(false);
                    t.addView(tileValue[i], XemsUi.matchWrap(a, 6));
                    tiles[i] = t;
                    t.setOnClickListener(new CardInfo(this, TILE_KEY[i]));
                    XemsUi.pressable(t);
                    line.addView(t, XemsUi.weight(1, c == 0 ? 0 : 10, a));
                }
                key.addView(line, XemsUi.matchWrap(a, r == 0 ? 0 : 10));
            }
            when = XemsUi.label(a, "");
            key.addView(header(when, "ready"), XemsUi.matchWrap(a, 18));
            readyNote = XemsUi.text(a, "", 15, XemsUi.MUTED, false);
            key.addView(readyNote, XemsUi.matchWrap(a, 0));
            gauge = new ScaleViews.Gauge(a);
            key.addView(gauge, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(200)));
            reasons = XemsUi.vertical(a);         // one reason per line: two badges side by side were cut off
            reasons.setGravity(Gravity.CENTER_HORIZONTAL);
            key.addView(reasons, XemsUi.matchWrap(a, 6));
            key.addView(header(XemsUi.label(a, tr("Телосложение", "Build")), "body"),
                    XemsUi.matchWrap(a, 18));
            meter = new ScaleViews.BandMeter(a);
            key.addView(meter, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(170)));
            cards.add(key);
            cards.add(radarCard());
            LinearLayout rc = XemsUi.card(a);
            rc.addView(header(XemsUi.label(a, tr("Проводимост по канали", "Conductivity per channel")),
                    "reach"));
            reach = new ScaleViews.Reach(a);
            rc.addView(reach, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(170)));
            cards.add(rc);
        }

        /** Tracking: the trend of one value, the zones then vs now, the table, the change since the start, the list. */
        void buildTrack() {
            LinearLayout tc = XemsUi.card(a);
            trendTitle = XemsUi.label(a, "");
            tc.addView(header(trendTitle, "trend"));
            metricHolder = XemsUi.horizontal(a);
            tc.addView(metricHolder, XemsUi.matchWrap(a, 8));
            trend = new ScaleViews.Trend(a, false);
            tc.addView(trend, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(260)));
            cards.add(tc);
            cards.add(radarCard());

            LinearLayout dc = XemsUi.card(a);
            when = XemsUi.label(a, "");
            dc.addView(header(when, "table"));
            table = XemsUi.vertical(a);
            dc.addView(table, XemsUi.matchWrap(a, 6));
            cards.add(dc);
            LinearLayout mc = XemsUi.card(a);
            mc.addView(header(XemsUi.label(a, tr("Промяна за периода", "Change over the period")), "change"));
            changeHead = XemsUi.text(a, "", 22, XemsUi.TEXT, true);
            mc.addView(changeHead, XemsUi.matchWrap(a, 4));
            change = new ScaleViews.Change(a);
            mc.addView(change, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(220)));
            cards.add(mc);
            LinearLayout hc = XemsUi.card(a);
            hc.addView(header(XemsUi.label(a, tr("Измервания", "Measurements")), "history"));
            history = XemsUi.vertical(a);
            hc.addView(history, XemsUi.matchWrap(a, 4));
            cards.add(hc);
        }

        /** The newest measurements, one line each; ✕ removes one (someone else on the profile, a bad step). */
        void historyList() {
            if (history == null) {
                return;
            }
            history.removeAllViews();
            SimpleDateFormat df = new SimpleDateFormat("d.MM · HH:mm", Locale.US);
            int shown = 0;
            for (int i = hist.length() - 1; i >= 0 && shown < 4; i--, shown++) {
                JSONObject m = hist.optJSONObject(i);
                if (m == null) {
                    continue;
                }
                LinearLayout r = XemsUi.horizontal(a);
                r.setGravity(Gravity.CENTER_VERTICAL);
                r.addView(XemsUi.text(a, df.format(new Date(m.optLong("t"))), 14, XemsUi.MUTED, false),
                        new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                r.addView(XemsUi.text(a, one(m.optDouble("w")) + tr(" кг", " kg") + (m.has("fat")
                        ? "  ·  " + one(m.optDouble("fat")) + " %" : ""), 14, XemsUi.TEXT, true));
                TextView x = XemsUi.iconButton(a, "✕", XemsUi.SURFACE, XemsUi.MUTED, 40);
                x.setOnClickListener(new AskDelete(this, m.optLong("t")));
                LinearLayout.LayoutParams xl = new LinearLayout.LayoutParams(dp(40), dp(40));
                xl.leftMargin = dp(10);
                r.addView(x, xl);
                history.addView(r, XemsUi.matchWrap(a, 2));
            }
        }

        void askDelete(long t) {
            JSONObject m = null;
            for (int i = 0; i < hist.length(); i++) {
                JSONObject o = hist.optJSONObject(i);
                if (o != null && o.optLong("t") == t) {
                    m = o;
                }
            }
            if (m == null) {
                return;
            }
            String when = new SimpleDateFormat("d.MM.yyyy · HH:mm", Locale.US).format(new Date(t));
            confirm(tr("Изтриване на измерването", "Delete the measurement"),
                    when + " · " + one(m.optDouble("w")) + tr(" кг. Останалите стойности ще бъдат преизчислени.",
                            " kg. The other values will be recalculated."),
                    tr("Изтрий", "Delete"), new DeleteNow(this, t), tr("Отказ", "Cancel"), null);
        }

        void deleteNow(long t) {
            hist = ScaleStore.delete(a, userId, t, male, age, heightCm);
            at = hist.length() - 1;
            ScaleUploader.schedule(a, userId, male, age, heightCm);
            render(false);
        }

        /** A small question sheet: title, one line, two answers (null action = just close). */
        void confirm(String title, String line, String yes, Runnable onYes, String no, Runnable onNo) {
            confirm(title, line, yes, onYes, no, onNo, onNo == null);
        }

        /** As above; {@code no} = null → one button; {@code cancelable} false → only the buttons close it. */
        void confirm(String title, String line, String yes, Runnable onYes, String no, Runnable onNo,
                boolean cancelable) {
            XemsUi.Shell q = XemsUi.shell(a, title, line, 640);
            if (no != null) {
                TextView n = XemsUi.button(a, no, XemsUi.SECONDARY);
                n.setOnClickListener(new Answer(q, onNo));
                q.footer.addView(n, new LinearLayout.LayoutParams(0, dp(56), 1f));
            }
            TextView y = XemsUi.button(a, yes, XemsUi.PRIMARY);
            y.setOnClickListener(new Answer(q, onYes));
            LinearLayout.LayoutParams yl = new LinearLayout.LayoutParams(0, dp(56), 1f);
            yl.leftMargin = no != null ? dp(12) : 0;
            q.footer.addView(y, yl);
            q.dialog.setCancelable(cancelable);
            q.dialog.show();
        }

        static final String[] TILE_KEY = {"fat", "muscle", "water", "age"};

        /** A card's title row: the title, then its ⓘ. */
        LinearLayout header(TextView title, String key) {
            LinearLayout h = XemsUi.horizontal(a);
            h.setGravity(Gravity.CENTER_VERTICAL);
            if (title.getParent() != null) {
                ((ViewGroup) title.getParent()).removeView(title);
            }
            h.addView(title, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            h.addView(dot(key), dotLp());
            return h;
        }

        TextView dot(String key) {
            TextView d = XemsUi.iconButton(a, "i", XemsUi.SURFACE, XemsUi.TEXT, 34);
            d.setContentDescription(tr("Информация", "Information"));
            d.setOnClickListener(new CardInfo(this, key));
            return d;
        }

        LinearLayout.LayoutParams dotLp() {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(40), dp(40));
            lp.leftMargin = dp(8);
            return lp;
        }

        static final String[] FAT_N = {"много ниски", "ниски", "норма", "повишени", "високи"};
        static final String[] FAT_E = {"very low", "low", "normal", "elevated", "high"};

        String[] names(String[] bg, String[] en) {
            return XemsLang.tr("б", "e").equals("б") ? bg : en;
        }

        /**
         * The ⓘ of a card: what the value means in plain words, and — where a norm exists — the value on its
         * 5-sector scale (the norm in the middle, two degrees to each side) with the client's marker.
         */
        void cardInfo(View anchor, String key) {
            try {
                if (infoPop != null && infoPop.isShowing()) {
                    infoPop.dismiss();
                }
                JSONObject m = cur();
                ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
                String title = "";
                String text = "";
                java.util.List<ScaleInsight.Norm> bars = new java.util.ArrayList<ScaleInsight.Norm>();
                java.util.List<String> barTitles = new java.util.ArrayList<String>();
                double fat = m != null ? m.optDouble("fat", Double.NaN) : Double.NaN;
                if ("fat".equals(key)) {
                    title = tr("Мазнини", "Body fat");
                    text = tr("Делът на мазнините в общото тегло. Нормата зависи от пола и възрастта.",
                            "The share of fat in the total weight. The normal range depends on sex and age.");
                    bars.add(ScaleInsight.fatNorm(fat, male, age, names(FAT_N, FAT_E)));
                } else if ("muscle".equals(key)) {
                    title = tr("Мускулна маса", "Muscle mass");
                    text = tr("Мекотъканна маса без мазнини — мускули заедно с водата в тях. Оценява се спрямо ръста. "
                            + "Скелетната мускулатура е в „Анализ“.",
                            "Soft lean mass — muscle together with its water, rated for the height. Skeletal muscle "
                                    + "is in \"Analysis\".");
                    bars.add(ScaleInsight.muscleNorm(b.ffmi, male, names(
                            new String[] {"много ниска", "ниска", "норма", "атлетична", "много висока"},
                            new String[] {"very low", "low", "normal", "athletic", "very high"})));
                } else if ("water".equals(key)) {
                    title = tr("Вода", "Water");
                    text = tr("Делът на водата в теглото. Ниската хидратация влошава провеждането на тока — "
                            + "препоръчва се вода преди тренировката.",
                            "The share of water in the weight. Low hydration impairs current conduction — water before "
                                    + "the session is advised.");
                    bars.add(ScaleInsight.waterNorm(m != null ? m.optDouble("water", Double.NaN) : Double.NaN, male,
                            names(new String[] {"много ниско", "ниско", "норма", "високо", "много високо"},
                                    new String[] {"very low", "low", "normal", "high", "very high"})));
                } else if ("age".equals(key)) {
                    title = tr("Възраст на тялото", "Body age");
                    text = tr("Възрастта, на която съответстват мускулатурата и мазнините, според референтни DXA данни. "
                            + "Разлика до ±3 години спрямо реалната е в нормата.",
                            "The age the muscle and fat correspond to, from DXA reference data. Within ±3 years of the "
                                    + "actual age is normal.");
                    bars.add(ScaleInsight.ageNorm(b.physicalAge, age, names(
                            new String[] {"много по-ниска", "по-ниска", "отговаря", "по-висока", "много по-висока"},
                            new String[] {"much younger", "younger", "matches", "older", "much older"})));
                } else if ("weight".equals(key)) {
                    title = tr("Тегло и ИТМ", "Weight and BMI");
                    text = tr("ИТМ отчита само теглото спрямо ръста и не различава мускули от мазнини. Оценката на "
                            + "телосложението се базира на състава на тялото.",
                            "BMI only relates weight to height and does not tell muscle from fat. The build is rated "
                                    + "from body composition.");
                    bars.add(ScaleInsight.bmiNorm(m != null ? m.optDouble("bmi", Double.NaN) : Double.NaN, names(
                            new String[] {"много нисък", "нисък", "норма", "наднормено тегло", "затлъстяване"},
                            new String[] {"very low", "low", "normal", "above", "obese"})));
                } else if ("ready".equals(key)) {
                    title = tr("Готовност за тренировка", "Training readiness");
                    text = tr("Състоянието на тъканите спрямо личната база на клиента. При непълно възстановяване "
                            + "интензитетът се намалява автоматично с 15 % или 30 %.",
                            "The state of the tissues against the client's own baseline. When recovery is incomplete "
                                    + "the intensity is reduced automatically by 15 % or 30 %.");
                    ScaleInsight.Readiness r = m != null ? ScaleInsight.readiness(hist, indexOf(m)) : null;
                    if (r != null && r.known()) {
                        bars.add(ScaleInsight.readyNorm(r.score, names(
                                new String[] {"−30 %", "−15 %", "внимание", "добра", "пълна"},
                                new String[] {"−30 %", "−15 %", "careful", "good", "full"})));
                    }
                } else if ("zones".equals(key)) {
                    title = tr("Сегментен анализ", "Segmental analysis");
                    text = tr("Мускулатурата във всяка зона спрямо нормата (100 %). Пунктирът показва предишното "
                            + "измерване.",
                            "The muscle of each zone against the norm (100 %). The dashed line is the previous "
                                    + "measurement.");
                    double[] mus = ScaleInsight.ofNormal(m, male, heightCm)[0];
                    int z = selected;
                    if (z < 0) {
                        double lo = Double.MAX_VALUE;
                        for (int i = 0; i < 5; i++) {
                            if (!Double.isNaN(mus[i]) && mus[i] < lo) {
                                lo = mus[i];
                                z = i;
                            }
                        }
                    }
                    if (z >= 0) {
                        String[] zn = {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Дясна ръка", "Right arm"),
                                tr("Ляв крак", "Left leg"), tr("Десен крак", "Right leg")};
                        barTitles.add(zn[z] + (selected < 0 ? tr(" · най-слаба зона", " · weakest zone") : ""));
                        bars.add(ScaleInsight.zoneNorm(mus[z], names(
                                new String[] {"много ниска", "ниска", "норма", "над нормата", "много висока"},
                                new String[] {"very low", "low", "normal", "above", "very high"})));
                    }
                } else if ("body".equals(key)) {
                    title = tr("Телосложение", "Build");
                    text = tr("Мускулна маса и мазнини, оценени поотделно спрямо ръста.",
                            "Muscle mass and fat, each rated for the height.");
                    barTitles.add(tr("Мускулна маса", "Muscle mass"));
                    bars.add(ScaleInsight.muscleNorm(b.ffmi, male, names(
                            new String[] {"много ниска", "ниска", "норма", "атлетична", "много висока"},
                            new String[] {"very low", "low", "normal", "athletic", "very high"})));
                    barTitles.add(tr("Мазнини", "Fat"));
                    bars.add(ScaleInsight.fatNorm(fat, male, age, names(FAT_N, FAT_E)));
                    barTitles.add(tr("Висцерални мазнини", "Visceral fat"));
                    bars.add(ScaleInsight.visceralNorm(m != null ? m.optDouble("visc", Double.NaN) : Double.NaN,
                            names(new String[] {"много ниски", "ниски", "норма", "високи", "много високи"},
                                    new String[] {"very low", "low", "normal", "high", "very high"})));
                } else if ("reach".equals(key)) {
                    title = tr("Проводимост по канали", "Conductivity per channel");
                    text = tr("Подкожните мазнини намаляват тока, който достига до мускула. Стойностите са спрямо "
                            + "средното за тялото; при отрицателни е нужна по-висока сила на канала. Автоматичният "
                            + "режим го отчита.",
                            "Subcutaneous fat reduces the current reaching the muscle. Values are relative to the body "
                                    + "average; negative ones need a higher channel strength. Auto mode accounts for it.");
                } else if ("figure".equals(key)) {
                    title = tr("Карта на тялото", "Body map");
                    text = mode == MODE_TRACK
                            ? tr("Промяната във всяка зона за периода: зелено — подобрение, жълто — влошаване, "
                                    + "сиво — без промяна.",
                                    "The change in each zone over the period: green — better, amber — worse, grey — no "
                                            + "change.")
                            : tr("Всяка зона спрямо нормата. Докоснете зона за подробности.",
                                    "Each zone against the norm. Tap a zone for details.");
                } else if ("trend".equals(key)) {
                    title = tr("Динамика", "Trend");
                    text = tr("Изменението на избрания показател за периода.",
                            "How the chosen value changed over the period.");
                    if (metric == M_FAT) {
                        bars.add(ScaleInsight.fatNorm(fat, male, age, names(FAT_N, FAT_E)));
                    } else if (metric == M_MUSCLE) {
                        bars.add(ScaleInsight.muscleNorm(b.ffmi, male, names(
                                new String[] {"много ниска", "ниска", "норма", "атлетична", "много висока"},
                                new String[] {"very low", "low", "normal", "athletic", "very high"})));
                    } else if (metric == M_AGE) {
                        bars.add(ScaleInsight.ageNorm(b.physicalAge, age, names(
                                new String[] {"много по-ниска", "по-ниска", "отговаря", "по-висока", "много по-висока"},
                                new String[] {"much younger", "younger", "matches", "older", "much older"})));
                    }
                } else if ("history".equals(key)) {
                    title = tr("Измервания", "Measurements");
                    text = tr("Последните измервания. С ✕ се изтрива грешно измерване.",
                            "The latest measurements. ✕ deletes a wrong one.");
                } else if ("table".equals(key)) {
                    title = tr("Сравнение", "Comparison");
                    text = tr("Показателите в началото и в края на периода. Зелено — подобрение, жълто — влошаване.",
                            "The values at the start and at the end of the period. Green — better, amber — worse.");
                } else if ("change".equals(key)) {
                    title = tr("Промяна за периода", "Change over the period");
                    text = tr("Изменението на мускулната маса и мазнините в килограми. Теглото може да остане същото, "
                            + "докато съставът на тялото се подобрява.",
                            "The change in muscle mass and fat in kilograms. The weight may stay the same while the "
                                    + "body composition improves.");
                }
                LinearLayout box = XemsUi.vertical(a);
                box.setPadding(dp(18), dp(14), dp(18), dp(16));
                box.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.12f), dp(16),
                        0xFF42A5F5, dp(1)));
                box.addView(XemsUi.text(a, title, 17, XemsUi.TEXT, true));
                TextView t = XemsUi.text(a, text, 14, XemsUi.TEXT, false);
                t.setLineSpacing(dp(3), 1f);
                box.addView(t, XemsUi.matchWrap(a, 6));
                String src = "";
                for (int i = 0; i < bars.size(); i++) {
                    ScaleInsight.Norm n = bars.get(i);
                    if (i < barTitles.size()) {
                        box.addView(XemsUi.text(a, barTitles.get(i), 13, XemsUi.MUTED, true), XemsUi.matchWrap(a, 12));
                    }
                    ScaleViews.NormBar nb = new ScaleViews.NormBar(a);
                    nb.set(n);
                    LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                            dp(96));
                    lp.topMargin = dp(i < barTitles.size() ? 2 : 12);
                    box.addView(nb, lp);
                    if (src.indexOf(n.source) < 0) {
                        src += (src.length() > 0 ? " · " : "") + n.source;
                    }
                }
                if (src.length() > 0) {
                    box.addView(XemsUi.text(a, src, 11, XemsUi.HINT, false), XemsUi.matchWrap(a, 4));
                }
                infoPop = pop(a, anchor, box, dp(bars.size() > 0 ? 480 : 420));
                XemsUi.enter(box);
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.cardInfo", t);
            }
        }

        // ================================================================ summary sheet

        /**
         * Обобщение: who the client is (profile, body type, physical age, the figure), the five key values each on
         * its norm bar, and the recommendations most urgent first (ScaleInsight.advice — derived from the
         * measurements only).
         */
        void showSummary() {
            try {
                JSONObject m = cur();
                String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                        : u.nickName != null ? u.nickName.trim() : "";
                XemsUi.Shell sh = XemsUi.shell(a, tr("Обобщение", "Summary") + (name.length() > 0 ? " · " + name : ""),
                        m != null ? new SimpleDateFormat("d.MM.yyyy · HH:mm", Locale.US).format(new Date(m.optLong("t")))
                                : "", 1280);
                XemsUi.fullScreen(sh);
                sh.subtitle.setText(profileLine(m));
                sh.subtitle.setVisibility(View.VISIBLE);
                ScaleViews.Body[] figOut = new ScaleViews.Body[1];
                LinearLayout row = summaryRow(m, figOut);
                ScaleViews.Body fig = figOut[0];
                sh.body.addView(row, XemsUi.matchWrap(a, 4));
                // two columns when wide, one when narrow; heights come from the content
                Columns.follow(a, sh, row, new float[] {1.05f, 1f}, new int[] {0, 0}, 4000);

                if (m != null && m.has("fat")) {
                    // one button, four one-tap choices: image or web page, short or detailed — both laid out upright
                    // for a phone (the page itself stays landscape)
                    TextView send = XemsUi.button(a, tr("Изпрати на клиента", "Send to the client"), XemsUi.SECONDARY);
                    send.setOnClickListener(new ExportMenu(this, fig, name));
                    foot(sh, send, 1.6f, 0);
                }
                TextView sci = XemsUi.button(a, tr("Източници", "Sources"), XemsUi.SECONDARY);
                sci.setOnClickListener(new ScaleSources.Open(a));
                foot(sh, sci, 1f, 8);
                TextView close = XemsUi.button(a, tr("Затвори", "Close"), XemsUi.PRIMARY);
                close.setOnClickListener(new CloseSheet(sh));
                foot(sh, close, 1.2f, 8);
                sh.dialog.show();
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.summary", t);
            }
        }

        /** Sex · age · height · weight · date of the measurement (the summary's and the export's second line). */
        String profileLine(JSONObject m) {
            return (male ? tr("Мъж", "Male") : tr("Жена", "Female")) + " · " + age + tr(" г.", " y")
                    + " · " + heightCm + tr(" см", " cm") + (m != null ? " · " + one(m.optDouble("w"))
                    + tr(" кг", " kg") : "") + (m != null ? "  ·  " + new SimpleDateFormat("d.MM.yyyy · HH:mm",
                    Locale.US).format(new Date(m.optLong("t"))) : "");
        }

        /**
         * The summary's content: (1) the figure with the zone notes, (2) four values, the build, the way to a healthy
         * weight and at most two actions. One row of two columns — {@link Columns} sets it side by side or stacked.
         * figOut[0] gets the figure (the web page embeds its picture).
         */
        LinearLayout summaryRow(JSONObject m, ScaleViews.Body[] figOut) {
            LinearLayout row = XemsUi.horizontal(a);
            row.setGravity(Gravity.TOP);
            ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
            boolean bg = XemsLang.tr("б", "e").equals("б");
            // 1. the body by segment: the figure with each zone's number beside it (as the segmental analysers do)
            LinearLayout seg = XemsUi.card(a);
            LinearLayout top = XemsUi.horizontal(a);
            TextView chip = XemsUi.text(a, "", 18, XemsUi.TEXT, true);
            chip.setPadding(dp(14), dp(8), dp(14), dp(8));
            TextView saveChip = typeChip;
            typeChip = chip;
            typeChip(m);
            typeChip = saveChip;
            top.addView(chip);
            top.addView(XemsUi.spacer(a));
            TextView pa = XemsUi.text(a, Double.isNaN(b.physicalAge) ? "—" : String.valueOf(Math.round(b.physicalAge)),
                    34, Double.isNaN(b.physicalAge) ? XemsUi.MUTED : b.physicalAge <= age - 3 ? XemsUi.GO_TEXT
                            : b.physicalAge >= age + 3 ? XemsUi.AMBER : XemsUi.TEXT, true);
            pa.setIncludeFontPadding(false);
            top.addView(pa);
            top.addView(XemsUi.text(a, tr(" г. тяло", " y body"), 14, XemsUi.MUTED, false));
            seg.addView(top, XemsUi.matchWrap(a, 0));
            ScaleDetail.Zone[] zn = ScaleDetail.zones(m, male, heightCm);
            ScaleViews.Body fig = new ScaleViews.Body(a);
            int[] cols = new int[5];
            for (int i2 = 0; i2 < 5; i2++) {
                cols[i2] = zn[i2].musStatus == ScaleDetail.S_NONE ? 0 : ScaleDetail.statusColor(zn[i2].musStatus);
            }
            fig.setSegments(!male, cols, -1);
            LinearLayout fr = XemsUi.horizontal(a);
            fr.setGravity(Gravity.CENTER_VERTICAL);
            // on the front view the image's left is the client's right
            fr.addView(zoneNotes(zn, new int[] {ScaleProtocol.RIGHT_ARM, ScaleProtocol.TRUNK,
                    ScaleProtocol.RIGHT_LEG}, bg), new LinearLayout.LayoutParams(0, dp(360), 1f));
            fr.addView(fig, new LinearLayout.LayoutParams(0, dp(360), 1.5f));
            fr.addView(zoneNotes(zn, new int[] {ScaleProtocol.LEFT_ARM, -1, ScaleProtocol.LEFT_LEG}, bg),
                    new LinearLayout.LayoutParams(0, dp(360), 1f));
            seg.addView(fr, XemsUi.matchWrap(a, 8));
            row.addView(seg);

            // 2. the four values that matter, the build, the way to the goal, at most two actions
            LinearLayout right = XemsUi.vertical(a);
            String[] fatN = names(FAT_N, FAT_E);
            String[] five = names(new String[] {"много ниско", "ниско", "норма", "високо", "много високо"},
                    new String[] {"very low", "low", "normal", "high", "very high"});
            double fatV = m != null ? m.optDouble("fat", Double.NaN) : Double.NaN;
            Object[][] tiles4 = {
                    {tr("Мазнини", "Body fat"), Double.isNaN(fatV) ? "—" : one(fatV) + " %",
                            ScaleInsight.fatNorm(fatV, male, age, fatN)},
                    {tr("Мускулна маса", "Muscle mass"), m != null ? one(m.optDouble("muscle")) + tr(" кг", " kg") : "—",
                            ScaleInsight.muscleNorm(b.ffmi, male, names(
                            new String[] {"много ниска", "ниска", "норма", "атлетична", "много висока"},
                            new String[] {"very low", "low", "normal", "athletic", "very high"}))},
                    {tr("Вода", "Water"), m != null ? one(m.optDouble("water")) + " %" : "—",
                            ScaleInsight.waterNorm(m != null ? m.optDouble("water", Double.NaN) : Double.NaN,
                            male, five)},
                    {tr("Висцерални мазнини", "Visceral fat"), m != null ? String.valueOf(m.optInt("visc")) : "—",
                            ScaleInsight.visceralNorm(m != null ? m.optDouble("visc", Double.NaN) : Double.NaN,
                            five)}};
            for (int r = 0; r < 2; r++) {
                LinearLayout line = XemsUi.horizontal(a);
                line.setGravity(Gravity.TOP);
                for (int c2 = 0; c2 < 2; c2++) {
                    Object[] t4 = tiles4[r * 2 + c2];
                    ScaleInsight.Norm nm = (ScaleInsight.Norm) t4[2];
                    int sec = nm.sector();
                    int col = sec >= 0 ? nm.colors[sec] : XemsUi.MUTED;
                    LinearLayout t = XemsUi.card(a);
                    t.addView(XemsUi.text(a, (String) t4[0], 14, XemsUi.MUTED, true));
                    TextView val = XemsUi.text(a, (String) t4[1], 34, XemsUi.TEXT, true);
                    val.setIncludeFontPadding(false);
                    t.addView(val, XemsUi.matchWrap(a, 4));
                    t.addView(XemsUi.text(a, sec >= 0 ? nm.names[sec] : "", 16, col, true), XemsUi.matchWrap(a, 2));
                    ScaleViews.MiniNorm mn = new ScaleViews.MiniNorm(a);
                    mn.set(nm);
                    t.addView(mn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
                    LinearLayout.LayoutParams tl = new LinearLayout.LayoutParams(0,
                            ViewGroup.LayoutParams.MATCH_PARENT, 1f);
                    tl.leftMargin = c2 == 0 ? 0 : dp(12);
                    line.addView(t, tl);
                }
                right.addView(line, XemsUi.matchWrap(a, r == 0 ? 0 : 12));
            }

            LinearLayout two = XemsUi.horizontal(a);
            two.setGravity(Gravity.TOP);
            LinearLayout grid = XemsUi.card(a);
            grid.addView(XemsUi.label(a, tr("Телосложение", "Build")));
            ScaleViews.BuildGrid bgrid = new ScaleViews.BuildGrid(a);
            bgrid.set(b.muscleCls, b.fatCls);
            grid.addView(bgrid, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(150)));
            two.addView(grid, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
            ScaleDetail.Control ctl = ScaleDetail.control(m, male, age, heightCm);
            LinearLayout goal = XemsUi.card(a);
            goal.addView(XemsUi.label(a, tr("Към здравословно тегло", "Towards a healthy weight")));
            if (Double.isNaN(ctl.target)) {
                goal.addView(XemsUi.text(a, "—", 20, XemsUi.MUTED, true));
            } else {
                goal.addView(goalLine(tr("Мазнини", "Fat"), ctl.fat, false));
                goal.addView(goalLine(tr("Мускулна маса", "Muscle mass"), ctl.muscle, true));
                goal.addView(goalLine(tr("Тегло", "Weight"), ctl.total, true));
            }
            LinearLayout.LayoutParams gl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
            gl.leftMargin = dp(12);
            two.addView(goal, gl);
            right.addView(two, XemsUi.matchWrap(a, 12));

            LinearLayout adv = XemsUi.card(a);
            int[] tones = {0xFF22C55E, 0xFF38BDF8, 0xFFF59E0B, 0xFFEF4444};
            int shown = 0;
            for (ScaleInsight.Advice ad : ScaleInsight.advice(hist, at, male, age, heightCm)) {
                if (shown++ >= 2) {
                    break;
                }
                LinearLayout item = XemsUi.horizontal(a);
                item.setGravity(Gravity.TOP);
                View stripe = new View(a);
                stripe.setBackgroundDrawable(XemsUi.rounded(tones[ad.tone], dp(3), 0, 0));
                LinearLayout.LayoutParams stl = new LinearLayout.LayoutParams(dp(5),
                        ViewGroup.LayoutParams.MATCH_PARENT);
                stl.rightMargin = dp(12);
                item.addView(stripe, stl);
                LinearLayout txt = XemsUi.vertical(a);
                txt.addView(XemsUi.text(a, bg ? ad.titleBg : ad.titleEn, 17, XemsUi.TEXT, true));
                TextView body = XemsUi.text(a, bg ? ad.textBg : ad.textEn, 15, XemsUi.MUTED, false);
                body.setLineSpacing(dp(2), 1f);
                txt.addView(body, XemsUi.matchWrap(a, 3));
                item.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                adv.addView(item, XemsUi.matchWrap(a, shown == 1 ? 0 : 12));
            }
            right.addView(adv, XemsUi.matchWrap(a, 12));
            row.addView(right);
            if (figOut != null) {
                figOut[0] = fig;
            }
            return row;
        }

        /**
         * Every value of the measurement with its status word, two a line (the detailed export): the analysis tiles'
         * list (ScaleDetail.metrics), grouped as on "Анализ", then the five zones' fat and muscle against normal.
         */
        LinearLayout valuesCard(JSONObject m) {
            boolean bg = XemsLang.tr("б", "e").equals("б");
            LinearLayout col = XemsUi.vertical(a);
            java.util.List<ScaleDetail.Metric> ms = ScaleDetail.metrics(m, male, age, heightCm, bg);
            for (int g = 0; g < 4; g++) {
                LinearLayout card = XemsUi.card(a);
                card.addView(XemsUi.label(a, bg ? ScaleDetail.groupBg(g) : ScaleDetail.groupEn(g)));
                LinearLayout line = null;
                int n = 0;
                for (ScaleDetail.Metric x : ms) {
                    if (x.group != g) {
                        continue;
                    }
                    if (n % 2 == 0) {
                        line = XemsUi.horizontal(a);
                        line.setGravity(Gravity.TOP);
                        card.addView(line, XemsUi.matchWrap(a, n == 0 ? 6 : 10));
                    }
                    LinearLayout t = XemsUi.vertical(a);
                    t.addView(XemsUi.text(a, bg ? x.bg : x.en, 13, XemsUi.MUTED, true));
                    t.addView(XemsUi.text(a, x.text() + x.unit, 22, XemsUi.TEXT,
                            true), XemsUi.matchWrap(a, 2));
                    String word = x.status >= 0 ? (bg ? ScaleDetail.statusBg(x.status) : ScaleDetail.statusEn(x.status))
                            : (bg ? x.subBg : x.subEn);
                    if (word.length() > 0) {
                        t.addView(XemsUi.text(a, word, 13, x.status >= 0 ? ScaleDetail.statusColor(x.status)
                                : XemsUi.MUTED, true));
                    }
                    LinearLayout.LayoutParams tl = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                    tl.leftMargin = n % 2 == 0 ? 0 : dp(12);
                    line.addView(t, tl);
                    n++;
                }
                if (n % 2 == 1) {
                    line.addView(new View(a), new LinearLayout.LayoutParams(0, 1, 1f));
                }
                col.addView(card, XemsUi.matchWrap(a, g == 0 ? 0 : 12));
            }
            LinearLayout zc = XemsUi.card(a);
            zc.addView(XemsUi.label(a, tr("Сегментен анализ · % от нормата", "Segmental analysis · % of normal")));
            ScaleDetail.Zone[] zs = ScaleDetail.zones(m, male, heightCm);
            for (int seg : ScaleDetail.ORDER) {
                ScaleDetail.Zone z = zs[seg];
                LinearLayout line = XemsUi.horizontal(a);
                line.setGravity(Gravity.CENTER_VERTICAL);
                line.addView(XemsUi.text(a, bg ? ScaleDetail.zoneBg(seg) : ScaleDetail.zoneEn(seg), 15, XemsUi.TEXT,
                        true), new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1.2f));
                line.addView(zoneCell(tr("мускули ", "muscle "), z.musKg, z.musPct, z.musStatus),
                        new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                line.addView(zoneCell(tr("мазнини ", "fat "), z.fatKg, z.fatPct, z.fatStatus),
                        new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                zc.addView(line, XemsUi.matchWrap(a, 8));
            }
            col.addView(zc, XemsUi.matchWrap(a, 12));
            return col;
        }

        TextView zoneCell(String label, double kg, double pct, int status) {
            String v = Double.isNaN(kg) ? "—" : label + one(kg) + tr(" кг", " kg")
                    + (Double.isNaN(pct) ? "" : " · " + Math.round(pct) + " %");
            return XemsUi.text(a, v, 14, status == ScaleDetail.S_NONE ? XemsUi.MUTED : ScaleDetail.statusColor(status),
                    true);
        }

        /**
         * The upright export picture: header, the summary stacked in one column (short) — plus every value and the
         * zones (detailed) — laid out off screen at phone proportions and drawn into one PNG.
         */
        void exportImage(boolean full, String name) {
            try {
                JSONObject m = cur();
                LinearLayout page = XemsUi.vertical(a);
                page.setBackgroundColor(XemsUi.BG);
                page.setPadding(dp(22), dp(22), dp(22), dp(18));
                page.addView(XemsUi.text(a, name.length() > 0 ? name : tr("Телесен анализ", "Body composition"), 28,
                        XemsUi.TEXT, true));
                page.addView(XemsUi.text(a, profileLine(m), 14, XemsUi.MUTED, false), XemsUi.matchWrap(a, 2));
                LinearLayout row = summaryRow(m, null);
                Columns.apply(a, row, true, new float[] {1f, 1f}, new int[] {0, 0}, 0);
                page.addView(row, XemsUi.matchWrap(a, 14));
                if (full) {
                    page.addView(valuesCard(m), XemsUi.matchWrap(a, 14));
                }
                TextView foot = XemsUi.text(a, "XEMS · " + tr("8-електроден биоимпедансен анализ · не е медицинска диагноза",
                        "8-electrode bioimpedance analysis · not a medical diagnosis"), 11, XemsUi.HINT, false);
                foot.setGravity(Gravity.CENTER);
                page.addView(foot, XemsUi.matchWrap(a, 14));
                int w = dp(640);
                page.measure(View.MeasureSpec.makeMeasureSpec(w, View.MeasureSpec.EXACTLY),
                        View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
                page.layout(0, 0, w, page.getMeasuredHeight());
                ScaleShare.picture(a, page, name, full);
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.exportImage", t);
            }
        }

        /** The zones' notes beside the figure: name, % of normal, kg and the status word, each in its colour. */
        LinearLayout zoneNotes(ScaleDetail.Zone[] zn, int[] segs, boolean bg) {
            LinearLayout col = XemsUi.vertical(a);
            col.setGravity(Gravity.CENTER_HORIZONTAL);
            String[] names = {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Дясна ръка", "Right arm"),
                    tr("Ляв крак", "Left leg"), tr("Десен крак", "Right leg")};
            for (int i = 0; i < segs.length; i++) {
                if (i > 0) {
                    col.addView(XemsUi.spacer(a), new LinearLayout.LayoutParams(1, 0, 1f));
                }
                int sg = segs[i];
                if (sg < 0) {
                    col.addView(new View(a), new LinearLayout.LayoutParams(1, dp(60)));
                    continue;
                }
                ScaleDetail.Zone z = zn[sg];
                int color = z.musStatus == ScaleDetail.S_NONE ? XemsUi.MUTED : ScaleDetail.statusColor(z.musStatus);
                LinearLayout n = XemsUi.vertical(a);
                n.setPadding(dp(10), dp(8), dp(10), dp(8));
                n.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(color, 26), dp(12), XemsUi.alpha(color, 90), dp(1)));
                n.addView(XemsUi.text(a, names[sg], 14, XemsUi.MUTED, true));
                n.addView(XemsUi.text(a, Double.isNaN(z.musPct) ? "—" : Math.round(z.musPct) + " %", 26, color, true));
                n.addView(XemsUi.text(a, (Double.isNaN(z.musKg) ? "" : one(z.musKg) + tr(" кг · ", " kg · "))
                        + (bg ? ScaleDetail.statusBg(z.musStatus) : ScaleDetail.statusEn(z.musStatus)), 14,
                        XemsUi.TEXT, false));
                col.addView(n, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT));
            }
            return col;
        }

        /** One goal line: what to change (kg) and the direction, "в норма" when nothing is needed. */
        LinearLayout goalLine(String label, double kg, boolean plusGood) {
            LinearLayout l = XemsUi.horizontal(a);
            l.addView(XemsUi.text(a, label, 15, XemsUi.MUTED, false),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            boolean none = Double.isNaN(kg) || Math.abs(kg) < 0.2;
            TextView v = XemsUi.text(a, none ? tr("в норма", "on target")
                    : (kg > 0 ? "+" : "−") + one(Math.abs(kg)) + tr(" кг", " kg"), 20,
                    none ? XemsUi.GO_TEXT : XemsUi.TEXT, true);
            l.addView(v);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.topMargin = dp(10);
            l.setLayoutParams(lp);
            return l;
        }

        /** "Анализ": every value explorable — composition, zones, tiles, the focus (ScaleAnalysis). */
        void showDetail() {
            String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                    : u.nickName != null ? u.nickName.trim() : "";
            ScaleAnalysis.open(a, hist, at, male, age, heightCm, name);
        }

        LinearLayout radarCard() {
            LinearLayout zones = XemsUi.card(a);
            zones.addView(header(XemsUi.label(a, tr("Сегментен анализ", "Segmental analysis")), "zones"));
            radar = new ScaleViews.Radar(a);
            radar.setOnSegment(this);
            zones.addView(radar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(320)));
            detail = XemsUi.text(a, "", 13, XemsUi.MUTED, false);
            detail.setGravity(Gravity.CENTER);
            zones.addView(detail, XemsUi.matchWrap(a, 4));
            return zones;
        }

        void layerControl() {
            layerHolder.removeAllViews();
            String[] labels = mode == MODE_DAY
                    ? new String[] {tr("Мускули", "Muscle"), tr("Мазнини", "Fat"), tr("Възстановяване", "Recovery"),
                            tr("Ток", "Current")}
                    : new String[] {tr("Мускули", "Muscle"), tr("Мазнини", "Fat")};
            layerHolder.setGravity(Gravity.CENTER_VERTICAL);
            layerHolder.addView(XemsUi.segmented(a, labels, mode == MODE_DAY ? layer : trackLayer, new Layer(this)),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            layerHolder.addView(dot("figure"), dotLp());
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
            hist = ScaleStore.upgrade(a, userId, male, age, heightCm);
            render(false);
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
            for (View c : cards) {
                c.setAlpha(has ? 1f : 0.45f);
            }
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
                when.setText(tr("Няма измерване", "No measurement yet"));
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
                    tileDelta[i].setText(tr("реална ", "actual ") + age);
                    tileDelta[i].setTextColor(Double.isNaN(pa) ? XemsUi.MUTED : pa <= age - 2 ? XemsUi.GO_TEXT
                            : pa >= age + 2 ? XemsUi.AMBER : XemsUi.MUTED);
                } else {
                    double v = m != null ? m.optDouble(M_KEY[i], Double.NaN) : Double.NaN;
                    tileValue[i].setText(Double.isNaN(v) ? "—" : one(v) + unit[i]);
                    setDelta(tileDelta[i], m, p, M_KEY[i], "", upGood[i], false);
                }
            }
            double[] ff = series("ffmi"), fm = series("fmi");
            int n = ff.length;
            meter.set(male, n > 0 ? ff[n - 1] : Double.NaN, n > 0 ? fm[n - 1] : Double.NaN,
                    n > 1 ? ff[n - 2] : Double.NaN, n > 1 ? fm[n - 2] : Double.NaN);
            reach.set(m != null && m.has("fat") ? ScaleInsight.channelFat(m) : null);
        }

        void renderTrack(JSONObject m) {
            JSONObject f = from();
            int fi = fromIndex();
            if (m == null || f == null || fi == at) {
                when.setText(tr("Сравнението е достъпно след второто измерване", "Comparison is available after the second measurement"));
            } else {
                SimpleDateFormat df = new SimpleDateFormat("d.MM", Locale.US);
                long days = Math.round((m.optLong("t") - f.optLong("t")) / 86400000.0);
                when.setText(df.format(new Date(f.optLong("t"))) + "  →  " + df.format(new Date(m.optLong("t")))
                        + tr("  ·  " + days + " дни · " + (at - fi) + " измервания",
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
            String[] titles = {tr("Мазнини · %", "Body fat · %"), tr("Мускулна маса · кг", "Muscle mass · kg"),
                    tr("Вода · %", "Water · %"), tr("Възраст на тялото", "Body age"), tr("Тегло · кг", "Weight · kg")};
            trendTitle.setText(titles[metric]);
            int fromI = Math.max(0, fi);
            trend.set(slice(series(M_KEY[metric]), fromI), sliceT(times(), fromI), M_COL[metric], "");
            radarZones(m, fi < at ? f : null, trackLayer == T_MUSCLE ? ScaleViews.LAYER_MUSCLE : ScaleViews.LAYER_FAT);
            deltaTable(f, m, fi < at);
            historyList();
            double[] mk = slice(series("muscle"), fromI), fk = slice(series("fatKg"), fromI);
            change.set(mk, fk, sliceT(times(), fromI));
            changeHead(mk, fk);
        }

        /** "+0.6 кг мускули · −2.2 кг мазнини", each coloured by its good direction. */
        void changeHead(double[] mk, double[] fk) {
            if (mk.length < 2) {
                changeHead.setText("");
                return;
            }
            double dm = mk[mk.length - 1] - mk[0], df = fk[fk.length - 1] - fk[0];
            android.text.SpannableStringBuilder b = new android.text.SpannableStringBuilder();
            part(b, (dm >= 0 ? "+" : "−") + one(Math.abs(dm)) + tr(" кг мускулна маса", " kg muscle mass"),
                    Math.abs(dm) < 0.05 ? XemsUi.MUTED : dm > 0 ? XemsUi.GO_TEXT : XemsUi.AMBER);
            b.append("   ");
            part(b, (df >= 0 ? "+" : "−") + one(Math.abs(df)) + tr(" кг мазнини", " kg fat"),
                    Math.abs(df) < 0.05 ? XemsUi.MUTED : df < 0 ? XemsUi.GO_TEXT : XemsUi.AMBER);
            changeHead.setText(b);
        }

        static void part(android.text.SpannableStringBuilder b, String t, int color) {
            int st = b.length();
            b.append(t);
            b.setSpan(new android.text.style.ForegroundColorSpan(color), st, b.length(),
                    android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
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
            row(tr("Мускулна маса", "Muscle mass"), f, m, "muscle", tr(" кг", " kg"), true, false, both);
            row(tr("Мазнини %", "Fat %"), f, m, "fat", " %", false, false, both);
            row(tr("Вода", "Water"), f, m, "water", " %", true, false, both);
            rowValues(tr("Възраст на тялото", "Body age"), bf.physicalAge, bm.physicalAge, "", false, both, true);
            row(tr("Висцерални мазнини", "Visceral fat"), f, m, "visc", "", false, false, both);
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
                legend.setText(tr("● добра проводимост   ● по-ниска   ● най-ниска",
                        "● good conductivity   ● lower   ● lowest"));
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
                                ? tr("● норма   ● повишени   ● високи", "● normal   ● elevated   ● high")
                                : tr("● възстановен   ● натоварен   ● силно натоварен",
                                        "● recovered   ● strained   ● heavily strained"));
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
                legend.setText(muscle ? tr("● повече мускули   ● без промяна   ● по-малко мускули",
                                "● more muscle   ● no change   ● less muscle")
                        : tr("● по-малко мазнини   ● без промяна   ● повече мазнини",
                                "● less fat   ● no change   ● more fat"));
            }
            body.setSegments(!male, cols, selected);
        }

        String detailText(JSONObject m) {
            if (m == null || !m.has("segMus")) {
                return tr("Докоснете зона за подробности", "Tap a zone for details");
            }
            JSONArray k = m.optJSONArray("segMus");
            JSONArray f = m.optJSONArray("segFat");
            if (selected < 0) {
                double arms = ScaleInsight.asymmetry(k, ScaleProtocol.LEFT_ARM, ScaleProtocol.RIGHT_ARM);
                double legs = ScaleInsight.asymmetry(k, ScaleProtocol.LEFT_LEG, ScaleProtocol.RIGHT_LEG);
                ScaleInsight.Body bt = ScaleInsight.body(m, male, heightCm);
                String pattern = Double.isNaN(bt.legFatShare) ? ""
                        : bt.legFatShare >= 0.45 ? tr("  ·  мазнини: предимно долна част", "  ·  fat: mostly lower body")
                        : bt.legFatShare <= 0.32 ? tr("  ·  мазнини: предимно корем", "  ·  fat: mostly abdomen")
                        : tr("  ·  мазнини: равномерно", "  ·  fat: even");
                return tr("Симетрия Л/Д · ръце ", "L/R symmetry · arms ") + signedPct(arms)
                        + tr("  ·  крака ", "  ·  legs ") + signedPct(legs)
                        + tr("  ·  висцерални ", "  ·  visceral ") + m.optInt("visc") + pattern;
            }
            double[][] n = ScaleInsight.ofNormal(m, male, heightCm);
            ScaleInsight.Readiness r = ScaleInsight.readiness(hist, indexOf(m));
            String[] names = {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Дясна ръка", "Right arm"),
                    tr("Ляв крак", "Left leg"), tr("Десен крак", "Right leg")};
            StringBuilder b = new StringBuilder(names[selected]);
            b.append("  ·  ").append(tr("мускулна маса ", "muscle mass ")).append(one(k.optDouble(selected)))
                    .append(tr(" кг (", " kg (")).append(Math.round(n[0][selected])).append(" %)");
            b.append("  ·  ").append(tr("мазнини ", "fat ")).append(one(f.optDouble(selected)))
                    .append(tr(" кг (", " kg (")).append(Math.round(n[1][selected] * ScaleInsight.fatMid(male) / 100))
                    .append(" %)");
            if (!Double.isNaN(r.swell[selected])) {
                b.append("  ·  ").append(tr("възстановяване ", "recovery ")).append(signedPct(r.swell[selected]));
            }
            JSONObject fr = from();
            if (mode == MODE_TRACK && fr != null && fromIndex() < at && fr.optJSONArray("segMus") != null) {
                double d = k.optDouble(selected) - fr.optJSONArray("segMus").optDouble(selected);
                b.append("  ·  ").append(tr("промяна ", "change ")).append(d >= 0 ? "+" : "−").append(one(Math.abs(d)))
                        .append(tr(" кг мускулна маса", " kg muscle mass"));
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
                    t = tr("Атлетично телосложение", "Athletic build");
                    c = 0xFF22C55E;
                    break;
                case ScaleInsight.T_BALANCED:
                    t = tr("Балансирано телосложение", "Balanced build");
                    c = 0xFF22C55E;
                    break;
                case ScaleInsight.T_STRONG_FAT:
                    t = tr("Мускулесто, с повишени мазнини", "Muscular, elevated fat");
                    c = 0xFFF59E0B;
                    break;
                case ScaleInsight.T_FAT:
                    t = b.fatCls >= 3 ? tr("Затлъстяване", "Obese") : tr("Повишени мазнини", "Elevated fat");
                    c = b.fatCls >= 3 ? 0xFFEF4444 : 0xFFF59E0B;
                    break;
                case ScaleInsight.T_FAT_LOW_MUSCLE:
                    t = tr("Повишени мазнини, ниска мускулна маса", "Elevated fat, low muscle mass");
                    c = 0xFFEF4444;
                    break;
                case ScaleInsight.T_LEAN_LOW_MUSCLE:
                    t = tr("Слабо телосложение, ниска мускулна маса", "Slim, low muscle mass");
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
                ready(false, m == null ? tr("Няма измерване.", "No measurement yet.")
                        : tr("Нужен е контакт с дръжката.", "Hand contact with the handle is needed."));
                return;
            }
            ScaleInsight.Readiness r = ScaleInsight.readiness(hist, indexOf(m));
            if (!r.known()) {
                // a verdict needs two earlier weigh-ins on other days (one contact alone is too noisy)
                int need = ScaleInsight.BASE_MIN - r.base;
                ready(false, need >= 2 ? tr("Изчислява се след още две измервания в различни дни.",
                        "Available after two more measurements on different days.")
                        : tr("Изчислява се от следващото измерване в друг ден.",
                        "Available from the next measurement on another day."));
                return;
            }
            ready(true, "");
            String verdict = r.factor >= 1 ? tr("Пълна интензивност", "Full intensity")
                    : tr("Интензитет −", "Intensity −") + Math.round((1 - r.factor) * 100) + " %";
            String sub = r.sameTime ? tr("спрямо личната база", "against the personal baseline")
                    : tr("спрямо мерения в друг час — по-широки прагове", "against other times of day — wider thresholds");
            gauge.set(r.score, verdict, sub);
            if (r.worst >= 0 && r.swell[r.worst] >= 0.4) {
                String[] names = {tr("Торс", "Trunk"), tr("Лява ръка", "Left arm"), tr("Дясна ръка", "Right arm"),
                        tr("Ляв крак", "Left leg"), tr("Десен крак", "Right leg")};
                reasons.addView(XemsUi.badge(a, names[r.worst] + "  " + signedPct(r.swell[r.worst]),
                        ScaleViews.swellCol(r.swell[r.worst])));
            }
            if (!Double.isNaN(r.weight) && r.weight <= -1) {
                TextView w = XemsUi.badge(a, tr("Тегло ", "Weight ") + signedPct(r.weight) + tr(" за седмицата",
                        " this week"), r.weight <= -ScaleInsight.WEIGHT_DROP ? XemsUi.AMBER : XemsUi.MUTED);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.topMargin = dp(6);
                reasons.addView(w, lp);
            }
            if (!Double.isNaN(r.dry) && r.dry >= 2) {
                TextView w = XemsUi.badge(a, tr("Хидратация ", "Hydration ") + signedPct(-r.dry),
                        XemsUi.AMBER);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.topMargin = dp(6);
                reasons.addView(w, lp);
            }
        }

        /** The gauge when there is a verdict; otherwise one plain line in its place (no empty dial). */
        void ready(boolean known, String note) {
            gauge.setVisibility(known ? View.VISIBLE : View.GONE);
            reasons.setVisibility(known ? View.VISIBLE : View.GONE);
            readyNote.setText(note);
            readyNote.setVisibility(known ? View.GONE : View.VISIBLE);
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
            XemsUi.enter(grid);
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

        /** The stage in front (measuring) or the results; the switch fades. */
        void showStage(boolean on) {
            staging = on;
            stage.view().setVisibility(on ? View.VISIBLE : View.GONE);
            grid.setVisibility(on ? View.GONE : View.VISIBLE);
            bars();
            stage.results.setVisibility(hasFull() ? View.VISIBLE : View.GONE);
            if (on) {
                again.setVisibility(View.INVISIBLE);
                stage.fx.invalidate();
                stage.steps.invalidate();
                XemsUi.enter(stage.view());
            } else {
                again.setVisibility(View.VISIBLE);
                s.scroll.scrollTo(0, 0);
                XemsUi.enter(grid);
            }
        }

        boolean hasFull() {
            for (int i = 0; i < hist.length(); i++) {
                JSONObject m = hist.optJSONObject(i);
                if (m != null && m.has("fat")) {
                    return true;
                }
            }
            return false;
        }

        /**
         * "Мери пак": a fresh standing — the stage back, the link restarted (it keeps listening anyway: the next
         * step-on is found without this button).
         */
        void measureAgain() {
            session = null;
            gate = GATE_NONE;
            notes = null;
            off = true;
            stage.reset();
            showStage(true);
            startLink();
        }

        void startLink() {
            if (link != null) {
                link.close();
            }
            link = new ScaleLink(a, userId, male, age, heightCm, lastKg, this);
            link.start();
        }

        // ================================================================ the link

        /**
         * One standing = one measurement, refined by every new sweep while the client stays on. {@link #off}: the
         * scale is free (stepped off, or it slept and dropped the link) — the next weight on it is a new standing.
         */
        ScaleSession session;
        boolean off = true;
        /** The entry this standing was saved as ("t"), 0 = not saved yet. */
        long sessionT;
        /** The last sweep heard — the scale repeating it after a reconnect is not a new measurement. */
        ScaleProtocol.Reading lastSweep;

        @Override
        public void onState(int st) {
            if (staging) {
                stage.linkState(st);
            }
            switch (st) {
                case ScaleLink.SEARCHING:
                    if (session != null) {
                        off = true;       // the scale slept: whoever steps on next is a new measurement
                    }
                    say(tr("Готов за измерване", "Ready to measure"), XemsUi.TEXT);
                    break;
                case ScaleLink.CONNECTING:
                    if (off && session != null && !staging) {
                        // the scale woke up again (it sleeps when nobody is on): the next person — show the stage
                        newStanding();
                        stage.linkState(st);
                    }
                    say(tr("Свързване…", "Connecting…"), XemsUi.MUTED);
                    break;
                case ScaleLink.READY:
                    if (session != null && sessionT > 0) {
                        off = true;       // stepped off after a result
                    }
                    say(tr("Измерване…", "Measuring…"), XemsUi.AMBER);
                    break;
                case ScaleLink.MEASURING:
                    say(tr("Измерване…", "Measuring…"), XemsUi.AMBER);
                    break;
                case ScaleLink.NO_BLUETOOTH:
                    say(tr("Включете Bluetooth", "Turn Bluetooth on"), XemsUi.DANGER);
                    break;
                default:
                    break;
            }
        }

        /** The status line of the figure card: the link while measuring; after a save it keeps "✓ Записано". */
        void say(String text, int color) {
            if (sessionT > 0 && !staging) {
                return;
            }
            status.setText(text);
            status.setTextColor(color);
        }

        /** A new standing: a fresh session and the stage in front. */
        void newStanding() {
            session = null;
            sessionT = 0;
            gate = GATE_NONE;
            notes = null;
            off = false;
            stage.reset();
            showStage(true);
        }

        @Override
        public void onLive(double kg, boolean stable) {
            if (kg < 5) {
                if (session != null) {
                    off = true;           // stepped off
                }
                if (staging) {
                    stage.liveWeight(kg, stable);
                }
                return;
            }
            if (off && (session != null || !staging)) {
                newStanding();            // someone stepped on (again): a new measurement
            }
            off = false;
            if (staging) {
                weight.setText(one(kg));
                weight.setTextColor(stable ? XemsUi.TEXT : XemsUi.MUTED);
                stage.liveWeight(kg, stable);
            }
        }

        @Override
        public void onResult(ScaleProtocol.Reading r) {
            if (off || session == null) {
                if (lastSweep != null && !Double.isNaN(lastSweep.z20[ScaleProtocol.LEFT_ARM])
                        && ScaleSession.same(lastSweep, r)) {
                    return;               // the scale sending its last result again (same impedances)
                }
                if (session != null || !staging) {
                    newStanding();
                }
                session = new ScaleSession(male, age, heightCm);
                sessionT = 0;
                off = false;
                gate = GATE_NONE;
                notes = null;
            }
            if (session.add(r) == ScaleSession.REPEAT) {
                return;
            }
            lastSweep = r;
            if (staging) {
                stage.sweep(r, session);
            }
            ScaleProtocol.Reading m = session.merged();
            if (m != null) {
                // the page is this client's, but a weight / composition the body could not have made since the last
                // weigh-in is asked about first (ScaleCheck); a wrong one is also removable in Tracking ✕
                if (gate == GATE_WAIT || gate == GATE_NO) {
                    return;               // the sheet is open / the measurement was stopped
                }
                if (gate == GATE_NONE && sessionT <= 0 && !gateOpen(m)) {
                    return;
                }
                keep(m, session.count());
            }
        }

        /**
         * The measured weight goes into the client card: what the client typed in their profile is a guess, the scale
         * wins (XemsClientSync no longer takes the profile's weight over a newer weigh-in).
         */
        void cardWeight(double kg) {
            if (!(kg >= 20 && kg <= 250) || u == null) {
                return;
            }
            float w = Math.round(kg * 10) / 10f;
            if (Math.abs(u.weight - w) < 0.05f) {
                return;
            }
            u.weight = w;
            try {
                // XemsLocalStore (widget, compiled apart): save the record quietly, the lists refresh
                java.lang.reflect.Method m = Class.forName("com.isaigu.gymapp.widget.XemsLocalStore")
                        .getDeclaredMethod("saveUserQuiet", TrainUser.class, boolean.class);
                m.setAccessible(true);
                m.invoke(null, u, true);
            } catch (Throwable t) {
                android.util.Log.w("xems_scale", "card weight", t);
            }
        }


        // ================================================================ the plausibility gate (ScaleCheck)

        static final int GATE_NONE = 0, GATE_WAIT = 1, GATE_NO = 2, GATE_OK = 3;
        /** Where this standing is at the gate, and the answers / cause that go on its entry. */
        int gate = GATE_NONE;
        ScaleModel.Notes notes;
        /** The last weigh-in against this one: signed kg, hours, raw fat − last fat (points), last fat %, last kg. */
        double gDw, gHours, gDFat = Double.NaN, gLastFat = Double.NaN, gLastW = Double.NaN;
        long gLastT;
        double gKg;
        int gVerdict, gCond, gCyc = -1;
        boolean gAskCond, gAskCyc;

        /**
         * A new standing's first reading: true = save now; false = a sheet is open (or the measurement is stopped)
         * and {@link #keep} follows from {@link #settle} when the client has answered.
         */
        boolean gateOpen(ScaleProtocol.Reading m) {
            JSONObject last = ScaleStore.latest(a, userId);
            long now = System.currentTimeMillis();
            gDw = 0;
            gHours = 0;
            gDFat = Double.NaN;
            gLastFat = Double.NaN;
            gLastW = Double.NaN;
            gLastT = 0;
            gCond = 0;
            gCyc = -1;
            gKg = m.weightKg;
            gVerdict = ScaleCheck.OK;
            if (last != null && last.optLong("t") > 0 && last.optDouble("w", Double.NaN) >= 20) {
                gLastT = last.optLong("t");
                gLastW = last.optDouble("w");
                gHours = Math.max(0, (now - gLastT) / 3600000.0);
                gDw = m.weightKg - gLastW;
                gVerdict = ScaleCheck.weight(gDw, gHours, gLastW);
                gLastFat = last.optDouble("fat", Double.NaN);
                double fr = ScaleModel.fatPct(m, male, age, heightCm);
                if (!Double.isNaN(fr) && !Double.isNaN(gLastFat)) {
                    gDFat = fr - gLastFat;
                }
            }
            gAskCond = gVerdict != ScaleCheck.OK || ScaleCheck.fatOff(gDFat, gHours);
            // the cycle: women of fertile age, every weigh-in — carried over when answered within the last 12 h
            gAskCyc = ageKnown && ScaleCheck.cycleAsked(male, age);
            if (gAskCyc && last != null && last.has("cyc") && gHours < 12) {
                gCyc = last.optInt("cyc");
                gAskCyc = false;
            }
            if (!gAskCond && !gAskCyc) {
                settle();
                return true;
            }
            gate = GATE_WAIT;
            if (gVerdict != ScaleCheck.OK) {
                askSame();
            } else {
                askConditions();
            }
            return false;
        }

        /** The answers in: name the likely cause, then the measurement is saved. */
        void settle() {
            ScaleModel.Notes n = new ScaleModel.Notes();
            n.cond = gCond;
            n.cyc = gCyc;
            n.why = Double.isNaN(gLastW) ? null
                    : ScaleCheck.cause(gDw, gDFat, gHours, gLastW, male, gLastFat, gCond, gCyc);
            notes = n.any() ? n : null;
            gate = GATE_OK;
        }

        void accept() {
            settle();
            ScaleProtocol.Reading m = session != null ? session.merged() : null;
            if (m != null) {
                keep(m, session.count());
            }
        }

        /** Stopped: nothing is saved; the stage says so; stepping off and on again measures anew. */
        void reject(String head, String line) {
            gate = GATE_NO;
            notes = null;
            if (staging) {
                stage.stopped(head, line);
            }
            status.setText(head);
            status.setTextColor(XemsUi.AMBER);
            again.setVisibility(View.VISIBLE);
        }

        void rejectPerson() {
            reject(tr("Измерването е прекратено", "Measurement stopped"),
                    tr("Не е същият човек — нищо не е записано. Слезте и започнете ново измерване.",
                            "Not the same person — nothing was saved. Step off and start a new measurement."));
        }

        void rejectUser() {
            reject(tr("Измерването е отказано", "Measurement cancelled"),
                    tr("Нищо не е записано. Слезте и започнете ново измерване.",
                            "Nothing was saved. Step off and start a new measurement."));
        }

        String ago() {
            return gHours < 1.5 ? tr(Math.max(1, Math.round(gHours * 60)) + " мин", Math.max(1,
                    Math.round(gHours * 60)) + " min")
                    : gHours < 48 ? tr(Math.round(gHours) + " ч", Math.round(gHours) + " h")
                    : tr(Math.round(gHours / 24) + " дни", Math.round(gHours / 24) + " days");
        }

        String change() {
            return (gDw >= 0 ? "+" : "−") + one(Math.abs(gDw)) + tr(" кг", " kg");
        }

        /** 1. A weight the body could not have moved to: is this the last client? */
        void askSame() {
            String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim() : "";
            String when = new SimpleDateFormat("d.MM · HH:mm", Locale.US).format(new Date(gLastT));
            confirm(tr("Същият човек ли е?", "Is this the same person?"),
                    tr("Теглото сега е " + one(gKg) + " кг, при предишното измерване (" + when + ", преди "
                            + ago() + ") беше " + one(gLastW) + " кг (" + change() + "). Това "
                            + (name.length() > 0 ? name + " ли е?" : "същият човек ли е?"),
                            "The weight is " + one(gKg) + " kg, at the last measurement (" + when + ", " + ago()
                            + " ago) it was " + one(gLastW) + " kg (" + change() + "). Is this "
                            + (name.length() > 0 ? name + "?" : "the same person?")),
                    tr("Да, същият", "Yes, the same"), new Same(this),
                    tr("Не, друг", "No, someone else"), new RejectPerson(this), false);
        }

        /** 2. Same person: can the body do it in this time? */
        void afterSame() {
            if (gVerdict == ScaleCheck.IMPOSSIBLE) {
                confirm(tr("Логическа несъвместимост в данните", "The data do not add up"),
                        tr("Промяна от " + change() + " за " + ago() + " не е възможна физиологично (най-много "
                                + "≈ " + one(ScaleCheck.hard(gHours, gLastW)) + " кг за това време). Измерването не "
                                + "е записано.", "A change of " + change() + " in " + ago() + " is not physiologically "
                                + "possible (at most ≈ " + one(ScaleCheck.hard(gHours, gLastW)) + " kg in that time). "
                                + "The measurement was not saved."),
                        tr("Разбрах", "OK"), new RejectUser(this), null, null, false);
                return;
            }
            askConditions();
        }

        /** 3. Possible: were the conditions the same? (+ the cycle, for women of fertile age) */
        void askConditions() {
            XemsUi.Shell q = XemsUi.shell(a, gAskCond ? tr("Същите ли са условията?", "Same conditions?")
                    : tr("Един кратък въпрос", "One quick question"), gAskCond
                    ? tr("Спрямо предишното измерване — отбележете какво е различно.",
                            "Against the last measurement — mark what is different.")
                    : tr("Цикълът променя водата в тялото и затова — измерването.",
                            "The cycle moves the body's water, and with it the measurement."), 640);
            if (gAskCond) {
                String[] t = {tr("Хранене или напитки преди кантара", "Food or drink before the scale"),
                        tr("Тоалетна — различно от предния път", "Toilet — different from last time"),
                        tr("Други дрехи, обувки или аксесоари", "Other clothes, shoes or accessories")};
                int[] bits = {ScaleCheck.C_FOOD, ScaleCheck.C_TOILET, ScaleCheck.C_CLOTHES};
                for (int i = 0; i < t.length; i++) {
                    q.body.addView(XemsUi.toggleRow(a, t[i], null, false, new Flip(this, bits[i])));
                }
            }
            if (gAskCyc) {
                gCyc = ScaleCheck.CYC_NO;
                TextView h = XemsUi.text(a, tr("Менструален цикъл", "Menstrual cycle"), 15, XemsUi.TEXT, true);
                h.setPadding(0, dp(gAskCond ? 14 : 4), 0, dp(8));
                q.body.addView(h);
                q.body.addView(XemsUi.segmented(a, new String[] {tr("Не", "No"), tr("Преди цикъл", "Before"),
                        tr("По време на цикъл", "During")}, 0, new CycPick(this)));
            }
            TextView n = XemsUi.button(a, tr("Откажи", "Cancel"), XemsUi.SECONDARY);
            n.setOnClickListener(new Answer(q, new RejectUser(this)));
            q.footer.addView(n, new LinearLayout.LayoutParams(0, dp(56), 1f));
            TextView y = XemsUi.button(a, tr("Запиши измерването", "Save the measurement"), XemsUi.PRIMARY);
            y.setOnClickListener(new Answer(q, new Accept(this)));
            LinearLayout.LayoutParams yl = new LinearLayout.LayoutParams(0, dp(56), 1f);
            yl.leftMargin = dp(12);
            q.footer.addView(y, yl);
            q.dialog.setCancelable(false);
            q.dialog.show();
        }

        /** The cause, in words (status line and results). */
        String causeLine(String why) {
            if (ScaleCheck.FOOD.equals(why)) {
                return tr("храна/напитки — не е тъкан", "food/drink — not tissue");
            } else if (ScaleCheck.TOILET.equals(why)) {
                return tr("тоалетна — не е тъкан", "toilet — not tissue");
            } else if (ScaleCheck.CLOTHES.equals(why)) {
                return tr("дрехи/аксесоари — не е тъкан", "clothes — not tissue");
            } else if (ScaleCheck.CYCLE.equals(why)) {
                return tr("цикъл: вода, не тъкан", "cycle: water, not tissue");
            } else if (ScaleCheck.GLYCOGEN.equals(why)) {
                return tr("вероятно гликоген и вода, не мускул", "likely glycogen and water, not muscle");
            } else if (ScaleCheck.WATER.equals(why)) {
                return tr("вероятно вода, не тъкан", "likely water, not tissue");
            }
            return tr("реална промяна", "a real change");
        }

        /**
         * Save the standing's merged reading: the first sweep adds the measurement and the results come in at once;
         * every further sweep (the client still on) refines the same entry and the open results follow.
         */
        void keep(ScaleProtocol.Reading r, int n) {
            boolean first = sessionT <= 0;
            JSONObject o = ScaleStore.save(a, userId, r, male, age, heightCm, n, sessionT, notes);
            if (o != null) {
                sessionT = o.optLong("t");
            }
            lastKg = r.weightKg;
            cardWeight(r.weightKg);
            again.setVisibility(View.VISIBLE);
            hist = ScaleStore.list(a, userId);
            ScaleUploader.schedule(a, userId, male, age, heightCm);
            at = hist.length() - 1;
            if (mode != MODE_DAY) {
                mode = MODE_DAY;
                build();
            }
            weight.setText(one(r.weightKg));
            weight.setTextColor(XemsUi.TEXT);
            JSONObject m = cur();
            boolean comp = m != null && m.has("fat");
            String when = new SimpleDateFormat("HH:mm", Locale.US).format(new Date(sessionT > 0 ? sessionT
                    : System.currentTimeMillis()));
            status.setText((comp ? tr("✓ Записано · ", "✓ Saved · ") : tr("Само тегло · ", "Weight only · ")) + when
                    + (n > 1 ? tr(" · " + n + " отчитания", " · " + n + " readings") : "")
                    + (notes != null && notes.why != null ? " · " + causeLine(notes.why) : ""));
            status.setTextColor(comp ? XemsUi.GO_TEXT : XemsUi.AMBER);
            if (staging) {
                stage.finished(comp ? tr("Мазнини ", "Fat ") + one(m.optDouble("fat")) + " %  ·  "
                        + tr("Мускулна маса ", "Muscle mass ") + one(m.optDouble("muscle")) + tr(" кг", " kg")
                        : "", comp);
                stage.results.setVisibility(hasFull() ? View.VISIBLE : View.GONE);
                if (comp && first) {
                    main.postDelayed(new Reveal(this), 1400);
                } else if (comp) {
                    main.postDelayed(new Reveal(this), 900);
                }
            } else {
                // refined while the results are open
                render(false);
                XemsUi.enter(status);
            }
        }

        /** After the ✓: the results come in. */
        void reveal() {
            if (!staging) {
                return;
            }
            showStage(false);
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
                TextView t = XemsUi.text(c, tr("Условия за точно измерване\n"
                        + "• боси крака, двете ръце на дръжката\n"
                        + "• преди тренировка, по едно и също време на деня\n"
                        + "• поне 2 часа след хранене\n\n"
                        + "Готовност за тренировка\n"
                        + "Сравнява тъканите с личната база на клиента. При непълно възстановяване интензитетът "
                        + "се намалява автоматично.",
                        "For an accurate measurement\n"
                                + "• bare feet, both hands on the handle\n"
                                + "• before training, at the same time of day\n"
                                + "• at least 2 hours after a meal\n\n"
                                + "Training readiness\n"
                                + "Compares the tissues with the client's own baseline. When recovery is incomplete the "
                                + "intensity is reduced automatically."), 14, XemsUi.TEXT, false);
                t.setLineSpacing(XemsUi.dp(c, 3), 1f);
                t.setPadding(XemsUi.dp(c, 18), XemsUi.dp(c, 14), XemsUi.dp(c, 18), XemsUi.dp(c, 14));
                t.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f),
                        XemsUi.dp(c, 14), 0xFF42A5F5, XemsUi.dp(c, 1)));
                ScaleSources.Open open = new ScaleSources.Open(a);
                infoPop = pop(a, anchor, ScaleSources.withButton(a, t, open), XemsUi.dp(c, 560));
                open.pop = infoPop;
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

    /** Long press on the state line: the scale's connection log (every frame) to send for a new scale model. */
    static final class ShareLog implements View.OnLongClickListener {
        final Activity a;

        ShareLog(Activity a) {
            this.a = a;
        }

        @Override
        public boolean onLongClick(View v) {
            XemsUi.haptic(v);
            String all = com.isaigu.gymapp.wearable.WearableBleDiagLog.readTail(a, "wearable-ble.log", 200000);
            StringBuilder b = new StringBuilder();
            for (String line : all.split("\n")) {
                if (line.contains("scale")) {
                    b.append(line).append('\n');
                }
            }
            android.content.Intent send = new android.content.Intent(android.content.Intent.ACTION_SEND);
            send.setType("text/plain");
            send.putExtra(android.content.Intent.EXTRA_SUBJECT, "XEMS scale log");
            send.putExtra(android.content.Intent.EXTRA_TEXT, b.length() > 0 ? b.toString()
                    : tr("Няма запис от кантара", "No scale record"));
            try {
                a.startActivity(android.content.Intent.createChooser(send, tr("Изпрати лога на кантара",
                        "Send the scale log")));
            } catch (Throwable ignored) {
            }
            return true;
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
            v.measureAgain();
        }
    }

    static final class ToResults implements View.OnClickListener {
        final Page v;

        ToResults(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.showStage(false);
            v.render(false);
        }
    }

    static final class Reveal implements Runnable {
        final Page v;

        Reveal(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.reveal();
        }
    }

    /** A footer button: one line, an equal share of the width — the row never runs off a narrow screen. */
    static void foot(XemsUi.Shell sh, TextView b, float weight, int leftDp) {
        Context c = b.getContext();
        b.setSingleLine(true);
        b.setEllipsize(android.text.TextUtils.TruncateAt.END);
        b.setTextSize(15);
        b.setPadding(XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 8), XemsUi.dp(c, 8));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, XemsUi.dp(c, 52), weight);
        lp.leftMargin = XemsUi.dp(c, leftDp);
        sh.footer.addView(b, lp);
    }

    /**
     * An explanation popup that always fits: at most the screen's width, below the anchor or above it — whichever
     * side has room — and scrolling inside when it is taller than either side (no text is cut on a short screen).
     */
    static android.widget.PopupWindow pop(Activity a, View anchor, View content, int widthPx) {
        android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
        int m = XemsUi.dp(a, 12);
        int width = Math.min(widthPx, dm.widthPixels - 2 * m);
        android.widget.ScrollView sv = new android.widget.ScrollView(a);
        sv.setVerticalScrollBarEnabled(false);
        sv.addView(content, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        content.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
                View.MeasureSpec.makeMeasureSpec(0, View.MeasureSpec.UNSPECIFIED));
        int h = content.getMeasuredHeight();
        int[] at = new int[2];
        anchor.getLocationOnScreen(at);
        int below = dm.heightPixels - (at[1] + anchor.getHeight()) - 2 * m;
        int above = at[1] - 2 * m;
        boolean down = h <= below || below >= above;
        int room = Math.max(XemsUi.dp(a, 160), down ? below : above);
        int ph = Math.min(h, room);
        android.widget.PopupWindow w = new android.widget.PopupWindow(sv, width, ph, true);
        w.setOutsideTouchable(true);
        w.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
        w.setElevation(XemsUi.dp(a, 10));
        int x = Math.max(m, Math.min(dm.widthPixels - width - m, at[0] + anchor.getWidth() / 2 - width / 2));
        int y = down ? at[1] + anchor.getHeight() + XemsUi.dp(a, 6) : Math.max(m, at[1] - ph - XemsUi.dp(a, 6));
        w.showAtLocation(anchor, Gravity.TOP | Gravity.START, x, y);
        return w;
    }

    /**
     * Side by side in landscape (one screen high, by weight) or stacked in portrait (each its own height; 0 = as
     * tall as its content) — the scale page and its sheets.
     */
    static final class Columns implements View.OnLayoutChangeListener {
        final Activity a;
        final LinearLayout row;
        final float[] weights;
        final int[] tallDp;
        final int offsetDp;
        boolean portrait;

        Columns(Activity a, LinearLayout row, float[] weights, int[] tallDp, int offsetDp) {
            this.a = a;
            this.row = row;
            this.weights = weights;
            this.tallDp = tallDp;
            this.offsetDp = offsetDp;
        }

        static boolean portrait(Activity a) {
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            return dm.heightPixels > dm.widthPixels;
        }

        /** Too narrow for cards side by side: an upright tablet or a phone (with {@link Dens} ~ 600–800 dp). */
        static boolean narrow(Activity a) {
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            return dm.widthPixels / Math.max(0.1f, dm.density) < 960;
        }

        static int landH(Activity a, int offsetDp) {
            return Math.max(XemsUi.dp(a, 440), a.getResources().getDisplayMetrics().heightPixels - XemsUi.dp(a, offsetDp));
        }

        static void apply(Activity a, LinearLayout row, boolean portrait, float[] w, int[] tallDp, int landH) {
            row.setOrientation(portrait ? LinearLayout.VERTICAL : LinearLayout.HORIZONTAL);
            for (int i = 0; i < row.getChildCount(); i++) {
                // a height is only a minimum: a column whose content is taller grows (and the page scrolls) —
                // a fixed height cut the bottom off on short screens and after a turn
                LinearLayout.LayoutParams lp;
                View col = row.getChildAt(i);
                if (portrait) {
                    lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                            ViewGroup.LayoutParams.WRAP_CONTENT);
                    lp.topMargin = i > 0 ? XemsUi.dp(a, 14) : 0;
                    col.setMinimumHeight(tallDp[i] > 0 ? XemsUi.dp(a, tallDp[i]) : 0);
                } else {
                    lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, w[i]);
                    lp.leftMargin = i > 0 ? XemsUi.dp(a, 14) : 0;
                    col.setMinimumHeight(landH);
                }
                if (row.getOrientation() == LinearLayout.HORIZONTAL) {
                    row.setBaselineAligned(false);
                }
                col.setLayoutParams(lp);
            }
        }

        /** Lay the sheet's columns out now and again whenever the tablet turns. */
        static void follow(Activity a, XemsUi.Shell sh, LinearLayout row, float[] w, int[] tallDp, int offsetDp) {
            Columns c = new Columns(a, row, w, tallDp, offsetDp);
            c.portrait = portrait(a);
            apply(a, row, c.portrait, w, tallDp, landH(a, offsetDp));
            if (sh.dialog.getWindow() != null) {
                sh.dialog.getWindow().getDecorView().addOnLayoutChangeListener(c);
            }
        }

        @Override
        public void onLayoutChange(View v, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            boolean p = b - t > r - l;
            if (p != portrait && r - l > 0) {
                portrait = p;
                Dens.hold(a);
                row.post(new Relayout(this));
            }
        }
    }

    /**
     * One dp for the whole time the page is open, whichever way the tablet is turned. The app runs on AutoSize
     * (design 1280 × 720 dp across the landscape width): turned upright, the width would again be 1280 dp — every
     * text and drawing at ~45 % of its size, and only the parts rebuilt after the turn shrink, so sizes mix. Here the
     * landscape dp (read when the page opens; the host is landscape) is held: upright the page is simply narrow
     * (~600–800 dp) and takes one column, with the same text size as across.
     */
    static final class Dens {
        static float density;
        static float scaled;
        static int dpi;
        /** What the host had before the page took over: put back on close (the client list sizes from it). */
        static float oDensity, oScaled, aDensity, aScaled;
        static int oDpi, aDpi;

        static void begin(Activity a) {
            android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
            android.util.DisplayMetrics am = a.getApplicationContext().getResources().getDisplayMetrics();
            oDensity = dm.density;
            oScaled = dm.scaledDensity;
            oDpi = dm.densityDpi;
            aDensity = am.density;
            aScaled = am.scaledDensity;
            aDpi = am.densityDpi;
            float k = 1f;
            if (dm.heightPixels > dm.widthPixels && dm.widthPixels > 0) {
                k = dm.widthPixels / (float) dm.heightPixels;   // opened upright: AutoSize's dp is for the short side
            }
            density = dm.density * k;
            scaled = dm.scaledDensity * k;
            dpi = Math.round(density * 160);
        }

        static void hold(Activity a) {
            if (density <= 0) {
                return;
            }
            try {
                set(a.getResources().getDisplayMetrics());
                set(a.getApplicationContext().getResources().getDisplayMetrics());
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.dens", t);
            }
        }

        static void set(android.util.DisplayMetrics dm) {
            dm.density = density;
            dm.scaledDensity = scaled;
            dm.densityDpi = dpi;
        }

        static void end(Activity a) {
            density = 0;
            if (oDensity <= 0) {
                return;
            }
            try {
                android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
                dm.density = oDensity;
                dm.scaledDensity = oScaled;
                dm.densityDpi = oDpi;
                android.util.DisplayMetrics am = a.getApplicationContext().getResources().getDisplayMetrics();
                am.density = aDensity;
                am.scaledDensity = aScaled;
                am.densityDpi = aDpi;
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.densEnd", t);
            }
            // once more after the turn back to landscape has settled (AutoSize re-measures on it)
            new android.os.Handler(android.os.Looper.getMainLooper()).postDelayed(new Restore(a), 700);
        }
    }

    static final class Restore implements Runnable {
        final Activity a;

        Restore(Activity a) {
            this.a = a;
        }

        @Override
        public void run() {
            try {
                android.util.DisplayMetrics dm = a.getResources().getDisplayMetrics();
                dm.density = Dens.oDensity;
                dm.scaledDensity = Dens.oScaled;
                dm.densityDpi = Dens.oDpi;
                android.util.DisplayMetrics am = a.getApplicationContext().getResources().getDisplayMetrics();
                am.density = Dens.aDensity;
                am.scaledDensity = Dens.aScaled;
                am.densityDpi = Dens.aDpi;
                Dens.oDensity = 0;
            } catch (Throwable ignored) {
            }
        }
    }

    static final class Relayout implements Runnable {
        final Columns c;

        Relayout(Columns c) {
            this.c = c;
        }

        @Override
        public void run() {
            Columns.apply(c.a, c.row, c.portrait, c.weights, c.tallDp, Columns.landH(c.a, c.offsetDp));
        }
    }

    /** The page itself on a turn: columns, the chips line, then a fresh render (sizes changed). */
    static final class Rotate implements View.OnLayoutChangeListener, Runnable {
        final Page v;

        Rotate(Page v) {
            this.v = v;
        }

        @Override
        public void onLayoutChange(View view, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
            if (r - l > 0 && (b - t > r - l) != v.portrait) {
                v.portrait = b - t > r - l;
                Dens.hold(v.a);
                view.post(this);
            }
        }

        @Override
        public void run() {
            try {
                Dens.hold(v.a);
                v.build();
                v.arrange();
                v.render(false);
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.rotate", t);
            }
        }
    }

    static final class Details implements View.OnClickListener {
        final Page v;

        Details(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.showDetail();
        }
    }

    static final class AskDelete implements View.OnClickListener {
        final Page v;
        final long t;

        AskDelete(Page v, long t) {
            this.v = v;
            this.t = t;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.askDelete(t);
        }
    }

    static final class DeleteNow implements Runnable {
        final Page v;
        final long t;

        DeleteNow(Page v, long t) {
            this.v = v;
            this.t = t;
        }

        @Override
        public void run() {
            v.deleteNow(t);
        }
    }

    static final class Answer implements View.OnClickListener {
        final XemsUi.Shell q;
        final Runnable then;

        Answer(XemsUi.Shell q, Runnable then) {
            this.q = q;
            this.then = then;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            try {
                q.dialog.dismiss();
            } catch (Throwable ignored) {
            }
            if (then != null) {
                try {
                    then.run();
                } catch (Throwable t) {
                    XemsGuard.report("ScaleScreen.answer", t);
                }
            }
        }
    }

    static final class Same implements Runnable {
        final Page v;

        Same(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.afterSame();
        }
    }

    static final class Accept implements Runnable {
        final Page v;

        Accept(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.accept();
        }
    }

    static final class RejectPerson implements Runnable {
        final Page v;

        RejectPerson(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.rejectPerson();
        }
    }

    static final class RejectUser implements Runnable {
        final Page v;

        RejectUser(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.rejectUser();
        }
    }

    static final class Flip implements XemsUi.OnToggle {
        final Page v;
        final int bit;

        Flip(Page v, int bit) {
            this.v = v;
            this.bit = bit;
        }

        @Override
        public void onToggle(boolean on) {
            v.gCond = on ? v.gCond | bit : v.gCond & ~bit;
        }
    }

    static final class CycPick implements XemsUi.OnIndex {
        final Page v;

        CycPick(Page v) {
            this.v = v;
        }

        @Override
        public void onIndex(int i) {
            v.gCyc = i;
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
            v.main.removeCallbacksAndMessages(null);
            if (v.stage != null) {
                v.stage.release();
            }
            if (v.orientationBefore != Integer.MIN_VALUE) {
                try {
                    v.a.setRequestedOrientation(v.orientationBefore);
                } catch (Throwable ignored) {
                }
            }
            Dens.end(v.a);
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

    static final class CardInfo implements View.OnClickListener {
        final Page v;
        final String key;

        CardInfo(Page v, String key) {
            this.v = v;
            this.key = key;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.cardInfo(b, key);
        }
    }

    static final class Summary implements View.OnClickListener {
        final Page v;

        Summary(Page v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.showSummary();
        }
    }

    /** "Изпрати на клиента": image or web page × short or detailed, one tap each (a pop above the button). */
    static final class ExportMenu implements View.OnClickListener {
        final Page v;
        final View fig;
        final String name;

        ExportMenu(Page v, View fig, String name) {
            this.v = v;
            this.fig = fig;
            this.name = name;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            Activity a = v.a;
            LinearLayout box = XemsUi.card(a);
            box.addView(XemsUi.text(a, tr("Изпрати на клиента", "Send to the client"), 18, XemsUi.TEXT, true));
            TextView hint = XemsUi.text(a, tr("Подредено изправено — за телефон.", "Laid out upright — for a phone."),
                    13, XemsUi.MUTED, false);
            box.addView(hint, XemsUi.matchWrap(a, 2));
            String[][] rows = {{tr("Снимка", "Image"), "img"}, {tr("Уеб страница", "Web page"), "web"}};
            for (String[] r : rows) {
                LinearLayout line = XemsUi.horizontal(a);
                line.setGravity(Gravity.CENTER_VERTICAL);
                line.addView(XemsUi.text(a, r[0], 15, XemsUi.MUTED, true),
                        new LinearLayout.LayoutParams(XemsUi.dp(a, 120), ViewGroup.LayoutParams.WRAP_CONTENT));
                for (int k = 0; k < 2; k++) {
                    boolean full = k == 1;
                    TextView opt = XemsUi.button(a, full ? tr("Подробен", "Detailed") : tr("Кратък", "Short"),
                            full ? XemsUi.SECONDARY : XemsUi.PRIMARY);
                    opt.setOnClickListener("img".equals(r[1]) ? (View.OnClickListener) new ShareImage(v, name, full)
                            : new ShareHtml(v, fig, name, full));
                    LinearLayout.LayoutParams ol = new LinearLayout.LayoutParams(0, XemsUi.dp(a, 52), 1f);
                    ol.leftMargin = XemsUi.dp(a, 8);
                    line.addView(opt, ol);
                }
                box.addView(line, XemsUi.matchWrap(a, 12));
            }
            v.exportPop = pop(a, b, box, XemsUi.dp(a, 460));
        }
    }

    static final class ShareImage implements View.OnClickListener {
        final Page v;
        final String name;
        final boolean full;

        ShareImage(Page v, String name, boolean full) {
            this.v = v;
            this.name = name;
            this.full = full;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            if (v.exportPop != null) {
                v.exportPop.dismiss();
                v.exportPop = null;
            }
            v.exportImage(full, name);
        }
    }

    static final class ShareHtml implements View.OnClickListener {
        final Page v;
        final View fig;
        final String name;
        final boolean full;

        ShareHtml(Page v, View fig, String name, boolean full) {
            this.v = v;
            this.fig = fig;
            this.name = name;
            this.full = full;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            android.graphics.Bitmap bm = null;
            try {
                if (fig.getWidth() > 0 && fig.getHeight() > 0) {
                    bm = android.graphics.Bitmap.createBitmap(fig.getWidth(), fig.getHeight(),
                            android.graphics.Bitmap.Config.ARGB_8888);
                    fig.draw(new android.graphics.Canvas(bm));
                }
            } catch (Throwable ignored) {
                bm = null;
            }
            if (v.exportPop != null) {
                v.exportPop.dismiss();
                v.exportPop = null;
            }
            ScaleShare.html(v.a, name, v.hist, v.at, v.male, v.age, v.heightCm, bm, full);
        }
    }

    static final class CloseSheet implements View.OnClickListener {
        final XemsUi.Shell sh;

        CloseSheet(XemsUi.Shell sh) {
            this.sh = sh;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            try {
                sh.dialog.dismiss();
            } catch (Throwable ignored) {
            }
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
