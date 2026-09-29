package com.isaigu.gymapp.wearable;

/** Growable int array for the per-second session columns. */
final class SessionInts {
    private int[] a = new int[256];
    private int n;

    void add(int v) {
        if (n == a.length) {
            int[] b = new int[a.length * 2];
            System.arraycopy(a, 0, b, 0, n);
            a = b;
        }
        a[n++] = v;
    }

    /** Empty again (the recovery heart rate of a training that goes on). */
    void clear() {
        n = 0;
    }

    int size() {
        return n;
    }

    int get(int i) {
        return a[i];
    }

    void json(StringBuilder b) {
        b.append('[');
        for (int i = 0; i < n; i++) {
            if (i > 0) {
                b.append(',');
            }
            b.append(a[i]);
        }
        b.append(']');
    }
}
