package com.isaigu.gymapp.wearable.vr;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.widget.XemsGuard;

/**
 * The trainer's VR settings (owner, 1.1.402): one set for the tablet, the same for every client (prefs "xems_vr").
 * Sensitivity → {@link VrNoiseGate} preset, weakest hit (floor %) and smoothness → {@link VrDrive}, resting
 * channels → {@link VrZones}, pause → VrDrive lets go of the strength. Edited in VrPanel; every change applies at
 * once, also mid-row. The pause is for the moment only: not saved, so a forgotten one does not stop VR tomorrow.
 */
public final class VrSettings {
    public static final int SENS_STRONG = VrNoiseGate.STRONG;
    public static final int SENS_NORMAL = VrNoiseGate.NORMAL;
    public static final int SENS_ALL = VrNoiseGate.ALL;

    /** Smoothness presets (MusicSync scale 0–100: rise time = value × 6 ms): sharp, normal, soft. */
    public static final int[] SMOOTHNESS = {0, 20, 50};
    public static final int SMOOTH_NORMAL = 1;

    /** Weakest passed hit as a share of the trainer's strength (MasterStrengthControl floor %), = MusicSync. */
    public static final int DEFAULT_FLOOR = 20;
    public static final int FLOOR_MAX = 90;

    /** Channels resting while VR drives (partsDisabled index = buweiN − 1): traps, back, lower back, calf. */
    public static final int DEFAULT_ZONES = (1 << 5) | (1 << 6) | (1 << 7) | (1 << 3);
    public static final int CHANNELS = 10;

    private static final String PREFS = "xems_vr";
    private static final String K_SENS = "sensitivity";
    private static final String K_FLOOR = "floor";
    private static final String K_SMOOTH = "smooth";
    private static final String K_ZONES = "zones";

    private static volatile int sensitivity = SENS_NORMAL;
    private static volatile int floor = DEFAULT_FLOOR;
    private static volatile int smooth = SMOOTH_NORMAL;
    private static volatile int zones = DEFAULT_ZONES;
    private static volatile boolean paused;
    private static boolean loaded;

    private VrSettings() {}

    public static synchronized void load(Context c) {
        if (loaded || c == null) {
            return;
        }
        try {
            SharedPreferences p = prefs(c);
            sensitivity = clamp(p.getInt(K_SENS, SENS_NORMAL), 0, 2);
            floor = clamp(p.getInt(K_FLOOR, DEFAULT_FLOOR), 0, FLOOR_MAX);
            smooth = clamp(p.getInt(K_SMOOTH, SMOOTH_NORMAL), 0, SMOOTHNESS.length - 1);
            zones = p.getInt(K_ZONES, DEFAULT_ZONES) & ((1 << CHANNELS) - 1);
            VrNoiseGate.setPreset(sensitivity);
            loaded = true;
        } catch (Throwable t) {
            XemsGuard.report("VrSettings.load", t);
        }
    }

    public static int sensitivity() {
        return sensitivity;
    }

    public static int floorPercent() {
        return floor;
    }

    public static int smoothIndex() {
        return smooth;
    }

    public static int smoothness() {
        return SMOOTHNESS[smooth];
    }

    public static boolean rests(int channel) {
        return (zones & (1 << channel)) != 0;
    }

    public static boolean isPaused() {
        return paused;
    }

    public static boolean isDefault() {
        return sensitivity == SENS_NORMAL && floor == DEFAULT_FLOOR && smooth == SMOOTH_NORMAL && zones == DEFAULT_ZONES;
    }

    public static void setSensitivity(Context c, int v) {
        sensitivity = clamp(v, 0, 2);
        VrNoiseGate.setPreset(sensitivity);
        save(c);
    }

    public static void setFloorPercent(Context c, int v) {
        floor = clamp(v, 0, FLOOR_MAX);
        save(c);
    }

    public static void setSmoothIndex(Context c, int v) {
        smooth = clamp(v, 0, SMOOTHNESS.length - 1);
        save(c);
    }

    public static void setRests(Context c, int channel, boolean rest) {
        zones = rest ? zones | (1 << channel) : zones & ~(1 << channel);
        save(c);
    }

    public static void setPaused(Context c, boolean v) {
        paused = v;
        VrDrive.onSettingsChanged();
    }

    /** Back to the defaults (pause is not a setting of the feel and stays as it is). */
    public static void reset(Context c) {
        sensitivity = SENS_NORMAL;
        floor = DEFAULT_FLOOR;
        smooth = SMOOTH_NORMAL;
        zones = DEFAULT_ZONES;
        VrNoiseGate.setPreset(sensitivity);
        save(c);
    }

    private static void save(Context c) {
        try {
            if (c != null) {
                prefs(c).edit().putInt(K_SENS, sensitivity).putInt(K_FLOOR, floor).putInt(K_SMOOTH, smooth)
                        .putInt(K_ZONES, zones).apply();
            }
        } catch (Throwable t) {
            XemsGuard.report("VrSettings.save", t);
        }
        VrDrive.onSettingsChanged();
    }

    private static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    private static int clamp(int v, int lo, int hi) {
        return Math.max(lo, Math.min(hi, v));
    }
}
