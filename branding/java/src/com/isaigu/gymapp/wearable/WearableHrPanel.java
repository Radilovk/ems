package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandStatus;
import com.isaigu.gymapp.widget.XemsGuard;
import com.isaigu.gymapp.widget.XemsUi;

/**
 * The "i" of the HR dial: what matters during a session, drawn — the HR now with its zone, the
 * HR chart (5 / 15 min / all, touch to read a moment), average / peak / low, kcal, time in
 * zones, and the pulse module's limits. Raw band fields stay behind "Technical data".
 */
public final class WearableHrPanel {
    private static final long[] WINDOWS = {5 * 60000L, 15 * 60000L, 0L};
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable tick = new Tick();

    private static XemsUi.Shell sheet;
    private static int windowIdx = 1;
    private static TextView nowVal;
    private static TextView nowZone;
    private static TextView avgVal;
    private static TextView maxVal;
    private static TextView minVal;
    private static TextView kcalVal;
    private static HrChartView chart;
    private static LinearLayout chartCard;
    private static LinearLayout zoneBar;
    private static LinearLayout zoneLegend;
    private static TextView limitsLine;

    private WearableHrPanel() {}

    static void show(Activity a) {
        try {
            showImpl(a);
        } catch (Throwable t) {
            XemsGuard.report("WearableHrPanel.show", t);
        }
    }

    private static void showImpl(final Activity a) {
        if (a == null || a.isFinishing()) {
            return;
        }
        dismiss();
        XemsUi.init(a);
        sheet = XemsUi.shell(a, WearableUi.tr("Пулс", "Heart rate"), null, 760);

        // Hero: HR now + zone on the left, averages on the right.
        LinearLayout hero = XemsUi.horizontal(a);
        hero.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout now = XemsUi.vertical(a);
        LinearLayout nowRow = XemsUi.horizontal(a);
        nowRow.setGravity(Gravity.BOTTOM);
        nowVal = XemsUi.text(a, "--", 60, XemsUi.TEXT, true);
        nowRow.addView(nowVal);
        now.addView(nowRow);
        nowZone = XemsUi.text(a, "", 14, XemsUi.MUTED, true);
        nowZone.setPadding(XemsUi.dp(a, 12), XemsUi.dp(a, 5), XemsUi.dp(a, 12), XemsUi.dp(a, 5));
        LinearLayout.LayoutParams zl = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT);
        zl.topMargin = XemsUi.dp(a, 4);
        now.addView(nowZone, zl);
        hero.addView(now, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        avgVal = stat(a, hero, WearableUi.tr("Средно", "Average"));
        maxVal = stat(a, hero, WearableUi.tr("Връх", "Peak"));
        minVal = stat(a, hero, WearableUi.tr("Най-нисък", "Low"));
        kcalVal = stat(a, hero, "kcal");
        sheet.body.addView(hero);

        // Chart card with its time range.
        chartCard = XemsUi.card(a);
        chartCard.addView(range(a));
        chart = new HrChartView(a);
        LinearLayout.LayoutParams cp = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                XemsUi.dp(a, 230));
        cp.topMargin = XemsUi.dp(a, 12);
        chartCard.addView(chart, cp);
        limitsLine = XemsUi.text(a, "", 12.5f, XemsUi.MUTED, false);
        limitsLine.setGravity(Gravity.CENTER);
        chartCard.addView(limitsLine, XemsUi.matchWrap(a, 6));
        sheet.body.addView(chartCard, XemsUi.matchWrap(a, 14));

        // Time in zones.
        LinearLayout zones = XemsUi.card(a);
        zones.addView(XemsUi.label(a, WearableUi.tr("Време по зони", "Time in zones")));
        zoneBar = XemsUi.horizontal(a);
        LinearLayout.LayoutParams zb = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                XemsUi.dp(a, 14));
        zb.topMargin = XemsUi.dp(a, 10);
        zones.addView(zoneBar, zb);
        zoneLegend = XemsUi.horizontal(a);
        zones.addView(zoneLegend, XemsUi.matchWrap(a, 10));
        sheet.body.addView(zones, XemsUi.matchWrap(a, 14));

        // Footer: technical data (raw band fields) on demand; done.
        TextView tech = XemsUi.button(a, WearableUi.tr("Технически данни", "Technical data"), XemsUi.GHOST);
        tech.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
                WearableLivePanel.show(a);
            }
        });
        sheet.footer.addView(tech);
        sheet.footer.addView(XemsUi.spacer(a));
        TextView done = XemsUi.button(a, WearableUi.tr("Готово", "Done"), XemsUi.PRIMARY);
        done.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dismiss();
            }
        });
        sheet.footer.addView(done);
        sheet.dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface d) {
                handler.removeCallbacks(tick);
                sheet = null;
                chart = null;
            }
        });
        refresh();
        sheet.dialog.show();
        XemsUi.fitHeight(a, sheet, 0.94f);
        handler.removeCallbacks(tick);
        handler.postDelayed(tick, 1000);
    }

    private static View range(Activity a) {
        return XemsUi.segmented(a, new String[] {
                WearableUi.tr("5 мин", "5 min"), WearableUi.tr("15 мин", "15 min"),
                WearableUi.tr("Всичко", "All")}, windowIdx, new RangePick());
    }

    private static TextView stat(Activity a, LinearLayout parent, String label) {
        LinearLayout box = XemsUi.vertical(a);
        box.setGravity(Gravity.CENTER);
        box.setPadding(XemsUi.dp(a, 14), XemsUi.dp(a, 10), XemsUi.dp(a, 14), XemsUi.dp(a, 10));
        box.setBackground(XemsUi.rounded(XemsUi.SURFACE, XemsUi.dp(a, 14), XemsUi.STROKE, XemsUi.dp(a, 1)));
        TextView v = XemsUi.text(a, "--", 24, XemsUi.TEXT, true);
        v.setGravity(Gravity.CENTER);
        box.addView(v);
        TextView l = XemsUi.text(a, label, 11.5f, XemsUi.MUTED, false);
        l.setGravity(Gravity.CENTER);
        l.setPadding(0, XemsUi.dp(a, 3), 0, 0);
        box.addView(l);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(XemsUi.dp(a, 96),
                ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = XemsUi.dp(a, 8);
        parent.addView(box, lp);
        return v;
    }

    static void dismiss() {
        handler.removeCallbacks(tick);
        if (sheet != null) {
            try {
                sheet.dialog.dismiss();
            } catch (Throwable ignored) {
            }
        }
        sheet = null;
        chart = null;
    }

    private static void refresh() {
        if (sheet == null || chart == null) {
            return;
        }
        Activity a = WearableUi.asActivity(chart.getContext());
        long now = System.currentTimeMillis();
        int limit = a != null ? WearableConfig.getHrThreshold(a) : 170;
        HrGuardCore g = HrGuard.core();
        int cap = g != null ? g.getCap() : limit + 12;
        int rest = g != null ? g.getRestHr() : 0;

        HrHistory.Series all = HrHistory.since(now, 0);
        HrHistory.Series win = HrHistory.since(now, WINDOWS[windowIdx]);
        chart.set(windowIdx == 2 ? all : win, now, WINDOWS[windowIdx], limit, cap, rest);

        boolean notWorn = XiaomiBandStatus.isKnownNotWorn();
        int hr = NotifyWearableBridge.getLastHeartRate();
        long lastAge = all.size() > 0 ? now - all.t[all.size() - 1] : Long.MAX_VALUE;
        boolean fresh = hr > 0 && lastAge < WearableUi.STALE_MS && !notWorn;
        if (fresh) {
            int z = WearableUi.zoneFor(hr, limit);
            int col = WearableUi.zoneColor(z);
            nowVal.setText(String.valueOf(hr));
            nowVal.setTextColor(col);
            nowZone.setText("Z" + z + " · " + WearableUi.zoneName(z));
            nowZone.setTextColor(col);
            nowZone.setBackground(XemsUi.rounded(XemsUi.alpha(col, 0x26), XemsUi.dp(chart.getContext(), 12),
                    XemsUi.alpha(col, 0x77), XemsUi.dp(chart.getContext(), 1)));
        } else {
            nowVal.setText("--");
            nowVal.setTextColor(XemsUi.MUTED);
            String why = notWorn ? WearableUi.tr("гривната не е на ръката", "band not worn")
                    : NotifyWearableBridge.isLinkUp() ? WearableUi.tr("чака пулс", "waiting for HR")
                    : WearableUi.tr("няма връзка — натисни ↻", "not connected — tap ↻");
            nowZone.setText(why);
            nowZone.setTextColor(notWorn ? WearableUi.COLOR_ERROR : WearableUi.COLOR_WAIT);
            nowZone.setBackground(null);
        }
        HrHistory.Series stats = windowIdx == 2 ? all : win;
        avgVal.setText(stats.size() > 1 ? String.valueOf(stats.avg()) : "--");
        maxVal.setText(stats.size() > 0 ? String.valueOf(stats.max()) : "--");
        minVal.setText(stats.size() > 0 ? String.valueOf(stats.min()) : "--");
        double kcal = g != null ? g.getKcal() : 0;
        kcalVal.setText(kcal > 0 ? String.valueOf(Math.round(kcal)) : "--");

        StringBuilder lim = new StringBuilder();
        if (rest > 0) {
            lim.append(WearableUi.tr("покой ", "rest ")).append(rest).append("   ·   ");
        }
        lim.append(WearableUi.tr("праг ", "limit ")).append(limit).append("   ·   ")
                .append(WearableUi.tr("таван ", "ceiling ")).append(cap);
        int bat = XiaomiBandStatus.getBatteryPercent();
        if (bat >= 0 && bat <= 20) {
            lim.append("   ·   ").append(WearableUi.tr("батерия ", "battery ")).append(bat).append(" %");
        }
        limitsLine.setText(lim.toString());
        fillZones(stats.zoneMs(limit));
    }

    private static void fillZones(long[] z) {
        android.content.Context c = zoneBar.getContext();
        zoneBar.removeAllViews();
        zoneLegend.removeAllViews();
        long total = 0;
        for (int i = 1; i <= 5; i++) {
            total += z[i];
        }
        if (total <= 0) {
            View empty = new View(c);
            empty.setBackground(XemsUi.rounded(XemsUi.alpha(XemsUi.TEXT, 0x14), XemsUi.dp(c, 7), 0, 0));
            zoneBar.addView(empty, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
        }
        for (int i = 1; i <= 5; i++) {
            int col = WearableUi.zoneColor(i);
            if (total > 0 && z[i] > 0) {
                View seg = new View(c);
                GradientDrawable d = new GradientDrawable();
                d.setColor(col);
                float r = XemsUi.dp(c, 7);
                d.setCornerRadii(new float[] {i == first(z) ? r : 0, i == first(z) ? r : 0,
                        i == last(z) ? r : 0, i == last(z) ? r : 0, i == last(z) ? r : 0, i == last(z) ? r : 0,
                        i == first(z) ? r : 0, i == first(z) ? r : 0});
                seg.setBackground(d);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                        ViewGroup.LayoutParams.MATCH_PARENT, z[i]);
                zoneBar.addView(seg, lp);
            }
            LinearLayout item = XemsUi.horizontal(c);
            item.setGravity(Gravity.CENTER_VERTICAL);
            View sw = new View(c);
            sw.setBackground(XemsUi.rounded(col, XemsUi.dp(c, 4), 0, 0));
            item.addView(sw, new LinearLayout.LayoutParams(XemsUi.dp(c, 10), XemsUi.dp(c, 10)));
            long s = z[i] / 1000L;
            TextView t = XemsUi.text(c, " Z" + i + "  " + (s / 60) + ":" + String.format(java.util.Locale.US, "%02d", s % 60),
                    12.5f, z[i] > 0 ? XemsUi.TEXT : XemsUi.HINT, z[i] > 0);
            item.addView(t);
            zoneLegend.addView(item, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
    }

    private static int first(long[] z) {
        for (int i = 1; i <= 5; i++) {
            if (z[i] > 0) {
                return i;
            }
        }
        return 1;
    }

    private static int last(long[] z) {
        for (int i = 5; i >= 1; i--) {
            if (z[i] > 0) {
                return i;
            }
        }
        return 5;
    }

    static final class RangePick implements XemsUi.OnIndex {
        @Override
        public void onIndex(int index) {
            windowIdx = Math.max(0, Math.min(2, index));
            Activity a = chart != null ? WearableUi.asActivity(chart.getContext()) : null;
            if (a != null && chartCard != null) {
                chartCard.removeViewAt(0);
                chartCard.addView(range(a), 0);
                refresh();
            }
        }
    }

    static final class Tick implements Runnable {
        @Override
        public void run() {
            try {
                refresh();
            } catch (Throwable t) {
                XemsGuard.report("WearableHrPanel.tick", t);
            }
            if (sheet != null) {
                handler.postDelayed(this, 1000);
            }
        }
    }
}
