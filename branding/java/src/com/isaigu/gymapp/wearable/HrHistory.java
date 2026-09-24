package com.isaigu.gymapp.wearable;

/**
 * Heart-rate samples of the last hour (ring buffer) for the HR panel: chart, averages and time
 * in zones. Fed from NotifyWearableBridge.onHeartRate (only accepted, worn-band samples).
 */
public final class HrHistory {
    static final int CAPACITY = 4096;          // ~3.4 h at one sample per 3 s
    static final long KEEP_MS = 60L * 60L * 1000L;
    /** A gap longer than this is not counted as time in a zone (link lost, band off). */
    static final long MAX_GAP_MS = 12000L;

    private static final long[] t = new long[CAPACITY];
    private static final int[] hr = new int[CAPACITY];
    private static int head;
    private static int size;

    private HrHistory() {}

    public static synchronized void add(long timeMs, int bpm) {
        if (bpm <= 0) {
            return;
        }
        t[head] = timeMs;
        hr[head] = bpm;
        head = (head + 1) % CAPACITY;
        if (size < CAPACITY) {
            size++;
        }
    }

    public static synchronized void clear() {
        head = 0;
        size = 0;
    }

    /** Samples not older than {@code windowMs} (≤ 0 = the whole hour), oldest first. */
    public static synchronized Series since(long nowMs, long windowMs) {
        long from = nowMs - (windowMs > 0 ? Math.min(windowMs, KEEP_MS) : KEEP_MS);
        int n = 0;
        for (int i = 0; i < size; i++) {
            int k = (head - size + i + CAPACITY) % CAPACITY;
            if (t[k] >= from) {
                n++;
            }
        }
        Series s = new Series(n);
        int j = 0;
        for (int i = 0; i < size; i++) {
            int k = (head - size + i + CAPACITY) % CAPACITY;
            if (t[k] >= from) {
                s.t[j] = t[k];
                s.hr[j] = hr[k];
                j++;
            }
        }
        return s;
    }

    /** A copy of samples with simple statistics. */
    public static final class Series {
        public final long[] t;
        public final int[] hr;

        Series(int n) {
            t = new long[n];
            hr = new int[n];
        }

        public int size() {
            return t.length;
        }

        public int last() {
            return hr.length > 0 ? hr[hr.length - 1] : 0;
        }

        public int min() {
            int m = Integer.MAX_VALUE;
            for (int v : hr) {
                m = Math.min(m, v);
            }
            return hr.length > 0 ? m : 0;
        }

        public int max() {
            int m = 0;
            for (int v : hr) {
                m = Math.max(m, v);
            }
            return m;
        }

        /** Time-weighted average (gaps longer than MAX_GAP_MS are skipped). */
        public int avg() {
            double sum = 0;
            double w = 0;
            for (int i = 1; i < hr.length; i++) {
                long dt = t[i] - t[i - 1];
                if (dt <= 0 || dt > MAX_GAP_MS) {
                    continue;
                }
                sum += (hr[i] + hr[i - 1]) / 2.0 * dt;
                w += dt;
            }
            if (w <= 0) {
                return hr.length > 0 ? hr[hr.length - 1] : 0;
            }
            return (int) Math.round(sum / w);
        }

        /** Milliseconds in zones 1..5 (index 0 unused) against the HR limit. */
        public long[] zoneMs(int limit) {
            long[] z = new long[6];
            for (int i = 1; i < hr.length; i++) {
                long dt = t[i] - t[i - 1];
                if (dt <= 0 || dt > MAX_GAP_MS) {
                    continue;
                }
                z[WearableUi.zoneFor(hr[i - 1], limit)] += dt;
            }
            return z;
        }
    }
}
