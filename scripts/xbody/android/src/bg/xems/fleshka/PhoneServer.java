package bg.xems.fleshka;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

/**
 * The phone's side of the direct USB link: with USB tethering on, the XBody unit (opt/xems/bin/xems-link) asks
 * http://<phone>:8765/xems/hello?have=N&pending=M and downloads /xems/file/<path> of the stick this app carries.
 * Plain Java (no Android classes), so scripts/xbody/test-phone.sh runs it on the host. No lambdas / anonymous
 * classes (dx).
 */
public final class PhoneServer implements Runnable {
    public interface Files {
        byte[] get(String path) throws Exception;   // "updater.sh", "xems/payload.tar.gz", …; null = none
    }

    public interface Listener {
        void unit(String have, String pending);      // the unit said hello
    }

    public static final int PORT = 8765;
    static final String[] ALLOWED = {"updater.sh", "xems/VERSION", "xems/payload.md5", "xems/payload.tar.gz",
            "xems/remove.list", "xems-bridge.uf2"};

    final String version;
    final Files files;
    final Listener listener;
    final int port;
    volatile ServerSocket socket;
    volatile boolean stop;

    public PhoneServer(String version, Files files, Listener listener, int port) {
        this.version = version;
        this.files = files;
        this.listener = listener;
        this.port = port;
    }

    public void close() {
        stop = true;
        try {
            if (socket != null) socket.close();
        } catch (Exception ignored) {
        }
    }

    @Override
    public void run() {
        try {
            ServerSocket s = new ServerSocket(port);
            s.setReuseAddress(true);
            socket = s;
            while (!stop) {
                Socket c = s.accept();
                try {
                    serve(c);
                } catch (Exception ignored) {
                } finally {
                    try {
                        c.close();
                    } catch (Exception ignored) {
                    }
                }
            }
        } catch (Exception ignored) {   // closed, or the port is taken
        }
    }

    void serve(Socket c) throws Exception {
        c.setSoTimeout(10000);
        InputStream in = c.getInputStream();
        StringBuilder line = new StringBuilder();
        int ch;
        while ((ch = in.read()) >= 0 && ch != '\n') if (ch != '\r') line.append((char) ch);
        String[] parts = line.toString().split(" ");
        OutputStream out = c.getOutputStream();
        if (parts.length < 2 || !"GET".equals(parts[0])) { reply(out, 400, "text/plain", "bad request\n".getBytes("UTF-8")); return; }
        String path = parts[1], query = "";
        int q = path.indexOf('?');
        if (q >= 0) { query = path.substring(q + 1); path = path.substring(0, q); }
        if ("/xems/hello".equals(path)) {
            if (listener != null) listener.unit(param(query, "have"), param(query, "pending"));
            reply(out, 200, "text/plain", ("XEMS-PHONE " + version + "\n").getBytes("UTF-8"));
            return;
        }
        if (path.startsWith("/xems/file/")) {
            String f = path.substring("/xems/file/".length());
            for (String a : ALLOWED) {
                if (!a.equals(f)) continue;
                byte[] d = files.get(f);
                if (d != null) { reply(out, 200, "application/octet-stream", d); return; }
            }
        }
        reply(out, 404, "text/plain", "not found\n".getBytes("UTF-8"));
    }

    static String param(String query, String key) {
        for (String kv : query.split("&")) {
            int e = kv.indexOf('=');
            if (e > 0 && kv.substring(0, e).equals(key)) return kv.substring(e + 1);
        }
        return "";
    }

    static void reply(OutputStream out, int code, String type, byte[] body) throws Exception {
        String head = "HTTP/1.0 " + code + (code == 200 ? " OK" : " Error") + "\r\nContent-Type: " + type
                + "\r\nContent-Length: " + body.length + "\r\nConnection: close\r\n\r\n";
        out.write(head.getBytes("UTF-8"));
        out.write(body);
        out.flush();
    }
}
