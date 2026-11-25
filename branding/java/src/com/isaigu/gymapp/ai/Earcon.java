package com.isaigu.gymapp.ai;

import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;

/**
 * The listening sounds (owner, 1.1.563: "a clear sound when it listens and I can talk — now a beep that sometimes
 * passes unnoticed"). Synthesised here, not the system's beep: soft-edged sine notes (no click), loud enough over a
 * training's music, each with its own shape so the ear tells them apart without looking:
 * <ul>
 * <li>{@link #ready()} — a rising chime (two notes, a fifth up): "speak now", the recognizer really hears.</li>
 * <li>{@link #again()} — one soft note: it listens on without "тренер" (the dialogue).</li>
 * <li>{@link #closed()} — a falling pair, quieter: it stopped listening; say "тренер" again.</li>
 * </ul>
 */
public final class Earcon {
    private Earcon() {}

    static final int RATE = 24000;
    private static short[] ready;
    private static short[] again;
    private static short[] closed;

    public static void ready() {
        if (ready == null) {
            ready = notes(new double[] {784, 1175}, new int[] {110, 190}, 0.55);   // G5 → D6
        }
        play(ready);
    }

    public static void again() {
        if (again == null) {
            again = notes(new double[] {988}, new int[] {150}, 0.4);              // B5
        }
        play(again);
    }

    /** Two soft short ticks: heard, the AI is thinking (1.1.565). */
    public static void thinking() {
        if (thinking == null) {
            thinking = notes(new double[] {660, 0, 660}, new int[] {45, 70, 45}, 0.22);
        }
        play(thinking);
    }

    private static short[] thinking;

    public static void closed() {
        if (closed == null) {
            closed = notes(new double[] {880, 587}, new int[] {100, 160}, 0.3);    // A5 → D5
        }
        play(closed);
    }

    /** Sine notes one after another, each with a short fade in / out (no click), a soft second harmonic. */
    static short[] notes(double[] hz, int[] ms, double level) {
        int n = 0;
        for (int m : ms) {
            n += RATE * m / 1000;
        }
        short[] out = new short[n];
        int at = 0;
        for (int k = 0; k < hz.length; k++) {
            int len = RATE * ms[k] / 1000;
            int fade = Math.min(len / 3, RATE * 12 / 1000);
            for (int i = 0; i < len; i++) {
                double env = Math.min(1, Math.min(i / (double) fade, (len - i) / (double) (fade * 2.5)));
                double t = i / (double) RATE;
                double v = Math.sin(2 * Math.PI * hz[k] * t) + 0.25 * Math.sin(4 * Math.PI * hz[k] * t);
                out[at + i] = (short) Math.round(v / 1.25 * env * level * 32767);
            }
            at += len;
        }
        return out;
    }

    static void play(short[] pcm) {
        try {
            int bytes = pcm.length * 2;
            AudioTrack t = new AudioTrack(AudioManager.STREAM_MUSIC, RATE, AudioFormat.CHANNEL_OUT_MONO,
                    AudioFormat.ENCODING_PCM_16BIT, bytes, AudioTrack.MODE_STATIC);
            t.write(pcm, 0, pcm.length);
            t.setNotificationMarkerPosition(pcm.length);
            t.setPlaybackPositionUpdateListener(new Release());
            t.play();
        } catch (Throwable ignored) {
            // no sound device: the board still shows 🎙
        }
    }

    static final class Release implements AudioTrack.OnPlaybackPositionUpdateListener {
        @Override
        public void onMarkerReached(AudioTrack t) {
            try {
                t.release();
            } catch (Throwable ignored) {
            }
        }

        @Override
        public void onPeriodicNotification(AudioTrack t) {
        }
    }
}
