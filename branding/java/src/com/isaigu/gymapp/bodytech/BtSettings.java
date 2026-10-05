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
    /** Display order: order[pos] = channel (pos 0..7). */
    static final int[] order = new int[CHANNELS];
    /** Per channel: strength % on top of the global one, width µs and Hz of the main / 2nd impulse (0 = the program's). */
    static final int[] chGain = new int[CHANNELS + 1];
    static final int[] chWidth = new int[CHANNELS + 1];
    static final int[] chHzMain = new int[CHANNELS + 1];
    static final int[] chHzSecond = new int[CHANNELS + 1];

    public static final int CH_GAIN_MAX = 150;
    public static final int WIDTH_MIN = 50, WIDTH_MAX = 511;
    public static final int HZ_MAIN_MAX = 120, HZ_SECOND_MAX = 10;

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
        for (int ch = 1; ch <= CHANNELS; ch++) {
            chGain[ch] = clampChGain(p.getInt("cgain" + ch, 100));
            chWidth[ch] = clampWidth(p.getInt("cwidth" + ch, 0));
            chHzMain[ch] = clampHz(p.getInt("chzm" + ch, 0), HZ_MAIN_MAX);
            chHzSecond[ch] = clampHz(p.getInt("chzs" + ch, 0), HZ_SECOND_MAX);
        }
        loadOrder(p.getString("order", ""));
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
        for (int ch = 1; ch <= CHANNELS; ch++) {
            e.putInt("cgain" + ch, chGain[ch]);
            e.putInt("cwidth" + ch, chWidth[ch]);
            e.putInt("chzm" + ch, chHzMain[ch]);
            e.putInt("chzs" + ch, chHzSecond[ch]);
        }
        StringBuilder o = new StringBuilder();
        for (int i = 0; i < CHANNELS; i++) o.append(order[i]);
        e.putString("order", o.toString());
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
            chGain[ch] = 100;
            chWidth[ch] = 0;
            chHzMain[ch] = 0;
            chHzSecond[ch] = 0;
        }
        loadOrder("");
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

    /** Strength % of this channel on top of the global one (100 = as the slider gives). */
    public static synchronized int chGain(int ch) { return valid(ch) ? chGain[ch] : 100; }

    /** Width µs this channel is held to (never above the program's); 0 = the program's. */
    public static synchronized int chWidth(int ch) { return valid(ch) ? chWidth[ch] : 0; }

    /** Hz this channel is held to in the main (second = false) or 2nd impulse (never above the program's); 0 = the program's. */
    public static synchronized int chHz(int ch, boolean second) {
        return valid(ch) ? (second ? chHzSecond[ch] : chHzMain[ch]) : 0;
    }

    /** The channel shown at position pos (0..7) of the sheet. */
    public static synchronized int channelAt(int pos) { return pos >= 0 && pos < CHANNELS ? order[pos] : pos + 1; }

    public static synchronized int positionOf(int ch) {
        for (int i = 0; i < CHANNELS; i++) if (order[i] == ch) return i;
        return ch - 1;
    }

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

    public static synchronized void setChGain(int ch, int v) {
        if (!valid(ch)) return;
        chGain[ch] = clampChGain(v);
        save();
    }

    public static synchronized void setChWidth(int ch, int us) {
        if (!valid(ch)) return;
        chWidth[ch] = clampWidth(us);
        save();
    }

    public static synchronized void setChHz(int ch, boolean second, int hz) {
        if (!valid(ch)) return;
        if (second) chHzSecond[ch] = clampHz(hz, HZ_SECOND_MAX);
        else chHzMain[ch] = clampHz(hz, HZ_MAIN_MAX);
        save();
    }

    /** Move the channel one place up (dir −1) or down (+1) in the sheet. */
    public static synchronized void move(int ch, int dir) {
        int p = positionOf(ch);
        int q = p + dir;
        if (q < 0 || q >= CHANNELS) return;
        int t = order[p];
        order[p] = order[q];
        order[q] = t;
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

    static void loadOrder(String o) {
        boolean[] seen = new boolean[CHANNELS + 1];
        boolean ok = o != null && o.length() == CHANNELS;
        for (int i = 0; ok && i < CHANNELS; i++) {
            int c = o.charAt(i) - '0';
            if (c < 1 || c > CHANNELS || seen[c]) ok = false;
            else seen[c] = true;
        }
        for (int i = 0; i < CHANNELS; i++) order[i] = ok ? o.charAt(i) - '0' : i + 1;
    }

    /** 0 = the program's; else 50..511 µs. */
    static int clampWidth(int w) { return w <= 0 ? 0 : Math.max(WIDTH_MIN, Math.min(WIDTH_MAX, w)); }

    static int clampHz(int h, int max) { return h <= 0 ? 0 : Math.min(max, h); }

    static int clampChGain(int g) { return Math.max(0, Math.min(CH_GAIN_MAX, g)); }

    static boolean valid(int ch) { return ch >= 1 && ch <= CHANNELS; }

    static int clampSlider(int s) { return s >= 0 && s < SLIDERS.length ? s : NO_SLIDER; }

    static int clampGroup(int g) { return g >= GROUP_BOTH && g <= GROUP_SECOND ? g : GROUP_BOTH; }

    static int clampWave(int w) { return w >= 0 && w <= 3 ? w : WAVE_SUIT; }

    static int clampGain(int g) { return Math.max(GAIN_MIN, Math.min(GAIN_MAX, g)); }
}
