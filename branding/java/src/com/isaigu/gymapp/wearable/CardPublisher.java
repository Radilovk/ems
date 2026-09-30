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
    static final String PREFS = "xems_client_cards";
    private static final Handler H = new Handler(Looper.getMainLooper());

    private CardPublisher() {}

    static void publish(TrainUser user) {
        if (user == null) {
            return;
        }
        H.postDelayed(new Run(user), 800L);          // after the report screen (if any) is up
        SessionUploader.schedule(user);              // the analysis data to the server (D1), right after
    }

    /** "Качи сега" on the tablet: sent again even if nothing changed since the last upload. */
    static void force(android.content.Context c, TrainUser u) {
        c.getSharedPreferences(PREFS, android.content.Context.MODE_PRIVATE).edit().remove("key_" + u.id).apply();
        c.getSharedPreferences("xems_session_upload", android.content.Context.MODE_PRIVATE).edit()
                .remove("up_" + u.id).apply();                // the analysis records again too (the server keeps one each)
        publish(u);
    }

    /** One line for the client's summary: is the analysis in the client's app, and if not, why. */
    static String state(android.content.Context c, TrainUser u, long lastMs) {
        android.content.SharedPreferences p = c.getSharedPreferences(PREFS, android.content.Context.MODE_PRIVATE);
        String url = p.getString("url_" + u.id, "");
        if (ReportBridge.lookupFields(u).length() == 0) {
            return WearableUi.tr("✗ Няма имейл или телефон — клиентът не може да намери анализа си. Добави ги в картона.",
                    "✗ No e-mail or phone — the client cannot find the analysis. Add them to the client form.");
        }
        if (lastMs <= 0) {
            return WearableUi.tr("Анализът ще се появи там след първата тренировка.",
                    "The analysis appears there after the first training.");
        }
        long at = p.getLong("at_" + u.id, 0L);
        String err = p.getString("err_" + u.id, "");
        if (url.length() == 0 || (at > 0 && at < lastMs)) {
            return WearableUi.tr("Последната тренировка още не е качена", "The last training is not uploaded yet")
                    + (err.length() > 0 ? " (" + err + ")" : "") + ".";
        }
        String when = at > 0 ? " · " + ClientRow.day(at) + " " + ClientRow.hm(at) : "";
        String rec = com.isaigu.gymapp.widget.XemsDossier.cidFor(u.id).length() == 0
                ? WearableUi.tr(" (подробният анализ чака връзка със сървъра)", " (the detailed analysis waits for the server)") : "";
        return WearableUi.tr("✓ Анализът е в приложението", "✓ The analysis is in the app") + when + rec;
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
                    WearableBleDiagLog.log("report", "card skipped user " + user.id + ": no e-mail / phone");
                    return;                           // no card and nothing to find one by
                }
                Activity a = WearableSyncHelper.resolveActivityForPermissions();
                if (a == null) {
                    return;
                }
                WebView w = new WebView(a);
                // never shown, but laid out like a screen: the page draws its charts before it sends the card
                w.measure(android.view.View.MeasureSpec.makeMeasureSpec(1280, android.view.View.MeasureSpec.EXACTLY),
                        android.view.View.MeasureSpec.makeMeasureSpec(800, android.view.View.MeasureSpec.EXACTLY));
                w.layout(0, 0, 1280, 800);
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
