package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

import com.isaigu.gymapp.dialog.MusicPlayerHelper;
import com.isaigu.gymapp.train.model.TrainItem;

/**
 * Music player → {@link MasterStrengthControl#setMasterStrength(int)}.
 * BLE pacing: at most one strength update in the suit's command queue; newer levels
 * overwrite the pending one, so lag never accumulates. Send→ACK time is measured and
 * used by the player as look-ahead so impulses land with the heard audio.
 */
public class MusicSync {
    static final int ERROR_PLAYER = 0x7f0d0113;

    private static final long UI_INTERVAL_MS = 80L;
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
    private static final String KEY_HZ_BASS = "hz_bass";
    private static final String KEY_HZ_TREBLE = "hz_treble";
    /** Impulse Hz at bass-heavy music; 0 = Hz does not follow the sound (default). */
    public static final int DEFAULT_HZ_BASS = 0;
    /** Impulse Hz at treble-heavy music. */
    public static final int DEFAULT_HZ_TREBLE = 85;
    public static final int HZ_MIN = 5;
    public static final int HZ_MAX = 120;
    public static final int DEFAULT_SENSITIVITY = 20;
    public static final int DEFAULT_RHYTHM_MIX = 50;
    public static final int DEFAULT_FLOOR = 20;
    public static final int DEFAULT_SMOOTHNESS = 20;
    /** Smoothness 100 = 0 → ceiling rise takes this long; falls are never limited. */
    private static final int RISE_TIME_MAX_MS = 600;

    private static MusicPlayerEngine playerEngine;
    private static Handler handler;
    private static Activity hostActivity;
    private static int sensitivity = DEFAULT_SENSITIVITY;
    /** 0 = impulse follows loudness, 100 = only beats (bass onsets). */
    private static int rhythmMix = DEFAULT_RHYTHM_MIX;
    /** Rise limit: 0 = instant, 100 = slowest. */
    private static int smoothness = DEFAULT_SMOOTHNESS;
    private static float slewLevel;
    private static long slewLastMs;
    /** Hz by sound: bass → hzBass, treble → hzTreble (hzBass 0 = off). */
    private static int hzBass = DEFAULT_HZ_BASS;
    private static int hzTreble = DEFAULT_HZ_TREBLE;
    /** Latest tone from the player (0 bass … 100 treble), same moment as the level. */
    private static volatile int latestTone = 50;
    /** Tone through the same smoothing and rise limit as the strength. */
    private static volatile float playerSmoothedTone = 0.5f;
    private static float toneSlew = 50f;
    private static long toneSlewLastMs;
    private static int lastPushedHz = -1;
    private static volatile int pendingHz = -1;
    private static volatile int pendingPw = -1;
    private static int lastPushedPw = -1;
    /** Pulse width at treble = this share of the program's width (bass = the program's width). */
    private static final float PW_TREBLE_SHARE = 0.6f;
    private static final int PW_MIN = 50;
    private static int savedProgramPw = -1;
    /** Tone of the last update (0 bass … 100 treble), for the pulse width. */
    private static float lastTone = 50f;
    /** The program's own Hz, put back when the music stops or Hz-by-sound is turned off. */
    private static int savedProgramHz = -1;
    private static boolean playerMode;
    private static volatile boolean playerPreparing;
    static boolean running;
    static volatile int liveStrength;

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
        submitApplied(value, -1);
    }

    /** Level + Hz (−1 = leave Hz) — they go to the suit in the same update. */
    private static void submitApplied(int value, int hz) {
        pendingHz = hz;
        pendingPw = hz > 0 ? soundPw() : -1;
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
        int hz = pendingHz;
        int pw = pendingPw;
        pendingApplied = -1;
        pendingHz = -1;
        pendingPw = -1;
        if (value == lastPushedApplied && (hz <= 0 || hz == lastPushedHz) && (pw <= 0 || pw == lastPushedPw)) {
            return;
        }
        lastPushedApplied = value;
        if (hz > 0) {
            lastPushedHz = hz;
        }
        if (pw > 0) {
            lastPushedPw = pw;
        }
        MasterStrengthControl.setMasterStrength(value, true, true, hz, pw);
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
        slewLevel = 0f;
        slewLastMs = 0L;
        lastUiMs = 0L;
        lastPushedApplied = -1;
        pendingApplied = -1;
        lastPushedHz = -1;
        pendingHz = -1;
        pendingPw = -1;
        lastPushedPw = -1;
        toneSlew = 50f;
        toneSlewLastMs = 0L;
        playerSmoothedTone = 0.5f;
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
        int hz = soundHz();
        if (applied == lastPushedApplied && (hz <= 0 || hz == lastPushedHz) && pendingApplied < 0) {
            return;
        }
        submitApplied(applied, hz);
    }

    /**
     * Impulse Hz for the current moment, or −1 when Hz-by-sound is off. The tone (bass 0 …
     * treble 100) goes through exactly the strength's path: same player look-ahead, same
     * attack / release smoothing, same rise limit (smoothness), same BLE update.
     */
    private static int soundHz() {
        if (!playerMode || hzBass <= 0) {
            return -1;
        }
        float target = clampPercent(latestTone) / 100f;
        float rate = target > playerSmoothedTone ? 0.97f : 0.78f;
        playerSmoothedTone += (target - playerSmoothedTone) * rate;
        int tone = Math.round(playerSmoothedTone * 100f);
        long now = SystemClock.elapsedRealtime();
        long dt = toneSlewLastMs == 0L ? 16L : now - toneSlewLastMs;
        toneSlewLastMs = now;
        int riseMs = smoothness * RISE_TIME_MAX_MS / 100;
        if (riseMs > 0 && tone > toneSlew) {
            toneSlew = Math.min(tone, toneSlew + 100f * Math.max(1L, dt) / riseMs);
        } else {
            toneSlew = tone;
        }
        lastTone = toneSlew;
        int hz = Math.round(hzBass + (hzTreble - hzBass) * toneSlew / 100f);
        // a 1 Hz wobble is not worth an update
        if (lastPushedHz > 0 && Math.abs(hz - lastPushedHz) < 2) {
            hz = lastPushedHz;
        }
        return Math.max(HZ_MIN, Math.min(HZ_MAX, hz));
    }

    /** Pulse width for the last tone: the program's width at bass, 60 % of it at treble. */
    private static int soundPw() {
        int base = savedProgramPw;
        if (base <= 0) {
            return -1;
        }
        float k = 1f - (1f - PW_TREBLE_SHARE) * lastTone / 100f;
        int pw = Math.max(PW_MIN, Math.round(base * k / 10f) * 10);
        if (lastPushedPw > 0 && Math.abs(pw - lastPushedPw) < 10) {
            pw = lastPushedPw;
        }
        return Math.min(base, pw);
    }

    // ================================================================ Hz by sound: settings

    public static int getHzBass() {
        return hzBass;
    }

    public static int getHzTreble() {
        return hzTreble;
    }

    /** 0 = off (the program's Hz is put back at once). */
    public static void setHzBass(int value) {
        hzBass = value <= 0 ? 0 : Math.max(HZ_MIN, Math.min(HZ_MAX, value));
        if (hzBass == 0) {
            restoreProgramHz();
        } else if (running) {
            rememberProgramHz();
        }
    }

    public static void setHzTreble(int value) {
        hzTreble = Math.max(HZ_MIN, Math.min(HZ_MAX, value));
    }

    private static void rememberProgramHz() {
        if (savedProgramHz > 0) {
            return;
        }
        savedProgramHz = MasterStrengthControl.getTargetHz();
        savedProgramPw = MasterStrengthControl.getTargetPulseWidth();
    }

    /** Put the program's own Hz back (music stopped / feature off). */
    private static void restoreProgramHz() {
        int hz = savedProgramHz;
        int pw = savedProgramPw;
        savedProgramHz = -1;
        savedProgramPw = -1;
        lastPushedHz = -1;
        lastPushedPw = -1;
        if (hz > 0 || pw > 0) {
            MasterStrengthControl.setTargetHz(hz, pw, true);
        }
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

    private static void maybeUpdateUi() {
        long now = SystemClock.elapsedRealtime();
        if (now - lastUiMs < UI_INTERVAL_MS) {
            return;
        }
        lastUiMs = now;
        final int applied = getEffectiveStrength();
        final int ceiling = getStrengthCeiling();
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
        if (handler != null) {
            handler.removeCallbacks(flushRunnable);
            handler.removeCallbacks(writeCompleteRunnable);
        }
        if (bleLatencySamples > 0) {
            MusicDiagLog.log("ble-pacing", "latencyMs=" + getBleLatencyMs()
                    + " samples=" + bleLatencySamples);
        }
        releasePlayer();
        liveStrength = 0;
        resetAudioLevels();
        restoreProgramHz();
        setSyncActive(false);
        MasterStrengthControl.releaseMaModeForActivePause();
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
            hzBass = prefs.getInt(KEY_HZ_BASS, DEFAULT_HZ_BASS);
            setHzTreble(prefs.getInt(KEY_HZ_TREBLE, DEFAULT_HZ_TREBLE));
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
                    .putInt(KEY_HZ_BASS, hzBass)
                    .putInt(KEY_HZ_TREBLE, hzTreble)
                    .apply();
        } catch (Throwable t) {
            MusicDiagLog.logError("music_settings_save", t);
        }
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
            if (hzBass > 0) {
                rememberProgramHz();
            }
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
        public void onTone(int tonePercent) {
            latestTone = tonePercent;
        }

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

}
