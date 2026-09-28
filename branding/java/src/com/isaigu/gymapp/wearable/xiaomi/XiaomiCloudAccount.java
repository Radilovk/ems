package com.isaigu.gymapp.wearable.xiaomi;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Logs into a Xiaomi (Mi Fitness) account and reads back the paired band's BLE MAC + auth key,
 * so the tablet can talk to the band directly. Ported from huami-token (MIT).
 *
 * Network only — call {@link #fetchBands} off the main thread. No lambdas / anonymous classes.
 */
public final class XiaomiCloudAccount {

    static final String SERVICE_LOGIN = "https://account.xiaomi.com/pass/serviceLogin";
    static final String SERVICE_LOGIN_AUTH2 = "https://account.xiaomi.com/pass/serviceLoginAuth2";
    static final String SOURCE_LIST = "https://hlth.io.mi.com/app/v1/source/get_source_list";
    private static final String UA_WEB =
            "Mozilla/5.0 (Linux; Android 12; Pixel 4 Build/SP1A.210812.016.C1; wv) AppleWebKit/537.36 "
            + "(KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.200 Mobile Safari/537.36";
    private static final String UA_API = "Android-12-9.8.348i-google-Pixel 4";

    private XiaomiCloudAccount() {}

    /** One band the account is bound to. */
    public static final class Band {
        public final String mac;
        public final String key;
        public final String name;

        Band(String mac, String key, String name) {
            this.mac = mac;
            this.key = key;
            this.name = name;
        }
    }

    /** Raised with a human message (Bulgarian) when the login or fetch fails. */
    public static final class CloudError extends Exception {
        CloudError(String message) {
            super(message);
        }
    }

    /**
     * Log in and return the bound bands (with a 32-hex auth key). Throws {@link CloudError} with a
     * message fit to show the trainer.
     */
    public static List<Band> fetchBands(String email, String password) throws CloudError {
        if (email == null || email.trim().length() == 0 || password == null || password.length() == 0) {
            throw new CloudError("Въведи имейл и парола на Xiaomi акаунта.");
        }
        email = email.trim();
        String deviceId = "an_" + md5Lower(email);

        // Step 1: serviceLogin → _sign, qs, callback
        Map<String, String> q1 = new LinkedHashMap<String, String>();
        q1.put("_json", "true");
        q1.put("sid", "miothealth");
        q1.put("_locale", "en_US");
        Resp r1 = http("GET", SERVICE_LOGIN + "?" + query(q1), null, UA_WEB,
                "userId=" + email + "; deviceId=" + deviceId, false);
        JSONObject j1 = parseXiaomiJson(r1.body);
        String sign = j1.optString("_sign", "");
        String qs = j1.optString("qs", "");
        String callback = j1.optString("callback", "");
        if (sign.length() == 0 || qs.length() == 0 || callback.length() == 0) {
            throw new CloudError("Xiaomi входът не отговори правилно (стъпка 1).");
        }

        // Step 2: serviceLoginAuth2 → ssecurity, nonce, cUserId, location
        Map<String, String> f = new LinkedHashMap<String, String>();
        f.put("qs", qs);
        f.put("callback", callback);
        f.put("_json", "true");
        f.put("_sign", sign);
        f.put("user", email);
        f.put("hash", XiaomiCloudCrypto.md5Upper(password));
        f.put("sid", "miothealth");
        f.put("_locale", "en_US");
        Resp r2 = http("POST", SERVICE_LOGIN_AUTH2, form(f), UA_WEB, "deviceId=" + deviceId, false);
        JSONObject j2 = parseXiaomiJson(r2.body);
        int code = j2.optInt("code", -1);
        if (code != 0) {
            String desc = j2.optString("description", "");
            if (j2.has("notificationUrl")) {
                throw new CloudError("Xiaomi иска потвърждение (2FA/captcha). Влез веднъж в Mi Fitness "
                        + "на телефона, после опитай пак.");
            }
            throw new CloudError("Входът не мина: " + (desc.length() > 0 ? desc : "грешни данни") + ".");
        }
        String ssecurity = j2.optString("ssecurity", "");
        String nonce = j2.optString("nonce", "");
        String cUserId = j2.optString("cUserId", "");
        String location = j2.optString("location", "");
        if (ssecurity.length() == 0 || location.length() == 0) {
            throw new CloudError("Xiaomi входът не върна ключ за сесията (стъпка 2).");
        }

        // Step 3: follow location (+clientSign) to pick up the serviceToken cookie
        String clientSign = XiaomiCloudCrypto.b64encode(
                XiaomiCloudCrypto.digest("SHA-1", XiaomiCloudCrypto.utf8("nonce=" + nonce + "&" + ssecurity)));
        String loc = location + (location.indexOf('?') < 0 ? "?" : "&") + "clientSign=" + enc(clientSign);
        Map<String, String> jar = new LinkedHashMap<String, String>();
        followForCookies(loc, jar, 5);
        String serviceToken = jar.get("serviceToken");
        if (serviceToken == null || serviceToken.length() == 0) {
            throw new CloudError("Xiaomi входът не даде serviceToken (стъпка 3).");
        }

        return sourceList(ssecurity, cUserId, serviceToken);
    }

    /**
     * The reliable path for accounts with e-mail-code / SMS 2FA: the trainer logs in on Xiaomi's own
     * page in a WebView, and we finish with the session cookies it leaves (passToken + userId + deviceId).
     * A valid passToken makes serviceLogin return ssecurity directly — no password, no 2FA re-prompt.
     *
     * @param webCookies the Cookie header captured from account.xiaomi.com after the WebView login.
     */
    public static List<Band> fetchWithCookies(String webCookies) throws CloudError {
        return fetchWithCookies(webCookies, UA_WEB);
    }

    /** Same, but sends the WebView's own User-Agent so Xiaomi sees the same client that logged in. */
    public static List<Band> fetchWithCookies(String webCookies, String userAgent) throws CloudError {
        if (!hasPassToken(webCookies)) {
            throw new CloudError("Входът не завърши. Влез в Xiaomi акаунта докрай и опитай пак.");
        }
        String ua = userAgent == null || userAgent.length() == 0 ? UA_WEB : userAgent;
        Map<String, String> q = new LinkedHashMap<String, String>();
        q.put("_json", "true");
        q.put("sid", "miothealth");
        q.put("_locale", "en_US");
        String url = SERVICE_LOGIN + "?" + query(q);

        JSONObject j = null;
        String ssecurity = "";
        String location = "";
        // The session can need a moment to settle right after the WebView finishes the login.
        for (int attempt = 0; attempt < 4; attempt++) {
            Resp r = http("GET", url, null, ua, webCookies, false);
            j = parseXiaomiJson(r.body);
            ssecurity = j.optString("ssecurity", "");
            location = j.optString("location", "");
            if (ssecurity.length() > 0 && location.length() > 0) {
                break;
            }
            try {
                Thread.sleep(1500L);
            } catch (InterruptedException ignored) {
            }
        }
        String cUserId = j == null ? "" : j.optString("cUserId", "");
        if (ssecurity.length() == 0 || location.length() == 0) {
            String why = j == null ? "" : j.optString("description", j.optString("desc", ""));
            String code = j == null ? "" : j.optString("code", "");
            boolean verify = j != null && (j.has("notificationUrl") || j.has("captchaUrl"));
            throw new CloudError("Xiaomi не потвърди сесията"
                    + (code.length() > 0 ? " (код " + code + ")" : "")
                    + (why.length() > 0 ? ": " + why : "")
                    + (verify ? ". Иска допълнително потвърждение — завърши го в прозореца за вход." : "")
                    + ". Влез отново с Xiaomi акаунта.");
        }
        Map<String, String> jar = new LinkedHashMap<String, String>();
        followForCookies(location, jar, 6);
        String serviceToken = jar.get("serviceToken");
        if (serviceToken == null || serviceToken.length() == 0) {
            throw new CloudError("Xiaomi входът не даде serviceToken.");
        }
        return sourceList(ssecurity, cUserId, serviceToken);
    }

    /** Parses the JSON that serviceLogin returned inside the WebView: {ssecurity, nonce, cUserId, location, notificationUrl, description}. */
    public static String[] parseSession(String text) {
        String[] out = new String[] {"", "", "", "", "", ""};
        try {
            JSONObject j = parseXiaomiJson(text);
            out[0] = j.optString("ssecurity", "");
            out[1] = j.optString("nonce", "");
            out[2] = j.optString("cUserId", "");
            out[3] = j.optString("location", "");
            out[4] = j.optString("notificationUrl", "");
            out[5] = j.optString("description", "");
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** Finish from a session the WebView already confirmed: serviceToken via location, then the band list. */
    public static List<Band> fetchWithSession(String ssecurity, String nonce, String cUserId, String location)
            throws CloudError {
        String loc = location;
        if (nonce != null && nonce.length() > 0) {
            String clientSign = XiaomiCloudCrypto.b64encode(
                    XiaomiCloudCrypto.digest("SHA-1", XiaomiCloudCrypto.utf8("nonce=" + nonce + "&" + ssecurity)));
            loc = location + (location.indexOf('?') < 0 ? "?" : "&") + "clientSign=" + enc(clientSign);
        }
        Map<String, String> jar = new LinkedHashMap<String, String>();
        followForCookies(loc, jar, 6);
        String serviceToken = jar.get("serviceToken");
        if (serviceToken == null || serviceToken.length() == 0) {
            throw new CloudError("Xiaomi входът не даде serviceToken.");
        }
        return sourceList(ssecurity, cUserId, serviceToken);
    }

    /** True only for a non-empty, non-expired passToken (an empty one is set on the login page itself). */
    public static boolean hasPassToken(String cookies) {
        if (cookies == null) {
            return false;
        }
        String[] parts = cookies.split(";");
        for (int i = 0; i < parts.length; i++) {
            String p = parts[i].trim();
            if (p.startsWith("passToken=")) {
                String v = p.substring("passToken=".length()).trim();
                return v.length() > 8 && !v.equals("EXPIRED");
            }
        }
        return false;
    }

    /** get_source_list (status=1 → bound wearables with auth_key) → the bands. */
    private static List<Band> sourceList(String ssecurity, String cUserId, String serviceToken) throws CloudError {
        String data = "{\"page_size\":50,\"status\":1}";
        String nonceB64 = XiaomiCloudCrypto.generateNonce(0L);
        Map<String, String> params = new LinkedHashMap<String, String>();
        params.put("data", data);
        Map<String, String> enc = XiaomiCloudCrypto.encryptParams(
                "POST", XiaomiCloudCrypto.signingPath("/app/v1/source/get_source_list"), params, nonceB64, ssecurity);
        String cookie = "cUserId=" + cUserId + "; serviceToken=" + serviceToken + "; locale=en_us";
        Resp r4 = http("POST", SOURCE_LIST, form(enc), UA_API, cookie, false);
        String plain = XiaomiCloudCrypto.decryptResponse(r4.body.trim(), nonceB64, ssecurity);
        return parseBands(plain);
    }

    // ---------------------------------------------------------------- response parsing
    private static List<Band> parseBands(String json) throws CloudError {
        List<Band> out = new ArrayList<Band>();
        try {
            JSONObject root = new JSONObject(json);
            JSONObject dataObj = root.optJSONObject("data");
            JSONArray list = null;
            if (dataObj != null) {
                list = dataObj.optJSONArray("list");
                if (list == null) {
                    list = dataObj.optJSONArray("source_list");
                }
            }
            if (list == null) {
                list = root.optJSONArray("list");
            }
            if (list != null) {
                for (int i = 0; i < list.length(); i++) {
                    JSONObject o = list.optJSONObject(i);
                    if (o != null) {
                        collectBand(o, out);
                    }
                }
            }
        } catch (Throwable t) {
            throw new CloudError("Неочакван отговор от Xiaomi (не мога да го разчета).");
        }
        if (out.isEmpty()) {
            throw new CloudError("Акаунтът няма вързана гривна с ключ. Сдвои я първо в Mi Fitness.");
        }
        return out;
    }

    /** Pull mac + auth_key out of a device node (fields sit at the top level or inside "detail"). */
    private static void collectBand(JSONObject o, List<Band> out) {
        JSONObject detail = o.optJSONObject("detail");
        String mac = firstNonEmpty(o.optString("mac", ""), detail != null ? detail.optString("mac", "") : "",
                o.optString("did", ""));
        String key = firstNonEmpty(o.optString("auth_key", ""), detail != null ? detail.optString("auth_key", "") : "",
                o.optString("authKey", ""));
        String name = firstNonEmpty(o.optString("name", ""), detail != null ? detail.optString("name", "") : "",
                o.optString("model", ""));
        key = cleanKey(key);
        mac = cleanMac(mac);
        if (mac.length() >= 12 && key.length() == 32) {
            out.add(new Band(mac, key, name));
        }
    }

    static String cleanKey(String key) {
        if (key == null) {
            return "";
        }
        String k = key.trim().replace(" ", "").replace(":", "").replace("-", "");
        if (k.startsWith("0x") || k.startsWith("0X")) {
            k = k.substring(2);
        }
        return k.toLowerCase(java.util.Locale.US);
    }

    static String cleanMac(String mac) {
        if (mac == null) {
            return "";
        }
        String m = mac.trim().toUpperCase(java.util.Locale.US);
        if (m.indexOf(':') < 0 && m.length() == 12) {          // AABBCC.. → AA:BB:CC:..
            StringBuilder b = new StringBuilder(17);
            for (int i = 0; i < 12; i += 2) {
                if (i > 0) {
                    b.append(':');
                }
                b.append(m, i, i + 2);
            }
            m = b.toString();
        }
        return m;
    }

    // ---------------------------------------------------------------- HTTP
    private static final class Resp {
        final int status;
        final String body;
        final Map<String, java.util.List<String>> headers;

        Resp(int status, String body, Map<String, java.util.List<String>> headers) {
            this.status = status;
            this.body = body;
            this.headers = headers;
        }
    }

    private static Resp http(String method, String url, byte[] body, String ua, String cookie, boolean follow)
            throws CloudError {
        HttpURLConnection c = null;
        try {
            c = (HttpURLConnection) new URL(url).openConnection();
            c.setRequestMethod(method);
            c.setInstanceFollowRedirects(follow);
            c.setConnectTimeout(20000);
            c.setReadTimeout(20000);
            c.setRequestProperty("User-Agent", ua);
            c.setRequestProperty("Accept", "*/*");
            if (cookie != null) {
                c.setRequestProperty("Cookie", cookie);
            }
            if (body != null) {
                c.setDoOutput(true);
                c.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                OutputStream os = c.getOutputStream();
                os.write(body);
                os.close();
            }
            int status = c.getResponseCode();
            InputStream is = status >= 400 ? c.getErrorStream() : c.getInputStream();
            return new Resp(status, readAll(is), c.getHeaderFields());
        } catch (Throwable t) {
            throw new CloudError("Няма връзка с Xiaomi. Провери интернета и опитай пак.");
        } finally {
            if (c != null) {
                c.disconnect();
            }
        }
    }

    /** GET url, follow redirects manually, collecting every Set-Cookie into jar. */
    private static void followForCookies(String url, Map<String, String> jar, int max) throws CloudError {
        String cookieHeader = "";
        for (int hop = 0; hop < max; hop++) {
            Resp r = http("GET", url, null, UA_WEB, cookieHeader.length() > 0 ? cookieHeader : null, false);
            collectCookies(r, jar);
            if (jar.containsKey("serviceToken")) {
                return;
            }
            String next = header(r, "Location");
            if (next == null || next.length() == 0) {
                return;
            }
            if (next.startsWith("/")) {
                int slash = url.indexOf('/', url.indexOf("://") + 3);
                next = (slash > 0 ? url.substring(0, slash) : url) + next;
            }
            url = next;
            cookieHeader = jarToHeader(jar);
        }
    }

    private static void collectCookies(Resp r, Map<String, String> jar) {
        if (r.headers == null) {
            return;
        }
        for (Map.Entry<String, java.util.List<String>> e : r.headers.entrySet()) {
            if (e.getKey() == null || !e.getKey().equalsIgnoreCase("Set-Cookie")) {
                continue;
            }
            for (int i = 0; i < e.getValue().size(); i++) {
                String c = e.getValue().get(i);
                int eq = c.indexOf('=');
                int sc = c.indexOf(';');
                if (eq > 0) {
                    String name = c.substring(0, eq).trim();
                    String val = c.substring(eq + 1, sc < 0 ? c.length() : sc).trim();
                    if (val.length() > 0 && !val.equals("EXPIRED")) {
                        jar.put(name, val);
                    }
                }
            }
        }
    }

    private static String jarToHeader(Map<String, String> jar) {
        StringBuilder b = new StringBuilder();
        for (Map.Entry<String, String> e : jar.entrySet()) {
            if (b.length() > 0) {
                b.append("; ");
            }
            b.append(e.getKey()).append('=').append(e.getValue());
        }
        return b.toString();
    }

    private static String header(Resp r, String name) {
        if (r.headers == null) {
            return null;
        }
        for (Map.Entry<String, java.util.List<String>> e : r.headers.entrySet()) {
            if (e.getKey() != null && e.getKey().equalsIgnoreCase(name) && !e.getValue().isEmpty()) {
                return e.getValue().get(0);
            }
        }
        return null;
    }

    // ---------------------------------------------------------------- small helpers
    private static JSONObject parseXiaomiJson(String text) throws CloudError {
        try {
            String t = text == null ? "" : text.trim();
            String prefix = "&&&START&&&";
            if (t.startsWith(prefix)) {
                t = t.substring(prefix.length());
            }
            return new JSONObject(t);
        } catch (Throwable e) {
            throw new CloudError("Xiaomi входът върна нечетим отговор.");
        }
    }

    private static String md5Lower(String s) {
        byte[] h = XiaomiCloudCrypto.digest("MD5", XiaomiCloudCrypto.utf8(s));
        StringBuilder b = new StringBuilder(32);
        for (int i = 0; i < h.length; i++) {
            b.append(Character.forDigit((h[i] >> 4) & 15, 16)).append(Character.forDigit(h[i] & 15, 16));
        }
        return b.toString();
    }

    private static String firstNonEmpty(String... vals) {
        for (int i = 0; i < vals.length; i++) {
            if (vals[i] != null && vals[i].trim().length() > 0) {
                return vals[i].trim();
            }
        }
        return "";
    }

    private static String query(Map<String, String> m) {
        StringBuilder b = new StringBuilder();
        for (Map.Entry<String, String> e : m.entrySet()) {
            if (b.length() > 0) {
                b.append('&');
            }
            b.append(enc(e.getKey())).append('=').append(enc(e.getValue()));
        }
        return b.toString();
    }

    private static byte[] form(Map<String, String> m) {
        return XiaomiCloudCrypto.utf8(query(m));
    }

    private static String enc(String s) {
        try {
            return URLEncoder.encode(s, "UTF-8");
        } catch (Exception e) {
            return s;
        }
    }

    private static String readAll(InputStream is) {
        if (is == null) {
            return "";
        }
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int n;
            while ((n = is.read(buf)) > 0) {
                out.write(buf, 0, n);
            }
            is.close();
            return new String(out.toByteArray(), "UTF-8");
        } catch (Throwable t) {
            return "";
        }
    }
}
