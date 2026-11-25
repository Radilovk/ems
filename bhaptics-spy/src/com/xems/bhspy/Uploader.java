package com.xems.bhspy;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPOutputStream;

/**
 * The recording goes to the licence server's existing vrlog store (src/vrlog.js): gzip, in parts of ≤ 500 KB (8 at
 * most), under a random 10-character code; the code list of the last 24 h is public to the reader at
 * GET /v1/vrlog/recent. Pure Java (HttpURLConnection).
 */
final class Uploader {
    static final String BASE = "https://license.biocode-bg.com/v1/vrlog";
    static final int PART = 500 * 1024;
    static final int PARTS_MAX = 8;
    private static final String ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZ23456789";

    static String newCode() {
        SecureRandom r = new SecureRandom();
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < 10; i++) b.append(ALPHA.charAt(r.nextInt(ALPHA.length())));
        return b.toString();
    }

    /** summary line + the file, gzip. */
    static byte[] pack(String summary, File f) throws IOException {
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        GZIPOutputStream gz = new GZIPOutputStream(bo);
        gz.write((summary + "\n").getBytes("UTF-8"));
        InputStream in = new FileInputStream(f);
        try {
            byte[] buf = new byte[1 << 16];
            int n;
            while ((n = in.read(buf)) > 0) gz.write(buf, 0, n);
        } finally {
            in.close();
        }
        gz.close();
        return bo.toByteArray();
    }

    static List<byte[]> split(byte[] gz) {
        List<byte[]> parts = new ArrayList<byte[]>();
        for (int o = 0; o < gz.length && parts.size() < PARTS_MAX; o += PART) {
            int n = Math.min(PART, gz.length - o);
            byte[] p = new byte[n];
            System.arraycopy(gz, o, p, 0, n);
            parts.add(p);
        }
        return parts;
    }

    /** Returns "OK" or a short reason. */
    static String upload(String base, String code, byte[] gz) {
        List<byte[]> parts = split(gz);
        for (int i = 0; i < parts.size(); i++) {
            String r = post(base + "?id=" + code + "&part=" + i + "&parts=" + parts.size(), parts.get(i));
            if (!r.equals("OK")) return r;
        }
        return "OK";
    }

    private static String post(String url, byte[] body) {
        HttpURLConnection c = null;
        try {
            c = (HttpURLConnection) new URL(url).openConnection();
            c.setConnectTimeout(15000);
            c.setReadTimeout(30000);
            c.setRequestMethod("POST");
            c.setDoOutput(true);
            c.setFixedLengthStreamingMode(body.length);
            c.setRequestProperty("Content-Type", "application/gzip");
            OutputStream o = c.getOutputStream();
            o.write(body);
            o.close();
            int code = c.getResponseCode();
            return code == 200 ? "OK" : "HTTP " + code;
        } catch (IOException e) {
            return "няма връзка (" + e.getClass().getSimpleName() + ")";
        } finally {
            if (c != null) c.disconnect();
        }
    }
}
