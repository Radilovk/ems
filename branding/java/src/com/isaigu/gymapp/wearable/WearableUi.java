package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.Locale;

/** Shared text, colors and small view builders for the band UI (no new resource IDs). */
final class WearableUi {
    static final int COLOR_ZONE1 = 0xFF90A4AE;
    static final int COLOR_ZONE2 = 0xFF43A047;
    static final int COLOR_ZONE3 = 0xFFFDD835;
    static final int COLOR_ZONE4 = 0xFFFB8C00;
    static final int COLOR_ZONE5 = 0xFFE53935;
    static final int COLOR_MUTED = 0xFFAAAAAA;
    static final int COLOR_WAIT = 0xFFFFCC66;
    static final int COLOR_OK = 0xFF66BB6A;
    static final int COLOR_ERROR = 0xFFEF5350;

    /** A realtime sample older than this is shown as stale. */
    static final long STALE_MS = 10000L;

    private WearableUi() {}

    static boolean isBulgarian() {
        try {
            return "bg".equals(Locale.getDefault().getLanguage());
        } catch (Throwable ignored) {
            return true;
        }
    }

    static String tr(String bg, String en) {
        return isBulgarian() ? bg : en;
    }

    /** Zone 1..5 from the HR limit set by the trainer (limit = top of zone 5). */
    static int zoneFor(int hr, int limit) {
        if (hr <= 0 || limit <= 0) {
            return 0;
        }
        float f = hr / (float) limit;
        if (f < 0.60f) {
            return 1;
        }
        if (f < 0.70f) {
            return 2;
        }
        if (f < 0.80f) {
            return 3;
        }
        if (f < 0.90f) {
            return 4;
        }
        return 5;
    }

    static int zoneColor(int zone) {
        switch (zone) {
            case 1:
                return COLOR_ZONE1;
            case 2:
                return COLOR_ZONE2;
            case 3:
                return COLOR_ZONE3;
            case 4:
                return COLOR_ZONE4;
            case 5:
                return COLOR_ZONE5;
            default:
                return COLOR_MUTED;
        }
    }

    static String zoneName(int zone) {
        switch (zone) {
            case 1:
                return tr("Лека", "Easy");
            case 2:
                return tr("Загрявка", "Warm-up");
            case 3:
                return tr("Аеробна", "Aerobic");
            case 4:
                return tr("Интензивна", "Hard");
            case 5:
                return tr("Максимум", "Maximum");
            default:
                return "";
        }
    }

    /** Trainer-facing text for the BLE client state. */
    static String stateText(String state) {
        if (state == null) {
            state = "";
        }
        if ("streaming".equals(state)) {
            return tr("На живо", "Live");
        }
        if ("measuring".equals(state)) {
            return tr("Мери пулс…", "Measuring…");
        }
        if ("connecting".equals(state) || "discovering".equals(state)
                || "auth_start".equals(state) || "handshake".equals(state)) {
            return tr("Свързване…", "Connecting…");
        }
        if ("authenticated".equals(state) || "initialized".equals(state)
                || "starting".equals(state)) {
            return tr("Подготовка…", "Starting…");
        }
        if ("reconnecting".equals(state)) {
            return tr("Връзката прекъсна — свързва отново", "Link lost — reconnecting");
        }
        if ("auth_fail".equals(state) || "bad_auth_key".equals(state)) {
            return tr("Грешен auth key", "Wrong auth key");
        }
        if ("bad_mac".equals(state)) {
            return tr("Грешен MAC адрес", "Wrong MAC address");
        }
        if ("no_bluetooth".equals(state)) {
            return tr("Включи Bluetooth", "Turn Bluetooth on");
        }
        if ("no_bt_permission".equals(state)) {
            return tr("Разреши Bluetooth за XEMS", "Allow Bluetooth for XEMS");
        }
        if ("auth_timeout".equals(state)) {
            return tr("Гривната не отговаря — спри Mi Fitness/Notify",
                    "Band not answering — stop Mi Fitness/Notify");
        }
        if ("connect_fail".equals(state) || "service_fail".equals(state)
                || "no_fe95".equals(state) || "no_chars".equals(state)
                || "send_fail".equals(state)) {
            return tr("Грешка при връзка", "Connection error");
        }
        return tr("Изключена", "Disconnected");
    }

    static boolean isErrorState(String state) {
        return "auth_fail".equals(state) || "bad_auth_key".equals(state)
                || "bad_mac".equals(state) || "no_bluetooth".equals(state)
                || "no_bt_permission".equals(state) || "auth_timeout".equals(state)
                || "connect_fail".equals(state) || "service_fail".equals(state)
                || "no_fe95".equals(state) || "no_chars".equals(state)
                || "send_fail".equals(state);
    }

    static String ageText(long ageMs) {
        long s = Math.max(0L, ageMs / 1000L);
        return tr("преди " + s + " s", s + " s ago");
    }

    /** m:ss */
    static String ageTextShort(long ms) {
        long sec = Math.max(0, (ms + 999) / 1000);
        return String.format(Locale.US, "%d:%02d", sec / 60, sec % 60);
    }

    static int color(Context context, String name, int fallback) {
        if (context == null) {
            return fallback;
        }
        try {
            int id = context.getResources().getIdentifier(name, "color", context.getPackageName());
            if (id != 0) {
                return context.getResources().getColor(id);
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    static int dp(Context context, float value) {
        if (context == null) {
            return (int) value;
        }
        return (int) (value * context.getResources().getDisplayMetrics().density + 0.5f);
    }

    static TextView text(Context context, String value, float sp, int color, boolean bold) {
        TextView tv = new TextView(context);
        tv.setText(value);
        tv.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        tv.setTextColor(color);
        if (bold) {
            tv.setTypeface(tv.getTypeface(), android.graphics.Typeface.BOLD);
        }
        return tv;
    }

    static GradientDrawable rounded(int color, float radiusPx) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(radiusPx);
        return d;
    }

    /** Pill-shaped button used in the band dialogs. */
    static TextView button(Context context, String label, int bg, int fg) {
        TextView b = text(context, label, 15f, fg, true);
        b.setGravity(Gravity.CENTER);
        int padH = dp(context, 16);
        int padV = dp(context, 11);
        b.setPadding(padH, padV, padH, padV);
        b.setBackgroundDrawable(rounded(bg, dp(context, 24)));
        b.setClickable(true);
        return b;
    }

    static LinearLayout.LayoutParams matchWrap(Context context, int topMarginDp) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        lp.topMargin = dp(context, topMarginDp);
        return lp;
    }

    static View divider(Context context) {
        View v = new View(context);
        v.setBackgroundColor(0x22FFFFFF);
        return v;
    }

    static Activity asActivity(Context context) {
        while (context instanceof android.content.ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((android.content.ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
