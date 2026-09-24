package com.isaigu.gymapp.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * Which XEMS modules this installation may use.
 *
 * <p>A fresh install is the base app (training only). The add-on modules stay visible but locked
 * until unlocked:
 * <ul>
 *   <li><b>offline code</b> — the key {@link #LOCAL_CODE} unlocks everything, no server needed;</li>
 *   <li><b>license server</b> — any other key is sent to the server, which answers with a signed
 *       token ({@link XemsLicenseToken}) listing the modules and the end date. The token is kept
 *       and checked offline; it is refreshed about once a day when the server is reachable, and
 *       keeps working {@link #GRACE_DAYS} days past its end date without the server.</li>
 * </ul>
 * The server address and its public key are empty until the server exists; then only
 * {@link #SERVER_PUBLIC_KEY} and {@link #DEFAULT_SERVER} (or the address in Settings) are set.
 */
public final class XemsLicense {
    public static final String TIMER = "timer";
    public static final String MUSIC = "music";
    public static final String PULSE = "pulse";
    public static final String AI = "ai";
    public static final String BAND = "band";
    public static final String[] ALL = {TIMER, MUSIC, PULSE, AI, BAND};

    /** Feature (not a module): the arms channel goes out 1:1 instead of ×0.05. */
    public static final String FEAT_ARMS_FULL = "arms_full";

    /** Offline key that unlocks every module. */
    static final String LOCAL_CODE = "0123";
    /** Offline key: base app, arms channel at normal strength (step 1:1, no multiplier). */
    static final String LOCAL_CODE_ARMS = "RENI123";
    /** X.509 / base64 public key of the license server (ECDSA P-256). */
    static final String SERVER_PUBLIC_KEY =
            "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEeFeVVxE3nb0wRB2xzPPyjq36QHwvJMPkkvGiLTuWGoab"
            + "sgsySyW5Vim9RlaBzWvZ2wxMB3u5G+U+pkw5lzld1A==";
    /** License server base address. */
    static final String DEFAULT_SERVER = "https://license.biocode-bg.com";
    static final int GRACE_DAYS = 7;
    static final long REFRESH_MS = 24L * 60L * 60L * 1000L;

    static final String PREFS = "xems_license";
    static final String K_KEY = "key";
    static final String K_SOURCE = "source";          // "" base, "code", "server"
    static final String K_TOKEN = "token";
    static final String K_MODS = "mods";
    static final String K_FEATS = "feats";
    static final String K_PLAN = "plan";
    static final String K_LIC = "lic";
    static final String K_EXP = "exp";
    static final String K_CHECKED = "checked";
    static final String K_DEVICE = "device";
    static final String K_SERVER = "server";
    static final String K_EMS = "ems";
    /** "setup" = admin setup of a new tablet (everything open), "locked" = the customer's profile. */
    static final String K_PHASE = "phase";

    private static Context app;
    private static volatile Set<String> unlocked = new HashSet<String>();
    private static volatile Set<String> features = new HashSet<String>();
    private static volatile boolean loaded;
    private static volatile boolean setup;
    private static volatile Set<String> ems = new HashSet<String>();

    private XemsLicense() {}

    // ================================================================ queries

    /** Remember the app context and load the saved license (cheap to call often). */
    public static void init(Context c) {
        if (c == null) {
            return;
        }
        if (app == null) {
            app = c.getApplicationContext() != null ? c.getApplicationContext() : c;
        }
        if (!loaded) {
            reload();
            XemsLicenseClient.refreshIfDue(app);
        }
    }

    public static boolean has(String module) {
        return setup || unlocked.contains(module);
    }

    /** Feature switch (e.g. {@link #FEAT_ARMS_FULL}); off until the licence turns it on. */
    public static boolean hasFeature(String feature) {
        return setup || features.contains(feature);
    }

    /**
     * Admin setup of a new tablet: every module and feature is open and any EMS suit can be
     * paired. Ends once with {@link #finishSetup()}; after that the tablet runs the customer's
     * profile (the licence key) with only the allowed suits.
     */
    public static boolean isSetupMode() {
        return setup;
    }

    /** Ends the admin setup for good (the customer's profile from here on). */
    public static void finishSetup() {
        prefs().edit().putString(K_PHASE, "locked").apply();
        reload();
    }

    /** Suits (BLE MAC, as the server wrote them) the licence allows, while it is valid. */
    public static Set<String> allowedEms() {
        return ems;
    }

    public static boolean has(Context c, String module) {
        init(c);
        return has(module);
    }

    /** Any module that needs the band link (HR for the pulse module and AI, or the band app). */
    public static boolean needsBand() {
        return has(PULSE) || has(AI) || has(BAND);
    }

    public static boolean isFull() {
        for (String m : ALL) {
            if (!has(m)) {
                return false;
            }
        }
        return true;
    }

    public static String source() {
        return prefs().getString(K_SOURCE, "");
    }

    public static String plan() {
        return prefs().getString(K_PLAN, "");
    }

    public static String key() {
        return prefs().getString(K_KEY, "");
    }

    public static long expiresS() {
        return prefs().getLong(K_EXP, 0);
    }

    public static String server() {
        String s = prefs().getString(K_SERVER, "");
        return s.length() > 0 ? s : DEFAULT_SERVER;
    }

    public static void setServer(String url) {
        prefs().edit().putString(K_SERVER, url == null ? "" : url.trim()).apply();
    }

    public static String token() {
        return prefs().getString(K_TOKEN, "");
    }

    public static long lastCheckMs() {
        return prefs().getLong(K_CHECKED, 0);
    }

    /**
     * Stable id of this install for the server (SHA-256 of ANDROID_ID + package, 16 hex);
     * a random one when ANDROID_ID is missing.
     */
    public static String deviceId() {
        SharedPreferences p = prefs();
        String id = p.getString(K_DEVICE, "");
        if (id.length() > 0) {
            return id;
        }
        String seed = null;
        try {
            seed = Settings.Secure.getString(app.getContentResolver(), Settings.Secure.ANDROID_ID);
        } catch (Throwable ignored) {
        }
        if (seed == null || seed.length() == 0 || "9774d56d682e549c".equals(seed)) {
            seed = UUID.randomUUID().toString();
        }
        id = sha256Hex(seed + "|" + app.getPackageName()).substring(0, 16).toUpperCase();
        p.edit().putString(K_DEVICE, id).apply();
        return id;
    }

    /** Device id grouped for reading out loud: 7F3A-91C2-0B55-D1E4. */
    public static String deviceIdShown() {
        String id = deviceId();
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < id.length(); i++) {
            if (i > 0 && i % 4 == 0) {
                b.append('-');
            }
            b.append(id.charAt(i));
        }
        return b.toString();
    }

    // ================================================================ changes

    /**
     * Offline codes (case does not matter): {@link #LOCAL_CODE} = every module;
     * {@link #LOCAL_CODE_ARMS} = base app with the arms channel at normal strength.
     * True when {@code key} is one of them (and it is applied).
     */
    public static boolean applyLocalCode(String key) {
        String k = key == null ? "" : key.trim().toUpperCase(java.util.Locale.US);
        List<String> mods;
        List<String> feats;
        String plan;
        if (LOCAL_CODE.equals(k)) {
            mods = Arrays.asList(ALL);
            feats = new ArrayList<String>();
            plan = "full";
        } else if (LOCAL_CODE_ARMS.equals(k)) {
            mods = new ArrayList<String>();
            feats = Arrays.asList(FEAT_ARMS_FULL);
            plan = "base+arms";
        } else {
            return false;
        }
        prefs().edit()
                .putString(K_KEY, key.trim())
                .putString(K_SOURCE, "code")
                .putString(K_MODS, join(mods))
                .putString(K_FEATS, join(feats))
                .putString(K_PLAN, plan)
                .putString(K_LIC, "local")
                .putLong(K_EXP, 0)
                .remove(K_TOKEN)
                .remove(K_EMS)
                .apply();
        reload();
        return true;
    }

    /** Server answered with a token: verify and keep it. Null when accepted, else the reason. */
    public static String applyToken(String key, String token) {
        String[] why = new String[1];
        XemsLicenseToken t = XemsLicenseToken.verify(token, SERVER_PUBLIC_KEY, deviceId(), why);
        if (t == null) {
            return why[0];
        }
        SharedPreferences.Editor e = prefs().edit()
                .putString(K_SOURCE, "server")
                .putString(K_TOKEN, token)
                .putString(K_MODS, join(t.modules))
                .putString(K_FEATS, join(t.features))
                .putString(K_EMS, join(t.ems))
                .putString(K_PLAN, t.plan)
                .putString(K_LIC, t.license)
                .putLong(K_EXP, t.expiresS)
                .putLong(K_CHECKED, System.currentTimeMillis());
        if (key != null) {
            e.putString(K_KEY, key.trim());
        }
        e.apply();
        reload();
        return null;
    }

    /** Server says the license is gone (revoked / unknown): back to the base app. */
    public static void revoke() {
        reset();
    }

    /** Back to the base app (empty key + Activate). */
    public static void reset() {
        prefs().edit()
                .remove(K_KEY).remove(K_SOURCE).remove(K_TOKEN).remove(K_MODS).remove(K_FEATS)
                .remove(K_EMS).remove(K_PLAN).remove(K_LIC).remove(K_EXP).remove(K_CHECKED)
                .apply();
        reload();
    }

    static void markChecked() {
        prefs().edit().putLong(K_CHECKED, System.currentTimeMillis()).apply();
    }

    // ================================================================ state

    /** Recompute the unlocked set from what is saved. */
    static void reload() {
        if (app == null) {
            return;
        }
        SharedPreferences p = prefs();
        long now = System.currentTimeMillis() / 1000L;
        unlocked = decide(p.getString(K_SOURCE, ""), p.getString(K_MODS, ""), p.getLong(K_EXP, 0), now);
        features = decideList(p.getString(K_SOURCE, ""), p.getString(K_FEATS, ""), p.getLong(K_EXP, 0), now);
        ems = decideList(p.getString(K_SOURCE, ""), p.getString(K_EMS, ""), p.getLong(K_EXP, 0), now);
        String phase = p.getString(K_PHASE, "");
        if (phase.length() == 0) {
            // First run of this version: a tablet that already holds a licence is in use at a
            // customer, so it stays locked; a fresh install starts in the admin setup.
            phase = p.getString(K_SOURCE, "").length() > 0 ? "locked" : "setup";
            p.edit().putString(K_PHASE, phase).apply();
        }
        setup = "setup".equals(phase);
        loaded = true;
    }

    /** The rule (pure, testable): the saved list, while the licence is valid (end date + grace). */
    static Set<String> decide(String source, String modsCsv, long expS, long nowS) {
        return decideList(source, modsCsv, expS, nowS);
    }

    static Set<String> decideList(String source, String csv, long expS, long nowS) {
        Set<String> out = new HashSet<String>();
        boolean valid = "code".equals(source)
                || ("server".equals(source) && (expS == 0 || nowS <= expS + GRACE_DAYS * 86400L));
        if (valid && csv != null) {
            for (String m : csv.split(",")) {
                if (m.trim().length() > 0) {
                    out.add(m.trim());
                }
            }
        }
        return out;
    }

    /** Days left of the grace period after the end date (−1 when not in grace). */
    public static int graceDaysLeft() {
        long exp = expiresS();
        long now = System.currentTimeMillis() / 1000L;
        if (!"server".equals(source()) || exp == 0 || now <= exp) {
            return -1;
        }
        return (int) Math.max(0, (exp + GRACE_DAYS * 86400L - now) / 86400L);
    }

    static SharedPreferences prefs() {
        return app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    static Context context() {
        return app;
    }

    static String join(List<String> l) {
        StringBuilder b = new StringBuilder();
        for (String s : l) {
            if (b.length() > 0) {
                b.append(',');
            }
            b.append(s);
        }
        return b.toString();
    }

    static List<String> unlockedList() {
        List<String> l = new ArrayList<String>();
        for (String m : ALL) {
            if (has(m)) {
                l.add(m);
            }
        }
        return l;
    }

    static String sha256Hex(String s) {
        try {
            byte[] d = MessageDigest.getInstance("SHA-256").digest(s.getBytes("UTF-8"));
            StringBuilder b = new StringBuilder();
            for (byte x : d) {
                b.append(String.format("%02x", x & 0xFF));
            }
            return b.toString();
        } catch (Exception e) {
            return UUID.randomUUID().toString().replace("-", "");
        }
    }
}
