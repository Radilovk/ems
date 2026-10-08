import com.isaigu.gymapp.wearable.vr.VrNoiseGate;
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
        // noise gate (VrNoiseGate): clicks / hovers / rumble out, hits in
        check(!VrNoiseGate.passes(0.2f, 10000, false, false), "gate: weak short click dropped");
        check(!VrNoiseGate.passes(0.3f, 2000000, false, false), "gate: weak long rumble dropped");
        check(!VrNoiseGate.passes(0.5f, 20000, false, false), "gate: medium 20 ms tick dropped");
        check(!VrNoiseGate.passes(0.5f, 0, true, false), "gate: medium runtime-shortest pulse dropped");
        check(VrNoiseGate.passes(0.5f, 40000, false, false), "gate: medium 40 ms pulse passes");
        check(VrNoiseGate.passes(1.0f, 20000, false, false), "gate: strong 20 ms hit passes");
        check(VrNoiseGate.passes(0.5f, 10000, false, true), "gate: PCM append chunk of a passed pulse continues");
        // sensitivity presets (VrPanel → VrSettings): strong only · normal · all
        check(!VrNoiseGate.passes(0.5f, 40000, false, false, VrNoiseGate.STRONG), "gate strong: medium 40 ms pulse dropped");
        check(!VrNoiseGate.passes(0.7f, 20000, false, false, VrNoiseGate.STRONG), "gate strong: 0.7 short buzz dropped");
        check(VrNoiseGate.passes(0.9f, 20000, false, false, VrNoiseGate.STRONG), "gate strong: full 20 ms hit passes");
        check(VrNoiseGate.passes(0.65f, 60000, false, false, VrNoiseGate.STRONG), "gate strong: 0.65 60 ms hit passes");
        check(VrNoiseGate.passes(0.2f, 10000, false, false, VrNoiseGate.ALL), "gate all: weak short tick passes");
        check(!VrNoiseGate.passes(0.05f, 2000000, false, false, VrNoiseGate.ALL), "gate all: faintest buzz still dropped");
        VrNoiseGate.setPreset(9);
        check(VrNoiseGate.preset() == VrNoiseGate.NORMAL, "gate: unknown preset falls back to normal");
        check(!VrNoiseGate.passes(Float.NaN, 100000, false, false), "gate: NaN dropped");
        System.out.println(fails == 0 ? "PULSES PASS" : "PULSES FAIL " + fails);
        if (fails != 0) System.exit(1);
    }
}
