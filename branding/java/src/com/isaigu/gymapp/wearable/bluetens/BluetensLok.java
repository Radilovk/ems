package com.isaigu.gymapp.wearable.bluetens;

import java.util.ArrayList;
import java.util.List;

/**
 * The Bluetens program file (.lok) — pure Java, the same grammar and serialisation as the vendor app (see
 * docs/xems-bluetens.md and scripts/bluetens/lok.py): {@code V1D16{|R1P96F6C708}{R47|R2P96F6|F7}}.
 * <ul>
 * <li>a section {@code {…}}: optional R (repeat) / I (pause ms) before its first block;</li>
 * <li>a block {@code |…}: R repeat, I pause ms after each repeat, F Hz (or T = Hz×10), P pulse width µs,
 * C pulses per repeat — every field it does not name is the previous block's.</li>
 * </ul>
 * Digits are 0-9 and lowercase a-f; uppercase letters are always tokens.
 */
public final class BluetensLok {
    public static final int MAX_FREQ = 1200;
    public static final int MAX_IMPULSE = 400;

    public static final class Block {
        public int repeat = 1;
        public int interval;
        /** Hz × 10 (0.1 Hz steps). */
        public int freq10 = 540;
        public int impulse = 100;
        public int cluster = 1;

        public Block() {}

        Block(Block p) {
            repeat = p.repeat;
            interval = p.interval;
            freq10 = p.freq10;
            impulse = p.impulse;
            cluster = p.cluster;
        }

        public double ms() {
            return (10000.0 / freq10 * cluster + interval) * repeat;
        }
    }

    public static final class Section {
        public int repeat = 1;
        public int interval;
        public final List<Block> blocks = new ArrayList<Block>();

        public double ms() {
            double s = 0;
            for (Block b : blocks) {
                s += b.ms();
            }
            return (s + interval) * repeat;
        }
    }

    public final List<Section> sections = new ArrayList<Section>();
    /** Playlist of sections ({@code <S1S2…>}), 0-based; usually empty. */
    public final List<Integer> loops = new ArrayList<Integer>();

    public double ms() {
        double s = 0;
        double[] each = new double[sections.size()];
        for (int i = 0; i < each.length; i++) {
            each[i] = sections.get(i).ms();
            s += each[i];
        }
        for (Integer i : loops) {
            if (i >= 0 && i < each.length) {
                s += each[i];
            }
        }
        return s;
    }

    // ------------------------------------------------------------------ build (programs of our own)

    /** A new section; returns it so blocks can be added. */
    public Section section(int repeat) {
        Section s = new Section();
        s.repeat = Math.max(1, repeat);
        sections.add(s);
        return s;
    }

    /** One block: {@code cluster} pulses at {@code hz10}/10 Hz, {@code impulse} µs, then {@code pauseMs}; ×repeat. */
    public static Block block(Section s, int repeat, int pauseMs, int impulse, int hz10, int cluster) {
        Block b = new Block();
        b.repeat = Math.max(1, repeat);
        b.interval = Math.max(0, pauseMs);
        b.impulse = Math.max(1, Math.min(MAX_IMPULSE, impulse));
        b.freq10 = Math.max(1, Math.min(MAX_FREQ * 10, hz10));
        b.cluster = Math.max(1, cluster);
        s.blocks.add(b);
        return b;
    }

    /** Serialised like the vendor app (base 16, only what changes against the previous block). */
    public String build() {
        StringBuilder o = new StringBuilder("V1D16");
        for (Section s : sections) {
            o.append('{');
            if (s.repeat != 1) {
                o.append('R').append(hex(s.repeat));
            }
            if (s.interval != 0) {
                o.append('I').append(hex(s.interval));
            }
            Block prev = null;
            for (Block b : s.blocks) {
                o.append('|');
                if (prev == null) {
                    o.append('R').append(hex(b.repeat));
                    if (b.interval != 0) {
                        o.append('I').append(hex(b.interval));
                    }
                    o.append('P').append(hex(b.impulse));
                    freq(o, b);
                    if (b.cluster != 1) {
                        o.append('C').append(hex(b.cluster));
                    }
                } else {
                    if (b.repeat != prev.repeat) {
                        o.append('R').append(hex(b.repeat));
                    }
                    if (b.interval != prev.interval) {
                        o.append('I').append(hex(b.interval));
                    }
                    if (b.impulse != prev.impulse) {
                        o.append('P').append(hex(b.impulse));
                    }
                    if (b.freq10 != prev.freq10) {
                        freq(o, b);
                    }
                    if (b.cluster != prev.cluster) {
                        o.append('C').append(hex(b.cluster));
                    }
                }
                prev = b;
            }
            o.append('}');
        }
        if (!loops.isEmpty()) {
            o.append('<');
            for (Integer i : loops) {
                o.append('S').append(i + 1);
            }
            o.append('>');
        }
        return o.toString();
    }

    static void freq(StringBuilder o, Block b) {
        if (b.freq10 % 10 == 0) {
            o.append('F').append(hex(b.freq10 / 10));
        } else {
            o.append('T').append(hex(b.freq10));
        }
    }

    static String hex(int v) {
        return Integer.toHexString(v);
    }

    // ------------------------------------------------------------------ parse (tests, and checking what we send)

    public static BluetensLok parse(String text) {
        BluetensLok lok = new BluetensLok();
        int base = 10;
        Section sec = null;
        Block blk = null;
        Block last = null;
        int i = 0;
        int n = text.length();
        while (i < n) {
            char c = text.charAt(i++);
            if (c == ' ' || c == '\r' || c == '\n' || c == '\t') {
                continue;
            }
            int j = i;
            while (j < n && digit(text.charAt(j))) {
                j++;
            }
            String v = text.substring(i, j);
            i = j;
            switch (c) {
                case 'V':
                    break;
                case 'D':
                    base = Integer.parseInt(v);
                    if (base != 10 && base != 16) {
                        throw new IllegalArgumentException("digit base " + v);
                    }
                    break;
                case '{':
                    if (sec != null) {
                        throw new IllegalArgumentException("nested section");
                    }
                    sec = new Section();
                    blk = null;
                    last = null;
                    break;
                case '}':
                    if (sec == null) {
                        throw new IllegalArgumentException("} without {");
                    }
                    if (blk != null) {
                        sec.blocks.add(blk);
                    }
                    lok.sections.add(sec);
                    sec = null;
                    blk = null;
                    last = null;
                    break;
                case '|':
                    if (sec == null) {
                        throw new IllegalArgumentException("| outside a section");
                    }
                    if (blk != null) {
                        sec.blocks.add(blk);
                        last = blk;
                    }
                    blk = last != null ? new Block(last) : new Block();
                    break;
                case '<':
                    break;
                case '>':
                    return lok;
                case 'S':
                    lok.loops.add(Integer.parseInt(v) - 1);
                    break;
                default: {
                    if (sec == null) {
                        throw new IllegalArgumentException(c + " outside a section");
                    }
                    int val = Integer.parseInt(v, base);
                    if (blk == null) {
                        if (c == 'R') {
                            sec.repeat = val;
                        } else if (c == 'I') {
                            sec.interval = val;
                        } else {
                            throw new IllegalArgumentException(c + " in a section header");
                        }
                    } else if (c == 'R') {
                        blk.repeat = val;
                    } else if (c == 'I') {
                        blk.interval = val;
                    } else if (c == 'F') {
                        blk.freq10 = val * 10;
                    } else if (c == 'T') {
                        blk.freq10 = val;
                    } else if (c == 'P') {
                        if (val <= 0 || val > MAX_IMPULSE) {
                            throw new IllegalArgumentException("P" + val);
                        }
                        blk.impulse = val;
                    } else if (c == 'C') {
                        blk.cluster = val;
                    } else {
                        throw new IllegalArgumentException("token " + c);
                    }
                }
            }
        }
        if (sec != null) {
            throw new IllegalArgumentException("unterminated section");
        }
        return lok;
    }

    static boolean digit(char c) {
        return (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f');
    }
}
