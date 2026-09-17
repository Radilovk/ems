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
import android.widget.TextView;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.dialog.MusicSyncHelper;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.AndroidUtils;
import com.isaigu.gymapp.widget.CircleSeekBar;

import java.lang.ref.WeakReference;

/**
 * Slider position at Start = strength ceiling (max mA %). Microphone yields music level 0–100%;
 * applied strength = ceiling × music% / 100. Sound moves the slider within [0, ceiling].
 */
public class MusicSync {
    static final int PERMISSION_REQUEST = 0x4254;
    static final int ERROR_DENIED = 0x7f0d010d;
    static final int ERROR_MIC = 0x7f0d010e;

    private static final double ATTACK = 0.75;
    private static final double RELEASE = 0.40;
    private static final double PEAK_DECAY = 0.985;
    private static final int AUDIO_BUFFER_SAMPLES = 512;
    private static final long SAMPLE_INTERVAL_MS = 20L;
    private static final long UI_INTERVAL_MS = 50L;
    private static final long APPLY_MIN_INTERVAL_MS = 50L;
    private static final int APPLY_MIN_DELTA = 2;

    private static AudioRecord audioRecord;
    private static Handler handler;
    private static Thread audioThread;
    private static Activity hostActivity;
    private static TrainItem targetItem;
    private static WeakReference<CircleSeekBar> seekBarRef;
    private static WeakReference<TextView> maLabelRef;
    private static int sensitivity = 20;
    static boolean running;
    /** Raw music intensity 0–100 (after noise gate), before ceiling scaling. */
    static volatile int liveStrength;
    /** Slider ceiling captured at Start from circle slider (max mA %). */
    static volatile int strengthCeiling = 100;

    private static volatile double smoothedRms;
    private static volatile double trackedPeakRms = 300.0;
    private static long lastUiMs;
    private static long lastApplyMs;
    private static int lastAppliedStrength = -1;
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
        lastApplyMs = 0L;
        lastAppliedStrength = -1;
    }

    public static void registerUi(CircleSeekBar seekBar, TextView maLabel, TrainItem item) {
        seekBarRef = seekBar != null ? new WeakReference<CircleSeekBar>(seekBar) : null;
        maLabelRef = maLabel != null ? new WeakReference<TextView>(maLabel) : null;
        if (item != null) {
            targetItem = item;
        }
    }

    private static int clampPercent(int value) {
        if (value < 0) {
            return 0;
        }
        if (value > 100) {
            return 100;
        }
        return value;
    }

    /** Read current circle-slider position as the manual strength ceiling. */
    private static void captureCeilingFromSlider() {
        TrainItem item = targetItem;
        if (item == null) {
            strengthCeiling = 100;
            return;
        }
        try {
            TrainProgram program = item.getTrainProgram();
            if (program == null) {
                strengthCeiling = 100;
                return;
            }
            ProgramDataBean bean = program.matchProgram();
            if (bean == null) {
                strengthCeiling = 100;
                return;
            }
            int ceiling = clampPercent(bean.strenth);
            if (ceiling < 1) {
                ceiling = 1;
            }
            strengthCeiling = ceiling;
        } catch (Throwable ignored) {
            strengthCeiling = 100;
        }
    }

    /** applied = ceiling × musicPercent / 100 */
    private static int scaleToCeiling(int musicPercent) {
        return clampPercent(strengthCeiling * clampPercent(musicPercent) / 100);
    }

    /** Sets bean.strenth, moves slider, sends BLE — same as manual slider release. */
    private static void applyStrengthToSlider(int appliedStrength) {
        appliedStrength = clampPercent(appliedStrength);
        TrainItem item = targetItem;
        if (item == null) {
            return;
        }

        TrainProgram program = item.getTrainProgram();
        if (program == null) {
            return;
        }
        ProgramDataBean bean = program.matchProgram();
        if (bean == null) {
            return;
        }

        bean.strenth = appliedStrength;
        lastAppliedStrength = appliedStrength;

        CircleSeekBar bar = seekBarRef != null ? seekBarRef.get() : null;
        if (bar != null) {
            bar.setCurProcess(appliedStrength * 75 / 100);
        }

        TextView ma = maLabelRef != null ? maLabelRef.get() : null;
        if (ma != null) {
            ma.setText(appliedStrength + " %");
        }

        if (item.data != null && item.data.connected) {
            item.onParamsChange();
        }
    }

    private static void maybeApplyMusicLevel(int musicPercent) {
        musicPercent = clampPercent(musicPercent);
        liveStrength = musicPercent;
        int applied = scaleToCeiling(musicPercent);
        if (applied == lastAppliedStrength) {
            return;
        }
        long now = SystemClock.elapsedRealtime();
        if (Math.abs(applied - lastAppliedStrength) < APPLY_MIN_DELTA
                && now - lastApplyMs < APPLY_MIN_INTERVAL_MS) {
            return;
        }
        if (now - lastApplyMs < APPLY_MIN_INTERVAL_MS) {
            return;
        }
        lastApplyMs = now;
        ensureHandler();
        final int value = applied;
        handler.post(new Runnable() {
            @Override
            public void run() {
                if (running) {
                    applyStrengthToSlider(value);
                    maybeUpdateUi();
                }
            }
        });
    }

    private static void selectStrengthMode(TrainItem item) {
        if (item == null) {
            return;
        }
        try {
            item.setMaSelected(true);
            item.setHzSelected(false);
            item.setPauseMaSelected(false);
            item.setPauseHzSelected(false);
        } catch (Throwable ignored) {
        }
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

    public static int getStrengthCeiling() {
        return strengthCeiling;
    }

    /** Applied impulse strength % (after ceiling scaling). */
    public static int getEffectiveStrength() {
        return lastAppliedStrength < 0 ? 0 : lastAppliedStrength;
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

    /**
     * Sensitivity (gear, 0–100) sets noise gate: higher = reacts to quieter sound.
     * gateRatio = 0.18 − sensitivity×0.14/100 (min 0.05); threshold = max(35, peak×gateRatio).
     */
    private static int sampleMusicPercent(AudioRecord rec) {
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

        return clampPercent((int) Math.round(level * 100.0));
    }

    private static void maybeUpdateUi() {
        long now = SystemClock.elapsedRealtime();
        if (now - lastUiMs < UI_INTERVAL_MS) {
            return;
        }
        lastUiMs = now;
        ensureHandler();
        final int applied = getEffectiveStrength();
        final int ceiling = strengthCeiling;
        handler.post(new Runnable() {
            @Override
            public void run() {
                if (running) {
                    MusicSyncHelper.showActive(applied, ceiling);
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
        selectStrengthMode(targetItem);
        captureCeilingFromSlider();
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
            MusicSyncHelper.showActive(0, strengthCeiling);
            audioThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    while (running) {
                        AudioRecord r = audioRecord;
                        if (r == null) {
                            break;
                        }
                        maybeApplyMusicLevel(sampleMusicPercent(r));
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
        selectStrengthMode(targetItem);
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
