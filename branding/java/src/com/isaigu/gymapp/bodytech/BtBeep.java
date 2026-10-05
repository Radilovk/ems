package com.isaigu.gymapp.bodytech;

import android.media.AudioManager;
import android.media.ToneGenerator;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;

/**
 * Sound signals of a bodytech suit, from the tablet (owner, 1.1.355), in Morse marks: start "...-", pause / stop "-",
 * link problem "..." (at most once every {@link #LOST_GAP_MS}). One signal at a time; a new one cuts the old.
 */
public final class BtBeep {
    private static final String TAG = "BtBeep";
    static final int DOT_MS = 110, DASH_MS = 420, GAP_MS = 110;
    static final long LOST_GAP_MS = 5000L;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static ToneGenerator tone;
    private static int seq;
    private static long lastLost;

    private BtBeep() {}

    public static void start() {
        play("...-");
    }

    public static void stop() {
        play("-");
    }

    public static synchronized void lost() {
        long now = SystemClock.elapsedRealtime();
        if (now - lastLost < LOST_GAP_MS) return;
        lastLost = now;
        play("...");
    }

    private static synchronized void play(String marks) {
        seq++;
        MAIN.post(new Step(seq, marks, 0));
    }

    static synchronized boolean current(int s) {
        return s == seq;
    }

    static synchronized ToneGenerator gen() {
        if (tone == null) tone = new ToneGenerator(AudioManager.STREAM_MUSIC, 100);
        return tone;
    }

    static final class Step implements Runnable {
        final int s;
        final String marks;
        final int i;

        Step(int s, String marks, int i) {
            this.s = s;
            this.marks = marks;
            this.i = i;
        }

        @Override
        public void run() {
            try {
                if (!current(s) || i >= marks.length()) return;
                int ms = marks.charAt(i) == '-' ? DASH_MS : DOT_MS;
                ToneGenerator g = gen();
                g.stopTone();
                g.startTone(ToneGenerator.TONE_DTMF_D, ms);
                MAIN.postDelayed(new Step(s, marks, i + 1), ms + GAP_MS);
            } catch (Throwable t) {
                Log.w(TAG, "beep: " + t);
            }
        }
    }
}
