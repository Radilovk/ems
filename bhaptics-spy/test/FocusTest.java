package com.isaigu.gymapp.wearable.vr;

/** Host test of VrZoneFocus (package-private, so it lives in the tablet's package). */
public class FocusTest {
    public static void main(String[] a) {
        VrZoneFocus f = new VrZoneFocus(10);
        int fails = 0;
        f.add(1 << 4, 1000);
        if (f.at(500) != 1 << 4) fails++;
        if (f.at(1000) != 0) fails++;                    // ended exactly now
        f.add((1 << 4) | (1 << 1), 2000);
        f.add(1 << 1, 1500);                             // an earlier end never shortens a later one
        if (f.at(1800) != ((1 << 4) | (1 << 1))) fails++;
        if (f.at(2500) != 0) fails++;
        f.add(1 << 6, 5000);
        f.clear();
        if (f.at(0) != 0) fails++;
        System.out.println(fails == 0 ? "FOCUS OK" : fails + " FAILED");
        System.exit(fails == 0 ? 0 : 1);
    }
}
