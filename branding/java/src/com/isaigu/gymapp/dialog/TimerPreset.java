package com.isaigu.gymapp.dialog;

import java.util.ArrayList;

/**
 * Named interval timer configuration stored on device. The block program was removed (1.1.331: the workouts'
 * maps do it); an old block preset still reads ({@link #blockMode}) and is left out of the list.
 */
public final class TimerPreset {
    private static final String FIELD = "\u001f";
    private static final String BLOCK = "\u001e";

    public String id = "";
    public String name = "";
    public int minutes;
    public int seconds;
    public int loops;
    public int sound;
    public String customUri = "";
    /** A preset saved by the old block program (it cannot run any more). */
    public boolean blockMode;

    public TimerPreset copy() {
        TimerPreset copy = new TimerPreset();
        copy.id = id;
        copy.name = name;
        copy.minutes = minutes;
        copy.seconds = seconds;
        copy.loops = loops;
        copy.sound = sound;
        copy.customUri = customUri != null ? customUri : "";
        copy.blockMode = blockMode;
        return copy;
    }

    public String serialize() {
        StringBuilder sb = new StringBuilder();
        sb.append(safe(id)).append(FIELD);
        sb.append(safe(name)).append(FIELD);
        sb.append(minutes).append(FIELD);
        sb.append(seconds).append(FIELD);
        sb.append(loops).append(FIELD);
        sb.append(sound).append(FIELD);
        sb.append(safe(customUri)).append(FIELD);
        sb.append(blockMode ? 1 : 0).append(FIELD);
        sb.append(0).append(FIELD);                    // the old block fields keep their place in the record
        sb.append("");
        return sb.toString();
    }

    public static TimerPreset deserialize(String line) {
        TimerPreset preset = new TimerPreset();
        if (line == null || line.length() == 0) {
            return preset;
        }
        String[] parts = line.split(FIELD, 10);
        try {
            if (parts.length > 0) {
                preset.id = parts[0];
            }
            if (parts.length > 1) {
                preset.name = parts[1];
            }
            if (parts.length > 2) {
                preset.minutes = Integer.parseInt(parts[2].trim());
            }
            if (parts.length > 3) {
                preset.seconds = Integer.parseInt(parts[3].trim());
            }
            if (parts.length > 4) {
                preset.loops = Integer.parseInt(parts[4].trim());
            }
            if (parts.length > 5) {
                preset.sound = Integer.parseInt(parts[5].trim());
            }
            if (parts.length > 6) {
                preset.customUri = parts[6];
            }
            if (parts.length > 7) {
                preset.blockMode = "1".equals(parts[7].trim());
            }
        } catch (NumberFormatException ignored) {
        }
        return preset;
    }

    private static String safe(String value) {
        if (value == null) {
            return "";
        }
        return value.replace(FIELD, " ").replace(BLOCK, " ").trim();
    }

    static String joinRecords(ArrayList<TimerPreset> presets) {
        if (presets == null || presets.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < presets.size(); i++) {
            TimerPreset preset = presets.get(i);
            if (preset == null || preset.id == null || preset.id.length() == 0) {
                continue;
            }
            if (sb.length() > 0) {
                sb.append(BLOCK);
            }
            sb.append(preset.serialize());
        }
        return sb.toString();
    }

    static ArrayList<TimerPreset> splitRecords(String raw) {
        ArrayList<TimerPreset> list = new ArrayList<>();
        if (raw == null || raw.length() == 0) {
            return list;
        }
        String[] records = raw.split(BLOCK, -1);
        for (int i = 0; i < records.length; i++) {
            if (records[i].trim().length() == 0) {
                continue;
            }
            TimerPreset preset = deserialize(records[i]);
            if (preset.id.length() > 0) {
                list.add(preset);
            }
        }
        return list;
    }
}
