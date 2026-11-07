package com.isaigu.gymapp.wearable.face;

import com.isaigu.gymapp.wearable.bluetens.BluetensLok;

/**
 * Where a face procedure is at a moment — pure Java. For Bluetens it is read off the program file itself (every
 * block's pulses and its silence), so the studio's picture contracts exactly when the pad does. For the XEMS suit
 * the engine's phase and the device's own cycle hook give the same {@link State} ({@link #cycle}).
 */
public final class FaceTimeline {
    /** One moment of the procedure. */
    public static final class State {
        /** 0 wake-up · 1 the work · 2 let-go. */
        public int phase;
        public boolean on;
        /** How strongly it contracts now, 0…1 (rise and fall included). */
        public float level;
        /** Until the hold / the rest changes, ms. */
        public long leftMs;
        public long elapsedMs;
        public long totalMs;
        public boolean done;
        public int hz;
    }

    private final long[] start;
    private final long[] end;
    private final float[] level;
    private final byte[] phase;
    private final short[] hz;
    private int n;
    private final long total;

    private FaceTimeline(int cap, long total) {
        start = new long[cap];
        end = new long[cap];
        level = new float[cap];
        phase = new byte[cap];
        hz = new short[cap];
        this.total = total;
    }

    /** The timeline of a Bluetens face program: ON = the pulses of a block at ≥ 20 Hz (level by its width). */
    public static FaceTimeline of(BluetensLok lok, int fullUs) {
        int cap = 2;
        for (BluetensLok.Section s : lok.sections) {
            int b = 0;
            for (BluetensLok.Block k : s.blocks) {
                b += 2 * k.repeat;
            }
            cap += (b + 1) * s.repeat;
        }
        FaceTimeline t = new FaceTimeline(cap, Math.round(lok.ms()));
        double at = 0;
        int sec = 0;
        int last = Math.max(1, lok.sections.size() - 1);
        for (BluetensLok.Section s : lok.sections) {
            int ph = sec == 0 && lok.sections.size() > 1 ? 0 : sec == last && lok.sections.size() > 2 ? 2 : 1;
            for (int r = 0; r < s.repeat; r++) {
                for (BluetensLok.Block b : s.blocks) {
                    for (int k = 0; k < b.repeat; k++) {
                        double on = 10000.0 / b.freq10 * b.cluster;
                        int h = b.freq10 / 10;
                        float lv = h >= 20 ? Math.min(1f, b.impulse / (float) fullUs) : 0f;
                        t.add(at, at + on, lv, ph, h);
                        at += on;
                        if (b.interval > 0) {
                            t.add(at, at + b.interval, 0f, ph, h);
                            at += b.interval;
                        }
                    }
                }
                if (s.interval > 0) {
                    t.add(at, at + s.interval, 0f, ph, 0);
                    at += s.interval;
                }
            }
            sec++;
        }
        return t;
    }

    private void add(double a, double b, float lv, int ph, int h) {
        long s = Math.round(a);
        long e = Math.round(b);
        if (e <= s) {
            return;
        }
        if (n > 0 && phase[n - 1] == ph && ((level[n - 1] > 0) == (lv > 0)) && end[n - 1] == s
                && (lv == 0 || Math.abs(level[n - 1] - lv) < 1e-4)) {
            end[n - 1] = e;                                    // the same state goes on
            return;
        }
        start[n] = s;
        end[n] = e;
        level[n] = lv;
        phase[n] = (byte) ph;
        hz[n] = (short) h;
        n++;
    }

    public long totalMs() {
        return total;
    }

    /** The state {@code ms} after the start. */
    public State at(long ms) {
        State st = new State();
        st.elapsedMs = ms;
        st.totalMs = total;
        if (n == 0 || ms >= total) {
            st.done = ms >= total;
            st.phase = 2;
            return st;
        }
        int lo = 0;
        int hi = n - 1;
        while (lo < hi) {
            int mid = (lo + hi + 1) >>> 1;
            if (start[mid] <= ms) {
                lo = mid;
            } else {
                hi = mid - 1;
            }
        }
        int i = Math.max(0, lo);
        st.phase = phase[i];
        st.hz = hz[i];
        st.on = level[i] > 0;
        // the hold runs until the next silence: walk the ON blocks (rise · hold · fall) as one contraction
        int j = i;
        if (st.on) {
            while (j + 1 < n && level[j + 1] > 0 && start[j + 1] == end[j]) {
                j++;
            }
            int k = i;
            float peak = level[i];
            while (k > 0 && level[k - 1] > 0 && end[k - 1] == start[k]) {
                k--;
            }
            for (int q = k; q <= j; q++) {
                peak = Math.max(peak, level[q]);
            }
            st.level = peak > 0 ? level[i] / peak : 0;
            for (int q = k; q <= j; q++) {
                if (hz[q] > st.hz) {
                    st.hz = hz[q];
                }
            }
        } else {
            while (j + 1 < n && level[j + 1] == 0 && start[j + 1] == end[j]) {
                j++;
            }
        }
        st.leftMs = end[j] - ms;
        return st;
    }

    /**
     * The XEMS suit: one cycle of {@code onS} : {@code offS} that began {@code sinceMs} ago (the device's hook), with
     * its rise and fall. Phase and totals come from the engine.
     */
    public static State cycle(long sinceMs, int onS, int offS, int rampUpMs, int rampDownMs, int hz) {
        State st = new State();
        long on = Math.max(1, onS) * 1000L;
        long cyc = on + Math.max(0, offS) * 1000L;
        long t = cyc > 0 ? ((sinceMs % cyc) + cyc) % cyc : 0;
        st.hz = hz;
        st.on = t < on;
        if (st.on) {
            float lv = 1f;
            if (rampUpMs > 0 && t < rampUpMs) {
                lv = t / (float) rampUpMs;
            } else if (rampDownMs > 0 && t > on - rampDownMs) {
                lv = (on - t) / (float) rampDownMs;
            }
            st.level = Math.max(0f, Math.min(1f, lv));
            st.leftMs = on - t;
        } else {
            st.leftMs = cyc - t;
        }
        return st;
    }
}
