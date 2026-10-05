package com.isaigu.gymapp.ai;

import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.wearable.WearableBleDiagLog;

/**
 * The start signal of an automatic session (owner, 1.1.270): every start waits 3 s — three short beeps, one per
 * second, and a long one as the impulse begins: ". . . —". Plain sine tones (AudioTrack, music stream), so they
 * mix with background music and sound the same on every tablet. Named runnables only (dx).
 * The end of an exercise (the rest begins) is one long, lower tone (owner, 1.1.285) — distinct from the start.
 */
public final class AutoBeep {
    private static final int RATE = 22050;
    private static final int SHORT_HZ = 880;
    private static final int LONG_HZ = 1175;
    private static final int SHORT_MS = 130;
    private static final int LONG_MS = 650;
    private static final int END_HZ = 660;
    private static final int END_MS = 1400;

    private static final Handler handler = new Handler(Looper.getMainLooper());
    private static final Runnable SHORT = new Beep(false);
    private static short[] shortPcm;
    private static short[] longPcm;
    private static short[] endPcm;

    private AutoBeep() {}

    /** Three short beeps at goMs − 3, − 2, − 1 s (those still ahead); the long one is {@link #go()}. */
    public static void countdown(long goMs) {
        cancel();
        long now = System.currentTimeMillis();
        for (int k = 3; k >= 1; k--) {
            long at = goMs - k * 1000L - now;
            if (at >= -150) {
                handler.postDelayed(SHORT, Math.max(0, at));
            }
        }
    }

    public static void cancel() {
        handler.removeCallbacks(SHORT);
    }

    /** The long beep: the impulse starts now. */
    public static void go() {
        cancel();
        play(true);
    }

    /** One long tone: the exercise is over, the rest begins. */
    public static void end() {
        cancel();
        try {
            short[] pcm = endPcm();
            AudioTrack t = new AudioTrack(AudioManager.STREAM_MUSIC, RATE, AudioFormat.CHANNEL_OUT_MONO,
                    AudioFormat.ENCODING_PCM_16BIT, pcm.length * 2, AudioTrack.MODE_STATIC);
            t.write(pcm, 0, pcm.length);
            t.play();
            handler.postDelayed(new Release(t), END_MS + 300L);
        } catch (Throwable e) {
            WearableBleDiagLog.log("auto", "beep end: " + e);
        }
    }

    private static synchronized short[] endPcm() {
        if (endPcm == null) {
            endPcm = tone(END_HZ, END_MS);
        }
        return endPcm;
    }

    static final class Beep implements Runnable {
        private final boolean longOne;

        Beep(boolean longOne) {
            this.longOne = longOne;
        }

        @Override
        public void run() {
            play(longOne);
        }
    }

    static final class Release implements Runnable {
        private final AudioTrack track;

        Release(AudioTrack track) {
            this.track = track;
        }

        @Override
        public void run() {
            try {
                track.stop();
            } catch (Throwable ignored) {
            }
            try {
                track.release();
            } catch (Throwable ignored) {
            }
        }
    }

    private static void play(boolean longOne) {
        try {
            short[] pcm = pcm(longOne);
            AudioTrack t = new AudioTrack(AudioManager.STREAM_MUSIC, RATE, AudioFormat.CHANNEL_OUT_MONO,
                    AudioFormat.ENCODING_PCM_16BIT, pcm.length * 2, AudioTrack.MODE_STATIC);
            t.write(pcm, 0, pcm.length);
            t.play();
            handler.postDelayed(new Release(t), (longOne ? LONG_MS : SHORT_MS) + 300L);
        } catch (Throwable e) {
            WearableBleDiagLog.log("auto", "beep: " + e);
        }
    }

    private static synchronized short[] pcm(boolean longOne) {
        if (longOne) {
            if (longPcm == null) {
                longPcm = tone(LONG_HZ, LONG_MS);
            }
            return longPcm;
        }
        if (shortPcm == null) {
            shortPcm = tone(SHORT_HZ, SHORT_MS);
        }
        return shortPcm;
    }

    /** A sine with 8 ms fade in / out (no clicks). */
    static short[] tone(int hz, int ms) {
        int n = RATE * ms / 1000;
        int fade = RATE * 8 / 1000;
        short[] out = new short[n];
        for (int i = 0; i < n; i++) {
            double env = Math.min(1.0, Math.min(i, n - 1 - i) / (double) fade);
            out[i] = (short) Math.round(Math.sin(2 * Math.PI * hz * i / RATE) * env * 0.8 * Short.MAX_VALUE);
        }
        return out;
    }
}
