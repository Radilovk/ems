package com.isaigu.gymapp.wearable.vr;

/** Host test of the hit settings' limits and the hit-parameter window. */
public class HitSettingsTest {
    static int fails;

    static void ok(boolean c, String m) {
        if (!c) {
            fails++;
            System.out.println("FAIL " + m);
        }
    }

    public static void main(String[] a) {
        ok(VrHitSettings.clampHz(0) == 0 && VrHitSettings.clampHz(-3) == 0, "hz 0 = the row's own");
        ok(VrHitSettings.clampHz(50) == 50 && VrHitSettings.clampHz(500) == 120, "hz 1..120");
        ok(VrHitSettings.clampDepth(0) == 0 && VrHitSettings.clampDepth(10) == 50, "depth: own / min 50");
        ok(VrHitSettings.clampDepth(120) == 100 && VrHitSettings.clampDepth(130) == 150 && VrHitSettings.clampDepth(999) == 400,
                "depth in steps of 50, max 400");
        ok(VrHitSettings.nextHz(0, 1) == 5 && VrHitSettings.nextHz(5, -1) == 0 && VrHitSettings.nextHz(120, 1) == 120
                && VrHitSettings.nextHz(85, 1) == 90, "hz stepper: 0, 5 … 120");
        VrHitParams.hz = 80;
        VrHitParams.width = 100;
        VrHitParams.untilNs = 0;
        ok(VrHitParams.hzNow() == 0 && VrHitParams.widthNow() == 0, "no hit running: the row's own");
        VrHitParams.untilNs = System.nanoTime() + 5_000_000_000L;
        ok(VrHitParams.hzNow() == 80 && VrHitParams.widthNow() == 100, "while a hit runs: the hit's own");
        System.out.println(fails == 0 ? "HIT SETTINGS OK" : fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
