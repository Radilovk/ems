package bg.xems.wiems;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Signs this app into the trainer's own WiemsPro account the way the iPad app does, so the tablet signs in by itself
 * with no typing (owner's own account, owner's request). The credentials are never typed in the app and never kept in
 * the source: they come from {@link AcctSecret}, which {@code scripts/build-wiems-app.sh} generates at build time from
 * the env / GitHub secrets {@code WIEMS_ACCT_EMAIL} and {@code WIEMS_ACCT_PASS_MD5} (the password already MD5-hashed, as
 * the vendor app sends it). That generated file is git-ignored, so the hash lives only in the secret, not in the repo.
 * Prefs ("wiems": {@code acct_email} / {@code acct_pass_md5}) override it if ever set on a device.
 *
 * It only authenticates (POST account/login/) and keeps the server's {@code X-CustomToken} for the normal authenticated
 * calls — it does NOT touch the unit's minutes quota and sends no renewal of its own. No lambdas / anonymous classes (dx).
 */
final class Account {
    static final String BASE = "http://pro.wiemspro.com:8080/wiemspro/";
    static final String LOGIN = BASE + "account/login/";
    /** The client string the vendor app presents; some routes are version-gated, so mirror it. */
    static final String APP_VERSION = "1.8.45";
    static final String USER_AGENT = "wiems/2 (Android; XEMS WiEMS)";

    interface Log {
        void log(String s);
    }

    interface Result {
        void done(boolean ok, String token, String msg);
    }

    private final Context ctx;
    private final Log log;
    private final Handler main = new Handler(Looper.getMainLooper());
    private volatile boolean busy;
    private volatile String token;

    Account(Context ctx, Log log) {
        this.ctx = ctx;
        this.log = log;
    }

    private SharedPreferences prefs() {
        return ctx.getSharedPreferences("wiems", Context.MODE_PRIVATE);
    }

    /** Device prefs win if set; otherwise the build-injected secret. */
    String email() {
        String p = prefs().getString("acct_email", "");
        return p.length() > 0 ? p : AcctSecret.EMAIL;
    }

    /** The password as the server wants it: already MD5-hashed. */
    String passMd5() {
        String p = prefs().getString("acct_pass_md5", "");
        return p.length() > 0 ? p : AcctSecret.PASS_MD5;
    }

    boolean hasCredentials() {
        return email().length() > 0 && passMd5().length() > 0;
    }

    String token() {
        return token;
    }

    private void trace(String s) {
        if (log != null) log.log(s);
    }

    /** Sign in at start if credentials are configured; otherwise say so in the trace and do nothing. */
    void ensureSignedIn() {
        if (hasCredentials()) {
            login(null);
        } else {
            trace("wiemspro: no credentials (set WIEMS_ACCT_EMAIL / WIEMS_ACCT_PASS_MD5 build secrets)");
        }
    }

    /** POST account/login/ with the configured credentials; keep the X-CustomToken. One sign-in in flight. */
    void login(Result cb) {
        if (busy) return;
        if (!hasCredentials()) {
            if (cb != null) cb.done(false, null, "no credentials");
            return;
        }
        busy = true;
        Thread th = new Thread(new Job(email(), passMd5(), cb), "wiems-login");
        th.setDaemon(true);
        th.start();
    }

    final class Job implements Runnable {
        final String em, passMd5;
        final Result cb;

        Job(String em, String passMd5, Result cb) {
            this.em = em;
            this.passMd5 = passMd5;
            this.cb = cb;
        }

        @Override
        public void run() {
            boolean ok = false;
            String tok = null, msg = "";
            HttpURLConnection c = null;
            try {
                String json = "{\"email\":\"" + esc(em) + "\",\"appVersion\":\"" + APP_VERSION
                        + "\",\"password\":\"" + passMd5 + "\"}";
                byte[] body = json.getBytes("UTF-8");
                c = (HttpURLConnection) new URL(LOGIN).openConnection();
                c.setConnectTimeout(15000);
                c.setReadTimeout(20000);
                c.setDoOutput(true);
                c.setRequestMethod("POST");
                c.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                c.setRequestProperty("Accept", "application/json");
                c.setRequestProperty("User-Agent", USER_AGENT);
                c.setFixedLengthStreamingMode(body.length);
                OutputStream o = c.getOutputStream();
                o.write(body);
                o.close();
                int code = c.getResponseCode();
                tok = findToken(c);
                ok = code == 200 && tok != null && tok.length() > 0;
                msg = ok ? "signed in" : ("HTTP " + code + (tok == null ? " (no token header)" : ""));
                java.io.InputStream in = code < 400 ? c.getInputStream() : c.getErrorStream();
                if (in != null) in.close();
            } catch (Throwable e) {
                msg = String.valueOf(e);
            } finally {
                if (c != null) c.disconnect();
            }
            main.post(new Back(ok, tok, msg, cb));
        }
    }

    /** The token comes back in a response header (the login body is empty). Take X-CustomToken, else any *token* header. */
    private static String findToken(HttpURLConnection c) {
        String t = c.getHeaderField("X-CustomToken");
        if (t != null && t.length() > 0) return t;
        for (int i = 0; i <= 50; i++) {
            String k = c.getHeaderFieldKey(i);
            String v = c.getHeaderField(i);
            if (k == null && v == null && i > 0) break;
            if (k != null && k.toLowerCase().contains("token") && v != null && v.length() > 0) return v;
        }
        return null;
    }

    final class Back implements Runnable {
        final boolean ok;
        final String tok, msg;
        final Result cb;

        Back(boolean ok, String tok, String msg, Result cb) {
            this.ok = ok;
            this.tok = tok;
            this.msg = msg;
            this.cb = cb;
        }

        @Override
        public void run() {
            busy = false;
            if (ok) token = tok;
            trace("wiemspro login: " + msg);
            if (cb != null) cb.done(ok, tok, msg);
        }
    }

    private static String esc(String s) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char ch = s.charAt(i);
            if (ch == '"' || ch == '\\') b.append('\\');
            b.append(ch);
        }
        return b.toString();
    }
}
