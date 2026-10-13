package com.isaigu.gymapp.wearable.bluetens;

import com.isaigu.gymapp.ai.SafeLimits;

import java.util.ArrayList;
import java.util.List;

/**
 * A Bluetens program the trainer makes (owner, 2026-10-13: "I want control over the parameters, with programs I
 * create — not preset ones"). Pure Java: steps in order, each with its own time, frequency, pulse width, work / pause
 * (0 s work = continuous), pause pulses and soft rise. Every step is held inside the suit's absolute limits
 * ({@link SafeLimits}, docs/xems-safety-limits.md) before it is stored or sent, and turned into the pad's .lok
 * ({@link #toLok}) — one section per step.
 */
public final class BluetensProgram {
    public static final int SEC_MIN = 10, SEC_MAX = 3600;
    public static final int WORK_MAX = 10, REST_MAX = 30, RISE_MAX_MS = 2000;

    public String id = "";
    public String name = "";
    public final List<Step> steps = new ArrayList<Step>();

    public static final class Step {
        /** How long the step lasts. */
        public int seconds = 600;
        public int hz = 5;
        /** Pulse width, µs. */
        public int us = 250;
        /** Seconds of impulse per cycle; 0 = continuous (only under 20 Hz). */
        public int workS;
        /** Seconds of pause after each impulse. */
        public int restS = 4;
        /** Pulses during the pause (≤ 10 Hz, under the main one); 0 = silence. */
        public int restHz;
        /** Soft rise at the start of each impulse, ms. */
        public int riseMs;

        public Step copy() {
            Step s = new Step();
            s.seconds = seconds;
            s.hz = hz;
            s.us = us;
            s.workS = workS;
            s.restS = restS;
            s.restHz = restHz;
            s.riseMs = riseMs;
            return s;
        }

        public boolean continuous() {
            return workS <= 0;
        }
    }

    /** A fresh program: one gentle continuous step. */
    public static BluetensProgram fresh(String id, String name) {
        BluetensProgram p = new BluetensProgram();
        p.id = id;
        p.name = name;
        p.steps.add(new Step());
        return p;
    }

    public int seconds() {
        int s = 0;
        for (Step st : steps) {
            s += st.seconds;
        }
        return s;
    }

    // ------------------------------------------------------------------ limits

    /**
     * The step inside the limits (in place); returns one line per correction (Bulgarian / English) or "".
     * Under 20 Hz a step may run continuously; from 20 Hz it is an impulse with the pause the fatigue model needs.
     */
    public static String[] safe(Step s) {
        StringBuilder bg = new StringBuilder();
        StringBuilder en = new StringBuilder();
        s.seconds = Math.max(SEC_MIN, Math.min(SEC_MAX, s.seconds));
        s.riseMs = Math.max(0, Math.min(RISE_MAX_MS, s.riseMs));
        s.restHz = Math.max(0, Math.min(SafeLimits.PAUSE_HZ_MAX, s.restHz));
        boolean tet = s.hz >= SafeLimits.TETANIC_HZ;
        if (s.continuous() && tet) {
            bg.append("От ").append(SafeLimits.TETANIC_HZ).append(" Hz нагоре — само импулс с пауза");
            en.append("From ").append(SafeLimits.TETANIC_HZ).append(" Hz up — impulse with a pause only");
            s.workS = s.hz >= 50 ? 4 : 6;
        }
        int on = s.continuous() ? 1 : Math.min(WORK_MAX, s.workS);
        int off = s.continuous() ? 1 : Math.min(REST_MAX, s.restS);
        int[] v = SafeLimits.apply(new int[] {s.hz, s.us, on, off, s.restHz > 0 ? 1 : 0, s.restHz, 100, s.riseMs},
                -1, bg, en);
        s.hz = v[SafeLimits.HZ];
        s.us = v[SafeLimits.PW];
        if (!s.continuous()) {
            s.workS = v[SafeLimits.ON];
            s.restS = v[SafeLimits.OFF];
            s.restHz = v[SafeLimits.AP] == 1 ? v[SafeLimits.PHZ] : 0;
            s.riseMs = Math.min(s.workS * 1000 / 2, v[SafeLimits.RAMP]);
        } else {
            s.restHz = 0;
            s.riseMs = 0;
        }
        return new String[] {bg.toString(), en.toString()};
    }

    // ------------------------------------------------------------------ to the pad

    public BluetensLok toLok() {
        BluetensLok lok = new BluetensLok();
        for (Step st : steps) {
            Step s = st.copy();
            safe(s);
            add(lok, s);
        }
        return lok;
    }

    static void add(BluetensLok lok, Step s) {
        BluetensLok.Section sec = lok.section(1);
        int hz10 = s.hz * 10;
        if (s.continuous()) {
            BluetensLok.block(sec, 1, 0, s.us, hz10, Math.max(1, s.hz * s.seconds));
            return;
        }
        int riseMs = s.hz >= 10 ? s.riseMs : 0;
        int steps = riseMs / 100;
        for (int i = 0; i < steps; i++) {
            int w = Math.max(20, s.us * (40 + 60 * (i + 1) / steps) / 100);   // 40 % → 100 % of the width
            BluetensLok.block(sec, 1, 0, w, hz10, Math.max(1, Math.round(s.hz / 10f)));
        }
        double holdMs = s.workS * 1000.0 - steps * 100;
        int hold = (int) Math.max(1, Math.round(s.hz * holdMs / 1000.0));
        if (s.restHz > 0) {
            BluetensLok.block(sec, 1, 0, s.us, hz10, hold);
            BluetensLok.block(sec, 1, 0, s.us, s.restHz * 10, Math.max(1, s.restHz * s.restS));
        } else {
            BluetensLok.block(sec, 1, s.restS * 1000, s.us, hz10, hold);
        }
        double cycle = 0;
        for (BluetensLok.Block b : sec.blocks) {
            cycle += b.ms();
        }
        sec.repeat = (int) Math.max(1, Math.round(s.seconds * 1000.0 / cycle));
    }

    // ------------------------------------------------------------------ storage line (no org.json: tested on the JVM)

    /** {@code id \t name \t step | step …}, a step = 7 numbers with commas. */
    public String encode() {
        StringBuilder b = new StringBuilder();
        b.append(clean(id)).append('\t').append(clean(name)).append('\t');
        for (int i = 0; i < steps.size(); i++) {
            Step s = steps.get(i);
            if (i > 0) {
                b.append('|');
            }
            b.append(s.seconds).append(',').append(s.hz).append(',').append(s.us).append(',').append(s.workS)
                    .append(',').append(s.restS).append(',').append(s.restHz).append(',').append(s.riseMs);
        }
        return b.toString();
    }

    /** null when the line is not a program. */
    public static BluetensProgram decode(String line) {
        if (line == null) {
            return null;
        }
        String[] p = line.split("\t", -1);
        if (p.length < 3) {
            return null;
        }
        BluetensProgram out = new BluetensProgram();
        out.id = p[0];
        out.name = p[1];
        for (String st : p[2].split("\\|")) {
            String[] n = st.split(",");
            if (n.length < 7) {
                continue;
            }
            try {
                Step s = new Step();
                s.seconds = Integer.parseInt(n[0]);
                s.hz = Integer.parseInt(n[1]);
                s.us = Integer.parseInt(n[2]);
                s.workS = Integer.parseInt(n[3]);
                s.restS = Integer.parseInt(n[4]);
                s.restHz = Integer.parseInt(n[5]);
                s.riseMs = Integer.parseInt(n[6]);
                out.steps.add(s);
            } catch (NumberFormatException ignored) {
            }
        }
        return out.steps.isEmpty() ? null : out;
    }

    static String clean(String s) {
        return s == null ? "" : s.replace('\t', ' ').replace('\n', ' ').replace('|', '/');
    }
}
