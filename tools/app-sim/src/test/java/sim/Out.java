package sim;

import android.app.Activity;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/** What actually goes to the suit (the leader row's program bean) and the engine's own state — read for the checks. */
public final class Out {
    private Out() {}

    public int strength, hz, on, off, pw;
    public boolean dbl;
    public int[] zones = new int[10];
    public String engine = "-";
    public String phase = "-";
    public String exercise = "-";
    public int tuneOn, tuneOff, tuneHz;
    public double tuneRest;
    public boolean engineDbl;

    static Object leaderItem() throws Exception {
        Class<?> as = Class.forName("com.isaigu.gymapp.ai.AutoSession");
        Field f = as.getDeclaredField("rows");
        f.setAccessible(true);
        java.util.List<?> rows = (java.util.List<?>) f.get(null);
        if (!rows.isEmpty()) {
            Field it = rows.get(0).getClass().getDeclaredField("item");
            it.setAccessible(true);
            return it.get(rows.get(0));
        }
        Class<?> mr = Class.forName("com.isaigu.gymapp.ai.MapRunner");
        Method l = mr.getDeclaredMethod("leader");
        l.setAccessible(true);
        return l.invoke(null);
    }

    public static Out now() throws Exception {
        Out o = new Out();
        Object item = leaderItem();
        if (item != null) {
            Object prog = item.getClass().getMethod("getTrainProgram").invoke(item);
            Object b = prog.getClass().getMethod("matchProgram").invoke(prog);
            o.strength = (Integer) b.getClass().getField("strenth").get(b);
            o.hz = (Integer) b.getClass().getField("hz").get(b);
            o.on = (Integer) b.getClass().getField("pulseContinue").get(b);
            o.off = (Integer) b.getClass().getField("pulsePause").get(b);
            o.pw = (Integer) b.getClass().getField("pulseWidth").get(b);
            o.dbl = (Boolean) b.getClass().getField("activePause").get(b);
            Object sb = b.getClass().getField("strenthBean").get(b);
            int[] z = (int[]) sb.getClass().getField("buwei").get(sb);
            for (int i = 0; i < Math.min(10, z.length); i++) {
                o.zones[i] = (int) Math.round(z[i] * o.strength / 100.0);   // each channel's level
            }
        }
        Class<?> as = Class.forName("com.isaigu.gymapp.ai.AutoSession");
        Field ef = as.getDeclaredField("engine");
        ef.setAccessible(true);
        Object e = ef.get(null);
        if (e != null) {
            o.engine = String.valueOf(e.getClass().getMethod("getState").invoke(e));
            Object ph = e.getClass().getMethod("phase").invoke(e);
            o.phase = ph != null ? String.valueOf(ph.getClass().getField("id").get(ph)) : "-";
            o.exercise = String.valueOf(e.getClass().getMethod("getExercise").invoke(e));
            o.tuneOn = (Integer) e.getClass().getMethod("getTuneOn").invoke(e);
            o.tuneOff = (Integer) e.getClass().getMethod("getTuneOff").invoke(e);
            o.tuneHz = (Integer) e.getClass().getMethod("getTuneHzPct").invoke(e);
            o.tuneRest = (Double) e.getClass().getMethod("getTuneRest").invoke(e);
            o.engineDbl = (Boolean) e.getClass().getMethod("isDoublePulseOn").invoke(e);
        }
        return o;
    }

    /** Channel levels by name (AutoModel / buwei order: chest 0, abs 1, front thigh 2, calf 3, arms 4, traps 5,
     *  back 6, lower back 7, glutes 8, back thigh 9). */
    public int ch(String n) {
        switch (n) {
            case "chest": return zones[0];
            case "abs": return zones[1];
            case "legs": return Math.max(zones[2], Math.max(zones[3], zones[9]));
            case "arms": return zones[4];
            case "glutes": return zones[8];
            default: return -1;
        }
    }

    @Override
    public String toString() {
        return "S=" + strength + " hz=" + hz + " on/off=" + on + "/" + off + " pw=" + pw + " 2nd=" + dbl + " ch="
                + java.util.Arrays.toString(zones) + " eng=" + engine + " phase=" + phase + " ex=" + exercise
                + " tune(on,off,hz%,rest)=" + tuneOn + "," + tuneOff + "," + tuneHz + "," + String.format("%.2f", tuneRest)
                + " eng2nd=" + engineDbl;
    }
}
