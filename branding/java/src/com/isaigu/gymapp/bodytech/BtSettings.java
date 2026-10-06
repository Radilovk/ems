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
    /** The training row's sliders, left to right (reorder-muscles.py): calf, front thigh, back thigh, glutes, abs,
     *  lower back, back, trapezius, chest, arms — as indexes into {@link #SLIDERS}. */
    public static final int[] ROW_ORDER = {3, 2, 9, 8, 1, 7, 6, 5, 0, 4};

    /**
     * EMSFIT labels (customButtonN → CH): C1 WAIST … C8 ABDOMEN. Index 0 unused. On the bodytech suit EMSFIT's "Гърди"
     * (C5) and "Бедра" (C7) are the two legs (owner, 1.1.376): left thigh → the row's front-thigh slider, right thigh →
     * its back-thigh slider, so each leg has its own slider (the row tags them Л / Д, {@link #rowTag}). Which leg is
     * which is the owner's to confirm — swapping is a rename in Settings → Костюм bodytech.
     */
    static final String[] DEFAULT_NAMES = {"", "Кръст", "Седалище", "Рамене", "Среден гръб", "Ляво бедро", "Ръце",
            "Дясно бедро", "Корем"};
    static final int[] DEFAULT_SLIDER = {NO_SLIDER, 7, 8, 5, 6, 2, 4, 9, 1};
    /** The EMSFIT defaults before 1.1.376: a tablet still holding them untouched is moved to the legs once. */
    static final String OLD_C5 = "Гърди", OLD_C7 = "Бедра";
    static final int OLD_C5_SLIDER = 0, OLD_C7_SLIDER = 2;

    public static final int GROUP_BOTH = 0, GROUP_MAIN = 1, GROUP_SECOND = 2;
    public static final String[] GROUPS = {"И двата", "Основен", "Втори"};

    public static final int WAVE_SUIT = -1;
    public static final String[] WAVES = {"На костюма", "Квадрат", "Синус", "Трапец", "Трапец 2"};

    public static final int GAIN_MIN = 50, GAIN_MAX = 300;

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
    static final int[] chWidthSecond = new int[CHANNELS + 1];
    /** Waveform of the main / 2nd impulse per channel: −1 = the global one, 0..3 = square, sine, trapezoid, trapezoid 2. */
    static final int[] chWaveMain = new int[CHANNELS + 1];
    static final int[] chWaveSecond = new int[CHANNELS + 1];
    /** true = the owner's per-channel values rule as they are (Hz up to 1000, width up to 511 µs); false = they can only lower the program's. */
    static boolean unlimited = true;
    static final int[] chHzMain = new int[CHANNELS + 1];
    static final int[] chHzSecond = new int[CHANNELS + 1];

    public static final int CH_GAIN_MAX = 300;
    public static final int WIDTH_MIN = 50, WIDTH_MAX = 511;
    public static final int HZ_MAIN_MAX = 1000, HZ_SECOND_MAX = 1000;

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
            chWidthSecond[ch] = clampWidth(p.getInt("cwidths" + ch, 0));
            chWaveMain[ch] = clampChWave(p.getInt("cwavem" + ch, -1));
            chWaveSecond[ch] = clampChWave(p.getInt("cwaves" + ch, -1));
            chHzMain[ch] = clampHz(p.getInt("chzm" + ch, 0), HZ_MAIN_MAX);
            chHzSecond[ch] = clampHz(p.getInt("chzs" + ch, 0), HZ_SECOND_MAX);
        }
        if (legs()) save();
        unlimited = p.getBoolean("unlimited", true);
        loadOrder(p.getString("order", ""));
        wave = clampWave(p.getInt("wave", WAVE_SUIT));
        gain = clampGain(p.getInt("gain", 100));
        loaded = true;
    }

    /** C5 / C7 still as the old EMSFIT defaults (name and slider untouched) → the two legs. true = changed. */
    static boolean legs() {
        boolean changed = false;
        if (OLD_C5.equals(names[5]) && slider[5] == OLD_C5_SLIDER) {
            names[5] = DEFAULT_NAMES[5];
            slider[5] = DEFAULT_SLIDER[5];
            changed = true;
        }
        if (OLD_C7.equals(names[7]) && slider[7] == OLD_C7_SLIDER) {
            names[7] = DEFAULT_NAMES[7];
            slider[7] = DEFAULT_SLIDER[7];
            changed = true;
        }
        return changed;
    }

    /**
     * The training row's tag for slider s on a bodytech row: "Л" / "Д" when every channel on that slider is named
     * left / right (Ляв… / Дясн…), else null. Derived from the owner's names, so a swap in the settings follows.
     */
    public static synchronized String rowTag(int s) {
        if (!loaded) return null;
        String tag = null;
        for (int ch = 1; ch <= CHANNELS; ch++) {
            if (slider[ch] != s) continue;
            String n = names[ch] == null ? "" : names[ch].trim().toLowerCase();
            String t = n.startsWith("ляв") ? "Л" : (n.startsWith("дясн") ? "Д" : null);
            if (t == null || (tag != null && !tag.equals(t))) return null;
            tag = t;
        }
        return tag;
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
            e.putInt("cwidths" + ch, chWidthSecond[ch]);
            e.putInt("cwavem" + ch, chWaveMain[ch]);
            e.putInt("cwaves" + ch, chWaveSecond[ch]);
            e.putInt("chzm" + ch, chHzMain[ch]);
            e.putInt("chzs" + ch, chHzSecond[ch]);
        }
        StringBuilder o = new StringBuilder();
        for (int i = 0; i < CHANNELS; i++) o.append(order[i]);
        e.putString("order", o.toString());
        e.putBoolean("unlimited", unlimited);
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
            chWidthSecond[ch] = 0;
            chWaveMain[ch] = -1;
            chWaveSecond[ch] = -1;
            chHzMain[ch] = 0;
            chHzSecond[ch] = 0;
        }
        loadOrder("");
        unlimited = true;
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
    public static synchronized int chWidth(int ch) { return chWidth(ch, false); }

    public static synchronized int chWidth(int ch, boolean second) {
        return valid(ch) ? (second ? chWidthSecond[ch] : chWidth[ch]) : 0;
    }

    /** Waveform of this channel in the main / 2nd impulse: its own (0..3) or −1 = the global setting / the suit's own. */
    public static synchronized int chWave(int ch, boolean second) {
        return valid(ch) ? (second ? chWaveSecond[ch] : chWaveMain[ch]) : -1;
    }

    /** The waveform in force for the channel and impulse: its own, else the global one (−1 = the suit's own). */
    public static synchronized int waveFor(int ch, boolean second) {
        int w = chWave(ch, second);
        return w >= 0 ? w : wave;
    }

    public static synchronized boolean unlimited() { return unlimited; }

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
        setChWidth(ch, false, us);
    }

    public static synchronized void setChWidth(int ch, boolean second, int us) {
        if (!valid(ch)) return;
        if (second) chWidthSecond[ch] = clampWidth(us);
        else chWidth[ch] = clampWidth(us);
        save();
    }

    public static synchronized void setChWave(int ch, boolean second, int w) {
        if (!valid(ch)) return;
        if (second) chWaveSecond[ch] = clampChWave(w);
        else chWaveMain[ch] = clampChWave(w);
        save();
    }

    public static synchronized void setUnlimited(boolean u) {
        unlimited = u;
        save();
    }

    /** Copy every per-channel value (strength, Hz, width, waveform of both impulses) of one channel to all the others. */
    public static synchronized void copyToAll(int from) {
        if (!valid(from)) return;
        for (int ch = 1; ch <= CHANNELS; ch++) {
            if (ch == from) continue;
            chGain[ch] = chGain[from];
            chHzMain[ch] = chHzMain[from];
            chHzSecond[ch] = chHzSecond[from];
            chWidth[ch] = chWidth[from];
            chWidthSecond[ch] = chWidthSecond[from];
            chWaveMain[ch] = chWaveMain[from];
            chWaveSecond[ch] = chWaveSecond[from];
        }
        save();
    }

    /** Back to "as the program says" for one channel (strength 100 %, Hz / width auto, waveform global). */
    public static synchronized void clearChannel(int ch) {
        if (!valid(ch)) return;
        chGain[ch] = 100;
        chHzMain[ch] = chHzSecond[ch] = 0;
        chWidth[ch] = chWidthSecond[ch] = 0;
        chWaveMain[ch] = chWaveSecond[ch] = -1;
        save();
    }

    public static synchronized void setChHz(int ch, boolean second, int hz) {
        if (!valid(ch)) return;
        if (second) chHzSecond[ch] = clampHz(hz, HZ_SECOND_MAX);
        else chHzMain[ch] = clampHz(hz, HZ_MAIN_MAX);
        save();
    }

    /** Channels in the order of the row's sliders, left to right (several on one slider keep their order, none last). */
    public static synchronized void sortLeftToRight() {
        int[] key = new int[CHANNELS + 1];
        for (int ch = 1; ch <= CHANNELS; ch++) {
            int k = 100;
            for (int i = 0; i < ROW_ORDER.length; i++) if (ROW_ORDER[i] == slider[ch]) k = i;
            key[ch] = k * 10 + ch;
        }
        for (int i = 0; i < CHANNELS; i++) order[i] = i + 1;
        for (int i = 1; i < CHANNELS; i++) {
            int c = order[i];
            int j = i - 1;
            while (j >= 0 && key[order[j]] > key[c]) {
                order[j + 1] = order[j];
                j--;
            }
            order[j + 1] = c;
        }
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

    static int clampChWave(int w) { return w >= 0 && w <= 3 ? w : -1; }

    static int clampGain(int g) { return Math.max(GAIN_MIN, Math.min(GAIN_MAX, g)); }
}
