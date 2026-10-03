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
        LinearLayout row;
        LinearLayout barTop;
        LinearLayout barRange;
        boolean portrait;
        int orientationBefore = Integer.MIN_VALUE;
        LinearLayout history;
        /** The measuring stage (shown first and whenever someone steps on) and the step-ons of this measurement. */
        ScaleStage stage;
        ScaleSession session;
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
            portrait = Columns.portrait(a);
            workH = Columns.landH(a, 234);

            barTop = XemsUi.horizontal(a);
            barTop.setGravity(Gravity.CENTER_VERTICAL);
            modeHolder = XemsUi.horizontal(a);
            barTop.addView(modeHolder, new LinearLayout.LayoutParams(dp(360), ViewGroup.LayoutParams.WRAP_CONTENT));
            barTop.addView(XemsUi.spacer(a));
            rangeHolder = XemsUi.horizontal(a);
            TextView det = XemsUi.button(a, tr("Анализ", "Analysis"), XemsUi.SECONDARY);
            det.setOnClickListener(new Details(this));
            LinearLayout.LayoutParams dl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
            dl.leftMargin = dp(12);
            barTop.addView(det, dl);
            TextView sum = XemsUi.button(a, tr("Обобщение", "Summary"), XemsUi.SECONDARY);
            sum.setOnClickListener(new Summary(this));
            LinearLayout.LayoutParams sl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, dp(48));
            sl.leftMargin = dp(10);
            barTop.addView(sum, sl);
            s.body.addView(barTop, XemsUi.matchWrap(a, 0));
            barRange = XemsUi.horizontal(a);
            barRange.setGravity(Gravity.CENTER_VERTICAL);
            s.body.addView(barRange, XemsUi.matchWrap(a, 8));

            row = XemsUi.horizontal(a);
            row.setGravity(Gravity.TOP);
            row.addView(leftColumn());
            middle = XemsUi.vertical(a);
            row.addView(middle);
            right = XemsUi.vertical(a);
            row.addView(right);
            stage = new ScaleStage(a, !male);
            stage.results.setOnClickListener(new ToResults(this));
            s.body.addView(stage.view(), XemsUi.matchWrap(a, 12));
            s.body.addView(row, XemsUi.matchWrap(a, 12));
            arrange();

            again = XemsUi.button(a, tr("Мери пак", "Measure again"), XemsUi.SECONDARY);
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
            render(false);
            showStage(true);
            s.dialog.setOnDismissListener(new Dismissed(this));
            s.dialog.show();
            // the host is locked to landscape; this page also reads upright — it follows the tablet while open
            try {
                orientationBefore = a.getRequestedOrientation();
                a.setRequestedOrientation(android.content.pm.ActivityInfo.SCREEN_ORIENTATION_FULL_USER);
            } catch (Throwable ignored) {
            }
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

        /**
         * Landscape: figure | today | more, side by side, one screen high. Portrait: the same cards stacked, each
         * its own height, the page scrolls; the comparison chips move to their own line.
         */
        void arrange() {
            portrait = Columns.portrait(a);
            workH = Columns.landH(a, 234);
            Columns.apply(a, row, portrait, new float[] {0.95f, 1f, 1.12f}, new int[] {640, 700, 680}, workH);
            if (stage != null) {
                Columns.apply(a, stage.root, portrait, new float[] {1.2f, 1f}, new int[] {560, 600}, workH);
            }
            if (rangeHolder.getParent() != null) {
                ((ViewGroup) rangeHolder.getParent()).removeView(rangeHolder);
            }
            if (portrait) {
                barRange.addView(rangeHolder);
            } else {
                barTop.addView(rangeHolder, 2);
            }
            barRange.setVisibility(portrait && !staging ? View.VISIBLE : View.GONE);
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
            today.addView(header(when, "ready"));
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
                    head.addView(XemsUi.text(a, names[i] + "  ⓘ", 13, XemsUi.MUTED, false),
                            new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    tileDelta[i] = XemsUi.text(a, "", 13, XemsUi.MUTED, true);
                    head.addView(tileDelta[i]);
                    t.addView(head);
                    tileValue[i] = XemsUi.text(a, "—", 30, XemsUi.TEXT, true);
                    tileValue[i].setIncludeFontPadding(false);
                    t.addView(tileValue[i], XemsUi.matchWrap(a, 4));
                    tiles[i] = t;
                    t.setOnClickListener(new CardInfo(this, TILE_KEY[i]));
                    XemsUi.pressable(t);
                    line.addView(t, XemsUi.weight(1, c == 0 ? 0 : 10, a));
                }
                right.addView(line, XemsUi.matchWrap(a, r == 0 ? 0 : 10));
            }
            LinearLayout mc = XemsUi.card(a);
            mc.addView(header(XemsUi.label(a, tr("Тип тяло · спрямо ръста", "Body type · for the height")), "body"));
            meter = new ScaleViews.BandMeter(a);
            mc.addView(meter, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            right.addView(mc, flex(12));
            LinearLayout rc = XemsUi.card(a);
            rc.addView(header(XemsUi.label(a, tr("Ток до мускула · по канали", "Current to the muscle · per channel")),
                    "reach"));
            reach = new ScaleViews.Reach(a);
            rc.addView(reach, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(112)));
            right.addView(rc, XemsUi.matchWrap(a, 12));
        }

        void buildTrack() {
            LinearLayout tc = XemsUi.card(a);
            LinearLayout head = XemsUi.horizontal(a);
            head.setGravity(Gravity.CENTER_VERTICAL);
            trendTitle = XemsUi.label(a, "");
            tc.addView(header(trendTitle, "trend"));
            metricHolder = XemsUi.horizontal(a);
            tc.addView(metricHolder, XemsUi.matchWrap(a, 8));
            trend = new ScaleViews.Trend(a, false);
            tc.addView(trend, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            middle.addView(tc, flex(0));
            middle.addView(radarCard(), flex(12));

            LinearLayout dc = XemsUi.card(a);
            when = XemsUi.label(a, "");
            dc.addView(header(when, "table"));
            table = XemsUi.vertical(a);
            dc.addView(table, XemsUi.matchWrap(a, 6));
            right.addView(dc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            LinearLayout mc = XemsUi.card(a);
            mc.addView(header(XemsUi.label(a, tr("Промяна от старта", "Change since the start")), "change"));
            changeHead = XemsUi.text(a, "", 22, XemsUi.TEXT, true);
            mc.addView(changeHead, XemsUi.matchWrap(a, 4));
            change = new ScaleViews.Change(a);
            mc.addView(change, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            right.addView(mc, flex(12));
            LinearLayout hc = XemsUi.card(a);
            hc.addView(header(XemsUi.label(a, tr("Мерения", "Measurements")), "history"));
            history = XemsUi.vertical(a);
            hc.addView(history, XemsUi.matchWrap(a, 4));
            right.addView(hc, XemsUi.matchWrap(a, 12));
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
            confirm(tr("Да изтрия ли това мерене?", "Delete this measurement?"),
                    when + " · " + one(m.optDouble("w")) + tr(" кг", " kg")
                            + tr(" — останалите се преизчисляват без него", " — the rest are recomputed without it"),
                    tr("Изтрий", "Delete"), new DeleteNow(this, t), tr("Остави", "Keep"), null);
        }

        void deleteNow(long t) {
            hist = ScaleStore.delete(a, userId, t, male, age, heightCm);
            at = hist.length() - 1;
            ScaleUploader.schedule(a, userId, male, age, heightCm);
            render(false);
        }

        /** A small question sheet: title, one line, two answers (null action = just close). */
        void confirm(String title, String line, String yes, Runnable onYes, String no, Runnable onNo) {
            XemsUi.Shell q = XemsUi.shell(a, title, line, 640);
            TextView n = XemsUi.button(a, no, XemsUi.SECONDARY);
            n.setOnClickListener(new Answer(q, onNo));
            q.footer.addView(n, new LinearLayout.LayoutParams(0, dp(56), 1f));
            TextView y = XemsUi.button(a, yes, XemsUi.PRIMARY);
            y.setOnClickListener(new Answer(q, onYes));
            LinearLayout.LayoutParams yl = new LinearLayout.LayoutParams(0, dp(56), 1f);
            yl.leftMargin = dp(12);
            q.footer.addView(y, yl);
            q.dialog.setCancelable(onNo == null);
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
            d.setContentDescription(tr("Какво значи", "What it means"));
            d.setOnClickListener(new CardInfo(this, key));
            return d;
        }

        LinearLayout.LayoutParams dotLp() {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(dp(40), dp(40));
            lp.leftMargin = dp(8);
            return lp;
        }

        static final String[] FAT_N = {"много ниски", "стегнато", "норма", "наднормено", "затлъстяване"};
        static final String[] FAT_E = {"very low", "lean", "normal", "overweight", "obese"};

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
                    text = tr("Каква част от теглото е мазнина. Нормата зависи от пола и възрастта. Под нея — стегнато "
                            + "тяло; много под нея остават само жизнено нужните мазнини. Над нея — наднормено, после "
                            + "затлъстяване.", "How much of the weight is fat. The norm depends on sex and age. Below it "
                            + "— lean; far below only the essential fat is left. Above — overweight, then obese.");
                    bars.add(ScaleInsight.fatNorm(fat, male, age, names(FAT_N, FAT_E)));
                } else if ("muscle".equals(key)) {
                    title = tr("Мускули", "Muscle");
                    text = tr("Мускулите и всичко без мазнини, спрямо ръста. В средата е обичайното за възрастни; "
                            + "вдясно — атлетично. Тук повече е по-добре: тежко от мускули тяло не е наднормено.",
                            "Muscle and everything that is not fat, for the height. The middle is usual for adults; "
                                    + "to the right athletic. More is better here: weight from muscle is not overweight.");
                    bars.add(ScaleInsight.muscleNorm(b.ffmi, male, names(
                            new String[] {"много малко", "малко", "норма", "атлетично", "много"},
                            new String[] {"very low", "low", "normal", "athletic", "very high"})));
                } else if ("water".equals(key)) {
                    title = tr("Вода", "Water");
                    text = tr("Каква част от теглото е вода. Ниско — обезводняване: нека пие вода преди тренировка "
                            + "(токът се усеща по-силно). Високо — задържане на течности или оток.",
                            "How much of the weight is water. Low — dehydrated: have them drink before training (the "
                                    + "current feels stronger). High — fluid retention or swelling.");
                    bars.add(ScaleInsight.waterNorm(m != null ? m.optDouble("water", Double.NaN) : Double.NaN, male,
                            names(new String[] {"много ниско", "ниско", "норма", "високо", "много високо"},
                                    new String[] {"very low", "low", "normal", "high", "very high"})));
                } else if ("age".equals(key)) {
                    title = tr("Физическа възраст", "Physical age");
                    text = tr("На каква възраст отговарят мускулите на ръцете и краката и мазнините — по средното от "
                            + "DXA мерения на 3 327 души. Паспортната възраст не участва. ±3 години = като годините.",
                            "The age whose usual arm + leg muscle and fat match — from DXA scans of 3,327 people. The "
                                    + "passport age is not used. ±3 years = as old as the years.");
                    bars.add(ScaleInsight.ageNorm(b.physicalAge, age, names(
                            new String[] {"много по-млад", "по-млад", "като годините", "по-стар", "много по-стар"},
                            new String[] {"much younger", "younger", "as the years", "older", "much older"})));
                } else if ("weight".equals(key)) {
                    title = tr("Тегло и ИТМ", "Weight and BMI");
                    text = tr("ИТМ сравнява теглото с ръста, но не знае от какво е теглото: мускулите го вдигат без "
                            + "мазнини. Затова решава „Тип тяло“, не ИТМ.", "BMI compares the weight with the height "
                            + "but not what the weight is made of: muscle raises it without fat. So the body type "
                            + "decides, not BMI.");
                    bars.add(ScaleInsight.bmiNorm(m != null ? m.optDouble("bmi", Double.NaN) : Double.NaN, names(
                            new String[] {"много нисък", "нисък", "норма", "над нормата", "затлъстяване"},
                            new String[] {"very low", "low", "normal", "above", "obese"})));
                } else if ("ready".equals(key)) {
                    title = tr("Готовност за днес", "Readiness today");
                    text = tr("Как са тъканите днес спрямо обичайното за този клиент. Подуване след тежка EMS (ден 2–4) "
                            + "или по-малко вода я свалят — тогава днес по-слабо: −15 % или −30 %. Автоматичният режим и "
                            + "планът го прилагат сами.", "How the tissues are today against this client's usual. "
                            + "Swelling after a hard EMS session (day 2–4) or less water lowers it — then softer today: "
                            + "−15 % or −30 %. Auto and the plan apply it by themselves.");
                    ScaleInsight.Readiness r = m != null ? ScaleInsight.readiness(hist, indexOf(m)) : null;
                    if (r != null && r.known()) {
                        bars.add(ScaleInsight.readyNorm(r.score, names(
                                new String[] {"−30 %", "−15 %", "внимание", "добре", "пълна сила"},
                                new String[] {"−30 %", "−15 %", "careful", "good", "full"})));
                    }
                } else if ("zones".equals(key)) {
                    title = tr("Зони спрямо нормата", "Zones against normal");
                    text = tr("Мускулите във всяка зона спрямо нормата за ръста и теглото (100 %). Пунктирът е "
                            + "сравнението. Докосни зона на фигурата или радара, за да видиш нея.",
                            "The muscle of each zone against normal for the height and weight (100 %). Dashed = the "
                                    + "comparison. Tap a zone on the figure or the radar to see it.");
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
                        barTitles.add(zn[z] + (selected < 0 ? tr(" · най-слабата зона", " · the weakest zone") : ""));
                        bars.add(ScaleInsight.zoneNorm(mus[z], names(
                                new String[] {"много малко", "малко", "норма", "над нормата", "много"},
                                new String[] {"very low", "low", "normal", "above", "very high"})));
                    }
                } else if ("body".equals(key)) {
                    title = tr("Тип тяло", "Body type");
                    text = tr("Мускули и мазнини поотделно, спрямо ръста — затова плътната мускулатура е „атлетично“, "
                            + "а не „наднормено тегло“. Висцералните мазнини са около органите.",
                            "Muscle and fat separately, for the height — so dense muscle is \"athletic\", not "
                                    + "\"overweight\". Visceral fat sits around the organs.");
                    barTitles.add(tr("Мускули", "Muscle"));
                    bars.add(ScaleInsight.muscleNorm(b.ffmi, male, names(
                            new String[] {"много малко", "малко", "норма", "атлетично", "много"},
                            new String[] {"very low", "low", "normal", "athletic", "very high"})));
                    barTitles.add(tr("Мазнини", "Fat"));
                    bars.add(ScaleInsight.fatNorm(fat, male, age, names(FAT_N, FAT_E)));
                    barTitles.add(tr("Висцерални мазнини", "Visceral fat"));
                    bars.add(ScaleInsight.visceralNorm(m != null ? m.optDouble("visc", Double.NaN) : Double.NaN,
                            names(new String[] {"много ниски", "ниски", "норма", "високи", "много високи"},
                                    new String[] {"very low", "low", "normal", "high", "very high"})));
                } else if ("reach".equals(key)) {
                    title = tr("Ток до мускула", "Current to the muscle");
                    text = tr("Мазнините над мускула изолират тока. Всяка колона е една мускулна група на костюма: "
                            + "колко ток стига до нея спрямо средното за тялото. −10 = там е нужна повече сила или "
                            + "по-широк импулс. Автоматичният режим го смята сам.", "Fat over a muscle insulates the "
                            + "current. Each column is one suit muscle group: how much current reaches it against the "
                            + "body's mean. −10 = more strength or a wider pulse there. Auto accounts for it.");
                } else if ("figure".equals(key)) {
                    title = tr("Фигурата", "The figure");
                    text = mode == MODE_TRACK
                            ? tr("Всяка зона е оцветена по промяната от началото на периода: зелено — към добро "
                                    + "(мускули прибавени / мазнини свалени), жълто — обратното, сиво — без промяна.",
                                    "Each zone is coloured by its change since the start of the period: green the good "
                                            + "way (muscle gained / fat lost), amber the other, grey no change.")
                            : tr("Мускули и Мазнини — всяка зона спрямо нормата. Подуване — спрямо обичайното за "
                                    + "клиента (след тежка тренировка). Ток — всяка мускулна група на костюма по това "
                                    + "колко ток стига до нея. Докосни зона за числата ѝ.",
                                    "Muscle and Fat — each zone against normal. Swelling — against the client's usual "
                                            + "(after a hard session). Current — each suit muscle group by how much "
                                            + "current reaches it. Tap a zone for its numbers.");
                } else if ("trend".equals(key)) {
                    title = tr("Тренд", "Trend");
                    text = tr("Как се мени избраният показател от мерене до мерене в периода. Избери показател отгоре; "
                            + "периода — горе вдясно.", "How the chosen value moves from measurement to measurement. "
                            + "Pick the value above; the period top right.");
                    if (metric == M_FAT) {
                        bars.add(ScaleInsight.fatNorm(fat, male, age, names(FAT_N, FAT_E)));
                    } else if (metric == M_MUSCLE) {
                        bars.add(ScaleInsight.muscleNorm(b.ffmi, male, names(
                                new String[] {"много малко", "малко", "норма", "атлетично", "много"},
                                new String[] {"very low", "low", "normal", "athletic", "very high"})));
                    } else if (metric == M_AGE) {
                        bars.add(ScaleInsight.ageNorm(b.physicalAge, age, names(
                                new String[] {"много по-млад", "по-млад", "като годините", "по-стар", "много по-стар"},
                                new String[] {"much younger", "younger", "as the years", "older", "much older"})));
                    }
                } else if ("history".equals(key)) {
                    title = tr("Мерения", "Measurements");
                    text = tr("Последните мерения на клиента. ✕ изтрива едно — например ако някой друг е стъпил на "
                            + "профила му; останалите се преизчисляват без него, и в картона.",
                            "The client's latest measurements. ✕ removes one — say someone else stepped on under "
                                    + "this profile; the rest are recomputed without it, on the card too.");
                } else if ("table".equals(key)) {
                    title = tr("Тогава → сега", "Then → now");
                    text = tr("Всеки показател в началото на периода и сега. Зелено — към добро, жълто — обратното.",
                            "Each value at the start of the period and now. Green the good way, amber the other.");
                } else if ("change".equals(key)) {
                    title = tr("Промяна от старта", "Change since the start");
                    text = tr("Колко кг мускули и мазнини са дошли или отишли от първото мерене в периода. Теглото "
                            + "може да стои, докато мазнините падат и мускулите растат — това е целта.",
                            "How many kg of muscle and fat came or went since the first measurement of the period. "
                                    + "The weight can stay while fat falls and muscle grows — that is the aim.");
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
                int width = dp(bars.size() > 0 ? 480 : 420);
                infoPop = new android.widget.PopupWindow(box, width, ViewGroup.LayoutParams.WRAP_CONTENT, true);
                infoPop.setOutsideTouchable(true);
                infoPop.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
                infoPop.setElevation(dp(10));
                // keep it on the screen: open towards the free side of the anchor
                int[] at = new int[2];
                anchor.getLocationOnScreen(at);
                int screenW = a.getResources().getDisplayMetrics().widthPixels;
                int x = Math.max(dp(12), Math.min(screenW - width - dp(12), at[0] + anchor.getWidth() / 2 - width / 2));
                infoPop.showAtLocation(anchor, Gravity.TOP | Gravity.START, x, at[1] + anchor.getHeight() + dp(6));
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
                int h = Math.max(dp(440), a.getResources().getDisplayMetrics().heightPixels - dp(170));
                LinearLayout row = XemsUi.horizontal(a);
                row.setGravity(Gravity.TOP);
                ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);

                // 1. profile
                LinearLayout prof = XemsUi.card(a);
                prof.addView(XemsUi.label(a, tr("Профил", "Profile")));
                TextView chip = XemsUi.text(a, "", 18, XemsUi.TEXT, true);
                chip.setPadding(dp(14), dp(9), dp(14), dp(9));
                TextView saveChip = typeChip;
                typeChip = chip;
                typeChip(m);
                typeChip = saveChip;
                LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                        ViewGroup.LayoutParams.WRAP_CONTENT);
                cp.topMargin = dp(8);
                prof.addView(chip, cp);
                String who = (male ? tr("Мъж", "Male") : tr("Жена", "Female")) + " · " + age + tr(" г.", " y") + " · "
                        + heightCm + tr(" см", " cm") + (m != null ? " · " + one(m.optDouble("w")) + tr(" кг", " kg") : "");
                prof.addView(XemsUi.text(a, who, 15, XemsUi.MUTED, false), XemsUi.matchWrap(a, 10));
                LinearLayout ages = XemsUi.horizontal(a);
                ages.setGravity(Gravity.BOTTOM);
                TextView pa = XemsUi.text(a, Double.isNaN(b.physicalAge) ? "—" : String.valueOf(Math.round(b.physicalAge)),
                        44, Double.isNaN(b.physicalAge) ? XemsUi.MUTED : b.physicalAge <= age - 3 ? XemsUi.GO_TEXT
                                : b.physicalAge >= age + 3 ? XemsUi.AMBER : XemsUi.TEXT, true);
                pa.setIncludeFontPadding(false);
                ages.addView(pa);
                TextView pl = XemsUi.text(a, tr("  физическа възраст · паспорт ", "  physical age · passport ") + age,
                        14, XemsUi.MUTED, false);
                pl.setPadding(0, 0, 0, dp(6));
                ages.addView(pl);
                prof.addView(ages, XemsUi.matchWrap(a, 10));
                ScaleViews.Body fig = new ScaleViews.Body(a);
                double[] mus = ScaleInsight.ofNormal(m, male, heightCm)[0];
                int[] cols = new int[5];
                for (int i = 0; i < 5; i++) {
                    cols[i] = Double.isNaN(mus[i]) ? 0 : ScaleViews.muscleCol(mus[i]);
                }
                fig.setSegments(!male, cols, -1);
                prof.addView(fig, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
                row.addView(prof, new LinearLayout.LayoutParams(0, h, 0.9f));

                // 2. the key values on their norms
                LinearLayout keys = XemsUi.card(a);
                keys.addView(XemsUi.label(a, tr("Накратко · спрямо нормата", "In short · against the norm")));
                String[] fatN = names(FAT_N, FAT_E);
                String[] five = names(new String[] {"много ниско", "ниско", "норма", "високо", "много високо"},
                        new String[] {"very low", "low", "normal", "high", "very high"});
                Object[][] rows = {
                        {tr("Мазнини", "Body fat"), ScaleInsight.fatNorm(m != null ? m.optDouble("fat", Double.NaN)
                                : Double.NaN, male, age, fatN)},
                        {tr("Мускули", "Muscle"), ScaleInsight.muscleNorm(b.ffmi, male, names(
                                new String[] {"много малко", "малко", "норма", "атлетично", "много"},
                                new String[] {"very low", "low", "normal", "athletic", "very high"}))},
                        {tr("Вода", "Water"), ScaleInsight.waterNorm(m != null ? m.optDouble("water", Double.NaN)
                                : Double.NaN, male, five)},
                        {tr("Висцерални мазнини", "Visceral fat"), ScaleInsight.visceralNorm(m != null
                                ? m.optDouble("visc", Double.NaN) : Double.NaN, five)},
                        {tr("ИТМ (само теглото)", "BMI (weight only)"), ScaleInsight.bmiNorm(m != null
                                ? m.optDouble("bmi", Double.NaN) : Double.NaN, names(
                                new String[] {"много нисък", "нисък", "норма", "над нормата", "затлъстяване"},
                                new String[] {"very low", "low", "normal", "above", "obese"}))}};
                for (Object[] r : rows) {
                    keys.addView(XemsUi.text(a, (String) r[0], 13, XemsUi.MUTED, true), XemsUi.matchWrap(a, 8));
                    ScaleViews.NormBar nb = new ScaleViews.NormBar(a);
                    nb.set((ScaleInsight.Norm) r[1]);
                    keys.addView(nb, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(88)));
                }
                LinearLayout.LayoutParams kp = new LinearLayout.LayoutParams(0, h, 1.05f);
                kp.leftMargin = dp(14);
                row.addView(keys, kp);

                // 3. recommendations
                LinearLayout adv = XemsUi.card(a);
                adv.addView(XemsUi.label(a, tr("Препоръки", "Recommendations")));
                android.widget.ScrollView sc = new android.widget.ScrollView(a);
                sc.setVerticalScrollBarEnabled(false);
                LinearLayout list = XemsUi.vertical(a);
                sc.addView(list);
                boolean bg = XemsLang.tr("б", "e").equals("б");
                String[] kinds = bg ? new String[] {"ДНЕС", "EMS", "ТЯЛО", "НАВИК"}
                        : new String[] {"TODAY", "EMS", "BODY", "HABIT"};
                int[] tones = {0xFF22C55E, 0xFF38BDF8, 0xFFF59E0B, 0xFFEF4444};
                for (ScaleInsight.Advice ad : ScaleInsight.advice(hist, at, male, age, heightCm)) {
                    LinearLayout item = XemsUi.horizontal(a);
                    item.setBackgroundDrawable(XemsUi.rounded(XemsUi.SURFACE, dp(14), XemsUi.alpha(tones[ad.tone], 120),
                            dp(1)));
                    View stripe = new View(a);
                    stripe.setBackgroundDrawable(XemsUi.rounded(tones[ad.tone], dp(3), 0, 0));
                    LinearLayout.LayoutParams stl = new LinearLayout.LayoutParams(dp(5),
                            ViewGroup.LayoutParams.MATCH_PARENT);
                    stl.setMargins(dp(8), dp(10), dp(4), dp(10));
                    item.addView(stripe, stl);
                    LinearLayout txt = XemsUi.vertical(a);
                    txt.setPadding(dp(8), dp(10), dp(14), dp(12));
                    TextView kind = XemsUi.text(a, kinds[ad.kind], 11, tones[ad.tone], true);
                    txt.addView(kind);
                    txt.addView(XemsUi.text(a, bg ? ad.titleBg : ad.titleEn, 16, XemsUi.TEXT, true), XemsUi.matchWrap(a, 2));
                    TextView body = XemsUi.text(a, bg ? ad.textBg : ad.textEn, 14, XemsUi.MUTED, false);
                    body.setLineSpacing(dp(2), 1f);
                    txt.addView(body, XemsUi.matchWrap(a, 3));
                    item.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                    list.addView(item, XemsUi.matchWrap(a, 10));
                }
                adv.addView(sc, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
                LinearLayout.LayoutParams ap = new LinearLayout.LayoutParams(0, h, 1.15f);
                ap.leftMargin = dp(14);
                row.addView(adv, ap);
                sh.body.addView(row, XemsUi.matchWrap(a, 4));
                Columns.follow(a, sh, row, new float[] {0.9f, 1.05f, 1.15f}, new int[] {600, 560, 640}, 170);

                if (m != null && m.has("fat")) {
                    TextView img = XemsUi.button(a, tr("Сподели · изображение", "Share · image"), XemsUi.SECONDARY);
                    img.setOnClickListener(new ShareImage(this, sh, name));
                    sh.footer.addView(img, new LinearLayout.LayoutParams(dp(240), dp(56)));
                    TextView web = XemsUi.button(a, tr("Сподели · HTML", "Share · HTML"), XemsUi.SECONDARY);
                    web.setOnClickListener(new ShareHtml(this, fig, name));
                    LinearLayout.LayoutParams wl = new LinearLayout.LayoutParams(dp(220), dp(56));
                    wl.leftMargin = dp(10);
                    sh.footer.addView(web, wl);
                }
                sh.footer.addView(XemsUi.spacer(a));
                TextView close = XemsUi.button(a, tr("Затвори", "Close"), XemsUi.PRIMARY);
                close.setOnClickListener(new CloseSheet(sh));
                sh.footer.addView(close, new LinearLayout.LayoutParams(dp(260), dp(56)));
                sh.dialog.show();
            } catch (Throwable t) {
                XemsGuard.report("ScaleScreen.summary", t);
            }
        }

        /** "Анализ": every value explorable — composition, zones, tiles, the focus (ScaleAnalysis). */
        void showDetail() {
            String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim()
                    : u.nickName != null ? u.nickName.trim() : "";
            ScaleAnalysis.open(a, hist, at, male, age, heightCm, name);
        }

        LinearLayout radarCard() {
            LinearLayout zones = XemsUi.card(a);
            zones.addView(header(XemsUi.label(a, tr("Зони спрямо нормата", "Zones against normal")), "zones"));
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
            part(b, (dm >= 0 ? "+" : "−") + one(Math.abs(dm)) + tr(" кг мускули", " kg muscle"),
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

        /** The stage in front (measuring) or the results; the switch fades. */
        void showStage(boolean on) {
            staging = on;
            stage.view().setVisibility(on ? View.VISIBLE : View.GONE);
            row.setVisibility(on ? View.GONE : View.VISIBLE);
            barTop.setVisibility(on ? View.GONE : View.VISIBLE);
            barRange.setVisibility(on || !portrait ? View.GONE : View.VISIBLE);
            stage.results.setVisibility(hasFull() ? View.VISIBLE : View.GONE);
            if (on) {
                again.setVisibility(View.INVISIBLE);
                XemsUi.enter(stage.view());
            } else {
                again.setVisibility(View.VISIBLE);
                XemsUi.enter(row);
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

        /** A new measurement: a fresh session and stage, the link searching. */
        void measureAgain() {
            session = null;
            stage.reset();
            showStage(true);
            startLink();
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
            stage.linkState(st);
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
            if (!staging && kg > 5) {
                // someone stepped on while the results were open: the stage comes back
                stage.reset();
                showStage(true);
            }
            stage.liveWeight(kg, stable);
        }

        @Override
        public void onResult(ScaleProtocol.Reading r) {
            weight.setText(one(r.weightKg));
            weight.setTextColor(XemsUi.TEXT);
            if (session == null) {
                session = new ScaleSession(hist, male, age, heightCm);
            }
            if (!staging) {
                showStage(true);
            }
            int need = session.add(r);
            stage.stepResult(r, session);
            if (need != ScaleSession.NEED_NONE) {
                // one more step-on: listen again once this link has let the scale go
                main.postDelayed(new Relink(this), 2600);
                return;
            }
            steps = session.count();
            ScaleProtocol.Reading m = session.merged();
            session = null;
            if (m == null) {
                return;
            }
            guard(m);
        }

        int steps = 1;

        void guard(ScaleProtocol.Reading r) {
            if (ScaleStore.unlike(hist, r.weightKg, System.currentTimeMillis())) {
                // a weight this client did not have days ago: someone else on the profile? ask before it joins
                String name = u.name != null && u.name.trim().length() > 0 ? u.name.trim() : tr("клиента", "the client");
                JSONObject last = hist.length() > 0 ? hist.optJSONObject(hist.length() - 1) : null;
                confirm(tr("Това ли е ", "Is this ") + name + "?",
                        one(r.weightKg) + tr(" кг — последно ", " kg — last time ")
                                + (last != null ? one(last.optDouble("w")) : "—") + tr(" кг. Не записвам чуждо мерене.",
                                " kg. A measurement of someone else is not saved."),
                        tr("Да, запиши", "Yes, save it"), new Keep(this, r), tr("Не, отхвърли", "No, discard"),
                        new Drop(this));
                return;
            }
            keep(r);
        }

        void dropped() {
            say(tr("Мерането не е записано", "Not saved"), XemsUi.MUTED);
            showStage(false);
            again.setVisibility(View.VISIBLE);
        }

        void keep(ScaleProtocol.Reading r) {
            ScaleBody b = ScaleBody.of(r, male, age, heightCm);
            JSONObject o = ScaleStore.save(a, userId, r, male, age, heightCm, steps);
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
            ScaleUploader.schedule(a, userId, male, age, heightCm);
            at = hist.length() - 1;
            if (mode != MODE_DAY) {
                mode = MODE_DAY;
                build();
            }
            JSONObject m = cur();
            stage.finished(m != null && m.has("fat") ? tr("Мазнини ", "Fat ") + one(m.optDouble("fat")) + " %  ·  "
                    + tr("Мускули ", "Muscle ") + one(m.optDouble("muscle")) + tr(" кг", " kg")
                    : tr("Само тегло — без дръжката няма състав", "Weight only — no composition without the handle"));
            main.postDelayed(new Reveal(this), 1800);
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

    static final class Relink implements Runnable {
        final Page v;

        Relink(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            if (v.session != null && v.s.dialog.isShowing()) {
                v.startLink();
            }
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

        static int landH(Activity a, int offsetDp) {
            return Math.max(XemsUi.dp(a, 440), a.getResources().getDisplayMetrics().heightPixels - XemsUi.dp(a, offsetDp));
        }

        static void apply(Activity a, LinearLayout row, boolean portrait, float[] w, int[] tallDp, int landH) {
            row.setOrientation(portrait ? LinearLayout.VERTICAL : LinearLayout.HORIZONTAL);
            for (int i = 0; i < row.getChildCount(); i++) {
                LinearLayout.LayoutParams lp;
                if (portrait) {
                    lp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                            tallDp[i] > 0 ? XemsUi.dp(a, tallDp[i]) : ViewGroup.LayoutParams.WRAP_CONTENT);
                    lp.topMargin = i > 0 ? XemsUi.dp(a, 14) : 0;
                } else {
                    lp = new LinearLayout.LayoutParams(0, landH, w[i]);
                    lp.leftMargin = i > 0 ? XemsUi.dp(a, 14) : 0;
                }
                row.getChildAt(i).setLayoutParams(lp);
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
                row.post(new Relayout(this));
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
                view.post(this);
            }
        }

        @Override
        public void run() {
            try {
                v.arrange();
                v.build();
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

    static final class Keep implements Runnable {
        final Page v;
        final ScaleProtocol.Reading r;

        Keep(Page v, ScaleProtocol.Reading r) {
            this.v = v;
            this.r = r;
        }

        @Override
        public void run() {
            v.keep(r);
        }
    }

    static final class Drop implements Runnable {
        final Page v;

        Drop(Page v) {
            this.v = v;
        }

        @Override
        public void run() {
            v.dropped();
        }
    }

    /** A question sheet's answer: close it, then act. */
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

    static final class ShareImage implements View.OnClickListener {
        final Page v;
        final XemsUi.Shell sh;
        final String name;

        ShareImage(Page v, XemsUi.Shell sh, String name) {
            this.v = v;
            this.sh = sh;
            this.name = name;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            View root = (View) sh.body.getParent().getParent();
            ScaleShare.image(v.a, root, name);
        }
    }

    static final class ShareHtml implements View.OnClickListener {
        final Page v;
        final View fig;
        final String name;

        ShareHtml(Page v, View fig, String name) {
            this.v = v;
            this.fig = fig;
            this.name = name;
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
            ScaleShare.html(v.a, name, v.hist, v.at, v.male, v.age, v.heightCm, bm);
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
