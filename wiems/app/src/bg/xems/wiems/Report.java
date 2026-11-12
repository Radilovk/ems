package bg.xems.wiems;

import android.os.Handler;
import android.os.Looper;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * The trace goes to the XEMS server by itself when a training fails (owner, v1.20: "the client only tests — nothing
 * else asked of them; it reaches you at once"): POST /v1/unit/log?app=wiems&unit=<the unit's MAC, 12 hex>&ver=N,
 * text body (the server's src/units.js, the same route as the XBody unit's mod). One upload in flight; the answer
 * comes back on the main thread. No lambdas / anonymous classes (dx).
 */
final class Report {
    static final String URL_BASE = "https://license.biocode-bg.com/v1/unit/log";
    static final int IDLE = 0, SENDING = 1, SENT = 2, FAILED = 3;
    /** The server keeps 256 KB; the newest part is what matters. */
    static final int MAX_CHARS = 200000;

    interface Done {
        void reported(boolean ok, String answer);
    }

    private final Handler main = new Handler(Looper.getMainLooper());
    private volatile boolean busy;

    boolean busy() {
        return busy;
    }

    /** The unit id the server takes: a MAC without colons, lower case; else "000000000000". */
    static String unitId(String mac) {
        String u = mac == null ? "" : mac.replace(":", "").toLowerCase();
        return u.matches("[0-9a-f]{12}") ? u : "000000000000";
    }

    static String url(String mac, int ver) {
        return URL_BASE + "?app=wiems&unit=" + unitId(mac) + "&ver=" + ver;
    }

    boolean send(String mac, int ver, String text, Done done) {
        if (busy) return false;
        busy = true;
        String t = text.length() > MAX_CHARS ? text.substring(text.length() - MAX_CHARS) : text;
        Thread th = new Thread(new Job(url(mac, ver), t, done), "wiems-report");
        th.setDaemon(true);
        th.start();
        return true;
    }

    final class Job implements Runnable {
        final String url, text;
        final Done done;

        Job(String url, String text, Done done) {
            this.url = url;
            this.text = text;
            this.done = done;
        }

        @Override
        public void run() {
            boolean ok = false;
            String ans = "";
            HttpURLConnection c = null;
            try {
                byte[] body = text.getBytes("UTF-8");
                c = (HttpURLConnection) new URL(url).openConnection();
                c.setConnectTimeout(15000);
                c.setReadTimeout(20000);
                c.setDoOutput(true);
                c.setRequestMethod("POST");
                c.setRequestProperty("Content-Type", "text/plain; charset=utf-8");
                c.setFixedLengthStreamingMode(body.length);
                OutputStream o = c.getOutputStream();
                o.write(body);
                o.close();
                int code = c.getResponseCode();
                java.io.InputStream in = code < 400 ? c.getInputStream() : c.getErrorStream();
                if (in != null) {
                    byte[] b = new byte[200];
                    int n = in.read(b);
                    if (n > 0) ans = new String(b, 0, n, "UTF-8").trim();
                    in.close();
                }
                ok = code == 200 && ans.startsWith("OK");
                if (!ok) ans = "HTTP " + code + " " + ans;
            } catch (Throwable e) {
                ans = String.valueOf(e);
            } finally {
                if (c != null) c.disconnect();
            }
            main.post(new Back(ok, ans, done));
        }
    }

    final class Back implements Runnable {
        final boolean ok;
        final String ans;
        final Done done;

        Back(boolean ok, String ans, Done done) {
            this.ok = ok;
            this.ans = ans;
            this.done = done;
        }

        @Override
        public void run() {
            busy = false;
            if (done != null) done.reported(ok, ans);
        }
    }
}
