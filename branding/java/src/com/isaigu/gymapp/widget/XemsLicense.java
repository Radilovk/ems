package com.isaigu.gymapp.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;

import java.security.MessageDigest;
import java.util.ArrayList;
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
 *   <li><b>no codes in the app</b> (1.1.330): every key goes to the server; the admin's setup code lives only
 *       there (as a hash). A new tablet waits until the admin approves it ({@link #isPending()}).</li>
 *   <li><b>license server</b> — the key is sent to the server, which answers with a signed
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
    /** Automatic mode (ready programs). Licences with the AI module have it too. */
    public static final String AUTO = "auto";
    public static final String BAND = "band";
    public static final String[] ALL = {TIMER, MUSIC, PULSE, AUTO, AI, BAND};

    /** Feature (not a module): the arms channel goes out 1:1 instead of reduced (÷ armsDivider(), scaled by pulse width). */
    public static final String FEAT_ARMS_FULL = "arms_full";

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
    static final String K_SOURCE = "source";          // "" base, "server" ("code" before 1.1.330: dropped)
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
    /**
     * "setup" = admin setup of a new tablet (everything open), "locked" = the customer's profile. Only the server
     * opens the setup (an approved new tablet, the admin's code, the admin panel); a fresh install is locked.
     */
    static final String K_PHASE = "phase";
    /** The server has this tablet as waiting for the admin's approval. */
    static final String K_PENDING = "pending";
    /** The trainer finished the setup: told to the server with the next licence call, then cleared. */
    static final String K_SETUP_DONE = "setup_done";
    /** Arms channel on this tablet, set in the admin setup: "" (the licence decides), "full" (1:1), "reduced". */
    static final String K_ARMS = "arms";

    private static Context app;
    private static volatile Set<String> unlocked = new HashSet<String>();
    private static volatile Set<String> features = new HashSet<String>();
    private static volatile boolean loaded;
    private static volatile boolean setup;
    private static volatile String arms = "";
    /** Arms divider at 400 µs (the reduced mode); it scales with the pulse width, half of it at 150 µs. */
    private static volatile float armsDiv = 10f;
    static final String K_ARMS_DIV = "arms_div";
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
            XemsLicenseClient.autoIfNone(app);
        }
    }

    public static boolean has(String module) {
        return setup || unlocked.contains(module) || (AUTO.equals(module) && unlocked.contains(AI));
    }

    /** Feature switch (e.g. {@link #FEAT_ARMS_FULL}); off until the licence turns it on. */
    public static boolean hasFeature(String feature) {
        if (FEAT_ARMS_FULL.equals(feature)) {
            if ("full".equals(arms)) {
                return true;
            }
            if ("reduced".equals(arms)) {
                return false;
            }
        }
        return setup || features.contains(feature);
    }

    /** The arms choice of this tablet ("" = by the licence, "full", "reduced"). */
    public static String armsMode() {
        return arms;
    }

    /** Reduced arms: the divider at 400 µs (default 10); 150 µs gets half of it, linear in between. */
    public static float armsDivider() {
        return armsDiv;
    }

    public static void setArmsDivider(float d) {
        float v = d < 1f ? 1f : (d > 100f ? 100f : d);
        prefs().edit().putFloat(K_ARMS_DIV, v).apply();
        armsDiv = v;
    }

    /** Admin setup: the arms at normal strength (1:1) or reduced; kept after the setup is finished. */
    public static void setArmsMode(String mode) {
        String m = "full".equals(mode) || "reduced".equals(mode) ? mode : "";
        prefs().edit().putString(K_ARMS, m).apply();
        arms = m;
    }

    /**
     * Admin setup of a new tablet: every module and feature is open and any EMS suit can be
     * paired. Ends with {@link #finishSetup()}; after that the tablet runs the customer's
     * profile (the licence key) with only the allowed suits. Only the server opens the setup again.
     */
    public static boolean isSetupMode() {
        return setup;
    }

    /** Ends the admin setup (the customer's profile from here on); the server is told with the next call. */
    public static void finishSetup() {
        prefs().edit().putString(K_PHASE, "locked").putBoolean(K_SETUP_DONE, true).apply();
        reload();
        XemsLicenseClient.refreshNow(app);
    }

    /** The phase the server holds for this tablet ("setup" / "locked"); anything else is ignored. */
    static void applyPhase(Object phase) {
        String p = phase == null ? "" : String.valueOf(phase);
        if (!"setup".equals(p) && !"locked".equals(p)) {
            return;
        }
        SharedPreferences.Editor e = prefs().edit().remove(K_PENDING);
        if (!prefs().getBoolean(K_SETUP_DONE, false) || "locked".equals(p)) {
            e.putString(K_PHASE, p);       // a finished setup not yet told to the server stays finished
        }
        if ("locked".equals(p)) {
            e.remove(K_SETUP_DONE);
        }
        e.apply();
        reload();
    }

    /** The server has this tablet waiting for the admin's approval. */
    public static boolean isPending() {
        return prefs().getBoolean(K_PENDING, false);
    }

    static void setPending(boolean on) {
        prefs().edit().putBoolean(K_PENDING, on).apply();
    }

    static boolean setupDoneUntold() {
        return prefs().getBoolean(K_SETUP_DONE, false);
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
        if ("code".equals(p.getString(K_SOURCE, ""))) {
            // an offline code from before 1.1.330: no codes any more — back to the base app, the server decides
            p.edit().remove(K_KEY).remove(K_SOURCE).remove(K_MODS).remove(K_FEATS).remove(K_PLAN).remove(K_LIC)
                    .remove(K_EXP).putString(K_PHASE, "locked").apply();
        }
        long now = System.currentTimeMillis() / 1000L;
        unlocked = decide(p.getString(K_SOURCE, ""), p.getString(K_MODS, ""), p.getLong(K_EXP, 0), now);
        features = decideList(p.getString(K_SOURCE, ""), p.getString(K_FEATS, ""), p.getLong(K_EXP, 0), now);
        ems = decideList(p.getString(K_SOURCE, ""), p.getString(K_EMS, ""), p.getLong(K_EXP, 0), now);
        String phase = p.getString(K_PHASE, "");
        if (phase.length() == 0) {
            // a fresh install is locked: the setup (everything open) comes only from the server
            phase = "locked";
            p.edit().putString(K_PHASE, phase).apply();
        }
        setup = "setup".equals(phase);
        arms = p.getString(K_ARMS, "");
        armsDiv = p.getFloat(K_ARMS_DIV, 10f);
        loaded = true;
    }

    /** The rule (pure, testable): the saved list, while the licence is valid (end date + grace). */
    static Set<String> decide(String source, String modsCsv, long expS, long nowS) {
        return decideList(source, modsCsv, expS, nowS);
    }

    static Set<String> decideList(String source, String csv, long expS, long nowS) {
        Set<String> out = new HashSet<String>();
        boolean valid = "server".equals(source) && (expS == 0 || nowS <= expS + GRACE_DAYS * 86400L);
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
