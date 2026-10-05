package com.isaigu.gymapp.bodytech;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * The owner's bodytech setup, one per tablet (SharedPreferences "xems_bodytech"). Settings only — nothing here
 * talks to a suit.
 * <ul>
 *   <li>every suit channel C1..C8: a free name, the XEMS slider shown for it (buwei 0..9, −1 = none) and the
 *   impulse it belongs to when the double impulse is on (both / main / 2nd);</li>
 *   <li>the waveform (−1 = the suit's own) and a strength scale in %.</li>
 * </ul>
 * Defaults: the EMSFIT 5.1 channel labels and the nearest XEMS slider (bodytech/PROTOCOL.md).
 */
public final class BtSettings {
    private BtSettings() {}

    public static final int CHANNELS = 8;
    static final String PREFS = "xems_bodytech";

    /** XEMS sliders = PartStrenthBean.buwei index 0..9 (buwei1..10). */
    public static final String[] SLIDERS = {"Гърди", "Корем", "Предно бедро", "Прасец", "Ръце", "Трапец",
            "Гръб", "Кръст", "Седалище", "Задно бедро"};
    public static final int NO_SLIDER = -1;

    /** EMSFIT labels (customButtonN → CH): C1 WAIST … C8 ABDOMEN. Index 0 unused. */
    static final String[] DEFAULT_NAMES = {"", "Кръст", "Седалище", "Рамене", "Среден гръб", "Гърди", "Ръце",
            "Бедра", "Корем"};
    static final int[] DEFAULT_SLIDER = {NO_SLIDER, 7, 8, 5, 6, 0, 4, 2, 1};

    public static final int GROUP_BOTH = 0, GROUP_MAIN = 1, GROUP_SECOND = 2;
    public static final String[] GROUPS = {"И двата", "Основен", "Втори"};

    public static final int WAVE_SUIT = -1;
    public static final String[] WAVES = {"На костюма", "Квадрат", "Синус", "Трапец", "Трапец 2"};

    public static final int GAIN_MIN = 50, GAIN_MAX = 150;

    static final String[] names = new String[CHANNELS + 1];
    static final int[] slider = new int[CHANNELS + 1];
    static final int[] group = new int[CHANNELS + 1];
    static int wave = WAVE_SUIT;
    static int gain = 100;

    static Context app;
    static boolean loaded;

    public static synchronized void load(Context c) {
        if (loaded || c == null) return;
        app = c.getApplicationContext();
        SharedPreferences p = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        for (int ch = 1; ch <= CHANNELS; ch++) {
            names[ch] = p.getString("name" + ch, DEFAULT_NAMES[ch]);
            slider[ch] = clampSlider(p.getInt("slider" + ch, DEFAULT_SLIDER[ch]));
            group[ch] = clampGroup(p.getInt("group" + ch, GROUP_BOTH));
        }
        wave = clampWave(p.getInt("wave", WAVE_SUIT));
        gain = clampGain(p.getInt("gain", 100));
        loaded = true;
    }

    static void save() {
        if (app == null) return;
        SharedPreferences.Editor e = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
        for (int ch = 1; ch <= CHANNELS; ch++) {
            e.putString("name" + ch, names[ch]);
            e.putInt("slider" + ch, slider[ch]);
            e.putInt("group" + ch, group[ch]);
        }
        e.putInt("wave", wave);
        e.putInt("gain", gain);
        e.apply();
    }

    /** Back to the EMSFIT labels and default sliders, impulse "both", suit waveform, 100 %. */
    public static synchronized void reset() {
        for (int ch = 1; ch <= CHANNELS; ch++) {
            names[ch] = DEFAULT_NAMES[ch];
            slider[ch] = DEFAULT_SLIDER[ch];
            group[ch] = GROUP_BOTH;
        }
        wave = WAVE_SUIT;
        gain = 100;
        save();
    }

    // ---------------------------------------------------------------- read

    /** The owner's name for a channel; "C<n>" when left empty. */
    public static synchronized String name(int ch) {
        if (!valid(ch)) return "";
        String n = names[ch];
        return n == null || n.trim().length() == 0 ? "C" + ch : n.trim();
    }

    public static synchronized int slider(int ch) { return valid(ch) ? slider[ch] : NO_SLIDER; }

    public static synchronized int group(int ch) { return valid(ch) ? group[ch] : GROUP_BOTH; }

    public static synchronized int wave() { return wave; }

    public static synchronized int gain() { return gain; }

    public static String sliderName(int s) {
        return s >= 0 && s < SLIDERS.length ? SLIDERS[s] : "Няма";
    }

    /** The channels shown on one XEMS slider (several channels may share it). */
    public static synchronized int[] channelsOf(int sliderIndex) {
        int n = 0;
        for (int ch = 1; ch <= CHANNELS; ch++) if (slider[ch] == sliderIndex) n++;
        int[] r = new int[n];
        int k = 0;
        for (int ch = 1; ch <= CHANNELS; ch++) if (slider[ch] == sliderIndex) r[k++] = ch;
        return r;
    }

    // ---------------------------------------------------------------- write (saved at once)

    public static synchronized void setName(int ch, String n) {
        if (!valid(ch)) return;
        names[ch] = n == null ? "" : (n.length() > 24 ? n.substring(0, 24) : n);
        save();
    }

    public static synchronized void setSlider(int ch, int s) {
        if (!valid(ch)) return;
        slider[ch] = clampSlider(s);
        save();
    }

    public static synchronized void setGroup(int ch, int g) {
        if (!valid(ch)) return;
        group[ch] = clampGroup(g);
        save();
    }

    public static synchronized void setWave(int w) {
        wave = clampWave(w);
        save();
    }

    public static synchronized void setGain(int g) {
        gain = clampGain(g);
        save();
    }

    // ---------------------------------------------------------------- limits

    static boolean valid(int ch) { return ch >= 1 && ch <= CHANNELS; }

    static int clampSlider(int s) { return s >= 0 && s < SLIDERS.length ? s : NO_SLIDER; }

    static int clampGroup(int g) { return g >= GROUP_BOTH && g <= GROUP_SECOND ? g : GROUP_BOTH; }

    static int clampWave(int w) { return w >= 0 && w <= 3 ? w : WAVE_SUIT; }

    static int clampGain(int g) { return Math.max(GAIN_MIN, Math.min(GAIN_MAX, g)); }
}
