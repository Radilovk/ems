import com.isaigu.gymapp.wearable.vr.VrFatigue;
import com.isaigu.gymapp.wearable.vr.VrWire;

/** SafeGuard's VR model: 6 s continuous cap + 4 s rest, τ = 30 s lockout and recovery to F_rec, min pulse. */
public final class VrFatigueHostTest {
    static final long MS = 1000000L;
    static int fails;

    static void check(boolean ok, String what) {
        System.out.println((ok ? "  ok   " : "  FAIL ") + what);
        if (!ok) fails++;
    }

    public static void main(String[] a) {
        long t0 = 1000 * MS;

        // 1. continuous full haptic: cut at 6 s, 4 s rest, then allowed again
        VrFatigue g = new VrFatigue();
        g.pulse(VrWire.HAND_RIGHT, 1f, 0xFFFFFFFFL, false, false, t0);
        long cutAt = -1;
        for (long t = t0; t < t0 + 6500 * MS; t += 10 * MS) {
            float o = g.level(t, true);
            if (o == 0f && cutAt < 0) cutAt = t - t0;
            g.pulse(VrWire.HAND_RIGHT, 1f, 100000, false, false, t);   // game keeps buzzing
        }
        check(cutAt >= 5990 * MS && cutAt <= 6010 * MS, "6 s cap at " + cutAt / MS + " ms");
        check(g.level(t0 + 9000 * MS, true) == 0f, "resting at 9 s");
        g.pulse(VrWire.HAND_RIGHT, 1f, 100000, false, false, t0 + 10100 * MS);
        check(g.level(t0 + 10100 * MS, true) > 0f, "allowed again after 4 s rest");

        // 2. 1.5 s on / 0.5 s off at full: gaps < 1 s → still one continuous stretch → capped at 6 s
        g = new VrFatigue();
        long cut2 = -1;
        for (long t = t0; t < t0 + 8000 * MS; t += 10 * MS) {
            long ph = (t - t0) % (2000 * MS);
            if (ph == 0) g.pulse(VrWire.HAND_LEFT, 1f, 1500000, false, false, t);
            if (g.level(t, true) == 0f && ph < 1500 * MS && cut2 < 0) cut2 = t - t0;
        }
        check(cut2 > 0 && cut2 <= 6010 * MS, "short gaps do not reset the 6 s counter (cut " + cut2 / MS + " ms)");

        // 3. boxing: 300 ms hits every 1.4 s (gap ≥ 1 s) for 10 min → never capped; fatigue softens, never locks
        g = new VrFatigue();
        double maxLoad = 0;
        boolean locked = false;
        float minHit = 1f;
        for (long t = t0; t < t0 + 600000 * MS; t += 10 * MS) {
            long ph = (t - t0) % (1400 * MS);
            if (ph == 0) g.pulse(VrWire.HAND_BOTH, 1f, 300000, false, false, t);
            float o = g.level(t, true);
            if (ph == 100 * MS) minHit = Math.min(minHit, o);
            maxLoad = Math.max(maxLoad, g.load());
            locked |= g.isLocked();
        }
        check(!locked && minHit > 0.5f, String.format("boxing 10 min: load max %.2f, weakest hit %.2f, no lockout", maxLoad, minHit));

        // 4. sustained heavy load (5 s on / 1.2 s off, 10 min): the soft limit holds the load under F_max and
        //    softens the output instead of letting it run into the lockout (that stays a backstop)
        g = new VrFatigue();
        maxLoad = 0;
        locked = false;
        float minOut = 1f;
        for (long t = t0; t < t0 + 600000 * MS; t += 10 * MS) {
            long ph = (t - t0) % (6200 * MS);
            if (ph == 0) g.pulse(VrWire.HAND_BOTH, 1f, 5000000, false, false, t);
            float o = g.level(t, true);
            if (ph == 4900 * MS) minOut = Math.min(minOut, o);
            maxLoad = Math.max(maxLoad, g.load());
            locked |= g.isLocked();
        }
        check(maxLoad < 0.9 && !locked && minOut < 0.8f && minOut > 0.25f,
                String.format("heavy 10 min: load max %.2f < 0.9, end-of-set output %.2f (softened, not cut)", maxLoad, minOut));
        // and the recovery: τ = 30 s → after 60 s of rest the load is e^-2 of where it was
        long end = t0 + 600000 * MS;
        g.stopAll();
        g.level(end, true);                          // output 0 from here on
        double before = g.load();
        g.level(end + 60000 * MS, true);
        check(Math.abs(g.load() - before * Math.exp(-2.0)) < 0.02, String.format("recovery τ 30 s: %.2f → %.2f", before, g.load()));

        // 5. min-duration haptic lasts 120 ms; amplitude 0 stops; stop() cuts
        g = new VrFatigue();
        g.pulse(VrWire.HAND_LEFT, 0.5f, 0, true, false, t0);
        check(g.level(t0 + 100 * MS, true) == 0.5f && g.level(t0 + 130 * MS, true) == 0f, "min pulse = 120 ms");
        g.pulse(VrWire.HAND_LEFT, 0.7f, 2000000, false, false, t0 + 200 * MS);
        g.pulse(VrWire.HAND_LEFT, 0f, 2000000, false, false, t0 + 300 * MS);
        check(g.level(t0 + 310 * MS, true) == 0f, "amplitude 0 stops the hand");
        g.pulse(VrWire.HAND_RIGHT, 0.7f, 2000000, false, false, t0 + 400 * MS);
        check(g.level(t0 + 410 * MS, false) == 0f, "closed gate (row not running) → 0");
        g.stop(VrWire.HAND_RIGHT);
        check(g.level(t0 + 420 * MS, true) == 0f, "stop() cuts");

        System.out.println(fails == 0 ? "FATIGUE PASS" : "FATIGUE FAIL " + fails);
        if (fails != 0) System.exit(1);
    }
}
