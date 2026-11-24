package sim;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;

/** The Auto / AI session's inside, read for the report: the engine's state and each row's output. */
public final class State {
    private State() {}

    static Object get(Object o, Class<?> c, String f) throws Exception {
        Field x = c.getDeclaredField(f);
        x.setAccessible(true);
        return x.get(o);
    }

    public static String auto() {
        try {
            Class<?> as = Class.forName("com.isaigu.gymapp.ai.AutoSession");
            Object eng = get(null, as, "engine");
            String st = eng != null ? String.valueOf(eng.getClass().getMethod("getState").invoke(eng)) : "-";
            StringBuilder b = new StringBuilder("engine=" + st + " stage=" + get(null, as, "stage"));
            List<?> rows = (List<?>) get(null, as, "rows");
            for (Object r : rows) {
                Class<?> rc = r.getClass();
                b.append(" | row strength=").append(get(r, rc, "writtenStrength"))
                        .append(" zones=").append(Arrays.toString((int[]) get(r, rc, "writtenZones")))
                        .append(" offset=").append(Arrays.toString((int[]) get(r, rc, "zoneOffset")))
                        .append(" cal=").append(get(r, rc, "cal")).append(" user=").append(get(r, rc, "user"));
            }
            return b.toString();
        } catch (Exception e) {
            return "state: " + e;
        }
    }
}
