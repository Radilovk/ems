package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/**
 * The second impulse's own strength per channel, kept per client.
 * <p>The unit gets one percent per channel for both impulses. When the trainer marks a channel yellow
 * (train.utils.PartPick) its second impulse is changed alone: the channel percents of the second impulse then
 * differ from the main ones and live here, one array per mode of the client's program. Without an entry the second
 * impulse uses the main percents, as always.
 * <p>Storage: prefs "xems_second_parts", key {@code u<userId>|<program>|<mode>} = comma separated percents. It is
 * loaded when a client comes into a slot (tick, every second, also when the stored value changed — e.g. pulled
 * from the server) and written at every change. The client's dossier on the server carries them (widget/XemsDossier,
 * field "sp"), so another tablet gets them too. The training sends the
 * array with the second impulse's packet (PartStrength.secondPdu, hook CommandSender.sendActivePause).
 */
public final class SecondParts {
    private static final String PREFS = "xems_second_parts";
    private static Context app;
    /** Mode bean → the second impulse's channel percents (absent = the main ones). */
    private static final Map<ProgramDataBean, int[]> OWN = new WeakHashMap<ProgramDataBean, int[]>();
    /** Mode bean → storage key of the client it was loaded for + "=" + the stored value ("-" = nobody). */
    private static final Map<ProgramDataBean, String> KEYS = new WeakHashMap<ProgramDataBean, String>();

    private SecondParts() {}

    /** The mode's second-impulse percents, null when it uses the main ones. */
    public static int[] get(ProgramDataBean b) {
        synchronized (OWN) {
            int[] o = b != null ? OWN.get(b) : null;
            return o != null ? o.clone() : null;
        }
    }

    /** What the second impulse goes out with: its own percents, else the main ones. */
    public static int[] effective(ProgramDataBean b, int[] main) {
        int[] o = get(b);
        return o != null && o.length == main.length ? o : main.clone();
    }

    /** New second-impulse percents; the same as the main ones = no entry. Written for the client at once. */
    public static void set(ProgramDataBean b, int[] main, int[] v) {
        if (b == null) {
            return;
        }
        synchronized (OWN) {
            if (v == null || Arrays.equals(v, main)) {
                OWN.remove(b);
            } else {
                OWN.put(b, v.clone());
            }
        }
        persist(b);
    }

    private static void persist(ProgramDataBean b) {
        try {
            String key;
            int[] v;
            synchronized (OWN) {
                key = KEYS.get(b);
                v = OWN.get(b);
            }
            int eq = key != null ? key.lastIndexOf('=') : -1;
            key = eq > 0 ? key.substring(0, eq) : key;
            SharedPreferences sp = prefs();
            if (sp == null || key == null || !key.startsWith("u")) {
                return;
            }
            String now = "";
            if (v != null) {
                StringBuilder s = new StringBuilder();
                for (int i = 0; i < v.length; i++) {
                    s.append(i > 0 ? "," : "").append(v[i]);
                }
                now = s.toString();
            }
            if (now.equals(sp.getString(key, ""))) {
                return;
            }
            if (v == null) {
                sp.edit().remove(key).apply();
            } else {
                sp.edit().putString(key, now).apply();
            }
            synchronized (OWN) {
                KEYS.put(b, key + "=" + now);
            }
            com.isaigu.gymapp.widget.XemsDossier.changed();      // the server copy follows (debounced)
        } catch (Throwable t) {
            WearableBleDiagLog.log("manual", "second parts save: " + t);
        }
    }

    private static String raw(String key) {
        SharedPreferences sp = prefs();
        return sp != null ? sp.getString(key, "") : "";
    }

    private static int[] parse(String s) {
        try {
            if (s == null || s.length() == 0) {
                return null;
            }
            String[] t = s.split(",");
            int[] v = new int[t.length];
            for (int i = 0; i < t.length; i++) {
                v[i] = Math.max(0, Math.min(100, Integer.parseInt(t[i].trim())));
            }
            return v;
        } catch (Throwable t) {
            return null;
        }
    }

    private static SharedPreferences prefs() {
        return app != null ? app.getSharedPreferences(PREFS, Context.MODE_PRIVATE) : null;
    }

    /**
     * SessionRecorder, every second (ManualDefaults.tick): a client who came into a slot (or a program that
     * changed) gets their own second-impulse percents; a slot without a client gets none.
     */
    static void tick(Context c, List<TrainItem> items) {
        if (c != null) {
            app = c.getApplicationContext();
        }
        if (items == null) {
            return;
        }
        for (int i = 0; i < items.size(); i++) {
            try {
                TrainItem it = items.get(i);
                TrainProgram p = it != null && !it.isEmpty() ? it.getTrainProgram() : null;
                if (p == null) {
                    continue;
                }
                boolean client = it.data != null && it.data.trainUser != null;
                for (int k = 0; k < ProgramFit.MODES; k++) {
                    ProgramDataBean b = ProgramFit.bean(p, k);
                    if (b == null) {
                        continue;
                    }
                    String key = client ? ClientPrograms.key(it.data.trainUser.id, p.name) + "|" + k : "-";
                    String stored = client ? raw(key) : "";
                    String tag = client ? key + "=" + stored : "-";
                    String was;
                    synchronized (OWN) {
                        was = KEYS.get(b);
                    }
                    if (tag.equals(was)) {
                        continue;
                    }
                    int[] v = client ? parse(stored) : null;
                    synchronized (OWN) {
                        KEYS.put(b, tag);
                        if (v != null && b.strenthBean != null && b.strenthBean.buwei != null
                                && v.length == b.strenthBean.buwei.length
                                && !Arrays.equals(v, b.strenthBean.buwei)) {
                            OWN.put(b, v);
                        } else {
                            OWN.remove(b);
                        }
                    }
                }
            } catch (Throwable t) {
                WearableBleDiagLog.log("manual", "second parts tick: " + t);
            }
        }
    }
}
