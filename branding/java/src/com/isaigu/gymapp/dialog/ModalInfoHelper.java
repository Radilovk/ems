package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.graphics.drawable.GradientDrawable;
import android.support.v7.app.AlertDialog;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

/**
 * Themed info modal shared by music player and interval timer.
 */
public final class ModalInfoHelper {

    private static final int RES_TEXT_PRIMARY = 0x7f0600e6;
    private static final int RES_TEXT_SECONDARY = 0x7f0600e7;
    private static final int RES_BG_CARD = 0x7f0600c3;
    private static final int RES_LIGHT_GREEN = 0x7f06006f;

    private ModalInfoHelper() {
    }

    public static void show(Activity activity, int titleRes, int bodyRes) {
        if (activity == null) {
            return;
        }
        show(activity, activity.getString(titleRes), activity.getString(bodyRes));
    }

    public static void show(Activity activity, CharSequence title, CharSequence body) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        try {
            int pad = dp(activity, 18);
            int cardColor = resolveColor(activity, RES_BG_CARD, 0xFF1E1E1E);
            int titleColor = resolveColor(activity, RES_LIGHT_GREEN, 0xFF66BB6A);
            int bodyColor = resolveColor(activity, RES_TEXT_PRIMARY, 0xFFE8E8E8);

            LinearLayout panel = new LinearLayout(activity);
            panel.setOrientation(LinearLayout.VERTICAL);
            panel.setPadding(pad, pad, pad, pad);
            GradientDrawable panelBg = new GradientDrawable();
            panelBg.setColor(cardColor);
            panelBg.setCornerRadius(dp(activity, 16));
            panelBg.setStroke(Math.max(1, dp(activity, 1)), resolveColor(activity, RES_TEXT_SECONDARY, 0xFF444444));
            panel.setBackground(panelBg);

            TextView titleView = new TextView(activity);
            titleView.setText(title);
            titleView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16f);
            titleView.setTypeface(titleView.getTypeface(), android.graphics.Typeface.BOLD);
            titleView.setTextColor(titleColor);
            titleView.setGravity(Gravity.CENTER_HORIZONTAL);
            titleView.setPadding(0, 0, 0, dp(activity, 10));
            panel.addView(titleView);

            TextView bodyView = new TextView(activity);
            bodyView.setText(body);
            bodyView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13f);
            bodyView.setTextColor(bodyColor);
            bodyView.setLineSpacing(0f, 1.2f);
            panel.addView(bodyView);

            ScrollView scroll = new ScrollView(activity);
            scroll.addView(panel);

            AlertDialog dialog = new AlertDialog.Builder(activity)
                    .setView(scroll)
                    .setPositiveButton(android.R.string.ok, null)
                    .create();
            dialog.show();

            Window window = dialog.getWindow();
            if (window != null) {
                window.setLayout(dp(activity, 340), WindowManager.LayoutParams.WRAP_CONTENT);
                View decor = window.getDecorView();
                if (decor != null) {
                    decor.setBackgroundColor(0x00000000);
                }
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.train.utils.MusicDiagLog.logError("modal_info", t);
        }
    }

    private static int resolveColor(Activity activity, int resId, int fallback) {
        try {
            return activity.getResources().getColor(resId);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static int dp(Activity activity, int value) {
        return (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP,
                value,
                activity.getResources().getDisplayMetrics());
    }
}
