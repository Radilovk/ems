package com.isaigu.gymapp.bodytech;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Log;

/**
 * Sound signals of a bodytech suit, from the tablet (owner, 1.1.355), in Morse marks: start "...-", pause / stop "-",
 * link problem "..." (at most once every {@link #LOST_GAP_MS}). Made to be pleasant yet heard in a gym (1.1.359):
 * a bell-like tone — a sine with a soft 2nd and 3rd harmonic (carries over noise, not harsh like a square wave),
 * 8 ms soft attack, exponential decay; dot 880 Hz (A5) 120 ms, dash 1319 Hz (E6, a perfect fifth up) 240 ms, gap 120 ms.
 * The whole signal is one PCM buffer on one AudioTrack: exact timing, no timers. A new signal cuts the old one.
 */
public final class BtBeep {
    private static final String TAG = "BtBeep";
    static final int RATE = 24000, FREQ_DOT = 880, FREQ_DASH = 1319, DOT_MS = 120, DASH_MS = 240, GAP_MS = 120, ATTACK_MS = 8, RELEASE_MS = 8;
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
            int freq = marks.charAt(i) == '-' ? FREQ_DASH : FREQ_DOT;
            int att = ATTACK_MS * RATE / 1000;
            int rel = RELEASE_MS * RATE / 1000;
            for (int k = 0; k < len; k++) {
                double env = Math.exp(-2.2 * k / len);                 // bell-like decay (ends at ~11 %)
                if (k < att) env *= (double) k / att;                  // soft attack, no click
                if (k > len - rel) env *= (double) (len - k) / rel;    // soft end
                double w = 2 * Math.PI * freq * k / RATE;
                double v = Math.sin(w) + 0.4 * Math.sin(2 * w) + 0.2 * Math.sin(3 * w);   // a few harmonics: carries, not harsh
                out[at + k] = (short) (v / 1.6 * env * 22000);
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
