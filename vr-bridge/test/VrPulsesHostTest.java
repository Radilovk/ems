import com.isaigu.gymapp.wearable.vr.VrPulses;
import com.isaigu.gymapp.wearable.vr.VrWire;

/** The haptic envelope the drive sends (manual mode: no limits of its own). */
public final class VrPulsesHostTest {
    static final long MS = 1000000L;
    static int fails;

    static void check(boolean ok, String what) {
        System.out.println((ok ? "  ok   " : "  FAIL ") + what);
        if (!ok) fails++;
    }

    public static void main(String[] a) {
        long t0 = 1000 * MS;
        VrPulses p = new VrPulses();
        p.pulse(VrWire.HAND_LEFT, 0.5f, 0, true, false, t0);
        check(p.level(t0 + 100 * MS) == 0.5f && p.level(t0 + 130 * MS) == 0f, "min-duration pulse = 120 ms");
        p.pulse(VrWire.HAND_RIGHT, 0.8f, 40000, false, false, t0);
        check(p.level(t0 + 110 * MS) == 0.8f, "40 ms pulse stretched to 120 ms");
        p.pulse(VrWire.HAND_LEFT, 0.3f, 300000, false, false, t0 + 200 * MS);
        p.pulse(VrWire.HAND_RIGHT, 0.9f, 300000, false, false, t0 + 200 * MS);
        check(p.level(t0 + 300 * MS) == 0.9f, "two hands → the stronger one");
        p.pulse(VrWire.HAND_RIGHT, 0.6f, 200000, false, true, t0 + 400 * MS);
        check(p.level(t0 + 650 * MS) == 0.6f && p.level(t0 + 710 * MS) == 0f, "PCM append extends the running pulse");
        p.pulse(VrWire.HAND_BOTH, 1f, 0xFFFFFFFFL, false, false, t0);
        check(p.level(t0 + 600000 * MS) == 1f, "infinite haptic holds until stopped (row cycle + SafeLimits limit it)");
        p.stop(VrWire.HAND_LEFT);
        check(p.level(t0 + 1000 * MS) == 1f, "stop left keeps right");
        p.pulse(VrWire.HAND_RIGHT, 0f, 100000, false, false, t0 + 1000 * MS);
        check(p.level(t0 + 1001 * MS) == 0f, "amplitude 0 stops the hand");
        p.pulse(VrWire.HAND_UNKNOWN, 0.4f, 200000, false, false, t0 + 2000 * MS);
        p.stop(VrWire.HAND_BOTH);
        check(p.level(t0 + 2100 * MS) == 0f, "stop both");
        System.out.println(fails == 0 ? "PULSES PASS" : "PULSES FAIL " + fails);
        if (fails != 0) System.exit(1);
    }
}
