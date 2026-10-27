package com.isaigu.gymapp.wearable.mastogo;

import java.util.ArrayList;
import java.util.List;

/**
 * The trainer's own MASTOGO combinations and program notes (owner, 2026-10-27: "combinations and notes") — pure Java,
 * the page keeps the text in prefs "xems_mastogo" ("presets": one line each, "notes": one number per program).
 * The firmware fixes each program's impulse (docs/xems-mastogo.md), so a combination is what the tablet can move:
 * program, minutes, and the strength modulation on top; a note is how a program feels, set with one tap.
 */
public final class MastogoStore {
    private MastogoStore() {}

    /** Program notes, a bit each: soft / sharp and slow / fast exclude each other. */
    public static final int SOFT = 1, SHARP = 2, SLOW = 4, FAST = 8, FAV = 16;

    public static final class Preset {
        public String name = "";
        public int mode;
        public int minutes = 20;
        public boolean modOn;
        public MastogoShell.Mod mod = new MastogoShell.Mod();

        public String encode() {
            return clean(name) + "|" + mode + "|" + minutes + "|" + (modOn ? 1 : 0) + "|" + mod.encode();
        }

        public static Preset decode(String line) {
            try {
                String[] p = line.split("\\|", -1);
                Preset x = new Preset();
                x.name = p[0];
                x.mode = Math.max(0, Math.min(MastogoShell.MODES - 1, Integer.parseInt(p[1])));
                x.minutes = Math.max(1, Math.min(60, Integer.parseInt(p[2])));
                x.modOn = p[3].equals("1");
                x.mod = MastogoShell.Mod.decode(p[4]);
                return x.name.length() > 0 ? x : null;
            } catch (Throwable t) {
                return null;
            }
        }
    }

    static String clean(String s) {
        return s == null ? "" : s.replace("|", "/").replace("\n", " ").trim();
    }

    public static List<Preset> presets(String text) {
        List<Preset> out = new ArrayList<Preset>();
        if (text == null) {
            return out;
        }
        for (String line : text.split("\n")) {
            Preset p = Preset.decode(line);
            if (p != null) {
                out.add(p);
            }
        }
        return out;
    }

    public static String presetsText(List<Preset> list) {
        StringBuilder b = new StringBuilder();
        for (Preset p : list) {
            if (b.length() > 0) {
                b.append('\n');
            }
            b.append(p.encode());
        }
        return b.toString();
    }

    /** The name is derived, never asked: program, then the modulation if on, then the minutes if not 20. */
    public static String autoName(String program, String shape, Preset p) {
        StringBuilder b = new StringBuilder(program);
        if (p.modOn) {
            b.append(" · ").append(shape).append(' ').append(p.mod.lo).append('–').append(p.mod.hi);
        }
        if (p.minutes != 20) {
            b.append(" · ").append(p.minutes).append('\'');
        }
        return b.toString();
    }

    /** A name not yet used in the list ("…", "… 2", "… 3"). */
    public static String unique(List<Preset> list, String name) {
        String n = name;
        for (int i = 2; taken(list, n); i++) {
            n = name + " " + i;
        }
        return n;
    }

    static boolean taken(List<Preset> list, String n) {
        for (Preset p : list) {
            if (p.name.equals(n)) {
                return true;
            }
        }
        return false;
    }

    public static int[] notes(String text) {
        int[] n = new int[MastogoShell.MODES];
        if (text == null) {
            return n;
        }
        String[] p = text.split(",");
        for (int i = 0; i < n.length && i < p.length; i++) {
            try {
                n[i] = Integer.parseInt(p[i].trim());
            } catch (NumberFormatException ignored) {
            }
        }
        return n;
    }

    public static String notesText(int[] n) {
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < n.length; i++) {
            b.append(i > 0 ? "," : "").append(n[i]);
        }
        return b.toString();
    }

    /** One tap on a note: on / off; turning on soft clears sharp (and slow ↔ fast). */
    public static int toggle(int notes, int bit) {
        if ((notes & bit) != 0) {
            return notes & ~bit;
        }
        int pair = bit == SOFT ? SHARP : bit == SHARP ? SOFT : bit == SLOW ? FAST : bit == FAST ? SLOW : 0;
        return (notes & ~pair) | bit;
    }

    /** Filter: 0 = every program, else the program must carry the bit. */
    public static boolean matches(int notes, int filter) {
        return filter == 0 || (notes & filter) != 0;
    }
}
