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
        eq("default slider C5 = XEMS chest (left thigh)", 0, BtSettings.slider(5));
        eq("default slider C7 = XEMS front thigh (right thigh)", 2, BtSettings.slider(7));
        eq("default name C5", "Ляво бедро", BtSettings.name(5));
        eq("default name C7", "Дясно бедро", BtSettings.name(7));
        BtSettings.loaded = true;
        eq("row tag chest = left", "Л", BtSettings.rowTag(0));
        eq("row tag front thigh = right", "Д", BtSettings.rowTag(2));
        eq("row tag back thigh none", null, BtSettings.rowTag(9));
        eq("no back thigh channel by default", false, BtSettings.hasChannel(9));
        eq("defaults need no migration", false, BtSettings.legs());
        // EMSFIT defaults (Гърди / Бедра on chest / front thigh) → only renamed
        BtSettings.names[5] = "Гърди";
        BtSettings.names[7] = "Бедра";
        eq("EMSFIT names migrate", true, BtSettings.legs());
        eq("C5", "Ляво бедро/0", BtSettings.name(5) + "/" + BtSettings.slider(5));
        eq("C7", "Дясно бедро/2", BtSettings.name(7) + "/" + BtSettings.slider(7));
        eq("second pass no-op", false, BtSettings.legs());
        // 1.1.379–1.1.388 legs on front / back thigh → the new scheme
        BtSettings.names[5] = "Ляв крак";
        BtSettings.slider[5] = 2;
        BtSettings.names[7] = "Десен крак";
        BtSettings.slider[7] = 9;
        eq("old legs migrate", true, BtSettings.legs());
        eq("C5 new", "Ляво бедро/0", BtSettings.name(5) + "/" + BtSettings.slider(5));
        eq("C7 new", "Дясно бедро/2", BtSettings.name(7) + "/" + BtSettings.slider(7));
        // an owner's own slider stays, only the name follows
        BtSettings.names[5] = "Ляв крак";
        BtSettings.slider[5] = 8;
        BtSettings.legs();
        eq("own slider kept", "Ляво бедро/8", BtSettings.name(5) + "/" + BtSettings.slider(5));
        BtSettings.reset();
        BtSettings.setSlider(6, 3);
        eq("calf settable", 3, BtSettings.slider(6));
        BtSettings.names[7] = "Моят крак";
        eq("the leg channel, not the name", "Д", BtSettings.rowTag(2));
        BtSettings.setSlider(7, 0);
        eq("both legs on one XEMS channel → no tags", null, BtSettings.rowTag(0));
        // «Крака»: pick the bodytech channel of each leg
        BtSettings.reset();
        eq("left leg = C5", 5, BtSettings.legChannel(false));
        eq("right leg = C7", 7, BtSettings.legChannel(true));
        BtSettings.setChGain(5, 120);
        BtSettings.setLegChannel(false, 7);
        eq("left ⇄ right swap", "7,5", BtSettings.legChannel(false) + "," + BtSettings.legChannel(true));
        eq("the left leg's name moved", "Ляво бедро", BtSettings.name(7));
        eq("the left leg's strength moved", 120, BtSettings.chGain(7));
        eq("the left leg's place moved", 4, BtSettings.positionOf(7));
        eq("left still on the chest", "Л", BtSettings.rowTag(0));
        BtSettings.setLegChannel(true, 2);
        eq("right leg = C2", 2, BtSettings.legChannel(true));
        eq("glutes went to the old right channel", "Седалище/8", BtSettings.name(5) + "/" + BtSettings.slider(5));
        eq("legs still tagged", "Л,Д", BtSettings.rowTag(0) + "," + BtSettings.rowTag(2));
        BtSettings.loaded = false;
        BtSettings.reset();
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
        BtSettings.setChGain(2, 500);
        eq("channel gain capped", 300, BtSettings.chGain(2));
        BtSettings.setChWidth(2, 10);
        eq("width raised to 50", 50, BtSettings.chWidth(2));
        BtSettings.setChWidth(2, 900);
        eq("width capped 511", 511, BtSettings.chWidth(2));
        BtSettings.setChHz(2, true, 4000);
        eq("2nd Hz capped 1000", 1000, BtSettings.chHz(2, true));
        BtSettings.setChHz(2, false, 3000);
        eq("main Hz capped 1000", 1000, BtSettings.chHz(2, false));
        BtSettings.reset();
        eq("reset: channel gain", 100, BtSettings.chGain(2));
        eq("reset: width auto", 0, BtSettings.chWidth(2));

        BtSettings.reset();
        BtSettings.sortLeftToRight();
        // defaults: C1 lower back(7), C2 glutes(8), C3 traps(5), C4 back(6), C5 left thigh → chest(0), C6 arms(4),
        // C7 right thigh → front thigh(2), C8 abs(1)
        // row order: calf, front thigh, back thigh, glutes, abs, lower back, back, traps, chest, arms
        eq("left to right", "7,2,8,1,4,3,5,6", order());
        BtSettings.setSlider(1, BtSettings.NO_SLIDER);
        BtSettings.sortLeftToRight();
        eq("no slider goes last", 1, BtSettings.channelAt(7));
        BtSettings.reset();

        if (fails > 0) System.exit(1);
    }
}
