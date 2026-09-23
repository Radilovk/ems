package com.isaigu.gymapp.ai;

import java.util.ArrayDeque;
import java.util.Iterator;

/** §7 — realtime HR validation, EMA smoothing, stimulation-artifact rejection, c_valid. */
public final class AiHrFilter {
    public static final double ALPHA = 0.3;
    public static final double SLOPE_MAX = 5.0;
    public static final int ARTIFACT_JUMP = 15;
    public static final long ARTIFACT_WINDOW_MS = 3000L;
    public static final long VALID_WINDOW_MS = 60000L;
    public static final double ARTIFACT_FLAG_SHARE = 0.20;

    private double hrS = -1;
    private int lastBpm = -1;
    private long lastMs = -1L;
    private long lastAcceptedMs = -1L;
    /** {tMs, accepted?1:0} for the last 60 s. */
    private final ArrayDeque<long[]> history = new ArrayDeque<long[]>();
    private boolean artifactFlag;
    private int total;
    private int rejectedTotal;

    public void reset() {
        hrS = -1;
        lastBpm = -1;
        lastMs = -1L;
        lastAcceptedMs = -1L;
        history.clear();
        artifactFlag = false;
    }

    /** Seed the EMA with the resting HR so the first samples are not a step from zero. */
    public void seed(int hrRest, long tMs) {
        if (hrRest > 0) {
            hrS = hrRest;
            lastBpm = hrRest;
            lastMs = tMs;
            lastAcceptedMs = tMs;
        }
    }

    /**
     * @param stimOn true while an impulse is on (artifact rule 3 only applies then)
     * @return true if the sample was accepted
     */
    public boolean onSample(long tMs, int bpm, boolean stimOn) {
        total++;
        boolean ok = bpm >= 30 && bpm <= 220;
        if (ok && lastBpm > 0 && lastMs > 0) {
            long dtMs = Math.max(1L, tMs - lastMs);
            int jump = Math.abs(bpm - lastBpm);
            if (jump / (dtMs / 1000.0) > SLOPE_MAX) {
                ok = false;
            }
            if (stimOn && jump > ARTIFACT_JUMP && dtMs < ARTIFACT_WINDOW_MS) {
                ok = false;
            }
        }
        lastBpm = bpm;
        lastMs = tMs;
        history.addLast(new long[] {tMs, ok ? 1 : 0});
        trim(tMs);
        if (!ok) {
            rejectedTotal++;
            updateArtifactFlag();
            return false;
        }
        hrS = hrS < 0 ? bpm : ALPHA * bpm + (1 - ALPHA) * hrS;
        lastAcceptedMs = tMs;
        updateArtifactFlag();
        return true;
    }

    private void trim(long nowMs) {
        Iterator<long[]> it = history.iterator();
        while (it.hasNext()) {
            if (it.next()[0] < nowMs - VALID_WINDOW_MS) {
                it.remove();
            } else {
                break;
            }
        }
    }

    private void updateArtifactFlag() {
        if (history.size() >= 5 && 1.0 - validShare() > ARTIFACT_FLAG_SHARE) {
            artifactFlag = true;
        }
    }

    /** c_valid: share of accepted samples in the last 60 s (1 when no data yet). */
    public double validShare() {
        if (history.isEmpty()) {
            return 1.0;
        }
        int acc = 0;
        for (long[] h : history) {
            acc += (int) h[1];
        }
        return acc / (double) history.size();
    }

    public double getHrS() {
        return hrS;
    }

    public long getLastAcceptedMs() {
        return lastAcceptedMs;
    }

    public long ageMs(long nowMs) {
        return lastAcceptedMs < 0 ? Long.MAX_VALUE : nowMs - lastAcceptedMs;
    }

    public boolean isArtifactFlag() {
        return artifactFlag;
    }

    public int getTotal() {
        return total;
    }

    public int getRejectedTotal() {
        return rejectedTotal;
    }
}
