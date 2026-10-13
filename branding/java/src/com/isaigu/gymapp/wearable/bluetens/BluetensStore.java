package com.isaigu.gymapp.wearable.bluetens;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.ArrayList;
import java.util.List;

/** The trainer's own Bluetens programs on this tablet (prefs "xems_bluetens", key "progs": one line each). */
public final class BluetensStore {
    static final String PREFS = "xems_bluetens";

    private BluetensStore() {}

    static SharedPreferences prefs(Context c) {
        return c.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public static List<BluetensProgram> list(Context c) {
        List<BluetensProgram> out = new ArrayList<BluetensProgram>();
        String all = prefs(c).getString("progs", "");
        for (String line : all.split("\n")) {
            BluetensProgram p = BluetensProgram.decode(line);
            if (p != null) {
                out.add(p);
            }
        }
        return out;
    }

    public static BluetensProgram find(Context c, String id) {
        for (BluetensProgram p : list(c)) {
            if (p.id.equals(id)) {
                return p;
            }
        }
        return null;
    }

    /** Adds or replaces (by id). */
    public static void save(Context c, BluetensProgram prog) {
        List<BluetensProgram> all = list(c);
        boolean put = false;
        for (int i = 0; i < all.size(); i++) {
            if (all.get(i).id.equals(prog.id)) {
                all.set(i, prog);
                put = true;
            }
        }
        if (!put) {
            all.add(prog);
        }
        write(c, all);
    }

    public static void delete(Context c, String id) {
        List<BluetensProgram> all = list(c);
        for (int i = all.size() - 1; i >= 0; i--) {
            if (all.get(i).id.equals(id)) {
                all.remove(i);
            }
        }
        write(c, all);
    }

    static void write(Context c, List<BluetensProgram> all) {
        StringBuilder b = new StringBuilder();
        for (BluetensProgram p : all) {
            b.append(b.length() > 0 ? "\n" : "").append(p.encode());
        }
        prefs(c).edit().putString("progs", b.toString()).apply();
    }

    public static String newId() {
        return Long.toString(System.currentTimeMillis(), 36);
    }
}
