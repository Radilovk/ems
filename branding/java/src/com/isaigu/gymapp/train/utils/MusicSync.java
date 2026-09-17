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
 * Microphone → liveStrength (0–100). Strength is applied in ONE place only:
 * CommandUtil.getPartsParamsPdu (build patch), when the app already sends a
 * work-phase impulse. This class never calls TrainItem or sendPulse.
 */
public class MusicSync {
    static final int PERMISSION_REQUEST = 0x4254;
    static final int ERROR_DENIED = 0x7f0d010d;
    static final int ERROR_MIC = 0x7f0d010e;

    private static final double ATTACK = 0.70;
    private static final double RELEASE = 0.45;
    private static final double PEAK_DECAY = 0.988;
    private static final int AUDIO_BUFFER_SAMPLES = 512;
    private static final long SAMPLE_INTERVAL_MS = 20L;
    private static final long UI_INTERVAL_MS = 100L;

    private static AudioRecord audioRecord;
    private static Handler handler;
    private static Thread audioThread;
    private static Activity hostActivity;
    private static TrainItem targetItem;
    private static int sensitivity = 20;
    static boolean running;
    static volatile int liveStrength;

    private static volatile double smoothedRms;
    private static volatile double trackedPeakRms = 300.0;
    private static long lastUiMs;
    private static final short[] audioBuffer = new short[AUDIO_BUFFER_SAMPLES];

    static void ensureHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
    }

    private static void resetAudioLevels() {
        smoothedRms = 0.0;
        trackedPeakRms = 300.0;
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
        return ctx != null
                && ContextCompat.checkSelfPermission(ctx, "android.permission.RECORD_AUDIO") == 0;
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

    private static boolean tryOpen(int source, int rate) {
        try {
            int minBuf = AudioRecord.getMinBufferSize(
                    rate, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
            if (minBuf <= 0) {
                return false;
            }
            int bufSize = Math.max(minBuf, AUDIO_BUFFER_SAMPLES * 2);
            AudioRecord rec;
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                AudioFormat format = new AudioFormat.Builder()
                        .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
                        .setSampleRate(rate)
                        .setChannelMask(AudioFormat.CHANNEL_IN_MONO)
                        .build();
                rec = new AudioRecord.Builder()
                        .setAudioSource(source)
                        .setAudioFormat(format)
                        .setBufferSizeInBytes(bufSize)
                        .build();
            } else {
                rec = new AudioRecord(source, rate, AudioFormat.CHANNEL_IN_MONO,
                        AudioFormat.ENCODING_PCM_16BIT, bufSize);
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
        int[][] configs = new int[][]{
                {MediaRecorder.AudioSource.MIC, 44100},
                {MediaRecorder.AudioSource.MIC, 16000},
                {MediaRecorder.AudioSource.DEFAULT, 44100},
        };
        for (int i = 0; i < configs.length; i++) {
            if (tryOpen(configs[i][0], configs[i][1])) {
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
        if (trackedPeakRms < 80.0) {
            trackedPeakRms = 80.0;
        }
    }

    /** 0–100 music intensity; multiplied by slider ceiling in PDU hook. */
    private static int sampleIntensity(AudioRecord rec) {
        if (rec == null) {
            return liveStrength;
        }
        int read = rec.read(audioBuffer, 0, audioBuffer.length);
        if (read <= 0) {
            return liveStrength;
        }

        double rms = measureRms(audioBuffer, read);
        updateEnvelope(rms);

        double gateRatio = 0.18 - (sensitivity / 100.0) * 0.14;
        if (gateRatio < 0.05) {
            gateRatio = 0.05;
        }
        double noiseGate = Math.max(35.0, trackedPeakRms * gateRatio);
        if (smoothedRms <= noiseGate) {
            return 0;
        }

        double span = trackedPeakRms - noiseGate;
        if (span < 25.0) {
            span = 25.0;
        }
        double level = (smoothedRms - noiseGate) / span;
        if (level < 0.0) {
            level = 0.0;
        } else if (level > 1.0) {
            level = 1.0;
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
        if (now - lastUiMs < UI_INTERVAL_MS) {
            return;
        }
        lastUiMs = now;
        ensureHandler();
        final int display = getEffectiveStrength();
        handler.post(new Runnable() {
            @Override
            public void run() {
                if (running) {
                    MusicSyncHelper.showActive(display);
                }
            }
        });
    }

    private static void stopCaptureOnly() {
        running = false;
        Thread thread = audioThread;
        audioThread = null;
        if (thread != null) {
            try {
                thread.join(400L);
            } catch (Throwable ignored) {
            }
        }
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        releaseAudio();
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
            audioThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    while (running) {
                        AudioRecord r = audioRecord;
                        if (r == null) {
                            break;
                        }
                        int next = sampleIntensity(r);
                        if (next != liveStrength) {
                            liveStrength = next;
                            maybeUpdateUi();
                        }
                        try {
                            Thread.sleep(SAMPLE_INTERVAL_MS);
                        } catch (InterruptedException e) {
                            break;
                        }
                    }
                }
            }, "MusicSyncMic");
            audioThread.start();
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

    public static void setTargetItem(TrainItem item) {
        targetItem = item;
    }

    public static void setTargetMacAddress(String macAddress) {
        // kept for MusicSyncHelper; targeting uses live TrainItem from gear dialog
    }

    public static void setSensitivity(int min) {
        sensitivity = Math.min(Math.max(min, 0), 100);
    }

    public static void start(Activity activity, int min, int unusedMax) {
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
        targetItem = null;
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
