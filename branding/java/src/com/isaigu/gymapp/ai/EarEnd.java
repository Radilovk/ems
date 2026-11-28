package com.isaigu.gymapp.ai;

/**
 * When a listening of the cloud ear is over (1.1.596): the end of speech, seen in the listening's own audio, every
 * 100 ms. stt_log 1.1.595 showed 7 of 13 listenings running to the 7.5 s limit — the end was judged against the
 * spotter's floor, which a noise-suppressed headset or a loud hall never matched. Now: the quietest 100 ms of this
 * listening is the room; speech is ≥ 8 dB over it; 0.7 s of quiet (≤ 5 dB over the room, or 18 dB under the loudest)
 * after speech ends it (the quiet must be unbroken). Pure Java: scripts/voice-sim/EarEndSim.java runs it on real speech over noise.
 */
public final class EarEnd {
    public static final int RATE = 16000, BLOCK = RATE / 10;
    public static final int QUIET_BLOCKS = 7, NOTHING_BLOCKS = 40;
    /** The longest listening after the spotter fired: a command is short ("увеличи малко краката" ~1.5 s). */
    public static final int MAX_AFTER = RATE * 4;

    /** 1 = the suspected phrase (already speech before it), 2 = a window (nothing said yet). */
    final int mode;
    final int minAfter;
    int n, blockN, blocks, quiet, voiced;
    double sum;
    float peakDb, noiseDb = 999;
    /** The level the spotter believes the room has (dB) — for the log only. */
    public float hint = 999;

    public EarEnd(int mode) {
        this.mode = mode;
        this.voiced = mode == 1 ? 1 : 0;
        this.minAfter = RATE * 4 / 10;
    }

    /**
     * The audio before the listening (the phrase the spotter heard and the room before it): it teaches the room's level
     * and the voice's peak, nothing ends in it.
     */
    public void prime(short[] pre, int from, int len) {
        int keepN = n;
        for (int i = 0; i < len; i++) {
            push(pre[from + i]);
        }
        n = keepN;
        quiet = 0;
    }

    /** One sample; true when the listening is over. */
    public boolean push(short s) {
        n++;
        sum += (double) s * s;
        if (++blockN < BLOCK) {
            return false;
        }
        float db = (float) (10 * Math.log10(sum / blockN + 1));
        sum = 0;
        blockN = 0;
        blocks++;
        peakDb = Math.max(peakDb, db);
        noiseDb = Math.min(noiseDb, db);                  // the room = this listening's quietest 100 ms
        if (db > noiseDb + 8) {
            voiced++;
        }
        if (db < Math.max(noiseDb + 6, peakDb - 12)) {
            quiet++;
        } else {
            quiet = 0;                                     // the quiet must be one stretch
        }
        if (mode == 2 && voiced == 0 && blocks >= NOTHING_BLOCKS) {
            return true;
        }
        return voiced > 0 && quiet >= QUIET_BLOCKS && n >= minAfter || n >= MAX_AFTER + (mode == 2 ? RATE * 2 : 0);
    }

    public boolean heardSpeech() {
        return voiced > 0;
    }

    public float seconds() {
        return n / (float) RATE;
    }
}
