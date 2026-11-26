package com.isaigu.gymapp.wearable.vr;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.widget.XemsGuard;

/**
 * How a hit taken in VR is felt (owner, 2026-11-26): on the XEMS suit its strength (% of the trainer's), frequency and
 * depth (0 = the row's own); on the Mastogo unit its strength, kind and length. One set for every client; the absolute
 * limits (SafeGuard) still apply to whatever is set here. No ramp up (VR), the fall is VrPanel's "Спадане".
 */
public final class VrHitSettings {
    private static final String PREFS = "xems_vr_hit";
    public static final int FEEL_HIT = 0, FEEL_CLICK = 1, FEEL_STAB = 2;

    private static volatile int pct = 100;
    private static volatile int hz;
    private static volatile int depth;
    private static volatile int mLevel = 24;
    private static volatile int mFeel = FEEL_HIT;
    private static volatile int mMs = 40;
    private static boolean loaded;

    private VrHitSettings() {}

    public static synchronized void load(Context c) {
        if (loaded || c == null) {
            return;
        }
        try {
            SharedPreferences p = c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            pct = clamp(p.getInt("pct", 100), 10, 100);
            hz = clampHz(p.getInt("hz", 0));
            depth = clampDepth(p.getInt("depth", 0));
            mLevel = clamp(p.getInt("mlevel", 24), 1, 25);
            mFeel = clamp(p.getInt("mfeel", FEEL_HIT), 0, 2);
            mMs = clamp(p.getInt("mms", 40), 10, 500);
            loaded = true;
            push();
        } catch (Throwable t) {
            XemsGuard.report("VrHitSettings.load", t);
        }
    }

    public static int pct() { return pct; }
    public static int hz() { return hz; }
    public static int depth() { return depth; }
    public static int mastogoLevel() { return mLevel; }
    public static int mastogoFeel() { return mFeel; }
    public static int mastogoMs() { return mMs; }

    public static void setPct(Context c, int v) { pct = clamp(v, 10, 100); save(c); }
    public static void setHz(Context c, int v) { hz = clampHz(v); save(c); }
    public static void setDepth(Context c, int v) { depth = clampDepth(v); save(c); }
    public static void setMastogoLevel(Context c, int v) { mLevel = clamp(v, 1, 25); save(c); }
    public static void setMastogoFeel(Context c, int v) { mFeel = clamp(v, 0, 2); save(c); }
    public static void setMastogoMs(Context c, int v) { mMs = clamp(v, 10, 500); save(c); }

    /** 0 = the row's own, else 1–120 Hz (the absolute limits cut it further for 60+, in SafeGuard). */
    static int clampHz(int v) {
        return v <= 0 ? 0 : clamp(v, 1, 120);
    }

    /** 0 = the row's own, else 50–400 µs in the suit's steps of 50. */
    static int clampDepth(int v) {
        return v <= 0 ? 0 : clamp((v + 25) / 50 * 50, 50, 400);
    }

    /** 0 = the row's own, then 5, 10 … 120 Hz. */
    public static int nextHz(int cur, int dir) {
        if (dir > 0) {
            return cur <= 0 ? 5 : Math.min(120, cur + 5);
        }
        return cur <= 5 ? 0 : cur - 5;
    }

    private static void push() {
        VrHitParams.hz = hz;
        VrHitParams.width = depth;
    }

    private static void save(Context c) {
        push();
        try {
            if (c != null) {
                c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putInt("pct", pct)
                        .putInt("hz", hz).putInt("depth", depth).putInt("mlevel", mLevel).putInt("mfeel", mFeel)
                        .putInt("mms", mMs).apply();
            }
        } catch (Throwable t) {
            XemsGuard.report("VrHitSettings.save", t);
        }
    }

    private static int clamp(int v, int lo, int hi) {
        return Math.max(lo, Math.min(hi, v));
    }
}
