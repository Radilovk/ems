package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.dialog.MusicSyncHelper;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.AndroidUtils;

/**
 * Tracks microphone level as 0-100% intensity. Applied only during the work phase
 * of each impulse cycle (see CommandUtil.getPartsParamsPdu hook). Does not call
 * sendPulse — the app's pulseContinue/pulsePause timer owns rhythm.
 */
public class MusicSync {
    static final int PERMISSION_REQUEST = 0x4254;
    static final int ERROR_DENIED = 0x7f0d010d;
    static final int ERROR_MIC = 0x7f0d010e;

    private static final double ATTACK = 0.62;
    private static final double RELEASE = 0.38;
    private static final double PEAK_DECAY = 0.985;
    private static final double CURVE = 0.82;
    private static final double ACTIVE_LEVEL = 0.06;
    private static final int AUDIO_BUFFER_SAMPLES = 512;
    private static final long UI_MIN_INTERVAL_MS = 80L;

    private static AudioRecord audioRecord;
    private static Handler handler;
    private static Thread audioThread;
    private static Activity hostActivity;
    private static TrainItem targetItem;
    private static String targetMacAddress;
    private static int sensitivity = 20;
    static boolean running;
    /** Music intensity 0-100 (% of circle-slider ceiling). Read at each work-phase PDU. */
    static volatile int liveStrength;

    private static volatile double smoothedRms;
    private static volatile double trackedPeakRms = 400.0;
    private static long lastUiMs;
    private static final short[] audioBuffer = new short[AUDIO_BUFFER_SAMPLES];

    static void ensureHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
    }

    private static void resetAudioLevels() {
        smoothedRms = 0.0;
        trackedPeakRms = 400.0;
        lastUiMs = 0L;
    }

    private static Context permissionContext() {
        if (hostActivity != null) {
            return hostActivity;
        }
        return MainActivity.getInstance();
    }

    static boolean hasRecordPermission() {
        Context ctx = permissionContext();
        if (ctx == null) {
            return false;
        }
        return ContextCompat.checkSelfPermission(ctx, "android.permission.RECORD_AUDIO") == 0;
    }

    static void releaseAudio() {
        AudioRecord rec = audioRecord;
        audioRecord = null;
        if (rec == null) {
            return;
        }
        try {
            if (rec.getState() == AudioRecord.STATE_INITIALIZED
                    && rec.getRecordingState() == AudioRecord.RECORDSTATE_RECORDING) {
                rec.stop();
            }
        } catch (Throwable ignored) {
        }
        try {
            rec.release();
        } catch (Throwable ignored) {
        }
    }

    private static boolean tryOpen(int source, int rate, int channel, int encoding) {
        try {
            int minBuf = AudioRecord.getMinBufferSize(rate, channel, encoding);
            if (minBuf <= 0) {
                return false;
            }
            int bufSize = Math.max(minBuf, AUDIO_BUFFER_SAMPLES * 2);
            AudioRecord rec;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                AudioFormat format = new AudioFormat.Builder()
                        .setEncoding(encoding)
                        .setSampleRate(rate)
                        .setChannelMask(channel)
                        .build();
                rec = new AudioRecord.Builder()
                        .setAudioSource(source)
                        .setAudioFormat(format)
                        .setBufferSizeInBytes(bufSize)
                        .build();
            } else {
                rec = new AudioRecord(source, rate, channel, encoding, bufSize);
            }
            if (rec.getState() != AudioRecord.STATE_INITIALIZED) {
                rec.release();
                return false;
            }
            audioRecord = rec;
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean openMicrophone() {
        int mono = AudioFormat.CHANNEL_IN_MONO;
        int pcm16 = AudioFormat.ENCODING_PCM_16BIT;
        int[][] configs = new int[][]{
                {MediaRecorder.AudioSource.MIC, 44100},
                {MediaRecorder.AudioSource.MIC, 16000},
                {MediaRecorder.AudioSource.DEFAULT, 44100},
                {MediaRecorder.AudioSource.VOICE_RECOGNITION, 44100},
        };
        for (int i = 0; i < configs.length; i++) {
            if (tryOpen(configs[i][0], configs[i][1], mono, pcm16)) {
                return true;
            }
        }
        return false;
    }

    public static int getSliderCeiling() {
        TrainItem item = targetItem;
        if (item == null) {
            return 100;
        }
        try {
            TrainProgram program = item.getTrainProgram();
            if (program == null) {
                return 100;
            }
            ProgramDataBean data = program.matchProgram();
            if (data == null) {
                return 100;
            }
            int ceiling = data.strenth;
            if (ceiling < 0) {
                return 0;
            }
            if (ceiling > 100) {
                return 100;
            }
            return ceiling;
        } catch (Throwable ignored) {
            return 100;
        }
    }

    public static int getEffectiveStrength() {
        return getSliderCeiling() * liveStrength / 100;
    }

    private static double measureRms(short[] buffer, int count) {
        long sumSq = 0L;
        for (int i = 0; i < count; i++) {
            sumSq += (long) buffer[i] * buffer[i];
        }
        return Math.sqrt((double) sumSq / count);
    }

    private static void updateEnvelope(double rms) {
        if (rms > smoothedRms) {
            smoothedRms += ATTACK * (rms - smoothedRms);
        } else {
            smoothedRms += RELEASE * (rms - smoothedRms);
        }
        if (rms > trackedPeakRms) {
            trackedPeakRms = rms;
        } else {
            trackedPeakRms = trackedPeakRms * PEAK_DECAY + rms * (1.0 - PEAK_DECAY);
        }
        if (trackedPeakRms < 100.0) {
            trackedPeakRms = 100.0;
        }
    }

    private static int sampleStrength(AudioRecord rec) {
        if (rec == null) {
            return liveStrength;
        }
        int read = rec.read(audioBuffer, 0, audioBuffer.length);
        if (read <= 0) {
            return liveStrength;
        }

        double rms = measureRms(audioBuffer, read);
        updateEnvelope(rms);

        double gateRatio = 0.20 - (sensitivity / 100.0) * 0.15;
        if (gateRatio < 0.05) {
            gateRatio = 0.05;
        }
        double noiseGate = Math.max(40.0, trackedPeakRms * gateRatio);
        if (smoothedRms < noiseGate) {
            return 0;
        }

        double span = trackedPeakRms - noiseGate;
        if (span < 30.0) {
            span = 30.0;
        }
        double level = (smoothedRms - noiseGate) / span;
        if (level < 0.0) {
            level = 0.0;
        }
        if (level > 1.0) {
            level = 1.0;
        }
        level = Math.pow(level, CURVE);
        if (level < ACTIVE_LEVEL) {
            return 0;
        }

        int value = (int) Math.round(level * 100.0);
        if (value < 0) {
            return 0;
        }
        if (value > 100) {
            return 100;
        }
        return value;
    }

    private static void maybeUpdateUi() {
        long now = SystemClock.elapsedRealtime();
        if (now - lastUiMs < UI_MIN_INTERVAL_MS) {
            return;
        }
        lastUiMs = now;
        ensureHandler();
        final int display = getEffectiveStrength();
        handler.post(new UiUpdateRunnable(display));
    }

    private static void startAudioThread() {
        Thread thread = new Thread(new AudioLoopRunnable(), "MusicSyncAudio");
        thread.setPriority(Thread.NORM_PRIORITY);
        audioThread = thread;
        thread.start();
    }

    private static void stopAudioThread() {
        Thread thread = audioThread;
        audioThread = null;
        if (thread == null) {
            return;
        }
        try {
            thread.join(500L);
        } catch (Throwable ignored) {
        }
    }

    private static void stopCaptureOnly() {
        running = false;
        stopAudioThread();
        try {
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            releaseAudio();
        } catch (Throwable ignored) {
        }
        liveStrength = 0;
        resetAudioLevels();
    }

    static void startCapture() {
        if (!hasRecordPermission()) {
            MusicSyncHelper.showError(ERROR_DENIED);
            return;
        }
        releaseAudio();
        resetAudioLevels();
        try {
            if (!openMicrophone()) {
                MusicSyncHelper.showError(ERROR_MIC);
                return;
            }
            AudioRecord rec = audioRecord;
            if (rec == null || rec.getState() != AudioRecord.STATE_INITIALIZED) {
                MusicSyncHelper.showError(ERROR_MIC);
                return;
            }
            rec.startRecording();
            if (rec.getRecordingState() != AudioRecord.RECORDSTATE_RECORDING) {
                releaseAudio();
                MusicSyncHelper.showError(ERROR_MIC);
                return;
            }
            running = true;
            liveStrength = 0;
            MusicSyncHelper.showActive(0);
            startAudioThread();
        } catch (SecurityException se) {
            running = false;
            releaseAudio();
            MusicSyncHelper.showError(ERROR_DENIED);
        } catch (Throwable t) {
            running = false;
            releaseAudio();
            MusicSyncHelper.showError(ERROR_MIC);
        }
    }

    public static boolean isRunning() {
        return running;
    }

    public static int getLiveStrength() {
        return liveStrength;
    }

    public static Activity getHostActivity() {
        return hostActivity;
    }

    public static void setHostActivity(Activity activity) {
        hostActivity = activity;
    }

    public static void setTargetMacAddress(String macAddress) {
        targetMacAddress = macAddress;
    }

    public static void setTargetItem(TrainItem item) {
        targetItem = item;
    }

    public static void setSensitivity(int min) {
        sensitivity = Math.min(Math.max(min, 0), 100);
    }

    public static void start(Activity activity, int min, int max) {
        if (activity == null) {
            return;
        }
        hostActivity = activity;
        stopCaptureOnly();
        setSensitivity(min);
        if (hasRecordPermission()) {
            startCapture();
            return;
        }
        MusicSyncHelper.showPermission();
        AndroidUtils.requestPermission(activity, "android.permission.RECORD_AUDIO", PERMISSION_REQUEST,
                new PermissionCallback());
    }

    public static void stop() {
        stopCaptureOnly();
        targetMacAddress = null;
        targetItem = null;
    }

    static final class AudioLoopRunnable implements Runnable {
        @Override
        public void run() {
            while (running) {
                AudioRecord rec = audioRecord;
                if (rec == null) {
                    break;
                }
                int strength = sampleStrength(rec);
                if (strength != liveStrength) {
                    liveStrength = strength;
                    maybeUpdateUi();
                }
                try {
                    Thread.sleep(25L);
                } catch (InterruptedException ignored) {
                    break;
                }
            }
        }
    }

    static final class UiUpdateRunnable implements Runnable {
        private final int display;

        UiUpdateRunnable(int display) {
            this.display = display;
        }

        @Override
        public void run() {
            if (!running) {
                return;
            }
            MusicSyncHelper.showActive(display);
        }
    }

    static final class PermissionCallback implements AndroidUtils.RequestPermissionCallback {
        @Override
        public void onRequestPermission(String permission, int requestCode, boolean granted) {
            if (granted) {
                startCapture();
            } else {
                MusicSyncHelper.showError(ERROR_DENIED);
            }
        }
    }
}
