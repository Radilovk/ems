package com.isaigu.gymapp.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;

import java.util.ArrayList;

/** Local named timer presets (interval + block program). */
final class TimerPresetStorage {
    private static final String PREFS = "interval_timer";
    private static final String KEY_PRESETS = "timer_presets_v1";

    private TimerPresetStorage() {}

    static ArrayList<TimerPreset> loadAll(Context context) {
        if (context == null) {
            return new ArrayList<>();
        }
        String raw = prefs(context).getString(KEY_PRESETS, "");
        return TimerPreset.splitRecords(raw);
    }

    static void saveAll(Context context, ArrayList<TimerPreset> presets) {
        if (context == null) {
            return;
        }
        prefs(context).edit().putString(KEY_PRESETS, TimerPreset.joinRecords(presets)).apply();
    }

    static TimerPreset findById(Context context, String id) {
        if (id == null || id.length() == 0) {
            return null;
        }
        ArrayList<TimerPreset> list = loadAll(context);
        for (int i = 0; i < list.size(); i++) {
            TimerPreset preset = list.get(i);
            if (preset != null && id.equals(preset.id)) {
                return preset;
            }
        }
        return null;
    }

    static void upsert(Context context, TimerPreset preset) {
        if (context == null || preset == null || preset.id == null || preset.id.length() == 0) {
            return;
        }
        ArrayList<TimerPreset> list = loadAll(context);
        boolean replaced = false;
        for (int i = 0; i < list.size(); i++) {
            if (preset.id.equals(list.get(i).id)) {
                list.set(i, preset.copy());
                replaced = true;
                break;
            }
        }
        if (!replaced) {
            list.add(preset.copy());
        }
        saveAll(context, list);
    }

    static void delete(Context context, String id) {
        if (context == null || id == null || id.length() == 0) {
            return;
        }
        ArrayList<TimerPreset> list = loadAll(context);
        for (int i = list.size() - 1; i >= 0; i--) {
            if (id.equals(list.get(i).id)) {
                list.remove(i);
            }
        }
        saveAll(context, list);
    }

    static String newId() {
        return "tp" + System.currentTimeMillis();
    }

    private static SharedPreferences prefs(Context context) {
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null) {
            return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        }
        return activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
