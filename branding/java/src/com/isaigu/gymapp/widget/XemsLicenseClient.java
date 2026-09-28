package com.isaigu.gymapp.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Map;

/**
 * Talks to the XEMS license / update server (HTTPS, JSON). The server is built later; until its
 * address is set every call answers "no_server" and the app stays offline (base app, or the
 * offline code). Contract: docs/xems-license-api.md.
 *
 * <pre>
 * POST {server}/v1/license/activate   {key, device_id, device_model, android, app_version, app_code, lang}
 *                                     → {ok:true, token} | {ok:false, error, message}
 * POST {server}/v1/license/refresh    {token, device_id, app_version, app_code}
 *                                     → {ok:true, token} | {ok:false, error:"revoked"|…}
 * GET  {server}/v1/app/update?app=xems&amp;code=&lt;versionCode&gt;&amp;device_id=…&amp;channel=stable
 *                                     → {ok:true, version_code, version_name, url, sha256, size, notes, mandatory}
 * </pre>
 * All calls run on a background thread; callbacks come back on the main thread.
 */
public final class XemsLicenseClient {
    public interface Done {
        /** ok: accepted / newer version found; msg: short reason code or version text. */
        void done(boolean ok, String msg);
    }

    public static final class Update {
        public int versionCode;
        public String versionName = "";
        public String url = "";
        public String sha256 = "";
        public String notes = "";
        public boolean mandatory;
    }

    public interface UpdateDone {
        void done(Update update, String error);
    }

    static final int TIMEOUT_MS = 10000;
    private static final Handler main = new Handler(Looper.getMainLooper());
    private static volatile boolean refreshing;
    private static volatile boolean autoRunning;
    static final String K_AUTO_NEXT = "auto_next";
    static final long AUTO_RETRY_MS = 10L * 60L * 1000L;      // offline: ask again soon
    static final long AUTO_NO_MS = 6L * 60L * 60L * 1000L;     // the server said no: ask again later
    private static volatile Update lastUpdate;

    private XemsLicenseClient() {}

    public static boolean serverConfigured() {
        return XemsLicense.server().length() > 0;
    }

    // ================================================================ license

    /** Key typed in Settings: offline code, else the server; empty key = back to the base app. */
    public static void activate(final Context c, final String key, final Done cb) {
        final String k = key == null ? "" : key.trim();
        if (k.length() == 0) {
            XemsLicense.reset();
            post(cb, true, "reset");
            return;
        }
        if (XemsLicense.applyLocalCode(k)) {
            post(cb, true, "code");
            return;
        }
        if (!serverConfigured()) {
            post(cb, false, "no_server");
            return;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    String body = "{" + common(c) + ",\"key\":" + XemsLicenseToken.quote(k) + "}";
                    Map<String, Object> r = XemsLicenseToken.parseFlat(http("POST", "/v1/license/activate", body));
                    if (Boolean.TRUE.equals(r.get("ok")) && r.get("token") != null) {
                        String why = XemsLicense.applyToken(k, String.valueOf(r.get("token")));
                        post(cb, why == null, why == null ? "server" : why);
                    } else {
                        post(cb, false, XemsLicenseToken.str(r.get("error")));
                    }
                } catch (Throwable t) {
                    post(cb, false, "offline");
                }
            }
        }, "xems-license").start();
    }

    /** Fetch a fresh token now (e.g. suits the server just added), not waiting for the daily check. */
    public static void refreshNow(Context c) {
        XemsLicense.prefs().edit().remove(XemsLicense.K_CHECKED).apply();
        refreshIfDue(c);
    }

    /** Once a day, when a server license is held: fresh token, or back to base when revoked. */
    static void refreshIfDue(final Context c) {
        if (refreshing || !serverConfigured() || !"server".equals(XemsLicense.source())) {
            return;
        }
        if (System.currentTimeMillis() - XemsLicense.lastCheckMs() < XemsLicense.REFRESH_MS) {
            return;
        }
        refreshing = true;
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    String body = "{" + common(c) + ",\"token\":" + XemsLicenseToken.quote(XemsLicense.token()) + "}";
                    Map<String, Object> r = XemsLicenseToken.parseFlat(http("POST", "/v1/license/refresh", body));
                    if (Boolean.TRUE.equals(r.get("ok")) && r.get("token") != null) {
                        XemsLicense.applyToken(null, String.valueOf(r.get("token")));
                        saveStudio(c, r.get("studio"));
                        saveLatest(r.get("app_latest"));
                    } else if ("revoked".equals(r.get("error")) || "unknown".equals(r.get("error"))) {
                        XemsLicense.revoke();
                    } else {
                        XemsLicense.markChecked();
                    }
                } catch (Throwable ignored) {
                    // offline: the saved token keeps working until its end date + grace
                } finally {
                    refreshing = false;
                }
            }
        }, "xems-license-refresh").start();
    }

    static final String K_LATEST = "app_latest";
    static final String K_LATEST_AT = "app_latest_at";

    /** The licence answer says the newest XEMS for this tablet (0 none newer, −1 / missing unknown). */
    static void saveLatest(Object v) {
        if (v == null) {
            return;
        }
        long n = XemsLicenseToken.num(v);
        if (n < 0) {
            return;
        }
        XemsLicense.prefs().edit().putInt(K_LATEST, (int) n).putLong(K_LATEST_AT, System.currentTimeMillis()).apply();
    }

    /** The studio code (random 8 chars, or a readable one the admin set, e.g. "xbody"). */
    static void saveStudio(Context c, Object studio) {
        if (studio != null && String.valueOf(studio).matches("[a-z0-9][a-z0-9-]{3,23}")) {
            c.getApplicationContext().getSharedPreferences("xems_client_sync", Context.MODE_PRIVATE)
                    .edit().putString("studio", String.valueOf(studio)).apply();
        }
    }

    /**
     * No license on this tablet (a new install or a reinstall): ask the server by the tablet's own id.
     * An active tablet gets its license back (and its studio), a new one joins the owner's license,
     * a tablet the admin removed stays locked. Nothing to type.
     */
    static void autoIfNone(Context c) {
        if (c == null || autoRunning || !serverConfigured() || XemsLicense.source().length() > 0) {
            return;
        }
        if (System.currentTimeMillis() < XemsLicense.prefs().getLong(K_AUTO_NEXT, 0)) {
            return;
        }
        autoRunning = true;
        new Thread(new AutoRun(c.getApplicationContext()), "xems-license-auto").start();
    }

    static final class AutoRun implements Runnable {
        private final Context c;

        AutoRun(Context c) {
            this.c = c;
        }

        @Override
        public void run() {
            long wait = AUTO_NO_MS;
            try {
                Map<String, Object> r = XemsLicenseToken.parseFlat(http("POST", "/v1/license/auto", "{" + common(c) + "}"));
                if (Boolean.TRUE.equals(r.get("ok")) && r.get("token") != null
                        && XemsLicense.source().length() == 0
                        && XemsLicense.applyToken(null, String.valueOf(r.get("token"))) == null) {
                    saveStudio(c, r.get("studio"));
                    saveLatest(r.get("app_latest"));
                    if ("locked".equals(r.get("phase"))) {
                        XemsLicense.finishSetup();   // a reinstall of a tablet that was already handed over
                    }
                    wait = 0;
                    main.post(new LicenseChanged());
                }
            } catch (Throwable t) {
                wait = AUTO_RETRY_MS;
            } finally {
                XemsLicense.prefs().edit().putLong(K_AUTO_NEXT, wait > 0 ? System.currentTimeMillis() + wait : 0).apply();
                autoRunning = false;
            }
        }
    }

    /** The module tiles redraw (XemsNav is compiled after this class: by name). */
    static final class LicenseChanged implements Runnable {
        @Override
        public void run() {
            try {
                Class.forName("com.isaigu.gymapp.widget.XemsNav").getMethod("onLicenseChanged").invoke(null);
            } catch (Throwable ignored) {
            }
        }
    }

    // ================================================================ updates

    public static Update lastUpdate() {
        return lastUpdate;
    }

    /** Is there a newer XEMS? update = null when this one is current. */
    public static void checkUpdate(final Context c, final UpdateDone cb) {
        if (!serverConfigured()) {
            postUpdate(cb, null, "no_server");
            return;
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    int code = appCode(c);
                    String q = "/v1/app/update?app=xems&channel=stable&code=" + code
                            + "&device_id=" + URLEncoder.encode(XemsLicense.deviceId(), "UTF-8");
                    Map<String, Object> r = XemsLicenseToken.parseFlat(http("GET", q, null));
                    Update u = new Update();
                    u.versionCode = (int) XemsLicenseToken.num(r.get("version_code"));
                    u.versionName = XemsLicenseToken.str(r.get("version_name"));
                    u.url = XemsLicenseToken.str(r.get("url"));
                    u.sha256 = XemsLicenseToken.str(r.get("sha256")).toLowerCase();
                    u.notes = XemsLicenseToken.str(r.get("notes"));
                    u.mandatory = Boolean.TRUE.equals(r.get("mandatory"));
                    boolean newer = u.versionCode > code && u.url.startsWith("https://");
                    lastUpdate = newer ? u : null;
                    postUpdate(cb, newer ? u : null, null);
                } catch (Throwable t) {
                    postUpdate(cb, null, "offline");
                }
            }
        }, "xems-update").start();
    }

    static final long AUTO_CHECK_MS = 12L * 60 * 60 * 1000;
    static final String K_UPDATE_CHECKED = "update_checked";
    static final String K_UPDATE_SKIPPED = "update_skipped";
    private static volatile boolean autoAsked;

    /**
     * On app start: at most once per 12 h (and once per process), ask the server for a newer
     * XEMS and offer it in a dialog. Nothing happens without a server. "По-късно" skips that
     * version unless it is mandatory.
     */
    public static void autoCheck(final android.app.Activity a) {
        try {
            if (autoAsked || a == null || !serverConfigured()) {
                return;
            }
            autoAsked = true;
            final android.content.SharedPreferences p = XemsLicense.prefs();
            long now = System.currentTimeMillis();
            long last = p.getLong(K_UPDATE_CHECKED, 0);
            if (last > 0 && last <= now && now - last < AUTO_CHECK_MS) {
                return;
            }
            // The licence answer (≤ 1 / day) already says whether a newer XEMS exists: ask for the
            // details only then — no request of its own when there is nothing new.
            long knownAt = p.getLong(K_LATEST_AT, 0);
            if (knownAt > 0 && knownAt <= now && now - knownAt < 2 * XemsLicense.REFRESH_MS
                    && p.getInt(K_LATEST, 0) <= appCode(a)) {
                return;
            }
            checkUpdate(a.getApplicationContext(), new UpdateDone() {
                @Override
                public void done(final Update u, String error) {
                    if (error != null) {
                        return;
                    }
                    p.edit().putLong(K_UPDATE_CHECKED, System.currentTimeMillis()).apply();
                    if (u == null || a.isFinishing()) {
                        return;
                    }
                    if (!u.mandatory && p.getInt(K_UPDATE_SKIPPED, 0) == u.versionCode) {
                        return;
                    }
                    offer(a, u);
                }
            });
        } catch (Throwable ignored) {
        }
    }

    static void offer(final android.app.Activity a, final Update u) {
        try {
            String msg = "Налична е версия " + u.versionName + "."
                    + (u.notes.length() > 0 ? "\n\n" + u.notes : "");
            android.app.AlertDialog.Builder b = new android.app.AlertDialog.Builder(a)
                    .setTitle("Ново обновление")
                    .setMessage(msg)
                    .setCancelable(!u.mandatory)
                    .setPositiveButton("Изтегли и инсталирай", new android.content.DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(android.content.DialogInterface d, int w) {
                            android.widget.Toast.makeText(a, "Изтегляне…", android.widget.Toast.LENGTH_SHORT).show();
                            downloadAndInstall(a.getApplicationContext(), u, new Done() {
                                @Override
                                public void done(boolean ok, String m) {
                                    if (!ok) {
                                        android.widget.Toast.makeText(a, "Неуспешно: " + m,
                                                android.widget.Toast.LENGTH_LONG).show();
                                    }
                                }
                            });
                        }
                    });
            if (!u.mandatory) {
                b.setNegativeButton("По-късно", new android.content.DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(android.content.DialogInterface d, int w) {
                        XemsLicense.prefs().edit().putInt(K_UPDATE_SKIPPED, u.versionCode).apply();
                    }
                });
            }
            b.show();
        } catch (Throwable ignored) {
        }
    }

    /** Download the APK (checked against its SHA-256) and hand it to the system installer. */
    public static void downloadAndInstall(final Context c, final Update u, final Done cb) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                File f = new File(c.getCacheDir(), "xems-update.apk");
                try {
                    HttpURLConnection con = (HttpURLConnection) new URL(u.url).openConnection();
                    con.setConnectTimeout(TIMEOUT_MS);
                    con.setReadTimeout(60000);
                    MessageDigest sha = MessageDigest.getInstance("SHA-256");
                    InputStream in = con.getInputStream();
                    OutputStream out = new FileOutputStream(f);
                    byte[] buf = new byte[65536];
                    int n;
                    while ((n = in.read(buf)) > 0) {
                        out.write(buf, 0, n);
                        sha.update(buf, 0, n);
                    }
                    out.close();
                    in.close();
                    String got = hex(sha.digest());
                    if (u.sha256.length() > 0 && !u.sha256.equals(got)) {
                        f.delete();
                        post(cb, false, "bad_checksum");
                        return;
                    }
                    main.post(new Install(c, f, cb));
                } catch (Throwable t) {
                    f.delete();
                    post(cb, false, "download_failed");
                }
            }
        }, "xems-update-download").start();
    }

    static final class Install implements Runnable {
        private final Context c;
        private final File f;
        private final Done cb;

        Install(Context c, File f, Done cb) {
            this.c = c;
            this.f = f;
            this.cb = cb;
        }

        @Override
        public void run() {
            try {
                Uri uri = android.support.v4.content.FileProvider.getUriForFile(
                        c, c.getPackageName() + ".updateFileProvider", f);
                Intent i = new Intent(Intent.ACTION_VIEW);
                i.setDataAndType(uri, "application/vnd.android.package-archive");
                i.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_ACTIVITY_NEW_TASK);
                c.startActivity(i);
                if (cb != null) {
                    cb.done(true, "installing");
                }
            } catch (Throwable t) {
                if (cb != null) {
                    cb.done(false, "install_failed");
                }
            }
        }
    }

    // ================================================================ client card

    /**
     * The client card on the server (POST /v1/card): returns its link. The same client always keeps
     * the same link; this call only refreshes its data. Call it off the main thread.
     */
    public static String postCard(Context c, String clientKey, String dataJson) throws Exception {
        return postCard(c, clientKey, dataJson, "");
    }

    /** {@code extraFields}: more top-level JSON fields, each starting with a comma (e.g. the lookup hashes). */
    public static String postCard(Context c, String clientKey, String dataJson, String extraFields) throws Exception {
        String token = XemsLicense.token();
        if (!serverConfigured() || token == null || token.length() == 0) {
            throw new IllegalStateException("no license server");
        }
        if (dataJson == null || !dataJson.trim().startsWith("{")) {
            throw new IllegalArgumentException("card data");
        }
        String body = "{" + common(c) + ",\"token\":" + XemsLicenseToken.quote(token)
                + ",\"client_key\":" + XemsLicenseToken.quote(clientKey)
                + ",\"data\":" + dataJson + (extraFields != null ? extraFields : "") + "}";
        Map<String, Object> r = XemsLicenseToken.parseFlat(http("POST", "/v1/card", body));
        Object url = r.get("url");
        if (Boolean.TRUE.equals(r.get("ok")) && url != null && String.valueOf(url).startsWith("https://")) {
            return String.valueOf(url);
        }
        throw new Exception("card: " + r.get("error"));
    }

    // ================================================================ plumbing

    /** Fields every request carries (the server's input data). */
    static String common(Context c) {
        return "\"device_id\":" + XemsLicenseToken.quote(XemsLicense.deviceId())
                + ",\"device_model\":" + XemsLicenseToken.quote(Build.MANUFACTURER + " " + Build.MODEL)
                + ",\"android\":" + Build.VERSION.SDK_INT
                + ",\"app_version\":" + XemsLicenseToken.quote(appVersion(c))
                + ",\"app_code\":" + appCode(c)
                + ",\"lang\":" + XemsLicenseToken.quote(XemsLang.isBg() ? "bg" : "en")
                + ",\"setup\":" + XemsLicense.isSetupMode()
                + ",\"ems_local\":" + pairedSuits(c);
    }

    /** Suits paired on this tablet in the admin setup (XemsLocalStore keeps them), as a JSON array. */
    static String pairedSuits(Context c) {
        StringBuilder b = new StringBuilder("[");
        try {
            String csv = c.getApplicationContext()
                    .getSharedPreferences("xems_local_store", Context.MODE_PRIVATE)
                    .getString("paired_macs", "");
            for (String m : csv.split(",")) {
                if (m.trim().length() > 0) {
                    if (b.length() > 1) {
                        b.append(',');
                    }
                    b.append(XemsLicenseToken.quote(m.trim()));
                }
            }
        } catch (Throwable ignored) {
        }
        return b.append(']').toString();
    }

    static String http(String method, String path, String body) throws Exception {
        String base = XemsLicense.server();
        while (base.endsWith("/")) {
            base = base.substring(0, base.length() - 1);
        }
        HttpURLConnection con = (HttpURLConnection) new URL(base + path).openConnection();
        con.setRequestMethod(method);
        con.setConnectTimeout(TIMEOUT_MS);
        con.setReadTimeout(TIMEOUT_MS);
        con.setRequestProperty("Accept", "application/json");
        con.setRequestProperty("User-Agent", "XEMS-Android");
        if (body != null) {
            con.setDoOutput(true);
            con.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            OutputStream o = con.getOutputStream();
            o.write(body.getBytes("UTF-8"));
            o.close();
        }
        int code = con.getResponseCode();
        InputStream in = code < 400 ? con.getInputStream() : con.getErrorStream();
        if (in == null) {
            throw new Exception("http " + code);
        }
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        byte[] buf = new byte[8192];
        int n;
        while ((n = in.read(buf)) > 0) {
            b.write(buf, 0, n);
        }
        in.close();
        return new String(b.toByteArray(), "UTF-8");
    }

    static int appCode(Context c) {
        try {
            PackageInfo pi = c.getPackageManager().getPackageInfo(c.getPackageName(), 0);
            return pi.versionCode;
        } catch (Throwable t) {
            return 0;
        }
    }

    static String appVersion(Context c) {
        try {
            PackageInfo pi = c.getPackageManager().getPackageInfo(c.getPackageName(), 0);
            return pi.versionName;
        } catch (Throwable t) {
            return "";
        }
    }

    static String hex(byte[] d) {
        StringBuilder b = new StringBuilder();
        for (byte x : d) {
            b.append(String.format("%02x", x & 0xFF));
        }
        return b.toString();
    }

    private static void post(final Done cb, final boolean ok, final String msg) {
        if (cb == null) {
            return;
        }
        main.post(new Runnable() {
            @Override
            public void run() {
                cb.done(ok, msg);
            }
        });
    }

    private static void postUpdate(final UpdateDone cb, final Update u, final String err) {
        if (cb == null) {
            return;
        }
        main.post(new Runnable() {
            @Override
            public void run() {
                cb.done(u, err);
            }
        });
    }
}
