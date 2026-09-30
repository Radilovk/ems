package com.isaigu.gymapp.ai;

import android.content.Context;
import android.content.SharedPreferences;

import com.isaigu.gymapp.bean.vo.TrainRecordVO;

import java.util.List;

/**
 * How many sessions a client has had and when the last active one was — for the adaptation and
 * recovery limits of the automatic mode (spec §3.2). Two sources, the larger count wins:
 * the tablet's training history (XemsLocalApi, read by reflection: the local stack is compiled
 * separately) and the automatic mode's own log (prefs "xems_auto_history").
 */
public final class AutoHistory {
    static final String PREFS = "xems_auto_history";
    /** A session shorter than this does not count. */
    static final long MIN_SESSION_S = 300;

    private AutoHistory() {}

    public static final class Info {
        public int sessions;
        /** Milliseconds of the last active (tetanic) session, 0 = none known. */
        public long lastActiveMs;
    }

    public static Info of(Context c, long userId) {
        Info info = new Info();
        int records = 0;
        long lastRec = 0;
        try {
            Class<?> api = Class.forName("com.isaigu.gymapp.widget.XemsLocalApi");
            java.lang.reflect.Method m = api.getDeclaredMethod("allRecords");
            m.setAccessible(true);
            Object all = m.invoke(null);
            if (all instanceof List) {
                for (Object o : (List<?>) all) {
                    if (!(o instanceof TrainRecordVO)) {
                        continue;
                    }
                    TrainRecordVO r = (TrainRecordVO) o;
                    if (r.userId == null || r.userId.longValue() != userId) {
                        continue;
                    }
                    records++;
                    if (r.hz >= 20 && r.createTime != null) {
                        lastRec = Math.max(lastRec, r.createTime.getTime());
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        int own = 0;
        long lastOwn = 0;
        if (c != null) {
            try {
                SharedPreferences p = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
                own = p.getInt("n" + userId, 0);
                lastOwn = p.getLong("a" + userId, 0);
            } catch (Throwable ignored) {
            }
        }
        info.sessions = Math.max(records, own);
        info.lastActiveMs = Math.max(lastRec, lastOwn);
        return info;
    }

    public static double hoursSince(long ms, long now) {
        return ms > 0 && now >= ms ? (now - ms) / 3600000.0 : -1;
    }

    /** An automatic session ended after {@code seconds} of work. */
    public static void record(Context c, long userId, boolean active, double seconds, long now) {
        if (c == null || seconds < MIN_SESSION_S) {
            return;
        }
        try {
            SharedPreferences p = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            Info before = of(c, userId);
            SharedPreferences.Editor e = p.edit();
            // the history may already hold this session (the app saves a record when it stops)
            e.putInt("n" + userId, Math.max(p.getInt("n" + userId, 0) + 1, before.sessions));
            if (active) {
                e.putLong("a" + userId, now);
            }
            e.apply();
        } catch (Throwable ignored) {
        }
    }

    // ------------------------------------------------------------------ how the template sessions went

    static final String TEMPLATE_PREFS = "xems_auto_templates";

    /** The studio has a cardio machine (elliptical / bike / treadmill) — asked once on the AI plan, kept per tablet. */
    public static boolean cardioMachine(Context c) {
        try {
            return c == null || c.getSharedPreferences(TEMPLATE_PREFS, Context.MODE_PRIVATE).getBoolean("machine", true);
        } catch (Throwable t) {
            return true;
        }
    }

    public static void setCardioMachine(Context c, boolean has) {
        try {
            c.getSharedPreferences(TEMPLATE_PREFS, Context.MODE_PRIVATE).edit().putBoolean("machine", has).apply();
        } catch (Throwable ignored) {
        }
        AutoTemplates.noCardioMachine = !has;
    }

    /** The last (up to 3) outcomes of this client in this program, oldest first. */
    public static List<AutoTemplates.Outcome> outcomes(Context c, long userId, String programId) {
        List<AutoTemplates.Outcome> out = new java.util.ArrayList<AutoTemplates.Outcome>();
        if (c == null || programId == null) {
            return out;
        }
        try {
            String v = c.getSharedPreferences(TEMPLATE_PREFS, Context.MODE_PRIVATE)
                    .getString("o" + userId + "|" + programId, "");
            for (String rec : v.split(";")) {
                String[] f = rec.split(":");
                if (f.length == 4) {
                    out.add(new AutoTemplates.Outcome(Integer.parseInt(f[0]), Double.parseDouble(f[1]),
                            Double.parseDouble(f[2]), "1".equals(f[3])));
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** A template session ended: level, share of the time done, strength taken down, pulse on the ceiling. */
    public static void remember(Context c, long userId, String programId, AutoTemplates.Outcome o) {
        if (c == null || programId == null || o == null) {
            return;
        }
        try {
            List<AutoTemplates.Outcome> list = outcomes(c, userId, programId);
            list.add(o);
            while (list.size() > 3) {
                list.remove(0);
            }
            StringBuilder b = new StringBuilder();
            for (AutoTemplates.Outcome x : list) {
                if (b.length() > 0) {
                    b.append(';');
                }
                b.append(x.level).append(':').append(String.format(java.util.Locale.ROOT, "%.2f", x.done)).append(':')
                        .append(String.format(java.util.Locale.ROOT, "%.2f", x.cut)).append(':').append(x.hrOver ? 1 : 0);
            }
            c.getSharedPreferences(TEMPLATE_PREFS, Context.MODE_PRIVATE).edit()
                    .putString("o" + userId + "|" + programId, b.toString()).apply();
        } catch (Throwable ignored) {
        }
    }
}
