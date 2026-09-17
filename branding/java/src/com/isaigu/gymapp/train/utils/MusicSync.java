package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.dialog.MusicPlayerHelper;
import com.isaigu.gymapp.dialog.MusicSyncHelper;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.AndroidUtils;

/**
 * Low-latency mic → {@link MasterStrengthControl#setMasterStrength(int)}.
 * Coalesced handler.post apply on main thread; short sleep in mic loop to avoid CPU spin.
 */
public class MusicSync {
    static final int PERMISSION_REQUEST = 0x4254;
    static final int ERROR_DENIED = 0x7f0d010d;
    static final int ERROR_MIC = 0x7f0d010e;
    static final int ERROR_PLAYER = 0x7f0d0113;

    private static final double ATTACK = 0.94;
    private static final double RELEASE = 0.32;
    private static final double PEAK_DECAY = 0.978;
    private static final int AUDIO_BUFFER_SAMPLES = 128;
    private static final long UI_INTERVAL_MS = 80L;
    private static final long BLE_MIN_INTERVAL_MS = 16L;
    private static final long READ_YIELD_MS = 5L;

    private static AudioRecord audioRecord;
    private static MusicPlayerEngine playerEngine;
    private static Handler handler;
    private static Thread audioThread;
    private static Activity hostActivity;
    private static int sensitivity = 20;
    private static boolean playerMode;
    static boolean running;
    static volatile int liveStrength;

    private static volatile double smoothedRms;
    private static volatile double trackedPeakRms = 300.0;
    private static volatile float playerSmoothedSound;
    private static long lastUiMs;
    private static long lastBleMs;
    private static int lastPushedApplied = -1;
    private static volatile int pendingApplied;
    private static final short[] audioBuffer = new short[AUDIO_BUFFER_SAMPLES];

    private static final Runnable applyRunnable = new Runnable() {
        @Override
        public void run() {
            if (!running) {
                return;
            }
            int value = pendingApplied;
            if (value == lastPushedApplied) {
                return;
            }
            lastPushedApplied = value;
            lastBleMs = SystemClock.elapsedRealtime();
            MasterStrengthControl.setMasterStrength(value, true);
            maybeUpdateUi();
        }
    };

    static void ensureHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
    }

    private static void resetAudioLevels() {
        smoothedRms = 0.0;
        trackedPeakRms = 300.0;
        lastUiMs = 0L;
        lastBleMs = 0L;
        lastPushedApplied = -1;
        pendingApplied = 0;
        MasterStrengthControl.resetApplied();
    }

    public static void registerUi(
            com.isaigu.gymapp.widget.CircleSeekBar seekBar,
            android.widget.TextView maLabel,
            TrainItem item) {
        MasterStrengthControl.bind(seekBar, maLabel, item);
    }

    public static void setTargetItem(TrainItem item) {
        MasterStrengthControl.setTarget(item);
    }

    private static void pushSoundLevel(int soundPercent) {
        int level = soundPercent;
        if (level < 0) {
            level = 0;
        } else if (level > 100) {
            level = 100;
        }
        if (playerMode) {
            float target = level / 100f;
            float attack = 0.92f;
            float release = 0.62f;
            float rate = target > playerSmoothedSound ? attack : release;
            playerSmoothedSound += (target - playerSmoothedSound) * rate;
            level = Math.round(playerSmoothedSound * 100f);
        }
        liveStrength = level;
        int applied = MasterStrengthControl.scaleFromSound(level);
        if (applied == lastPushedApplied && applied == pendingApplied) {
            return;
        }
        pendingApplied = applied;
        if (playerMode) {
            ensureHandler();
            handler.removeCallbacks(applyRunnable);
            applyRunnable.run();
            return;
        }
        long now = SystemClock.elapsedRealtime();
        if (now - lastBleMs < BLE_MIN_INTERVAL_MS && applied != 0) {
            int delta = Math.abs(applied - lastPushedApplied);
            if (delta < 2 && applied != 0) {
                return;
            }
        }
        ensureHandler();
        handler.removeCallbacks(applyRunnable);
        handler.post(applyRunnable);
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
            int bufSize = minBuf;
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
                {MediaRecorder.AudioSource.MIC, 16000},
                {MediaRecorder.AudioSource.MIC, 44100},
                {MediaRecorder.AudioSource.DEFAULT, 16000},
        };
        for (int i = 0; i < configs.length; i++) {
            if (tryOpen(configs[i][0], configs[i][1])) {
                return true;
            }
        }
        return false;
    }

    public static int getStrengthCeiling() {
        return MasterStrengthControl.getCeiling();
    }

    public static int getEffectiveStrength() {
        return MasterStrengthControl.getLastApplied();
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

    static int waveformToSoundPercent(byte[] waveform) {
        if (waveform == null || waveform.length == 0) {
            return liveStrength;
        }
        long sumSq = 0L;
        for (int i = 0; i < waveform.length; i++) {
            int sample = waveform[i] + 128;
            sumSq += (long) sample * sample;
        }
        double rms = Math.sqrt((double) sumSq / waveform.length);
        return envelopeToSoundPercent(rms);
    }

    static int waveformToSoundPercent(short[] samples, int count) {
        if (samples == null || count <= 0) {
            return liveStrength;
        }
        return envelopeToSoundPercent(measureRms(samples, count));
    }

    private static int envelopeToSoundPercent(double rms) {
        updateEnvelope(rms);
        return clampPercent(SoundEnvelopeMapper.rmsToPercent(smoothedRms, trackedPeakRms, sensitivity));
    }

    private static int sampleSoundPercent(AudioRecord rec) {
        if (rec == null) {
            return liveStrength;
        }
        int read = rec.read(audioBuffer, 0, audioBuffer.length);
        if (read <= 0) {
            return liveStrength;
        }
        return envelopeToSoundPercent(measureRms(audioBuffer, read));
    }

    private static void maybeUpdateUi() {
        long now = SystemClock.elapsedRealtime();
        if (now - lastUiMs < UI_INTERVAL_MS) {
            return;
        }
        lastUiMs = now;
        final int applied = getEffectiveStrength();
        final int ceiling = getStrengthCeiling();
        MusicSyncHelper.showActive(applied, ceiling);
        MusicPlayerHelper.showActive(applied, ceiling);
    }

    private static void releasePlayer() {
        MusicPlayerEngine engine = playerEngine;
        playerEngine = null;
        if (engine != null) {
            engine.release();
        }
    }

    private static void stopCaptureOnly() {
        running = false;
        playerMode = false;
        Thread thread = audioThread;
        audioThread = null;
        if (thread != null) {
            try {
                thread.join(400L);
            } catch (Throwable ignored) {
            }
        }
        if (handler != null) {
            handler.removeCallbacks(applyRunnable);
        }
        releaseAudio();
        releasePlayer();
        liveStrength = 0;
        resetAudioLevels();
        setSyncActive(false);
    }

    static void startCapture() {
        if (!hasRecordPermission()) {
            MusicSyncHelper.showError(ERROR_DENIED);
            return;
        }
        releaseAudio();
        MasterStrengthControl.ensureMaMode();
        resetAudioLevels();
        MasterStrengthControl.captureCeilingFromSlider();
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
            setSyncActive(true);
            liveStrength = 0;
            MusicSyncHelper.showActive(0, getStrengthCeiling());
            audioThread = new Thread(new Runnable() {
                @Override
                public void run() {
                    android.os.Process.setThreadPriority(
                            android.os.Process.THREAD_PRIORITY_URGENT_AUDIO);
                    while (running) {
                        AudioRecord r = audioRecord;
                        if (r == null) {
                            break;
                        }
                        pushSoundLevel(sampleSoundPercent(r));
                        try {
                            Thread.sleep(READ_YIELD_MS);
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

    public static boolean isPlayerMode() {
        return playerMode;
    }

    public static boolean isTargetItem(TrainItem item) {
        if (item == null) {
            return false;
        }
        TrainItem target = MasterStrengthControl.getTarget();
        return target == item;
    }

    /** +/− with MA index: adjust ceiling, re-apply current sound envelope. */
    public static boolean adjustCeiling(int delta) {
        if (!running || delta == 0) {
            return false;
        }
        MasterStrengthControl.adjustCeiling(delta);
        int applied = MasterStrengthControl.scaleFromSound(liveStrength);
        lastPushedApplied = -1;
        pendingApplied = applied;
        ensureHandler();
        handler.removeCallbacks(applyRunnable);
        applyRunnable.run();
        MasterStrengthControl.refreshSyncLabel();
        maybeUpdateUi();
        return true;
    }

    private static void setSyncActive(boolean active) {
        MasterStrengthControl.setSyncActive(active);
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
        MasterStrengthControl.ensureMaMode();
        if (hasRecordPermission()) {
            startCapture();
            return;
        }
        MusicSyncHelper.showPermission();
        AndroidUtils.requestPermission(activity, "android.permission.RECORD_AUDIO", PERMISSION_REQUEST,
                new PermissionCallback());
    }

    public static void startPlayer(Activity activity, Uri uri, int min) {
        if (activity == null || uri == null) {
            return;
        }
        hostActivity = activity;
        stopCaptureOnly();
        setSensitivity(min);
        MasterStrengthControl.ensureMaMode();
        resetAudioLevels();
        playerSmoothedSound = 0f;
        MasterStrengthControl.captureCeilingFromSlider();
        MusicPlayerHelper.showPreparing();
        new Thread(new PlayerPrepareTask(activity, uri), "music-player-prepare").start();
    }

    private static void finishStartPlayer(Activity activity, Uri uri, int[] envelope) {
        if (activity == null || uri == null) {
            MusicPlayerHelper.showError(ERROR_PLAYER);
            return;
        }
        try {
            MusicPlayerEngine engine = new MusicPlayerEngine();
            engine.startPlayback(activity, uri, envelope, new PlayerSyncListener());
            playerEngine = engine;
            playerMode = true;
            running = true;
            setSyncActive(true);
            liveStrength = 0;
            MusicPlayerHelper.showActive(0, getStrengthCeiling());
        } catch (Throwable t) {
            stopCaptureOnly();
            MusicPlayerHelper.showError(ERROR_PLAYER);
        }
    }

    static final class PlayerPrepareTask implements Runnable {
        private final Activity activity;
        private final Uri uri;

        PlayerPrepareTask(Activity activity, Uri uri) {
            this.activity = activity;
            this.uri = uri;
        }

        @Override
        public void run() {
            try {
                int[] envelope = MusicPlayerEngine.buildEnvelope(activity, uri, sensitivity);
                ensureHandler();
                handler.post(new PlayerPrepareSuccess(activity, uri, envelope));
            } catch (Throwable t) {
                ensureHandler();
                handler.post(new PlayerPrepareFailure());
            }
        }
    }

    static final class PlayerPrepareSuccess implements Runnable {
        private final Activity activity;
        private final Uri uri;
        private final int[] envelope;

        PlayerPrepareSuccess(Activity activity, Uri uri, int[] envelope) {
            this.activity = activity;
            this.uri = uri;
            this.envelope = envelope;
        }

        @Override
        public void run() {
            finishStartPlayer(activity, uri, envelope);
        }
    }

    static final class PlayerPrepareFailure implements Runnable {
        @Override
        public void run() {
            stopCaptureOnly();
            MusicPlayerHelper.showError(ERROR_PLAYER);
        }
    }

    static final class PlayerSyncListener implements MusicPlayerEngine.Listener {
        @Override
        public void onWaveformLevel(int soundPercent) {
            if (running && playerMode) {
                pushSoundLevel(soundPercent);
            }
        }

        @Override
        public void onPlaybackEnded() {
            stop();
            MusicPlayerHelper.showIdle();
        }

        @Override
        public void onError() {
            stop();
            MusicPlayerHelper.showError(ERROR_PLAYER);
        }
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
