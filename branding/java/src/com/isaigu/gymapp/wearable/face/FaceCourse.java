package com.isaigu.gymapp.wearable.face;

import java.util.ArrayList;
import java.util.List;

/**
 * A client's course of one face procedure — pure Java (the studio keeps the dates in prefs "xems_face", one line
 * per client × procedure). A course is the run of sessions without a gap over 21 days; the lift plans 56 sessions
 * over 12 weeks (2 weeks × 3, then × 5 — docs/xems-face.md), the others are upkeep.
 */
public final class FaceCourse {
    public static final long DAY = 24L * 3600 * 1000;
    /** A pause longer than this starts a new course. */
    public static final long BREAK = 21 * DAY;
    /** Never two sessions of the face within this (the muscle recovers). */
    public static final long MIN_GAP = 20L * 3600 * 1000;

    /** Where a course stands. */
    public static final class Stats {
        /** Sessions in this course, this one counted when {@link #after} is used. */
        public int done;
        public int planned;
        /** Week of the course, 1-based (0 = not started). */
        public int week;
        public int weeks;
        public long lastMs;
        /** The earliest good time for the next session (0 = any time). */
        public long nextMs;
        public boolean finished;
    }

    private FaceCourse() {}

    public static Stats stats(List<Long> times, FaceProgram p, long now) {
        Stats s = new Stats();
        s.planned = p.planned;
        s.weeks = p.weeks;
        long first = 0;
        long prev = 0;
        for (Long t : times) {
            if (t == null || t > now) {
                continue;
            }
            if (prev == 0 || t - prev > BREAK) {
                first = t;
                s.done = 0;
            }
            s.done++;
            prev = t;
        }
        if (prev == 0 || now - prev > BREAK) {
            s.done = 0;
            return s;
        }
        s.lastMs = prev;
        s.week = (int) ((now - first) / (7 * DAY)) + 1;
        int gapDays = s.week <= 2 ? p.gapEarly : p.gapLater;
        s.nextMs = Math.max(prev + MIN_GAP, prev + gapDays * DAY - 4L * 3600 * 1000);
        s.finished = s.planned > 0 && s.done >= s.planned;
        return s;
    }

    public static String encode(List<Long> times) {
        StringBuilder b = new StringBuilder();
        int from = Math.max(0, times.size() - 120);           // the last 120 sessions are plenty
        for (int i = from; i < times.size(); i++) {
            if (b.length() > 0) {
                b.append(',');
            }
            b.append(Long.toString(times.get(i) / 60000L, 36));
        }
        return b.toString();
    }

    public static List<Long> decode(String s) {
        List<Long> out = new ArrayList<Long>();
        if (s == null || s.length() == 0) {
            return out;
        }
        for (String p : s.split(",")) {
            try {
                out.add(Long.parseLong(p.trim(), 36) * 60000L);
            } catch (NumberFormatException ignored) {
                // a damaged entry is skipped
            }
        }
        return out;
    }

    /** "Сесия 7 от 56 · седмица 3" / "Сесия 4 · поддръжка". */
    public static String line(Stats s, boolean bg) {
        if (s.done <= 0) {
            return bg ? "Първа сесия" : "First session";
        }
        int n = s.done + 1;
        if (s.planned > 0) {
            return (bg ? "Сесия " : "Session ") + n + (bg ? " от " : " of ") + s.planned
                    + (bg ? " · седмица " : " · week ") + Math.min(s.week, Math.max(1, s.weeks));
        }
        return (bg ? "Сесия " : "Session ") + n + (bg ? " · поддръжка" : " · upkeep");
    }
}
