package com.isaigu.gymapp.wearable;

import android.content.Context;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

/**
 * Minimal Home Assistant REST shim so Notify can POST sensor states to XEMS.
 * Notify Standard sync: POST /api/states/sensor.{id}_heartrate etc.
 */
public final class NotifyHaServer {
    private static final int DEFAULT_PORT = 8123;
    private static final String API_RUNNING_JSON = "{\"message\":\"API running.\"}";

    private static volatile boolean running;
    private static ServerSocket serverSocket;
    private static Thread acceptThread;
    private static int postCount;
    private static int haHrCount;
    private static String lastEntity = "";
    private static int boundPort = DEFAULT_PORT;
    private static String bindError = "";

    private NotifyHaServer() {}

    public static synchronized void start(Context context) {
        if (running) {
            return;
        }
        boundPort = WearableConfig.getHaPort(context);
        bindError = "";
        try {
            serverSocket = new ServerSocket(boundPort, 16, InetAddress.getByName("0.0.0.0"));
            running = true;
            acceptThread = new Thread(new AcceptLoop(), "xems-ha-server");
            acceptThread.setDaemon(true);
            acceptThread.start();
            WearableSyncHelper.updateDiagnostics();
        } catch (IOException e) {
            running = false;
            bindError = e.getMessage() != null ? e.getMessage() : "bind failed";
            serverSocket = null;
            WearableSyncHelper.updateDiagnostics();
        }
    }

    public static synchronized void stop() {
        running = false;
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (IOException ignored) {
            }
            serverSocket = null;
        }
        acceptThread = null;
        WearableSyncHelper.updateDiagnostics();
    }

    public static boolean isRunning() {
        return running;
    }

    public static int getPostCount() {
        return postCount;
    }

    public static int getHaHrCount() {
        return haHrCount;
    }

    public static String getLastEntity() {
        return lastEntity;
    }

    public static int getBoundPort() {
        return boundPort;
    }

    public static String getBindError() {
        return bindError;
    }

    public static String getLocalUrl() {
        return "http://127.0.0.1:" + boundPort;
    }

    private static final class AcceptLoop implements Runnable {
        @Override
        public void run() {
            while (running && serverSocket != null && !serverSocket.isClosed()) {
                try {
                    Socket client = serverSocket.accept();
                    client.setSoTimeout(8000);
                    handleClient(client);
                } catch (IOException ignored) {
                    if (!running) {
                        break;
                    }
                }
            }
        }
    }

    private static void handleClient(Socket client) {
        try {
            InputStream in = client.getInputStream();
            OutputStream out = client.getOutputStream();
            BufferedReader reader = new BufferedReader(
                    new InputStreamReader(in, StandardCharsets.UTF_8));
            String requestLine = reader.readLine();
            if (requestLine == null || requestLine.length() == 0) {
                writeResponse(out, 400, "text/plain", "bad request");
                return;
            }
            String method = "";
            String path = "";
            int space1 = requestLine.indexOf(' ');
            int space2 = requestLine.lastIndexOf(' ');
            if (space1 > 0 && space2 > space1) {
                method = requestLine.substring(0, space1).trim().toUpperCase();
                path = requestLine.substring(space1 + 1, space2).trim();
            }
            int contentLength = 0;
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.length() == 0) {
                    break;
                }
                String lower = line.toLowerCase();
                if (lower.startsWith("content-length:")) {
                    contentLength = parseIntSafe(line.substring(15).trim(), 0);
                }
            }
            String body = readBody(in, contentLength);
            if ("GET".equals(method) && ("/api/".equals(path) || "/api".equals(path))) {
                writeResponse(out, 200, "application/json", API_RUNNING_JSON);
                return;
            }
            if (("POST".equals(method) || "PUT".equals(method))
                    && path.startsWith("/api/states/")) {
                String entityId = decodePath(path.substring("/api/states/".length()));
                handleStatePost(entityId, body);
                writeResponse(out, 200, "application/json",
                        "{\"result\":\"ok\",\"entity_id\":\"" + escapeJson(entityId) + "\"}");
                return;
            }
            writeResponse(out, 404, "text/plain", "not found");
        } catch (Throwable ignored) {
        } finally {
            try {
                client.close();
            } catch (IOException ignored) {
            }
        }
    }

    private static String readBody(InputStream in, int contentLength) throws IOException {
        if (contentLength <= 0) {
            return "";
        }
        if (contentLength > 65536) {
            contentLength = 65536;
        }
        byte[] buf = new byte[contentLength];
        int read = 0;
        while (read < contentLength) {
            int n = in.read(buf, read, contentLength - read);
            if (n < 0) {
                break;
            }
            read += n;
        }
        return new String(buf, 0, read, StandardCharsets.UTF_8);
    }

    private static void handleStatePost(String entityId, String body) {
        if (entityId == null) {
            entityId = "";
        }
        postCount++;
        lastEntity = entityId;
        String state = extractState(body);
        if (isHeartRateEntity(entityId)) {
            int hr = parseIntSafe(state, -1);
            if (hr > 0) {
                haHrCount++;
                NotifyWearableBridge.onHeartRate(hr, "ha:" + entityId);
            }
        } else if (isBatteryEntity(entityId)) {
            int level = parseIntSafe(state, -1);
            if (level >= 0 && level <= 100) {
                NotifyWearableBridge.onBattery(level);
            }
        } else if (isConnectedEntity(entityId)) {
            if (isTruthyState(state)) {
                NotifyWearableBridge.onBandConnected();
            } else if (isFalsyState(state)) {
                NotifyWearableBridge.onBandDisconnected();
            }
        }
        NotifyWearableBridge.onRawEvent("ha:" + entityId);
        WearableSyncHelper.updateDiagnostics();
    }

    private static String extractState(String body) {
        if (body == null || body.length() == 0) {
            return "";
        }
        try {
            JSONObject json = new JSONObject(body);
            if (!json.isNull("state")) {
                Object state = json.get("state");
                return state != null ? String.valueOf(state) : "";
            }
        } catch (Throwable ignored) {
        }
        return body.trim();
    }

    private static boolean isHeartRateEntity(String entityId) {
        String lower = entityId.toLowerCase();
        return lower.contains("heartrate") || lower.contains("heart_rate");
    }

    private static boolean isBatteryEntity(String entityId) {
        return entityId.toLowerCase().contains("battery");
    }

    private static boolean isConnectedEntity(String entityId) {
        String lower = entityId.toLowerCase();
        return lower.endsWith("_connected") || lower.contains(".connected");
    }

    private static boolean isTruthyState(String state) {
        if (state == null) {
            return false;
        }
        String s = state.trim().toLowerCase();
        return "1".equals(s) || "true".equals(s) || "on".equals(s) || "connected".equals(s)
                || "yes".equals(s);
    }

    private static boolean isFalsyState(String state) {
        if (state == null) {
            return false;
        }
        String s = state.trim().toLowerCase();
        return "0".equals(s) || "false".equals(s) || "off".equals(s) || "disconnected".equals(s)
                || "no".equals(s);
    }

    private static void writeResponse(
            OutputStream out, int code, String contentType, String body) throws IOException {
        byte[] bytes = body.getBytes(StandardCharsets.UTF_8);
        String statusText = code == 200 ? "OK" : (code == 404 ? "Not Found" : "Bad Request");
        String header = "HTTP/1.1 " + code + " " + statusText + "\r\n"
                + "Content-Type: " + contentType + "; charset=utf-8\r\n"
                + "Content-Length: " + bytes.length + "\r\n"
                + "Connection: close\r\n"
                + "Access-Control-Allow-Origin: *\r\n"
                + "\r\n";
        out.write(header.getBytes(StandardCharsets.UTF_8));
        out.write(bytes);
        out.flush();
    }

    private static String decodePath(String path) {
        if (path == null) {
            return "";
        }
        int q = path.indexOf('?');
        if (q >= 0) {
            path = path.substring(0, q);
        }
        return path.replace("%2F", "/").replace("%2f", "/");
    }

    private static String escapeJson(String value) {
        if (value == null) {
            return "";
        }
        return value.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    private static int parseIntSafe(String value, int fallback) {
        if (value == null) {
            return fallback;
        }
        try {
            String trimmed = value.trim();
            int dot = trimmed.indexOf('.');
            if (dot > 0) {
                trimmed = trimmed.substring(0, dot);
            }
            return Integer.parseInt(trimmed);
        } catch (Throwable ignored) {
            return fallback;
        }
    }
}
