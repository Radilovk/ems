package com.isaigu.gymapp.train.utils;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;

/**
 * Estimates speaker output delay from device audio properties (no manual tuning).
 */
public final class AudioOutputLatency {
    private AudioOutputLatency() {
    }

    /**
     * Approximate MediaPlayer position → heard-audio offset in milliseconds.
     * Uses {@link AudioManager} buffer size/sample rate when available.
     */
    public static int estimatePlaybackOffsetMs(Context context) {
        if (context == null) {
            return 40;
        }
        AudioManager am = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (am == null) {
            return 40;
        }

        int sampleRate = 44100;
        int framesPerBuffer = 256;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            try {
                String rate = am.getProperty(AudioManager.PROPERTY_OUTPUT_SAMPLE_RATE);
                if (rate != null) {
                    sampleRate = Integer.parseInt(rate);
                }
            } catch (Throwable ignored) {
            }
            try {
                String frames = am.getProperty(AudioManager.PROPERTY_OUTPUT_FRAMES_PER_BUFFER);
                if (frames != null) {
                    framesPerBuffer = Integer.parseInt(frames);
                }
            } catch (Throwable ignored) {
            }
        }
        if (sampleRate < 8000) {
            sampleRate = 44100;
        }
        if (framesPerBuffer < 64) {
            framesPerBuffer = 256;
        }

        // One HAL buffer + typical MediaPlayer mixer/decode pipeline (~2 extra periods).
        int bufferMs = (int) Math.ceil(framesPerBuffer * 1000.0 / sampleRate);
        int offset = bufferMs * 3 + 15;
        if (offset < 20) {
            offset = 20;
        } else if (offset > 120) {
            offset = 120;
        }
        return offset;
    }
}
