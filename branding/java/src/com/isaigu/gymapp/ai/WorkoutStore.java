package com.isaigu.gymapp.ai;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * The studio's own workouts on this tablet (files/xems_workouts.json) plus the ready programs ({@link Workout#presets}).
 * Written whole on every save (a few KB), through a temp file so a crash never leaves half a list.
 * docs/xems-workouts.md
 */
public final class WorkoutStore {
    private WorkoutStore() {}

    static final String FILE = "xems_workouts.json";

    private static List<Workout> own;

    private static File file(Context c) {
        return new File(c.getFilesDir(), FILE);
    }

    /** The own workouts, newest change first. */
    public static synchronized List<Workout> own(Context c) {
        if (own == null) {
            own = new ArrayList<Workout>();
            try {
                File f = file(c);
                if (f.exists()) {
                    JSONArray a = new JSONObject(ExerciseLibrary.read(new FileInputStream(f))).getJSONArray("workouts");
                    for (int i = 0; i < a.length(); i++) {
                        Workout w = fromJson(a.getJSONObject(i));
                        if (w != null) {
                            own.add(w);
                        }
                    }
                }
            } catch (Throwable t) {
                com.isaigu.gymapp.wearable.WearableBleDiagLog.log("workouts", "load: " + t);
            }
            sort(own);
        }
        return new ArrayList<Workout>(own);
    }

    private static void sort(List<Workout> l) {
        for (int i = 1; i < l.size(); i++) {
            Workout x = l.get(i);
            int j = i - 1;
            while (j >= 0 && l.get(j).updatedAt < x.updatedAt) {
                l.set(j + 1, l.get(j));
                j--;
            }
            l.set(j + 1, x);
        }
    }

    public static List<Workout> presets() {
        return Workout.presets();
    }

    public static synchronized Workout get(Context c, String id) {
        if (id == null) {
            return null;
        }
        for (Workout w : own(c)) {
            if (id.equals(w.id)) {
                return w;
            }
        }
        for (Workout w : presets()) {
            if (id.equals(w.id)) {
                return w;
            }
        }
        return null;
    }

    public static String newId() {
        return "w" + Long.toString(System.currentTimeMillis(), 36);
    }

    public static synchronized void save(Context c, Workout w) {
        if (w == null || w.preset) {
            return;
        }
        own(c);
        w.updatedAt = System.currentTimeMillis();
        boolean found = false;
        for (int i = 0; i < own.size(); i++) {
            if (own.get(i).id.equals(w.id)) {
                own.set(i, w);
                found = true;
            }
        }
        if (!found) {
            own.add(w);
        }
        sort(own);
        write(c);
    }

    public static synchronized void delete(Context c, String id) {
        own(c);
        for (int i = own.size() - 1; i >= 0; i--) {
            if (own.get(i).id.equals(id)) {
                own.remove(i);
            }
        }
        write(c);
    }

    private static void write(Context c) {
        try {
            JSONArray a = new JSONArray();
            for (Workout w : own) {
                a.put(toJson(w));
            }
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("workouts", a);
            File f = file(c);
            File tmp = new File(f.getPath() + ".tmp");
            FileOutputStream out = new FileOutputStream(tmp);
            out.write(o.toString().getBytes("UTF-8"));
            out.close();
            if (!tmp.renameTo(f)) {
                throw new Exception("rename");
            }
        } catch (Throwable t) {
            com.isaigu.gymapp.wearable.WearableBleDiagLog.log("workouts", "save: " + t);
        }
    }

    static JSONObject toJson(Workout w) throws Exception {
        JSONObject o = new JSONObject();
        o.put("id", w.id);
        o.put("name", w.name);
        o.put("goal", w.goal);
        o.put("t", w.updatedAt);
        JSONArray f = new JSONArray();
        for (String z : w.focus) {
            f.put(z);
        }
        o.put("focus", f);
        JSONArray it = new JSONArray();
        for (Workout.Item i : w.items) {
            JSONObject x = new JSONObject();
            x.put("ex", i.ex);
            x.put("sets", i.sets);
            x.put("reps", i.reps);
            it.put(x);
        }
        o.put("items", it);
        return o;
    }

    static Workout fromJson(JSONObject o) {
        try {
            Workout w = new Workout();
            w.id = o.getString("id");
            w.name = o.optString("name");
            w.goal = Workout.GOAL_FAT.equals(o.optString("goal")) ? Workout.GOAL_FAT : Workout.GOAL_TONE;
            w.updatedAt = o.optLong("t");
            JSONArray f = o.optJSONArray("focus");
            for (int i = 0; f != null && i < f.length(); i++) {
                w.focus.add(f.getString(i));
            }
            JSONArray it = o.getJSONArray("items");
            for (int i = 0; i < it.length(); i++) {
                JSONObject x = it.getJSONObject(i);
                w.items.add(new Workout.Item(x.getString("ex"), x.optInt("sets", 3), x.optInt("reps", 12)));
            }
            return w;
        } catch (Throwable t) {
            return null;
        }
    }
}
