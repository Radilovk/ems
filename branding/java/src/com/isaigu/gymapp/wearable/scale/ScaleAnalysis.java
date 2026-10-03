package com.isaigu.gymapp.wearable.scale;

import android.app.Activity;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsLang;
import com.isaigu.gymapp.widget.XemsUi;

import org.json.JSONArray;
import org.json.JSONObject;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * "Анализ" — every value of a weigh-in, explorable (Fitdays' list of values is the checklist, not the design):
 *
 * <ul>
 *   <li><b>Left</b> — what the weight is made of (fat · water · protein · minerals, one bar, tap a part), the
 *       figure painted by zone (fat or muscle, by what is in focus; tap a zone) and the path to the client's own
 *       healthy weight (tap it).</li>
 *   <li><b>Middle</b> — four groups of tiles (fat · muscle · water and frame · body and energy): value, the change
 *       since last time, the status word and a mini norm whose lit sector is that word.</li>
 *   <li><b>Right</b> — the focus: whatever was tapped, big — its 5-sector norm, what it means and what moves it in
 *       two lines, and its line through all the weigh-ins with the change since last time and since the first.</li>
 * </ul>
 *
 * Opens on the value that needs attention first. Landscape three columns; portrait stacked (ScaleScreen.Columns).
 */
final class ScaleAnalysis implements ScaleViews.OnSegment {
    final Activity a;
    final JSONArray hist;
    final int at;
    final boolean male;
    final int age;
    final int heightCm;
    final String name;
    final boolean bg;
    final JSONObject m;
    final JSONObject prev;
    final List<ScaleDetail.Metric> ms;
    final List<LinearLayout> tiles = new ArrayList<LinearLayout>();
    final ScaleDetail.Zone[] zones;

    XemsUi.Shell sh;
    ScaleViews.Composition comp;
    ScaleViews.Body fig;
    ScaleViews.Path2Target path;
    TextView figTitle;
    TextView fGroup, fTitle, fValue, fUnit, fStatus, fSub, fWhat, fBarTitle, fBar2Title, fDelta, fTrendTitle;
    ScaleViews.NormBar fBar, fBar2;
    ScaleViews.Trend fTrend;
    LinearLayout focus;
    int focused = -1;
    int zone = -1;

    static String tr(String bg, String en) {
        return XemsLang.tr(bg, en);
    }

    static String one(double v) {
        return String.valueOf(Math.round(v * 10) / 10.0);
    }

    ScaleAnalysis(Activity a, JSONArray hist, int at, boolean male, int age, int heightCm, String name) {
        this.a = a;
        this.hist = hist;
        this.at = at;
        this.male = male;
        this.age = age;
        this.heightCm = heightCm;
        this.name = name;
        this.bg = XemsLang.tr("б", "e").equals("б");
        this.m = at >= 0 ? hist.optJSONObject(at) : null;
        JSONObject p = null;
        for (int i = at - 1; i >= 0 && p == null; i--) {
            JSONObject o = hist.optJSONObject(i);
            if (o != null && o.has("fat")) {
                p = o;
            }
        }
        this.prev = p;
        this.ms = ScaleDetail.metrics(m, male, age, heightCm, bg);
        this.zones = ScaleDetail.zones(m, male, heightCm);
    }

    static void open(Activity a, JSONArray hist, int at, boolean male, int age, int heightCm, String name) {
        try {
            new ScaleAnalysis(a, hist, at, male, age, heightCm, name).show();
        } catch (Throwable t) {
            XemsGuard.report("ScaleAnalysis.open", t);
        }
    }

    int dp(float v) {
        return XemsUi.dp(a, v);
    }

    void show() {
        XemsUi.init(a);
        sh = XemsUi.shell(a, tr("Анализ", "Analysis") + (name.length() > 0 ? " · " + name : ""),
                m != null ? new SimpleDateFormat("d.MM.yyyy · HH:mm", Locale.US).format(new Date(m.optLong("t")))
                        + "  ·  " + (male ? tr("мъж", "male") : tr("жена", "female")) + " · " + age + tr(" г. · ", " y · ")
                        + heightCm + tr(" см", " cm") : "", 1280);
        XemsUi.fullScreen(sh);
        if (m == null || ms.isEmpty()) {
            sh.body.addView(XemsUi.text(a, tr("Още няма пълно мерене — хвани дръжката с двете ръце.",
                    "No full measurement yet — hold the handle with both hands."), 16, XemsUi.MUTED, false));
            footer();
            sh.dialog.show();
            return;
        }
        sh.info.setVisibility(View.VISIBLE);
        sh.info.setOnClickListener(new Info(this));
        ScaleInsight.Body b = ScaleInsight.body(m, male, heightCm);
        sh.badge.setText(bg ? ScaleDetail.typeBg(b) : ScaleDetail.typeEn(b));
        sh.badge.setVisibility(View.VISIBLE);

        LinearLayout row = XemsUi.horizontal(a);
        row.setGravity(Gravity.TOP);
        row.addView(left());
        row.addView(middle());
        row.addView(right());
        sh.body.addView(row, XemsUi.matchWrap(a, 4));
        ScaleScreen.Columns.follow(a, sh, row, new float[] {0.92f, 1.3f, 1.08f}, new int[] {700, 0, 660}, 170);
        footer();
        focusMetric(ScaleDetail.focusOf(ms));
        sh.dialog.show();
    }

    void footer() {
        sh.footer.addView(XemsUi.spacer(a));
        TextView close = XemsUi.button(a, tr("Затвори", "Close"), XemsUi.PRIMARY);
        close.setOnClickListener(new ScaleScreen.CloseSheet(sh));
        sh.footer.addView(close, new LinearLayout.LayoutParams(dp(260), dp(56)));
    }

    // ================================================================ left: composition · figure · path

    LinearLayout left() {
        LinearLayout col = XemsUi.card(a);
        col.addView(XemsUi.label(a, tr("От какво е теглото", "What the weight is made of")));
        comp = new ScaleViews.Composition(a);
        comp.setOnSegment(new Part(this));
        double w = m.optDouble("w"), fatKg = m.optDouble("fatKg"), lean = m.optDouble("lean");
        double water = w * m.optDouble("water") / 100, bone = m.optDouble("bone");
        comp.set(fatKg, water, Math.max(0, lean - water - bone), bone, -1);
        col.addView(comp, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(100)));
        figTitle = XemsUi.text(a, "", 12, XemsUi.MUTED, true);
        figTitle.setGravity(Gravity.CENTER);
        col.addView(figTitle, XemsUi.matchWrap(a, 10));
        fig = new ScaleViews.Body(a);
        fig.setOnSegment(this);
        col.addView(fig, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        LinearLayout pc = XemsUi.horizontal(a);
        pc.setGravity(Gravity.CENTER_VERTICAL);
        pc.addView(XemsUi.label(a, tr("Път до здравословното тегло", "Way to the healthy weight")),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        col.addView(pc, XemsUi.matchWrap(a, 8));
        path = new ScaleViews.Path2Target(a);
        ScaleDetail.Control c = ScaleDetail.control(m, male, age, heightCm);
        path.set(w, c.target, c.fat, c.muscle);
        path.setOnClickListener(new PathTap(this));
        XemsUi.pressable(path);
        col.addView(path, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(104)));
        return col;
    }

    /** The figure painted by zone: fat statuses when fat is in focus, else muscle. */
    void paintFigure(boolean fat) {
        int[] cols = new int[5];
        for (int i = 0; i < 5; i++) {
            int st = fat ? zones[i].fatStatus : zones[i].musStatus;
            cols[i] = st == ScaleDetail.S_NONE ? 0 : ScaleDetail.statusColor(st);
        }
        fig.setSegments(!male, cols, zone);
        figTitle.setText(fat ? tr("ЗОНИ · МАЗНИНИ · докосни зона", "ZONES · FAT · tap a zone")
                : tr("ЗОНИ · МУСКУЛИ · докосни зона", "ZONES · MUSCLE · tap a zone"));
    }

    // ================================================================ middle: the tiles

    LinearLayout middle() {
        LinearLayout col = XemsUi.vertical(a);
        for (int g = 0; g < 4; g++) {
            LinearLayout card = XemsUi.card(a);
            card.setPadding(dp(12), dp(10), dp(12), dp(12));
            card.addView(XemsUi.text(a, (bg ? ScaleDetail.groupBg(g) : ScaleDetail.groupEn(g)).toUpperCase(
                    Locale.ROOT), 11, XemsUi.MUTED, true));
            LinearLayout line = XemsUi.horizontal(a);
            int n = 0;
            for (int i = 0; i < ms.size(); i++) {
                if (ms.get(i).group != g) {
                    continue;
                }
                LinearLayout t = tile(ms.get(i), i);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
                lp.leftMargin = n > 0 ? dp(8) : 0;
                line.addView(t, lp);
                n++;
            }
            card.addView(line, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
            LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
            cp.topMargin = g > 0 ? dp(10) : 0;
            col.addView(card, cp);
        }
        return col;
    }

    LinearLayout tile(ScaleDetail.Metric x, int i) {
        LinearLayout t = XemsUi.vertical(a);
        t.setPadding(dp(10), dp(8), dp(10), dp(6));
        while (tiles.size() <= i) {
            tiles.add(null);
        }
        tiles.set(i, t);
        TextView nm = XemsUi.text(a, bg ? x.bg : x.en, 12, XemsUi.MUTED, false);
        nm.setSingleLine(true);
        nm.setEllipsize(android.text.TextUtils.TruncateAt.END);
        t.addView(nm);
        LinearLayout v = XemsUi.horizontal(a);
        v.setGravity(Gravity.BOTTOM);
        TextView val = XemsUi.text(a, x.text(), 22, XemsUi.TEXT, true);
        val.setIncludeFontPadding(false);
        v.addView(val);
        TextView un = XemsUi.text(a, x.unit, 12, XemsUi.MUTED, true);
        un.setPadding(0, 0, 0, dp(2));
        v.addView(un);
        v.addView(XemsUi.spacer(a));
        TextView d = XemsUi.text(a, "", 12, XemsUi.MUTED, true);
        delta(d, x.key, x.dir, false);
        d.setPadding(0, 0, 0, dp(2));
        v.addView(d);
        t.addView(v, XemsUi.matchWrap(a, 2));
        TextView st = XemsUi.text(a, x.status >= 0 ? (bg ? ScaleDetail.statusBg(x.status)
                : ScaleDetail.statusEn(x.status)) : (bg ? x.subBg : x.subEn), 12,
                x.status >= 0 ? ScaleDetail.statusColor(x.status) : XemsUi.MUTED, true);
        st.setSingleLine(true);
        t.addView(st, XemsUi.matchWrap(a, 2));
        if (x.norm != null) {
            ScaleViews.MiniNorm mn = new ScaleViews.MiniNorm(a);
            mn.set(x.norm);
            t.addView(mn, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(16)));
        }
        t.setOnClickListener(new Pick(this, i));
        XemsUi.pressable(t);
        mark(t, false);
        return t;
    }

    void mark(LinearLayout t, boolean on) {
        t.setBackgroundDrawable(XemsUi.rounded(on ? XemsUi.mix(XemsUi.SURFACE, 0xFF22C55E, 0.12f) : XemsUi.SURFACE,
                dp(12), on ? 0xFF22C55E : XemsUi.alpha(XemsUi.STROKE, 120), dp(on ? 2 : 1)));
    }

    /** "▲0.3" against the previous full weigh-in, coloured by the good direction. */
    void delta(TextView t, String key, int dir, boolean words) {
        if (prev == null) {
            t.setText("");
            return;
        }
        double now = ScaleDetail.value(m, key, male, age, heightCm);
        double was = ScaleDetail.value(prev, key, male, age, heightCm);
        if (Double.isNaN(now) || Double.isNaN(was)) {
            t.setText("");
            return;
        }
        double d = now - was;
        if (Math.abs(d) < 0.05) {
            t.setText(words ? tr("= както миналия път", "= as last time") : "=");
            t.setTextColor(XemsUi.MUTED);
            return;
        }
        t.setText((d > 0 ? "▲" : "▼") + one(Math.abs(d)));
        t.setTextColor(dir == 0 ? XemsUi.MUTED : (d > 0) == (dir > 0) ? XemsUi.GO_TEXT : XemsUi.AMBER);
    }

    // ================================================================ right: the focus

    LinearLayout right() {
        focus = XemsUi.card(a);
        fGroup = XemsUi.text(a, "", 11, XemsUi.MUTED, true);
        focus.addView(fGroup);
        fTitle = XemsUi.text(a, "", 19, XemsUi.TEXT, true);
        focus.addView(fTitle, XemsUi.matchWrap(a, 2));
        LinearLayout vr = XemsUi.horizontal(a);
        vr.setGravity(Gravity.BOTTOM);
        fValue = XemsUi.text(a, "", 46, XemsUi.TEXT, true);
        fValue.setIncludeFontPadding(false);
        vr.addView(fValue);
        fUnit = XemsUi.text(a, "", 17, XemsUi.MUTED, true);
        fUnit.setPadding(0, 0, 0, dp(6));
        vr.addView(fUnit);
        vr.addView(XemsUi.spacer(a));
        fStatus = XemsUi.text(a, "", 14, XemsUi.TEXT, true);
        fStatus.setPadding(dp(12), dp(6), dp(12), dp(6));
        LinearLayout.LayoutParams sp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        sp.bottomMargin = dp(6);
        vr.addView(fStatus, sp);
        focus.addView(vr, XemsUi.matchWrap(a, 4));
        fSub = XemsUi.text(a, "", 14, XemsUi.MUTED, false);
        focus.addView(fSub, XemsUi.matchWrap(a, 2));
        fBarTitle = XemsUi.text(a, "", 12, XemsUi.MUTED, true);
        focus.addView(fBarTitle, XemsUi.matchWrap(a, 8));
        fBar = new ScaleViews.NormBar(a);
        focus.addView(fBar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(86)));
        fBar2Title = XemsUi.text(a, "", 12, XemsUi.MUTED, true);
        focus.addView(fBar2Title, XemsUi.matchWrap(a, 2));
        fBar2 = new ScaleViews.NormBar(a);
        focus.addView(fBar2, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(86)));
        fWhat = XemsUi.text(a, "", 14, XemsUi.TEXT, false);
        fWhat.setLineSpacing(dp(3), 1f);
        focus.addView(fWhat, XemsUi.matchWrap(a, 6));
        fTrendTitle = XemsUi.text(a, tr("ВЪВ ВРЕМЕТО", "OVER TIME"), 11, XemsUi.MUTED, true);
        focus.addView(fTrendTitle, XemsUi.matchWrap(a, 12));
        fTrend = new ScaleViews.Trend(a, false);
        LinearLayout.LayoutParams tl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        tl.topMargin = dp(4);
        focus.addView(fTrend, tl);
        fTrend.setMinimumHeight(dp(110));
        fDelta = XemsUi.text(a, "", 14, XemsUi.MUTED, true);
        focus.addView(fDelta, XemsUi.matchWrap(a, 4));
        return focus;
    }

    void status(int st) {
        if (st < 0) {
            fStatus.setVisibility(View.INVISIBLE);
            return;
        }
        int c = ScaleDetail.statusColor(st);
        fStatus.setText(bg ? ScaleDetail.statusBg(st) : ScaleDetail.statusEn(st));
        fStatus.setTextColor(c);
        fStatus.setBackgroundDrawable(XemsUi.rounded(XemsUi.alpha(c, 34), dp(16), XemsUi.alpha(c, 150), dp(1)));
        fStatus.setVisibility(View.VISIBLE);
    }

    void focusMetric(int i) {
        if (i < 0 || i >= ms.size()) {
            return;
        }
        ScaleDetail.Metric x = ms.get(i);
        focused = i;
        zone = -1;
        for (int k = 0; k < tiles.size(); k++) {
            if (tiles.get(k) != null) {
                mark(tiles.get(k), k == i);
            }
        }
        comp.select(x.key.equals("fat") ? ScaleViews.Composition.FAT : x.key.equals("water")
                ? ScaleViews.Composition.WATER : x.key.equals("prot") ? ScaleViews.Composition.PROTEIN
                : x.key.equals("bone") ? ScaleViews.Composition.MINERAL : -1);
        path.selected = x.key.equals("w");
        path.invalidate();
        paintFigure(x.group == ScaleDetail.G_FAT);
        fGroup.setText((bg ? ScaleDetail.groupBg(x.group) : ScaleDetail.groupEn(x.group)).toUpperCase(Locale.ROOT));
        fTitle.setText(bg ? x.bg : x.en);
        fValue.setText(x.text());
        fUnit.setText(x.unit);
        status(x.status);
        String sub = bg ? x.subBg : x.subEn;
        fSub.setText(sub);
        fSub.setVisibility(sub.length() > 0 ? View.VISIBLE : View.GONE);
        fBarTitle.setVisibility(View.GONE);
        if (x.norm != null) {
            fBar.setVisibility(View.VISIBLE);
            fBar.set(x.norm);
        } else {
            fBar.setVisibility(View.GONE);
        }
        fBar2Title.setVisibility(View.GONE);
        fBar2.setVisibility(View.GONE);
        fWhat.setText(bg ? x.whatBg : x.whatEn);
        trend(x.key, -1, x.dir, x.unit, ScaleDetail.statusColor(x.status));
        XemsUi.enter(focus);
    }

    /** A zone: muscle and fat against their standard, left against right, its muscle through time. */
    void focusZone(int seg) {
        if (seg < 0 || seg > 4) {
            return;
        }
        zone = seg;
        focused = -1;
        for (LinearLayout t : tiles) {
            if (t != null) {
                mark(t, false);
            }
        }
        comp.select(-1);
        path.selected = false;
        path.invalidate();
        boolean fatView = figTitle.getText().toString().contains(tr("МАЗНИНИ", "FAT"));
        paintFigure(fatView);
        ScaleDetail.Zone z = zones[seg];
        boolean arm = seg == ScaleProtocol.LEFT_ARM || seg == ScaleProtocol.RIGHT_ARM;
        fGroup.setText(tr("ЗОНА", "ZONE"));
        fTitle.setText(bg ? ScaleDetail.zoneBg(seg) : ScaleDetail.zoneEn(seg));
        fValue.setText(Double.isNaN(z.musKg) ? "—" : one(z.musKg));
        fUnit.setText(tr(" кг мускули", " kg muscle"));
        status(z.musStatus);
        fSub.setText(tr("мазнини ", "fat ") + (Double.isNaN(z.fatKg) ? "—" : one(z.fatKg) + tr(" кг", " kg")));
        fSub.setVisibility(View.VISIBLE);
        fBarTitle.setText(tr("МУСКУЛИ · % ОТ СТАНДАРТА", "MUSCLE · % OF STANDARD"));
        fBarTitle.setVisibility(View.VISIBLE);
        fBar.setVisibility(View.VISIBLE);
        fBar.set(ScaleDetail.zoneMuscleNorm(z.musPct, arm, bg));
        fBar2Title.setText(tr("МАЗНИНИ · % ОТ СТАНДАРТА", "FAT · % OF STANDARD"));
        fBar2Title.setVisibility(View.VISIBLE);
        fBar2.setVisibility(View.VISIBLE);
        fBar2.set(ScaleDetail.zoneFatNorm(z.fatPct, bg));
        String side = "";
        if (seg != ScaleProtocol.TRUNK) {
            int other = seg == ScaleProtocol.LEFT_ARM ? ScaleProtocol.RIGHT_ARM : seg == ScaleProtocol.RIGHT_ARM
                    ? ScaleProtocol.LEFT_ARM : seg == ScaleProtocol.LEFT_LEG ? ScaleProtocol.RIGHT_LEG
                    : ScaleProtocol.LEFT_LEG;
            double o = zones[other].musKg;
            if (!Double.isNaN(o) && !Double.isNaN(z.musKg) && Math.max(o, z.musKg) > 0) {
                double diff = Math.abs(z.musKg - o) / Math.max(o, z.musKg) * 100;
                side = tr("Срещу другата страна: ", "Against the other side: ") + one(z.musKg) + " / " + one(o)
                        + tr(" кг — ", " kg — ") + Math.round(diff) + " %" + (diff >= 6
                        ? tr(". Над 6 % — повече сила на по-слабата страна.", ". Over 6 % — more strength on the weaker side.")
                        : tr(", в нормата (до 6 %).", ", within normal (up to 6 %)."));
            }
        } else {
            side = tr("Тялото носи най-много мускули и мазнини; коремните мазнини тук са висцералните.",
                    "The trunk carries the most muscle and fat; the belly fat here is the visceral one.");
        }
        fWhat.setText(side);
        trend("segMus", seg, 1, tr(" кг", " kg"), ScaleDetail.statusColor(z.musStatus));
        XemsUi.enter(focus);
    }

    /** The value through every weigh-in (a segment index for zone arrays), with the change since last / first. */
    void trend(String key, int seg, int dir, String unit, int color) {
        List<Double> vals = new ArrayList<Double>();
        List<Long> ts = new ArrayList<Long>();
        for (int i = 0; i <= at; i++) {
            JSONObject o = hist.optJSONObject(i);
            if (o == null || !o.has("fat")) {
                continue;
            }
            double v;
            if (seg >= 0) {
                JSONArray arr = o.optJSONArray(key);
                v = arr != null && !arr.isNull(seg) ? arr.optDouble(seg) : Double.NaN;
            } else {
                v = ScaleDetail.value(o, key, male, age, heightCm);
            }
            if (!Double.isNaN(v)) {
                vals.add(v);
                ts.add(o.optLong("t"));
            }
        }
        double[] v = new double[vals.size()];
        long[] t = new long[ts.size()];
        for (int i = 0; i < v.length; i++) {
            v[i] = vals.get(i);
            t[i] = ts.get(i);
        }
        fTrend.set(v, t, color == 0xFF94A3B8 ? 0xFF38BDF8 : color, "");
        if (v.length < 2) {
            fDelta.setText(tr("Линията се появява от второто мерене", "The line starts with the second weigh-in"));
            fDelta.setTextColor(XemsUi.MUTED);
            return;
        }
        android.text.SpannableStringBuilder b = new android.text.SpannableStringBuilder();
        part(b, tr("от миналия ", "since last "), XemsUi.MUTED);
        change(b, v[v.length - 1] - v[v.length - 2], dir, unit);
        part(b, tr("   ·   от първия ", "   ·   since the first "), XemsUi.MUTED);
        change(b, v[v.length - 1] - v[0], dir, unit);
        long days = Math.round((t[t.length - 1] - t[0]) / 86400000.0);
        part(b, "  (" + v.length + tr(" мерения, " + days + " дни)", " weigh-ins, " + days + " days)"), XemsUi.MUTED);
        fDelta.setText(b);
    }

    static void change(android.text.SpannableStringBuilder b, double d, int dir, String unit) {
        String s = (Math.abs(d) < 0.05 ? "±0" : (d > 0 ? "+" : "−") + one(Math.abs(d))) + unit;
        int col = Math.abs(d) < 0.05 || dir == 0 ? XemsUi.TEXT : (d > 0) == (dir > 0) ? XemsUi.GO_TEXT : XemsUi.AMBER;
        part(b, s, col);
    }

    static void part(android.text.SpannableStringBuilder b, String t, int color) {
        int st = b.length();
        b.append(t);
        b.setSpan(new android.text.style.ForegroundColorSpan(color), st, b.length(),
                android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
    }

    int indexOf(String key) {
        for (int i = 0; i < ms.size(); i++) {
            if (ms.get(i).key.equals(key)) {
                return i;
            }
        }
        return -1;
    }

    @Override
    public void onSegment(int seg) {
        focusZone(seg);
    }

    android.widget.PopupWindow pop;

    /** How it is computed — behind the ⓘ. */
    void info(View anchor) {
        if (pop != null && pop.isShowing()) {
            pop.dismiss();
            return;
        }
        TextView t = XemsUi.text(a, tr("Как се смята\n"
                + "Мазнините — по уравнения, проверени спрямо референтни методи, отделно за мъже и жени (Sun 2003, "
                + "1 829 души), заедно с измереното от кантара; скелетните мускули — Janssen 2000 (ЯМР). Стойностите "
                + "са изгладени между мерения: контактът и последната вода местят импеданса, тъканта — не. Две "
                + "мерения през минута дават средното; истинската промяна се вижда до дни.\n\n"
                + "Здравословното тегло е за собствените мускули при здравословни мазнини — не по ИТМ 22.\n\n"
                + "Докосни плочка, част от лентата, зона на фигурата или пътя до здравословното — вдясно идват "
                + "нормата, какво значи и линията във времето.",
                "How it is computed\n"
                        + "Fat by equations checked against reference methods, separate for men and women (Sun 2003, "
                        + "1,829 adults), together with the scale's own value; skeletal muscle by Janssen 2000 (MRI). "
                        + "Values are smoothed between weigh-ins: contact and the last drink move the impedance, tissue "
                        + "does not. Two steps a minute apart give their mean; a real change shows within days.\n\n"
                        + "The healthy weight is for the client's own muscle at a healthy fat % — not BMI 22.\n\n"
                        + "Tap a tile, a part of the bar, a zone of the figure or the way to the healthy weight — the "
                        + "norm, what it means and its line over time come up on the right."), 14, XemsUi.TEXT, false);
        t.setLineSpacing(dp(3), 1f);
        t.setPadding(dp(18), dp(14), dp(18), dp(14));
        t.setBackgroundDrawable(XemsUi.rounded(XemsUi.mix(XemsUi.CARD, 0xFF42A5F5, 0.16f), dp(14), 0xFF42A5F5, dp(1)));
        pop = new android.widget.PopupWindow(t, dp(560), ViewGroup.LayoutParams.WRAP_CONTENT, true);
        pop.setOutsideTouchable(true);
        pop.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(0x00000000));
        pop.setElevation(dp(8));
        pop.showAsDropDown(anchor, -dp(536), dp(6));
    }

    static final class Info implements View.OnClickListener {
        final ScaleAnalysis v;

        Info(ScaleAnalysis v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.info(b);
        }
    }

    // ------------------------------------------------------------------ named listeners (dx-safe)

    static final class Pick implements View.OnClickListener {
        final ScaleAnalysis v;
        final int i;

        Pick(ScaleAnalysis v, int i) {
            this.v = v;
            this.i = i;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.focusMetric(i);
        }
    }

    static final class Part implements ScaleViews.OnSegment {
        final ScaleAnalysis v;

        Part(ScaleAnalysis v) {
            this.v = v;
        }

        @Override
        public void onSegment(int part) {
            String[] key = {"fat", "water", "prot", "bone"};
            v.focusMetric(v.indexOf(key[Math.max(0, Math.min(3, part))]));
        }
    }

    static final class PathTap implements View.OnClickListener {
        final ScaleAnalysis v;

        PathTap(ScaleAnalysis v) {
            this.v = v;
        }

        @Override
        public void onClick(View b) {
            XemsUi.haptic(b);
            v.focusMetric(v.indexOf("w"));
        }
    }
}
