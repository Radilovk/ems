package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;

import com.isaigu.gymapp.bean.TrainUser;

/**
 * The client's card goes up the moment a training is saved — no timer, no opened report needed.
 * The report page (assets/report/session-report.html) is the one place that turns the recorded trainings
 * into the card, so it runs here in a WebView that is never shown: it calls {@link ReportBridge#refreshCard}
 * (auto: the first card too, when the client has an e-mail or phone) and is destroyed after {@link #LIFE_MS}.
 * The booking app ("Моят профил" → "Моят прогрес") finds the card by the client's e-mail / phone.
 */
final class CardPublisher {
    static final long LIFE_MS = 25000L;
    private static final Handler H = new Handler(Looper.getMainLooper());

    private CardPublisher() {}

    static void publish(TrainUser user) {
        if (user == null) {
            return;
        }
        H.postDelayed(new Run(user), 800L);          // after the report screen (if any) is up
        SessionUploader.schedule(user);              // the analysis data to the server (D1), right after
    }

    static final class Run implements Runnable {
        final TrainUser user;

        Run(TrainUser user) {
            this.user = user;
        }

        @Override
        public void run() {
            try {
                if (ReportBridge.lookupFields(user).length() == 0
                        && !hasCard(user)) {
                    return;                           // no card and nothing to find one by
                }
                Activity a = WearableSyncHelper.resolveActivityForPermissions();
                if (a == null) {
                    return;
                }
                WebView w = new WebView(a);
                WebSettings s = w.getSettings();
                s.setJavaScriptEnabled(true);
                s.setDomStorageEnabled(true);
                s.setAllowFileAccess(true);
                ReportBridge bridge = new ReportBridge(a, null, user, 0L);
                bridge.auto = true;
                bridge.setWebView(w);
                w.addJavascriptInterface(bridge, "XemsReport");
                w.loadUrl(ReportScreen.PAGE);
                H.postDelayed(new Destroy(w), LIFE_MS);
                WearableBleDiagLog.log("report", "card publish user " + user.id);
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "card publish: " + t);
            }
        }

        private static boolean hasCard(TrainUser u) {
            Activity a = WearableSyncHelper.resolveActivityForPermissions();
            return a != null && a.getSharedPreferences("xems_client_cards", android.content.Context.MODE_PRIVATE)
                    .getString("url_" + u.id, "").length() > 0;
        }
    }

    static final class Destroy implements Runnable {
        final WebView w;

        Destroy(WebView w) {
            this.w = w;
        }

        @Override
        public void run() {
            try {
                w.removeJavascriptInterface("XemsReport");
                w.destroy();
            } catch (Throwable ignored) {
            }
        }
    }
}
