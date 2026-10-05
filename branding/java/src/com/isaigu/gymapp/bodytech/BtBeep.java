package com.isaigu.gymapp.bodytech;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Log;

/**
 * Sound signals of a bodytech suit, from the tablet (owner, 1.1.355; even and high since 1.1.356), in Morse marks:
 * start "...-", pause / stop "-", link problem "..." (at most once every {@link #LOST_GAP_MS}). One square-wave tone
 * (1200 Hz), dot 120 ms, dash 240 ms, gap 120 ms, the same loudness for every mark (soft 5 ms edges, no clicks).
 * The whole signal is one PCM buffer on one AudioTrack: exact timing, no timers. A new signal cuts the old one.
 */
public final class BtBeep {
    private static final String TAG = "BtBeep";
    static final int RATE = 24000, FREQ = 1200, DOT_MS = 120, DASH_MS = 240, GAP_MS = 120, EDGE_MS = 5;
    static final long LOST_GAP_MS = 5000L;
    private static AudioTrack track;
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

    /** The PCM (16 bit mono) of a pattern of '.' and '-'. */
    static short[] pcm(String marks) {
        int n = 0;
        for (int i = 0; i < marks.length(); i++) n += ms(marks.charAt(i)) + (i + 1 < marks.length() ? GAP_MS : 0);
        short[] out = new short[n * RATE / 1000];
        int at = 0;
        for (int i = 0; i < marks.length(); i++) {
            int len = ms(marks.charAt(i)) * RATE / 1000;
            int edge = EDGE_MS * RATE / 1000;
            for (int k = 0; k < len; k++) {
                double env = k < edge ? (double) k / edge : (k > len - edge ? (double) (len - k) / edge : 1.0);
                out[at + k] = (short) ((((long) k * FREQ * 2 / RATE) % 2 == 0 ? 1 : -1) * env * 16000);   // square wave
            }
            at += len + GAP_MS * RATE / 1000;
        }
        return out;
    }

    private static int ms(char c) {
        return c == '-' ? DASH_MS : DOT_MS;
    }

    private static synchronized void play(String marks) {
        try {
            release();
            short[] d = pcm(marks);
            AudioTrack t = new AudioTrack(
                    new AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_MEDIA)
                            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION).build(),
                    new AudioFormat.Builder().setEncoding(AudioFormat.ENCODING_PCM_16BIT).setSampleRate(RATE)
                            .setChannelMask(AudioFormat.CHANNEL_OUT_MONO).build(),
                    d.length * 2, AudioTrack.MODE_STATIC, AudioManager.AUDIO_SESSION_ID_GENERATE);
            t.write(d, 0, d.length);
            t.play();
            track = t;
        } catch (Throwable t) {
            Log.w(TAG, "beep: " + t);
        }
    }

    private static void release() {
        try {
            if (track != null) {
                track.stop();
                track.release();
            }
        } catch (Throwable t) {
            Log.w(TAG, "release: " + t);
        }
        track = null;
    }
}
