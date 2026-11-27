package com.isaigu.gymapp.ai;

import android.content.Context;
import android.util.Base64;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;
import com.isaigu.gymapp.widget.XemsLicense;
import com.isaigu.gymapp.widget.XemsLicenseClient;
import com.isaigu.gymapp.widget.XemsLicenseToken;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * The cloud ear (owner, 1.1.592: "the wake phrase must work the first time; on Huawei nothing listens"): the second
 * stage of the wake phrase, as the big assistants do it. The tablet's spotter (WakeWord) only suspects "окей тренер";
 * the few seconds it heard go to our server (POST /v1/stt → Azure, Bulgarian), which writes them down. The text decides:
 * "… тренер, увеличи краката" wakes and is the command at once; no "тренер" in it = a false suspicion, nothing happens.
 * No Google or Huawei recognizer is needed — every tablet hears the same way. The server's free month (5 h of audio)
 * used up, or no server: the spotter alone decides, as before.
 */
public final class CloudEar {
    private CloudEar() {}

    static final int RATE = 16000;
    /** At most 7.5 s in one request (the server takes 8). */
    static final int MAX = RATE * 15 / 2;
    /** At most this many suspicions a minute (a loud hall): the rest wait for the spotter alone. */
    static final int PER_MIN = 10;

    private static volatile long offUntil;
    private static final long[] RECENT = new long[PER_MIN];
    private static int recentAt;

    /** A server, a licence and the month's audio not used up. */
    public static boolean usable(Context c) {
        if (System.currentTimeMillis() < offUntil) {
            return false;
        }
        try {
            String t = XemsLicense.token();
            return XemsLicenseClient.serverConfigured() && t != null && t.length() > 0;
        } catch (Throwable t) {
            return false;
        }
    }

    /** One more suspicion may go to the server now (≤ PER_MIN a minute). */
    static synchronized boolean take() {
        long now = System.currentTimeMillis();
        if (now - RECENT[recentAt] < 60000L) {
            return false;
        }
        RECENT[recentAt] = now;
        recentAt = (recentAt + 1) % PER_MIN;
        return true;
    }

    /**
     * The words in n samples of 16 kHz mono audio, "" = nothing said, null = the server could not tell (no network,
     * its month used up, an error) — the caller falls back. Blocking: call it off the main thread.
     */
    static String hear(short[] pcm, int n) {
        long t0 = System.currentTimeMillis();
        HttpURLConnection con = null;
        try {
            String token = XemsLicense.token();
            String base = XemsLicense.server();
            if (token == null || token.length() == 0 || base == null || base.length() == 0) {
                return null;
            }
            while (base.endsWith("/")) {
                base = base.substring(0, base.length() - 1);
            }
            n = Math.min(n, MAX);
            byte[] raw = new byte[n * 2];
            for (int i = 0; i < n; i++) {
                raw[2 * i] = (byte) pcm[i];
                raw[2 * i + 1] = (byte) (pcm[i] >> 8);
            }
            String body = "{\"device_id\":" + XemsLicenseToken.quote(XemsLicense.deviceId()) + ",\"token\":"
                    + XemsLicenseToken.quote(token) + ",\"audio\":\"" + Base64.encodeToString(raw, Base64.NO_WRAP) + "\"}";
            con = (HttpURLConnection) new URL(base + "/v1/stt").openConnection();
            con.setRequestMethod("POST");
            con.setConnectTimeout(3000);
            con.setReadTimeout(6000);
            con.setRequestProperty("User-Agent", "XEMS-Android");
            con.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            con.setDoOutput(true);
            OutputStream o = con.getOutputStream();
            o.write(body.getBytes("UTF-8"));
            o.close();
            int code = con.getResponseCode();
            String resp = read(code < 400 ? con.getInputStream() : con.getErrorStream());
            if (code == 429 && resp.contains("stt_quota")) {
                offUntil = nextMonth();
                WearableBleDiagLog.log("wake", "cloud ear: the month's free audio is used up — the spotter alone");
                return null;
            }
            if (code != 200) {
                if (code == 503 || code == 401 || code == 403) {
                    offUntil = System.currentTimeMillis() + 10 * 60000L;
                }
                WearableBleDiagLog.log("wake", "cloud ear: HTTP " + code + " " + resp.substring(0, Math.min(80, resp.length())));
                return null;
            }
            org.json.JSONObject j = new org.json.JSONObject(resp);
            if (!j.optBoolean("ok")) {
                return null;
            }
            String text = j.optString("text", "").trim();
            WearableBleDiagLog.log("wake", "cloud ear " + (n * 10 / RATE) / 10f + " s → \"" + text + "\" in "
                    + (System.currentTimeMillis() - t0) + " ms");
            return text;
        } catch (Throwable t) {
            offUntil = System.currentTimeMillis() + 2 * 60000L;   // no network: the old way for 2 min, then again
            WearableBleDiagLog.log("wake", "cloud ear: " + t);
            return null;
        } finally {
            if (con != null) {
                try {
                    con.disconnect();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    static String read(InputStream in) throws Exception {
        if (in == null) {
            return "";
        }
        ByteArrayOutputStream b = new ByteArrayOutputStream();
        byte[] buf = new byte[2048];
        int n;
        while ((n = in.read(buf)) > 0) {
            b.write(buf, 0, n);
        }
        in.close();
        return b.toString("UTF-8");
    }

    static long nextMonth() {
        java.util.Calendar c = java.util.Calendar.getInstance(java.util.TimeZone.getTimeZone("UTC"));
        c.set(java.util.Calendar.DAY_OF_MONTH, 1);
        c.set(java.util.Calendar.HOUR_OF_DAY, 0);
        c.set(java.util.Calendar.MINUTE, 0);
        c.add(java.util.Calendar.MONTH, 1);
        return c.getTimeInMillis();
    }
}
