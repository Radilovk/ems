package com.isaigu.gymapp.bodytech;

/** Offline check of BtSettings (no Context: save() is a no-op, the values stay in memory). */
public class BtSettingsTest {
    static int fails;

    static void eq(String what, Object want, Object got) {
        if (!String.valueOf(want).equals(String.valueOf(got))) {
            fails++;
            System.out.println("FAIL " + what + ": want " + want + " got " + got);
        }
    }

    static String order() {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < BtSettings.CHANNELS; i++) b.append(i > 0 ? "," : "").append(BtSettings.channelAt(i));
        return b.toString();
    }

    public static void main(String[] a) {
        BtSettings.reset();
        eq("default name C1", "Кръст", BtSettings.name(1));
        eq("default name C8", "Корем", BtSettings.name(8));
        eq("default slider C5", 0, BtSettings.slider(5));
        eq("slider name 7", "Кръст", BtSettings.sliderName(BtSettings.slider(1)));
        eq("default group", BtSettings.GROUP_BOTH, BtSettings.group(3));
        eq("default wave", BtSettings.WAVE_SUIT, BtSettings.wave());
        eq("default gain", 100, BtSettings.gain());

        BtSettings.setName(2, "  Глутеус ");
        eq("trimmed name", "Глутеус", BtSettings.name(2));
        BtSettings.setName(2, "   ");
        eq("empty name → C2", "C2", BtSettings.name(2));
        BtSettings.setName(3, "123456789012345678901234567890");
        eq("name capped at 24", 24, BtSettings.name(3).length());

        BtSettings.setSlider(4, 9);
        eq("slider set", 9, BtSettings.slider(4));
        BtSettings.setSlider(4, 10);
        eq("slider out of range → none", BtSettings.NO_SLIDER, BtSettings.slider(4));
        eq("none name", "Няма", BtSettings.sliderName(BtSettings.slider(4)));

        BtSettings.setSlider(6, 2);
        int[] ch = BtSettings.channelsOf(2);
        eq("two channels on one slider", "7,6", ch.length == 2 ? (ch[1] + "," + ch[0]) : ch.length);
        eq("no channel on a free slider", 0, BtSettings.channelsOf(3).length);

        BtSettings.setGroup(5, BtSettings.GROUP_SECOND);
        eq("group set", BtSettings.GROUP_SECOND, BtSettings.group(5));
        BtSettings.setGroup(5, 7);
        eq("group out of range → both", BtSettings.GROUP_BOTH, BtSettings.group(5));

        BtSettings.setWave(2);
        eq("wave set", 2, BtSettings.wave());
        BtSettings.setWave(9);
        eq("wave out of range → suit", BtSettings.WAVE_SUIT, BtSettings.wave());

        BtSettings.setGain(400);
        eq("gain capped", BtSettings.GAIN_MAX, BtSettings.gain());
        BtSettings.setGain(10);
        eq("gain floor", BtSettings.GAIN_MIN, BtSettings.gain());

        eq("channel 0 ignored", "", BtSettings.name(0));
        eq("channel 9 ignored", BtSettings.NO_SLIDER, BtSettings.slider(9));

        BtSettings.reset();
        eq("reset name", "Рамене", BtSettings.name(3));
        eq("reset slider", 6, BtSettings.slider(4));

        System.out.println(fails == 0 ? "BtSettingsTest OK" : "BtSettingsTest FAILED: " + fails);
        BtSettings.reset();
        eq("default order", "1,2,3,4,5,6,7,8", order());
        BtSettings.move(3, -1);
        eq("C3 up", "1,3,2,4,5,6,7,8", order());
        BtSettings.move(1, -1);
        eq("first stays", "1,3,2,4,5,6,7,8", order());
        BtSettings.move(8, 1);
        eq("last stays", "1,3,2,4,5,6,7,8", order());
        eq("position of C2", 2, BtSettings.positionOf(2));
        BtSettings.loadOrder("11345678");
        eq("bad order → default", "1,2,3,4,5,6,7,8", order());
        BtSettings.setChGain(2, 200);
        eq("channel gain capped", 150, BtSettings.chGain(2));
        BtSettings.setChWidth(2, 10);
        eq("width raised to 50", 50, BtSettings.chWidth(2));
        BtSettings.setChWidth(2, 900);
        eq("width capped 511", 511, BtSettings.chWidth(2));
        BtSettings.setChHz(2, true, 40);
        eq("2nd Hz capped 10", 10, BtSettings.chHz(2, true));
        BtSettings.setChHz(2, false, 300);
        eq("main Hz capped 120", 120, BtSettings.chHz(2, false));
        BtSettings.reset();
        eq("reset: channel gain", 100, BtSettings.chGain(2));
        eq("reset: width auto", 0, BtSettings.chWidth(2));

        BtSettings.reset();
        BtSettings.sortLeftToRight();
        // defaults: C1 lower back(7), C2 glutes(8), C3 traps(5), C4 back(6), C5 chest(0), C6 arms(4), C7 front thigh(2), C8 abs(1)
        // row order: calf, front thigh, back thigh, glutes, abs, lower back, back, traps, chest, arms
        eq("left to right", "7,2,8,1,4,3,5,6", order());
        BtSettings.setSlider(1, BtSettings.NO_SLIDER);
        BtSettings.sortLeftToRight();
        eq("no slider goes last", 1, BtSettings.channelAt(7));
        BtSettings.reset();

        if (fails > 0) System.exit(1);
    }
}
