package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;

import com.isaigu.gymapp.bean.TrainUser;

/**
 * Client history and training reports: a full-screen page (assets/report/session-report.html)
 * drawn from the recorded sessions ({@link SessionStore}) through {@link ReportBridge}.
 * Opened from the client form ("History and reports").
 */
public final class ReportScreen {
    static final String PAGE = "file:///android_asset/report/session-report.html";

    private ReportScreen() {}

    /** @param trainUser the client (TrainUser) */
    public static void open(Activity a, Object trainUser) {
        open(a, trainUser, 0L);
    }

    public static void open(Activity a, Object trainUser, long sessionId) {
        try {
            if (a == null || !(trainUser instanceof TrainUser)) {
                return;
            }
            Dialog d = new Dialog(a, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
            WebView w = new WebView(a);
            w.setBackgroundColor(ReportBridge.isDark() ? 0xFF0B0D11 : 0xFFEEF1F5);
            WebSettings s = w.getSettings();
            s.setJavaScriptEnabled(true);
            s.setDomStorageEnabled(true);
            s.setAllowFileAccess(true);
            s.setBuiltInZoomControls(false);
            s.setSupportZoom(false);
            ReportBridge bridge = new ReportBridge(a, d, (TrainUser) trainUser, sessionId);
            bridge.setWebView(w);
            w.addJavascriptInterface(bridge, "XemsReport");
            w.loadUrl(PAGE);
            d.setContentView(w, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                    ViewGroup.LayoutParams.MATCH_PARENT));
            // Landscape only (owner, 1.1.310-ai): the report stays across like the host; upright is only the PDF /
            // image export (laid out at phone width there).
            int before = a.getRequestedOrientation();
            d.setOnDismissListener(new Cleanup(w, a, before));
            d.show();
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "open failed: " + t);
        }
    }

    static final class Cleanup implements DialogInterface.OnDismissListener {
        final WebView w;
        final Activity a;
        final int orientation;

        Cleanup(WebView w, Activity a, int orientation) {
            this.w = w;
            this.a = a;
            this.orientation = orientation;
        }

        @Override
        public void onDismiss(DialogInterface dialog) {
            try {
                a.setRequestedOrientation(orientation);
            } catch (Throwable ignored) {
            }
            try {
                w.removeJavascriptInterface("XemsReport");
                w.destroy();
            } catch (Throwable ignored) {
            }
        }
    }
}
