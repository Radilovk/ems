package com.isaigu.gymapp.wearable;

import android.content.Context;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * Minimal Home Assistant REST shim so Notify can POST sensor states to XEMS.
 * Notify Standard sync: POST /api/states/sensor.{id}_heartrate etc.
 */
public final class NotifyHaServer {
    private static final int DEFAULT_PORT = 8123;
    private static final int MAX_ENTITY_HISTORY = 24;
    private static final String API_RUNNING_JSON = "{\"message\":\"API running.\"}";

    private static final Map<String, HaEntityRecord> entityHistory =
            new LinkedHashMap<String, HaEntityRecord>();

    private static volatile boolean running;
    private static ServerSocket serverSocket;
    private static Thread acceptThread;
    private static int postCount;
    private static int haHrCount;
    private static String lastEntity = "";
    private static int boundPort = DEFAULT_PORT;
    private static String bindError = "";
    private static String cachedLanUrl = "";

    private NotifyHaServer() {}

    public static synchronized void start(Context context) {
        if (running) {
            refreshLanUrl(context);
            NotifyHaForegroundService.start(context);
            return;
        }
        boundPort = WearableConfig.getHaPort(context);
        bindError = "";
        refreshLanUrl(context);
        try {
            serverSocket = new ServerSocket(boundPort, 16, InetAddress.getByName("0.0.0.0"));
            running = true;
            acceptThread = new Thread(new AcceptLoop(), "xems-ha-server");
            acceptThread.setDaemon(true);
            acceptThread.start();
            NotifyHaForegroundService.start(context);
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
        Context context = WearableSyncHelper.getContext();
        if (context != null) {
            NotifyHaForegroundService.stop(context);
        }
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

    public static String getLanUrl(Context context) {
        if (cachedLanUrl != null && cachedLanUrl.length() > 0) {
            return cachedLanUrl;
        }
        refreshLanUrl(context);
        if (cachedLanUrl != null && cachedLanUrl.length() > 0) {
            return cachedLanUrl;
        }
        return getLocalUrl();
    }

    public static synchronized void resetSession() {
        postCount = 0;
        haHrCount = 0;
        lastEntity = "";
        entityHistory.clear();
        WearableSyncHelper.updateDiagnostics();
    }

    public static boolean hasHeartRateEntity() {
        for (String key : entityHistory.keySet()) {
            if (isHeartRateEntity(key)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasHeartRateValue() {
        for (HaEntityRecord record : entityHistory.values()) {
            if (!isHeartRateEntity(record.entityId)) {
                continue;
            }
            if (parseHeartRate(record.state) > 0) {
                return true;
            }
        }
        return haHrCount > 0;
    }

    public static String getEntityListText() {
        if (entityHistory.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (HaEntityRecord record : entityHistory.values()) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append(record.shortName());
            sb.append('=');
            String state = formatEntityState(record.state);
            if (state.length() > 28) {
                state = state.substring(0, 28) + "...";
            }
            sb.append(state);
        }
        return sb.toString();
    }

    public static List<String> getEntityLines() {
        ArrayList<String> lines = new ArrayList<String>();
        for (HaEntityRecord record : entityHistory.values()) {
            lines.add(record.shortName() + " = " + formatEntityState(record.state));
        }
        return lines;
    }

    private static String formatEntityState(String state) {
        if (state == null || state.trim().length() == 0) {
            return "(празно)";
        }
        return state;
    }

    private static void rememberEntity(String entityId, String state) {
        if (entityId == null || entityId.length() == 0) {
            return;
        }
        String value = state != null ? state : "";
        entityHistory.put(entityId, new HaEntityRecord(entityId, value, System.currentTimeMillis()));
        while (entityHistory.size() > MAX_ENTITY_HISTORY) {
            String oldest = entityHistory.keySet().iterator().next();
            entityHistory.remove(oldest);
        }
    }

    private static void refreshLanUrl(Context context) {
        cachedLanUrl = "";
        try {
            Enumeration<NetworkInterface> interfaces = NetworkInterface.getNetworkInterfaces();
            while (interfaces != null && interfaces.hasMoreElements()) {
                NetworkInterface iface = interfaces.nextElement();
                if (iface == null || !iface.isUp() || iface.isLoopback()) {
                    continue;
                }
                Enumeration<InetAddress> addresses = iface.getInetAddresses();
                while (addresses.hasMoreElements()) {
                    InetAddress address = addresses.nextElement();
                    if (address == null || address.isLoopbackAddress()
                            || !(address instanceof Inet4Address)) {
                        continue;
                    }
                    String host = address.getHostAddress();
                    if (host != null && host.length() > 0) {
                        cachedLanUrl = "http://" + host + ":" + boundPort;
                        return;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        if (context != null) {
            try {
                android.net.wifi.WifiManager wifi = (android.net.wifi.WifiManager)
                        context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
                if (wifi != null && wifi.getConnectionInfo() != null) {
                    int ip = wifi.getConnectionInfo().getIpAddress();
                    if (ip != 0) {
                        cachedLanUrl = "http://"
                                + ((ip & 0xff) + "." + ((ip >> 8) & 0xff) + "."
                                + ((ip >> 16) & 0xff) + "." + ((ip >> 24) & 0xff))
                                + ":" + boundPort;
                    }
                }
            } catch (Throwable ignored) {
            }
        }
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
                method = requestLine.substring(0, space1).trim().toUpperCase(Locale.ROOT);
                path = requestLine.substring(space1 + 1, space2).trim();
            }
            int contentLength = 0;
            String line;
            while ((line = reader.readLine()) != null) {
                if (line.length() == 0) {
                    break;
                }
                String lower = line.toLowerCase(Locale.ROOT);
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
        if (contentLength > 65536) {
            contentLength = 65536;
        }
        if (contentLength > 0) {
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
        int available = in.available();
        if (available <= 0) {
            return "";
        }
        if (available > 65536) {
            available = 65536;
        }
        byte[] buf = new byte[available];
        int read = in.read(buf);
        if (read <= 0) {
            return "";
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
        rememberEntity(entityId, state);
        if (isHeartRateEntity(entityId)) {
            int hr = parseHeartRate(state);
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
            String fromAttrs = extractFromAttributes(json);
            if (fromAttrs.length() > 0) {
                return fromAttrs;
            }
            if (!json.isNull("state")) {
                Object state = json.get("state");
                String value = state != null ? String.valueOf(state) : "";
                if (value.length() > 0 && !isUnavailableState(value)) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        String trimmed = body.trim();
        if (trimmed.startsWith("{")) {
            return "";
        }
        return trimmed;
    }

    private static String extractFromAttributes(JSONObject json) {
        try {
            if (json.isNull("attributes")) {
                return "";
            }
            JSONObject attrs = json.getJSONObject("attributes");
            String[] keys = new String[] {
                    "heart_rate", "heartrate", "heartRate", "bpm", "value", "hr"
            };
            for (int i = 0; i < keys.length; i++) {
                String key = keys[i];
                if (attrs.isNull(key)) {
                    continue;
                }
                String value = String.valueOf(attrs.get(key));
                if (parseHeartRate(value) > 0) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        return "";
    }

    private static boolean isUnavailableState(String state) {
        if (state == null) {
            return true;
        }
        String s = state.trim().toLowerCase(Locale.ROOT);
        return s.length() == 0 || "unknown".equals(s) || "unavailable".equals(s)
                || "null".equals(s) || "none".equals(s);
    }

    private static int parseHeartRate(String value) {
        if (value == null) {
            return -1;
        }
        int hr = parseIntSafe(value, -1);
        if (hr > 0) {
            return hr;
        }
        String digits = value.replaceAll("[^0-9]", "");
        if (digits.length() == 0) {
            return -1;
        }
        return parseIntSafe(digits, -1);
    }

    private static boolean isHeartRateEntity(String entityId) {
        if (entityId == null || entityId.length() == 0) {
            return false;
        }
        String lower = entityId.toLowerCase(Locale.ROOT);
        if (lower.contains("heartrate") || lower.contains("heart_rate")
                || lower.contains("heart-rate") || lower.contains("heartr")) {
            return true;
        }
        if (lower.endsWith("_hr") || lower.contains("_hr_")) {
            return true;
        }
        return lower.contains("heart") && lower.contains("rate");
    }

    private static boolean isBatteryEntity(String entityId) {
        return entityId.toLowerCase(Locale.ROOT).contains("battery");
    }

    private static boolean isConnectedEntity(String entityId) {
        String lower = entityId.toLowerCase(Locale.ROOT);
        return lower.endsWith("_connected") || lower.contains(".connected");
    }

    private static boolean isTruthyState(String state) {
        if (state == null) {
            return false;
        }
        String s = state.trim().toLowerCase(Locale.ROOT);
        return "1".equals(s) || "true".equals(s) || "on".equals(s) || "connected".equals(s)
                || "yes".equals(s);
    }

    private static boolean isFalsyState(String state) {
        if (state == null) {
            return false;
        }
        String s = state.trim().toLowerCase(Locale.ROOT);
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
        try {
            path = URLDecoder.decode(path, "UTF-8");
        } catch (Throwable ignored) {
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
