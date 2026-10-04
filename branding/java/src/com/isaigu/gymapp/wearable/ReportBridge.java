package com.isaigu.gymapp.wearable;

import android.app.Activity;
import android.app.Dialog;
import android.util.Base64;
import android.webkit.JavascriptInterface;

import com.isaigu.gymapp.bean.TrainUser;

import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;

/** window.XemsReport in the report page. Every method is called on the WebView's JS thread. */
final class ReportBridge {
    private final Activity a;
    private final Dialog dialog;
    private final TrainUser user;
    private final long focus;
    private android.webkit.WebView web;
    /** Headless run after a training ({@link CardPublisher}): the card goes up even if never shared. */
    boolean auto;

    ReportBridge(Activity a, Dialog dialog, TrainUser user, long focus) {
        this.a = a;
        this.dialog = dialog;
        this.user = user;
        this.focus = focus;
    }

    @JavascriptInterface
    public boolean auto() {
        return auto;
    }

    void setWebView(android.webkit.WebView w) {
        web = w;
    }

    /** A file made by the page (PNG / TCX / CSV, base64) → the Android share sheet (Viber, mail, Drive…). */
    @JavascriptInterface
    public void shareFile(String name, String mime, String base64, String subject, String text) {
        try {
            shareBytes(name, mime, Base64.decode(base64, Base64.DEFAULT), subject, text);
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "share failed: " + t);
        }
    }

    private void shareBytes(String name, String mime, byte[] bytes, String subject, String text) {
        try {
            File dir = new File(a.getCacheDir(), "xems_share");
            if (!dir.isDirectory()) {
                dir.mkdirs();
            }
            File[] old = dir.listFiles();
            if (old != null) {
                for (File f : old) {
                    if (System.currentTimeMillis() - f.lastModified() > 86400000L) {
                        f.delete();
                    }
                }
            }
            String safe = name.replaceAll("[\\\\/:*?\"<>|]", "_");
            File f = new File(dir, safe);
            java.io.FileOutputStream out = new java.io.FileOutputStream(f);
            try {
                out.write(bytes);
            } finally {
                out.close();
            }
            android.net.Uri uri = android.support.v4.content.FileProvider.getUriForFile(a, a.getPackageName() + ".provider", f);
            android.content.Intent send = new android.content.Intent(android.content.Intent.ACTION_SEND);
            send.setType(mime);
            send.putExtra(android.content.Intent.EXTRA_STREAM, uri);
            if (subject != null && subject.length() > 0) {
                send.putExtra(android.content.Intent.EXTRA_SUBJECT, subject);
            }
            if (text != null && text.length() > 0) {
                send.putExtra(android.content.Intent.EXTRA_TEXT, text);
            }
            send.addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION);
            a.runOnUiThread(new Start(a, android.content.Intent.createChooser(send, WearableUi.tr("Сподели", "Share"))));
            WearableBleDiagLog.log("report", "share " + safe + " " + f.length() + " B");
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "share failed: " + t);
        }
    }

    @JavascriptInterface
    public void shareText(String subject, String text) {
        android.content.Intent send = new android.content.Intent(android.content.Intent.ACTION_SEND);
        send.setType("text/plain");
        send.putExtra(android.content.Intent.EXTRA_SUBJECT, subject);
        send.putExtra(android.content.Intent.EXTRA_TEXT, text);
        a.runOnUiThread(new Start(a, android.content.Intent.createChooser(send, WearableUi.tr("Сподели", "Share"))));
    }

    /**
     * The client's card (assets/report/client-card.html with the page's totals): a link on the
     * license server when there is one, else the page itself as an HTML file.
     */
    @JavascriptInterface
    public void shareCard(String json) {
        new Thread(new CardTask(this, json), "xems-card").start();
    }

    /** The client's card link, once the trainer has shared it ("" = never shared). */
    @JavascriptInterface
    public String cardUrl() {
        return cardPrefs().getString("url_" + user.id, "");
    }

    /**
     * A card already shared follows every new training: the page sends fresh totals when it opens
     * with a training the link does not have yet ({@code key} = count + newest id). Silent, same link.
     */
    @JavascriptInterface
    public void refreshCard(String json, String key) {
        // after a training (auto): also the first card, when the client can find it (e-mail / phone)
        if (key == null || (cardUrl().length() == 0 && !(auto && lookupFields(user).length() > 0))) {
            return;
        }
        // the lookup hashes are part of the key: a new e-mail / phone (or a card from before them) goes up once
        key = key + "|" + Integer.toHexString(lookupFields(user).hashCode());
        if (key.equals(cardPrefs().getString("key_" + user.id, ""))) {
            return;
        }
        new Thread(new CardTask(this, json, key), "xems-card-refresh").start();
    }

    /**
     * SHA-256 of the client's e-mail and of the phone's last 9 digits ("xems-card:" first), so the client can
     * find the card in the booking PWA with the same e-mail / phone. The values themselves are not sent.
     */
    static String lookupFields(TrainUser u) {
        StringBuilder b = new StringBuilder();
        String e = u != null && u.email != null ? u.email.trim().toLowerCase(java.util.Locale.ROOT) : "";
        if (e.indexOf('@') > 0) {
            b.append(",\"ek\":\"").append(sha256("xems-card:" + e)).append('"');
        }
        String d = u != null && u.phone != null ? Schedule.digits(u.phone) : "";
        if (d.length() > 9) {
            d = d.substring(d.length() - 9);
        }
        if (d.length() >= 7) {
            b.append(",\"pk\":\"").append(sha256("xems-card:" + d)).append('"');
        }
        return b.toString();
    }

    static String sha256(String s) {
        try {
            byte[] h = java.security.MessageDigest.getInstance("SHA-256").digest(s.getBytes("UTF-8"));
            StringBuilder b = new StringBuilder(64);
            for (int i = 0; i < h.length; i++) {
                b.append(Character.forDigit((h[i] >> 4) & 15, 16)).append(Character.forDigit(h[i] & 15, 16));
            }
            return b.toString();
        } catch (Throwable t) {
            return "";
        }
    }

    private android.content.SharedPreferences cardPrefs() {
        return a.getSharedPreferences("xems_client_cards", android.content.Context.MODE_PRIVATE);
    }

    static final class CardTask implements Runnable {
        final ReportBridge b;
        final String json;
        final String refreshKey;

        CardTask(ReportBridge b, String json) {
            this(b, json, null);
        }

        CardTask(ReportBridge b, String json, String refreshKey) {
            this.b = b;
            this.json = json;
            this.refreshKey = refreshKey;
        }

        @Override
        public void run() {
            if (refreshKey != null) {
                b.refreshNow(json, refreshKey);
            } else {
                b.cardNow(json);
            }
        }
    }

    void refreshNow(String json, String key) {
        try {
            String url = com.isaigu.gymapp.widget.XemsLicenseClient.postCard(a, com.isaigu.gymapp.widget.XemsDossier.keyFor(user.id), json,
                    lookupFields(user));
            cardPrefs().edit().putString("url_" + user.id, url).putString("key_" + user.id, key)
                    .putLong("at_" + user.id, System.currentTimeMillis()).remove("err_" + user.id).apply();
            WearableBleDiagLog.log("report", "card refreshed " + url);
        } catch (Throwable t) {
            cardPrefs().edit().putString("err_" + user.id, reason(t)).apply();
            WearableBleDiagLog.log("report", "card refresh: " + t);     // offline: next opening tries again
        }
    }

    /** Why an upload failed, in a few words for the trainer. */
    static String reason(Throwable t) {
        String m = String.valueOf(t.getMessage()).toLowerCase(java.util.Locale.ROOT);
        if (t instanceof java.io.IOException || m.contains("unable to resolve") || m.contains("timeout")) {
            return WearableUi.tr("няма интернет", "no internet");
        }
        if (m.contains("token") || m.contains("revoked") || m.contains("expired") || m.contains("license")) {
            return WearableUi.tr("лицензът не е потвърден", "licence not confirmed");
        }
        return WearableUi.tr("сървърът отказа", "the server refused");
    }

    void cardNow(String json) {
        String first = "";
        try {
            first = new JSONObject(json).optString("name", "");
        } catch (Throwable ignored) {
        }
        String subject = WearableUi.tr("Твоят XEMS картон", "Your XEMS card");
        String hello = first.length() > 0
                ? WearableUi.tr("Здравей, " + first + "! ", "Hi " + first + "! ") : "";
        try {
            String url = com.isaigu.gymapp.widget.XemsLicenseClient.postCard(a, com.isaigu.gymapp.widget.XemsDossier.keyFor(user.id), json,
                    lookupFields(user));
            cardPrefs().edit().putString("url_" + user.id, url)
                    .putLong("at_" + user.id, System.currentTimeMillis()).remove("err_" + user.id).apply();
            shareText(subject, hello + WearableUi.tr("Ето твоя XEMS картон — напредъкът ти, обновява се след всяка тренировка: ",
                    "Here is your XEMS card — your progress, updated after every training: ") + url);
            WearableBleDiagLog.log("report", "card link " + url);
            done("link");
            return;
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "card link: " + t + " — sending the file");
        }
        try {
            String tpl = asset("report/client-card.html");
            String drop = json.contains("\"sex\":\"M\"") ? "female" : "male";   // only the client's figure
            int fi = tpl.indexOf("<!--FIG:" + drop + "-->"), fj = tpl.indexOf("<!--/FIG:" + drop + "-->");
            if (fi >= 0 && fj > fi) {
                tpl = tpl.substring(0, fi) + tpl.substring(fj + ("<!--/FIG:" + drop + "-->").length());
            }
            // no server: the file carries the client's body itself (the web card reads it from /v1/history)
            try {
                JSONObject d = new JSONObject(json);
                org.json.JSONArray list = new JSONObject(body()).optJSONArray("list");
                if (list != null && list.length() > 0) {
                    org.json.JSONArray tail = new org.json.JSONArray();
                    for (int i = Math.max(0, list.length() - 24); i < list.length(); i++) {
                        tail.put(list.get(i));
                    }
                    d.put("body", tail);
                    json = d.toString();
                }
            } catch (Throwable ignored) {
            }
            boolean en = "en".equals(lang());
            String html = "<!doctype html><html lang=\"" + (en ? "en" : "bg") + "\"><head><meta charset=\"utf-8\">"
                    + "<meta name=\"viewport\" content=\"width=device-width,initial-scale=1,viewport-fit=cover\">"
                    + "</head><body>" + tpl.replace("__XEMS_CARD_DATA__", json.replace("<", "\\u003c"))
                    + "</body></html>";
            String safe = (first.length() > 0 ? first : "client").replaceAll("[^0-9A-Za-z\\u0400-\\u04FF_-]+", "_");
            shareBytes("XEMS_" + safe + ".html", "text/html", html.getBytes("UTF-8"), subject,
                    hello + WearableUi.tr("Ето твоя XEMS картон — отвори файла в браузъра.",
                            "Here is your XEMS card — open the file in a browser."));
            done("file");
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "card file: " + t);
            done("fail");
        }
    }

    private String asset(String path) throws Exception {
        java.io.InputStream in = a.getAssets().open(path);
        try {
            java.io.ByteArrayOutputStream o = new java.io.ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) {
                o.write(buf, 0, n);
            }
            return new String(o.toByteArray(), "UTF-8");
        } finally {
            in.close();
        }
    }

    /** Tell the page how the card went ("link", "file", "fail"). */
    private void done(String how) {
        a.runOnUiThread(new Js(web, "window.xemsCardDone&&window.xemsCardDone('" + how + "')"));
    }

    static final class Js implements Runnable {
        final android.webkit.WebView w;
        final String script;

        Js(android.webkit.WebView w, String script) {
            this.w = w;
            this.script = script;
        }

        @Override
        public void run() {
            try {
                if (w != null) {
                    w.evaluateJavascript(script, null);
                }
            } catch (Throwable ignored) {
            }
        }
    }

    /** Landscape only (1.1.310-ai): no turning upright any more — puts the host back across if it is not. */
    @JavascriptInterface
    public String rotate() {
        a.runOnUiThread(new Rotate(a, false));
        return "landscape";
    }

    static final class Rotate implements Runnable {
        final Activity a;
        final boolean portrait;

        Rotate(Activity a, boolean portrait) {
            this.a = a;
            this.portrait = portrait;
        }

        @Override
        public void run() {
            try {
                a.setRequestedOrientation(portrait
                        ? android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT
                        : android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "rotate: " + t);
            }
        }
    }

    /** The whole report through the system print dialog ("Save as PDF" or a printer). */
    @JavascriptInterface
    public void printPdf(String title) {
        a.runOnUiThread(new Print(a, web, title));
    }

    static final class Start implements Runnable {
        final Activity a;
        final android.content.Intent i;

        Start(Activity a, android.content.Intent i) {
            this.a = a;
            this.i = i;
        }

        @Override
        public void run() {
            try {
                a.startActivity(i);
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "share start: " + t);
            }
        }
    }

    static final class Print implements Runnable {
        final Activity a;
        final android.webkit.WebView w;
        final String title;

        Print(Activity a, android.webkit.WebView w, String title) {
            this.a = a;
            this.w = w;
            this.title = title;
        }

        @Override
        public void run() {
            try {
                android.print.PrintManager pm = (android.print.PrintManager) a.getSystemService(android.content.Context.PRINT_SERVICE);
                if (pm != null && w != null) {
                    pm.print(title, w.createPrintDocumentAdapter(title), new android.print.PrintAttributes.Builder()
                            .setMediaSize(android.print.PrintAttributes.MediaSize.ISO_A4).build());
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("report", "print: " + t);
            }
        }
    }

    static boolean isDark() {
        try {
            int bg = com.isaigu.gymapp.widget.XemsUi.BG;
            int lum = ((bg >> 16) & 0xFF) * 3 + ((bg >> 8) & 0xFF) * 6 + (bg & 0xFF);
            return lum < 1280;
        } catch (Throwable t) {
            return true;
        }
    }

    @JavascriptInterface
    public String theme() {
        return isDark() ? "dark" : "light";
    }

    @JavascriptInterface
    public String lang() {
        return "bg".equals(WearableUi.tr("bg", "en")) ? "bg" : "en";
    }

    @JavascriptInterface
    public String focus() {
        return focus > 0 ? String.valueOf(focus) : "";
    }

    @JavascriptInterface
    public String client() {
        JSONObject o = new JSONObject();
        try {
            o.put("id", user.id);
            String n = user.nickName != null && user.nickName.length() > 0 ? user.nickName : user.name;
            o.put("name", n != null ? n : "");
            com.isaigu.gymapp.ai.AiProfile p = com.isaigu.gymapp.ai.AiProfile.of(user);
            if (p != null) {
                if (p.sex != null) {
                    o.put("sex", p.sex == com.isaigu.gymapp.ai.AiModel.Sex.FEMALE ? "F" : "M");
                }
                if (p.age != null) {
                    o.put("age", p.age.intValue());
                }
                if (p.weightKg != null) {
                    o.put("weight", p.weightKg.doubleValue());
                }
                if (p.goal != null) {
                    o.put("goal", p.goal.name().toLowerCase());
                }
                if (p.fitness != null) {
                    o.put("fitness", p.fitness.name().toLowerCase());
                }
            }
            if (user.height > 0) {
                o.put("height", user.height);
            }
            o.put("owner", BandWorkout.isOwner(a, user.id));
            o.put("misport", BandWorkout.sport(a, user.id, 0));
            int rest = WearableConfig.getRestHr(a);
            if (rest > 0) {
                o.put("restHr", rest);
            }
            o.put("avatar", avatar(user.iconUrl));
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "client json: " + t);
        }
        return o.toString();
    }

    /**
     * The client's body (the studio scale) for the report's "Тяло" block and the card: {list: compact weigh-ins
     * oldest first (ScaleUploader.forCard), use: how the newest steers the training now — the same values AiProfile
     * hands Auto and Smart Session (fresh ≤ 60 days, readiness only today and only with a baseline)}.
     */
    @JavascriptInterface
    public String body() {
        JSONObject o = new JSONObject();
        try {
            com.isaigu.gymapp.ai.AiProfile p = com.isaigu.gymapp.ai.AiProfile.of(user);
            boolean male = p == null || p.sex != com.isaigu.gymapp.ai.AiModel.Sex.FEMALE;
            int age = p != null && p.age != null ? p.age.intValue() : 35;
            int h = p != null && p.heightCm >= 100 ? p.heightCm
                    : a.getSharedPreferences("xems_scale", android.content.Context.MODE_PRIVATE).getInt("h" + user.id, 0);
            if (h < 100) {
                h = male ? 178 : 165;
            }
            o.put("list", new org.json.JSONArray(
                    com.isaigu.gymapp.wearable.scale.ScaleUploader.forCard(a, user.id, male, age, h, 60)));
            JSONObject use = new JSONObject();
            if (p != null) {
                use.put("fresh", p.measured);
                use.put("ready", p.readiness);
                use.put("readySeg", p.readinessSeg);
                if (p.scaleFocus != null) {
                    use.put("focus", p.scaleFocus);
                }
                use.put("chFat", p.channelFat != null);
                use.put("muscleLow", p.muscleLow);
                use.put("fatObese", p.fatObese);
            }
            com.isaigu.gymapp.wearable.scale.ScaleInsight.Readiness r =
                    com.isaigu.gymapp.wearable.scale.ScaleStore.readinessToday(a, user.id);
            if (r != null) {
                use.put("readyScore", r.score);
            }
            o.put("use", use);
        } catch (Throwable t) {
            WearableBleDiagLog.log("report", "body json: " + t);
        }
        return o.toString();
    }

    /** The client's scale page over the report (the "Тяло" block's button). */
    @JavascriptInterface
    public void openScale() {
        a.runOnUiThread(new OpenScale(a, user));
    }

    static final class OpenScale implements Runnable {
        final Activity a;
        final TrainUser u;

        OpenScale(Activity a, TrainUser u) {
            this.a = a;
            this.u = u;
        }

        @Override
        public void run() {
            com.isaigu.gymapp.wearable.scale.ScaleScreen.open(a, u);
        }
    }

    @JavascriptInterface
    public String sessions() {
        return SessionStore.listFor(a, user.id);
    }

    @JavascriptInterface
    public String session(String id) {
        try {
            return SessionStore.load(a, Long.parseLong(id));
        } catch (Throwable t) {
            return "null";
        }
    }

    @JavascriptInterface
    public void putScores(String id, String json) {
        try {
            SessionStore.putScores(a, Long.parseLong(id), json);
        } catch (Throwable ignored) {
        }
    }

    @JavascriptInterface
    public void deleteSession(String id) {
        try {
            SessionStore.delete(a, Long.parseLong(id));
        } catch (Throwable ignored) {
        }
    }

    @JavascriptInterface
    public void close() {
        a.runOnUiThread(new Dismiss(dialog));
    }

    static final class Dismiss implements Runnable {
        final Dialog d;

        Dismiss(Dialog d) {
            this.d = d;
        }

        @Override
        public void run() {
            try {
                d.dismiss();
            } catch (Throwable ignored) {
            }
        }
    }

    private String avatar(String url) {
        try {
            if (url == null || !url.startsWith("file://")) {
                return "";
            }
            File f = new File(url.substring("file://".length()));
            if (!f.isFile() || f.length() > 400000) {
                return "";
            }
            byte[] b = new byte[(int) f.length()];
            FileInputStream in = new FileInputStream(f);
            try {
                int off = 0;
                while (off < b.length) {
                    int n = in.read(b, off, b.length - off);
                    if (n <= 0) {
                        break;
                    }
                    off += n;
                }
            } finally {
                in.close();
            }
            return "data:image/jpeg;base64," + Base64.encodeToString(b, Base64.NO_WRAP);
        } catch (Throwable t) {
            return "";
        }
    }
}
