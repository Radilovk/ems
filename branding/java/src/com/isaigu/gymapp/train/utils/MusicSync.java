package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
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
 * Low-latency mic / player → {@link MasterStrengthControl#setMasterStrength(int)}.
 * BLE pacing: at most one strength update in the suit's command queue; newer levels
 * overwrite the pending one, so lag never accumulates. Send→ACK time is measured and
 * used by the player as look-ahead so impulses land with the heard audio.
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
    private static final long READ_YIELD_MS = 5L;
    /** Look-ahead before the first ACK is measured; replaced by the measured value. */
    private static final int BLE_LATENCY_INITIAL_MS = 50;
    /** Send→ACK samples above this are link stalls, not the steady latency. */
    private static final long BLE_LATENCY_OUTLIER_MS = 1000L;
    /** Give up waiting for an ACK (callback lost / sender replaced) after this. */
    private static final long BLE_ACK_STUCK_MS = 1500L;
    private static final double BLE_LATENCY_EMA = 0.2;
    /** Average age of the player's latest level (half of its 16 ms poll). */
    private static final int PLAYER_POLL_AGE_MS = 8;
    private static final int PLAYER_LEAD_MAX_MS = 400;

    private static final String PREFS = "music_sync_settings";
    private static final String KEY_SENSITIVITY = "sensitivity";
    private static final String KEY_RHYTHM_MIX = "rhythm_mix";
    private static final String KEY_FLOOR = "floor";
    private static final String KEY_SMOOTHNESS = "smoothness";
    public static final int DEFAULT_SENSITIVITY = 20;
    public static final int DEFAULT_RHYTHM_MIX = 50;
    public static final int DEFAULT_FLOOR = 20;
    public static final int DEFAULT_SMOOTHNESS = 20;
    /** Smoothness 100 = 0 → ceiling rise takes this long; falls are never limited. */
    private static final int RISE_TIME_MAX_MS = 600;

    /** Mic rhythm: bass band for onset detection (phone mics roll off below ~100 Hz). */
    private static final double MIC_BASS_CUTOFF_HZ = 180.0;
    private static final double MIC_ONSET_SLOW_MS = 90.0;
    private static final double MIC_ONSET_MIN_PEAK_DB = 3.0;
    private static final double MIC_ONSET_PEAK_DECAY_PER_MS = 0.9995;
    private static final double ONSET_GATE = 0.15;
    private static final double ONSET_DECAY_PER_20MS = 0.72;

    private static AudioRecord audioRecord;
    private static MusicPlayerEngine playerEngine;
    private static Handler handler;
    private static Thread audioThread;
    private static Activity hostActivity;
    private static int sensitivity = DEFAULT_SENSITIVITY;
    /** 0 = impulse follows loudness, 100 = only beats (bass onsets). */
    private static int rhythmMix = DEFAULT_RHYTHM_MIX;
    /** Rise limit: 0 = instant, 100 = slowest. */
    private static int smoothness = DEFAULT_SMOOTHNESS;
    private static float slewLevel;
    private static long slewLastMs;
    private static double micLp1;
    private static double micLp2;
    private static double micSlowDb;
    private static double micPeakFlux = MIC_ONSET_MIN_PEAK_DB;
    private static double micRhythm;
    private static boolean micOnsetPrimed;
    private static boolean playerMode;
    private static volatile boolean playerPreparing;
    static boolean running;
    static volatile int liveStrength;

    private static volatile double smoothedRms;
    private static volatile double trackedPeakRms = 300.0;
    private static volatile float playerSmoothedSound;
    /** True when playback was paused because training stopped (auto-resume on training start). */
    private static boolean pausedByTraining;
    /** False while no train row is running — blocks impulse drive even if music plays. */
    private static boolean trainingGateOpen = true;
    private static long lastUiMs;
    private static int lastPushedApplied = -1;
    /** Latest level waiting for the BLE pipe to drain; -1 = none. */
    private static volatile int pendingApplied = -1;
    /** A strength update is in the suit's command queue and not yet ACKed. */
    private static boolean awaitingAck;
    private static long sendStartMs;
    private static volatile double bleLatencyMs = BLE_LATENCY_INITIAL_MS;
    private static int bleLatencySamples;
    private static final short[] audioBuffer = new short[AUDIO_BUFFER_SAMPLES];

    public static boolean isTrainingGateOpen() {
        return trainingGateOpen;
    }

    private static final Runnable flushRunnable = new Runnable() {
        @Override
        public void run() {
            flushPending();
        }
    };

    private static final Runnable writeCompleteRunnable = new Runnable() {
        @Override
        public void run() {
            handleWriteComplete();
        }
    };

    private static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private static boolean isTargetSenderBusy() {
        TrainItem item = MasterStrengthControl.getTarget();
        return item != null && item.isSenderBusy();
    }

    /** Queue the latest level; any thread. Older unsent levels are dropped. */
    private static void submitApplied(int value) {
        pendingApplied = value;
        if (isMainThread()) {
            flushPending();
            return;
        }
        ensureHandler();
        handler.removeCallbacks(flushRunnable);
        handler.post(flushRunnable);
    }

    /** Main thread: send the pending level only when the suit's command queue is empty. */
    private static void flushPending() {
        if (!running || !trainingGateOpen) {
            pendingApplied = -1;
            return;
        }
        if (awaitingAck) {
            if (SystemClock.elapsedRealtime() - sendStartMs < BLE_ACK_STUCK_MS) {
                return;
            }
            awaitingAck = false;
        }
        if (isTargetSenderBusy()) {
            // Other commands in flight; onBleWriteComplete() retries.
            return;
        }
        int value = pendingApplied;
        if (value < 0) {
            return;
        }
        pendingApplied = -1;
        if (value == lastPushedApplied) {
            return;
        }
        lastPushedApplied = value;
        MasterStrengthControl.setMasterStrength(value, true);
        if (isTargetSenderBusy()) {
            awaitingAck = true;
            sendStartMs = SystemClock.elapsedRealtime();
        }
        maybeUpdateUi();
    }

    /**
     * Hook from CommandSender write callback (success or failure), after the next queued
     * command was started. Any thread.
     */
    public static void onBleWriteComplete() {
        if (!running) {
            return;
        }
        if (isMainThread()) {
            handleWriteComplete();
            return;
        }
        ensureHandler();
        handler.post(writeCompleteRunnable);
    }

    private static void handleWriteComplete() {
        if (awaitingAck) {
            if (isTargetSenderBusy()) {
                // One strength update is several packets; wait for the last ACK.
                return;
            }
            awaitingAck = false;
            long rtt = SystemClock.elapsedRealtime() - sendStartMs;
            if (rtt > 0L && rtt < BLE_LATENCY_OUTLIER_MS) {
                if (bleLatencySamples == 0) {
                    bleLatencyMs = rtt;
                } else {
                    bleLatencyMs += BLE_LATENCY_EMA * (rtt - bleLatencyMs);
                }
                bleLatencySamples++;
            }
        }
        if (pendingApplied >= 0) {
            flushPending();
        }
    }

    /** Smoothed send→ACK time of one strength update (ms). */
    public static int getBleLatencyMs() {
        return (int) Math.round(bleLatencyMs);
    }

    /** Player look-ahead: level sent now should match audio heard when it reaches the suit. */
    public static int getPlayerLeadMs() {
        int lead = getBleLatencyMs() + PLAYER_POLL_AGE_MS;
        return lead > PLAYER_LEAD_MAX_MS ? PLAYER_LEAD_MAX_MS : lead;
    }

    static void ensureHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
    }

    private static void resetAudioLevels() {
        smoothedRms = 0.0;
        trackedPeakRms = 300.0;
        slewLevel = 0f;
        slewLastMs = 0L;
        micLp1 = 0.0;
        micLp2 = 0.0;
        micSlowDb = 0.0;
        micPeakFlux = MIC_ONSET_MIN_PEAK_DB;
        micRhythm = 0.0;
        micOnsetPrimed = false;
        lastUiMs = 0L;
        lastPushedApplied = -1;
        pendingApplied = -1;
        awaitingAck = false;
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
        if (playerMode && !trainingGateOpen) {
            return;
        }
        int level = soundPercent;
        if (level < 0) {
            level = 0;
        } else if (level > 100) {
            level = 100;
        }
        if (playerMode) {
            float target = level / 100f;
            float attack = 0.97f;
            float release = 0.78f;
            float rate = target > playerSmoothedSound ? attack : release;
            playerSmoothedSound += (target - playerSmoothedSound) * rate;
            level = Math.round(playerSmoothedSound * 100f);
        }
        liveStrength = level;
        level = limitRise(level);
        int applied = MasterStrengthControl.scaleFromSound(level);
        if (applied == lastPushedApplied && pendingApplied < 0) {
            return;
        }
        submitApplied(applied);
    }

    /**
     * Mix loudness and rhythm (both 0–100). Silence (loudness below the noise gate) stays 0;
     * any music gives at least 1 so the strength floor holds between beats.
     */
    public static int mixLevels(int loud, int rhythm) {
        if (loud <= 0) {
            return 0;
        }
        double mix = rhythmMix / 100.0;
        int level = (int) Math.round((1.0 - mix) * loud + mix * clampPercent(rhythm));
        return level < 1 ? 1 : clampPercent(level);
    }

    /** Rise-rate limit (smoothness); falls pass through so beats still cut off cleanly. */
    private static int limitRise(int level) {
        long now = SystemClock.elapsedRealtime();
        long dt = slewLastMs == 0L ? 16L : now - slewLastMs;
        slewLastMs = now;
        int riseMs = smoothness * RISE_TIME_MAX_MS / 100;
        if (riseMs > 0 && level > slewLevel) {
            float maxStep = 100f * Math.max(1L, dt) / riseMs;
            slewLevel = Math.min(level, slewLevel + maxStep);
        } else {
            slewLevel = level;
        }
        int limited = Math.round(slewLevel);
        return level > 0 && limited < 1 ? 1 : limited;
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
        int loud = envelopeToSoundPercent(measureRms(audioBuffer, read));
        int rhythm = micRhythmPercent(audioBuffer, read, rec.getSampleRate());
        return mixLevels(loud, rhythm);
    }

    /** Real-time version of the player's onset curve: bass-energy jumps, held and decayed. */
    private static int micRhythmPercent(short[] buffer, int count, int sampleRate) {
        if (sampleRate < 8000) {
            sampleRate = 16000;
        }
        double alpha = 1.0 - Math.exp(-2.0 * Math.PI * MIC_BASS_CUTOFF_HZ / sampleRate);
        double sumBass = 0.0;
        for (int i = 0; i < count; i++) {
            micLp1 += alpha * (buffer[i] - micLp1);
            micLp2 += alpha * (micLp1 - micLp2);
            sumBass += micLp2 * micLp2;
        }
        double db = 10.0 * Math.log10(sumBass / count + 1.0);
        double dtMs = count * 1000.0 / sampleRate;
        if (!micOnsetPrimed) {
            micSlowDb = db;
            micOnsetPrimed = true;
        }
        double flux = Math.max(0.0, db - micSlowDb);
        micSlowDb += Math.min(1.0, dtMs / MIC_ONSET_SLOW_MS) * (db - micSlowDb);
        micPeakFlux = Math.max(Math.max(flux, MIC_ONSET_MIN_PEAK_DB),
                micPeakFlux * Math.pow(MIC_ONSET_PEAK_DECAY_PER_MS, dtMs));
        double onset = Math.min(1.0, flux / micPeakFlux);
        if (onset < ONSET_GATE) {
            onset = 0.0;
        }
        micRhythm = Math.max(onset, micRhythm * Math.pow(ONSET_DECAY_PER_20MS, dtMs / 20.0));
        return (int) Math.round(micRhythm * 100.0);
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
            handler.removeCallbacks(flushRunnable);
            handler.removeCallbacks(writeCompleteRunnable);
        }
        if (bleLatencySamples > 0) {
            MusicDiagLog.log("ble-pacing", "latencyMs=" + getBleLatencyMs()
                    + " samples=" + bleLatencySamples);
        }
        releaseAudio();
        releasePlayer();
        liveStrength = 0;
        resetAudioLevels();
        setSyncActive(false);
        MasterStrengthControl.releaseMaModeForActivePause();
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
        int applied = MasterStrengthControl.scaleFromSound(Math.round(slewLevel));
        lastPushedApplied = -1;
        submitApplied(applied);
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
        sensitivity = clampPercent(min);
    }

    public static int getSensitivity() {
        return sensitivity;
    }

    public static int getRhythmMix() {
        return rhythmMix;
    }

    public static void setRhythmMix(int value) {
        rhythmMix = clampPercent(value);
    }

    public static int getFloorPercent() {
        return MasterStrengthControl.getFloorPercent();
    }

    /** Minimum impulse while music plays, as % of the ceiling. */
    public static void setFloorPercent(int value) {
        MasterStrengthControl.setFloorPercent(value);
        if (running) {
            lastPushedApplied = -1;
            submitApplied(MasterStrengthControl.scaleFromSound(Math.round(slewLevel)));
        }
    }

    public static int getSmoothness() {
        return smoothness;
    }

    public static void setSmoothness(int value) {
        smoothness = clampPercent(value);
    }

    public static boolean hasBleLatencySample() {
        return bleLatencySamples > 0;
    }

    /** Load persisted sync settings (sensitivity, rhythm mix, floor, smoothness). */
    public static void loadSettings(Context context) {
        if (context == null) {
            return;
        }
        try {
            SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            setSensitivity(prefs.getInt(KEY_SENSITIVITY, DEFAULT_SENSITIVITY));
            setRhythmMix(prefs.getInt(KEY_RHYTHM_MIX, DEFAULT_RHYTHM_MIX));
            MasterStrengthControl.setFloorPercent(prefs.getInt(KEY_FLOOR, DEFAULT_FLOOR));
            setSmoothness(prefs.getInt(KEY_SMOOTHNESS, DEFAULT_SMOOTHNESS));
        } catch (Throwable t) {
            MusicDiagLog.logError("music_settings_load", t);
        }
    }

    public static void saveSettings(Context context) {
        if (context == null) {
            return;
        }
        try {
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .putInt(KEY_SENSITIVITY, sensitivity)
                    .putInt(KEY_RHYTHM_MIX, rhythmMix)
                    .putInt(KEY_FLOOR, MasterStrengthControl.getFloorPercent())
                    .putInt(KEY_SMOOTHNESS, smoothness)
                    .apply();
        } catch (Throwable t) {
            MusicDiagLog.logError("music_settings_save", t);
        }
    }

    public static void start(Activity activity, int min, int unusedMax) {
        if (activity == null) {
            return;
        }
        hostActivity = activity;
        stopCaptureOnly();
        loadSettings(activity);
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

    public static boolean isPlayerPreparing() {
        return playerPreparing;
    }

    public static void startPlayer(Activity activity, Uri uri) {
        if (activity == null || uri == null) {
            return;
        }
        if (playerPreparing) {
            return;
        }
        hostActivity = activity;
        playerPreparing = true;
        stopCaptureOnly();
        MasterStrengthControl.ensureMaMode();
        resetAudioLevels();
        playerSmoothedSound = 0f;
        MasterStrengthControl.captureCeilingFromSlider();
        MusicPlayerHelper.showPreparing();
        new Thread(new PlayerPrepareTask(activity, uri), "music-player-prepare").start();
    }

    private static void finishStartPlayer(
            Activity activity, Uri uri, MusicPlayerEngine.Envelope envelope) {
        playerPreparing = false;
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
            trainingGateOpen = true;
            pausedByTraining = false;
            MusicPlayerHelper.showActive(0, getStrengthCeiling());
            MusicPlayerHelper.onPlaybackStarted();
            MusicDiagLog.log("ble-pacing", "player start leadMs=" + getPlayerLeadMs());
        } catch (Throwable t) {
            stopCaptureOnly();
            MusicPlayerHelper.showError(ERROR_PLAYER);
        }
    }

    public static void onPlayerPlaybackStarted() {
        trainingGateOpen = true;
        pausedByTraining = false;
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
                MusicPlayerEngine.Envelope envelope = MusicPlayerEngine.buildEnvelope(activity, uri);
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
        private final MusicPlayerEngine.Envelope envelope;

        PlayerPrepareSuccess(Activity activity, Uri uri, MusicPlayerEngine.Envelope envelope) {
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
            playerPreparing = false;
            stopCaptureOnly();
            MusicPlayerHelper.showError(ERROR_PLAYER);
        }
    }

    static final class PlayerSyncListener implements MusicPlayerEngine.Listener {
        @Override
        public void onWaveformLevel(int soundPercent) {
            if (running && playerMode && trainingGateOpen && !pausedByTraining) {
                pushSoundLevel(soundPercent);
            }
        }

        @Override
        public void onPlaybackEnded() {
            if (MusicPlayerHelper.advanceToNextTrack()) {
                return;
            }
            MusicPlayerHelper.onPlaybackEndedNaturally();
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
        playerPreparing = false;
        pausedByTraining = false;
        trainingGateOpen = true;
        stopCaptureOnly();
    }

    /**
     * Pause player sync and zero impulses when training stops; resume when training starts again.
     * Called from train start/stop hooks (master and per-row controls).
     */
    public static void syncWithTrainingState(boolean anyTrainingRunning) {
        if (!running || !playerMode) {
            return;
        }
        MusicPlayerEngine engine = playerEngine;
        if (engine == null) {
            return;
        }
        if (!anyTrainingRunning) {
            trainingGateOpen = false;
            ensureHandler();
            handler.removeCallbacks(flushRunnable);
            if (engine.isPlaying()) {
                pausedByTraining = true;
                engine.pausePlayback();
            }
            freezeImpulseOutput();
            MusicPlayerHelper.refreshTransportState();
            return;
        }
        trainingGateOpen = true;
        if (pausedByTraining && !engine.isPlaying()) {
            pausedByTraining = false;
            engine.resumePlayback();
            MusicPlayerHelper.refreshTransportState();
        }
    }

    private static void freezeImpulseOutput() {
        liveStrength = 0;
        playerSmoothedSound = 0f;
        slewLevel = 0f;
        slewLastMs = 0L;
        pendingApplied = -1;
        lastPushedApplied = -1;
        ensureHandler();
        handler.removeCallbacks(flushRunnable);
        MasterStrengthControl.sendImpulseLevel(0);
        MasterStrengthControl.resetApplied();
        maybeUpdateUi();
    }

    private static void resumeImpulseOutput() {
        lastPushedApplied = -1;
        pendingApplied = -1;
        playerSmoothedSound = 0f;
        trainingGateOpen = true;
        pausedByTraining = false;
        MasterStrengthControl.resetApplied();
    }

    public static int getPlaybackPositionMs() {
        MusicPlayerEngine engine = playerEngine;
        return engine != null ? engine.resolvePlaybackPositionMs() : 0;
    }

    public static int getPlaybackDurationMs() {
        MusicPlayerEngine engine = playerEngine;
        return engine != null ? engine.getDurationMs() : 0;
    }

    public static boolean isPlaybackPaused() {
        MusicPlayerEngine engine = playerEngine;
        return engine != null && playerMode && running && !engine.isPlaying();
    }

    public static void seekPlaybackTo(int positionMs) {
        MusicPlayerEngine engine = playerEngine;
        if (engine != null && playerMode) {
            engine.seekTo(positionMs);
        }
    }

    public static void togglePlaybackPause() {
        MusicPlayerEngine engine = playerEngine;
        if (engine == null || !playerMode || !running) {
            return;
        }
        if (engine.isPlaying()) {
            pausedByTraining = false;
            engine.pausePlayback();
            freezeImpulseOutput();
        } else {
            pausedByTraining = false;
            resumeImpulseOutput();
            engine.resumePlayback();
        }
        MusicPlayerHelper.refreshTransportState();
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
