package com.isaigu.gymapp.wearable.vr;

/** One hit on a body region as a zone-aware game sent it: region ({@link VrWire#ZR_VEST_FRONT}…), levels per motor. */
public final class VrZoneHit {
    public final int region;
    public final int durationMs;
    /** 0..100 per motor, as the game addressed them (a vest face = 4 columns x 5 rows, index = row * 4 + column). */
    public final int[] levels;
    public final long eventTimeNs;
    public final int seq;

    public VrZoneHit(int region, int durationMs, int[] levels, long eventTimeNs, int seq) {
        this.region = region;
        this.durationMs = durationMs;
        this.levels = levels;
        this.eventTimeNs = eventTimeNs;
        this.seq = seq;
    }

    public int maxLevel() {
        int m = 0;
        for (int i = 0; i < levels.length; i++) {
            if (levels[i] > m) {
                m = levels[i];
            }
        }
        return m;
    }
}
