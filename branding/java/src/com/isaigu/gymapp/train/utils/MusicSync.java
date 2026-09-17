package com.isaigu.gymapp.train.utils;

import android.app.Activity;
import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.ContextCompat;

import com.isaigu.gymapp.MainActivity;
import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.dialog.MusicSyncHelper;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.utils.AndroidUtils;

import java.util.List;

public class MusicSync {
    static final int PERMISSION_REQUEST = 0x4254;
    static final int ERROR_DENIED = 0x7f0d010d;
    static final int ERROR_MIC = 0x7f0d010e;

    private static final double ATTACK = 0.45;
    private static final double RELEASE = 0.12;
    private static final double PEAK_DECAY = 0.992;
    private static final double CURVE = 0.48;
    private static final double ACTIVE_LEVEL = 0.10;

    private static AudioRecord audioRecord;
    private static Handler handler;
    private static Activity hostActivity;
    static int lastAppliedStrength = -1;
    private static TrainItemManager manager;
    private static TrainItem targetItem;
    private static String targetMacAddress;
    private static int maxStrength = 80;
    private static int minStrength = 20;
    static boolean running;

    private static double smoothedRms;
    private static double trackedPeakRms = 400.0;

    static void ensureHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
    }

    private static void resetAudioLevels() {
        smoothedRms = 0.0;
        trackedPeakRms = 400.0;
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
            int bufSize = Math.max(minBuf * 2, 4096);
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
                {MediaRecorder.AudioSource.MIC, 8000},
                {MediaRecorder.AudioSource.DEFAULT, 44100},
                {MediaRecorder.AudioSource.DEFAULT, 16000},
                {MediaRecorder.AudioSource.VOICE_RECOGNITION, 44100},
                {MediaRecorder.AudioSource.VOICE_RECOGNITION, 16000},
                {MediaRecorder.AudioSource.CAMCORDER, 44100},
        };
        for (int i = 0; i < configs.length; i++) {
            if (tryOpen(configs[i][0], configs[i][1], mono, pcm16)) {
                return true;
            }
        }
        return tryOpen(MediaRecorder.AudioSource.MIC, 44100, AudioFormat.CHANNEL_IN_STEREO, pcm16);
    }

    private static boolean matchesMac(TrainItem item) {
        if (targetMacAddress == null || targetMacAddress.isEmpty()) {
            return true;
        }
        if (item == null || item.data == null || item.data.macAddress == null) {
            return false;
        }
        return item.data.macAddress.equalsIgnoreCase(targetMacAddress);
    }

    private static TrainItem resolveTargetItem(TrainItemManager mgr) {
        TrainItem item = targetItem;
        if (item != null) {
            return item;
        }
        if (mgr == null) {
            return null;
        }
        List<TrainItem> items = mgr.getItemList();
        if (items == null) {
            return null;
        }
        TrainItem fallback = null;
        for (int i = 0; i < items.size(); i++) {
            TrainItem candidate = items.get(i);
            if (candidate == null || candidate.isEmpty()) {
                continue;
            }
            if (fallback == null) {
                fallback = candidate;
            }
            if (matchesMac(candidate)) {
                return candidate;
            }
        }
        return fallback;
    }

    /**
     * Same chain as +/- buttons and circle slider release:
     * TrainItem.addStrenth(delta) -> sendPulse() -> onTrainItemChange().
     * Rate-limited to +20 per tick like TrainViewHolder$4.onChangedEnd.
     */
    private static boolean applyStrengthToItem(TrainItem item, int targetStrength) {
        if (item == null) {
            return false;
        }
        item.setMaSelected(true);
        item.setHzSelected(false);
        item.setPauseMaSelected(false);
        item.setPauseHzSelected(false);
        TrainProgram program = item.getTrainProgram();
        if (program == null) {
            return false;
        }
        ProgramDataBean data = program.matchProgram();
        if (data == null) {
            return false;
        }
        int current = data.strenth;
        if (current == targetStrength) {
            return true;
        }
        int delta = targetStrength - current;
        if (delta > 20) {
            delta = 20;
        } else if (delta < -20) {
            delta = -20;
        }
        item.addStrenth(delta);
        return true;
    }

    private static void applyStrength(int strength) {
        if (strength < 0) {
            strength = 0;
        }
        if (strength > 100) {
            strength = 100;
        }
        MusicSyncHelper.showActive(strength);
        TrainItemManager mgr = manager;
        if (mgr == null) {
            MusicSyncBridge.attachManager(hostActivity);
            mgr = manager;
        }
        if (mgr == null) {
            return;
        }
        try {
            TrainItem item = resolveTargetItem(mgr);
            if (item == null) {
                return;
            }
            if (applyStrengthToItem(item, strength)) {
                lastAppliedStrength = strength;
            }
        } catch (Throwable ignored) {
        }
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
        if (trackedPeakRms < 120.0) {
            trackedPeakRms = 120.0;
        }
    }

    /**
     * Silence or weak audio -> 0%.
     * Strong audio scales from 0% up to maxStrength.
     * minStrength tunes the noise gate (lower = more sensitive).
     */
    static int computeStrength() {
        AudioRecord rec = audioRecord;
        if (rec == null) {
            return 0;
        }
        short[] buffer = new short[1024];
        int read = rec.read(buffer, 0, buffer.length);
        if (read <= 0) {
            return lastAppliedStrength >= 0 ? lastAppliedStrength : 0;
        }

        double rms = measureRms(buffer, read);
        updateEnvelope(rms);

        // minStrength controls gate sensitivity: lower min = reacts earlier.
        double gateRatio = 0.22 - (minStrength / 100.0) * 0.17;
        if (gateRatio < 0.05) {
            gateRatio = 0.05;
        }
        double noiseGate = Math.max(50.0, trackedPeakRms * gateRatio);
        if (smoothedRms < noiseGate) {
            return 0;
        }

        double span = trackedPeakRms - noiseGate;
        if (span < 40.0) {
            span = 40.0;
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

        int value = (int) Math.round(level * maxStrength);
        if (value < 0) {
            value = 0;
        }
        if (value > maxStrength) {
            value = maxStrength;
        }
        return value;
    }

    static void scheduleTick() {
        if (!running) {
            return;
        }
        ensureHandler();
        handler.postDelayed(new TickRunnable(), 50L);
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
            lastAppliedStrength = -1;
            MusicSyncHelper.showActive(0);
            applyStrength(0);
            scheduleTick();
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

    public static Activity getHostActivity() {
        return hostActivity;
    }

    public static void setHostActivity(Activity activity) {
        hostActivity = activity;
    }

    public static void setManager(TrainItemManager trainItemManager) {
        manager = trainItemManager;
    }

    public static void setTargetMacAddress(String macAddress) {
        targetMacAddress = macAddress;
    }

    public static void setTargetItem(TrainItem item) {
        targetItem = item;
    }

    public static TrainItemManager getManager() {
        return manager;
    }

    public static void setStrengthRange(int min, int max) {
        minStrength = Math.min(Math.max(min, 0), 100);
        maxStrength = Math.min(Math.max(max, minStrength), 100);
    }

    public static void start(Activity activity, int min, int max) {
        if (activity == null) {
            return;
        }
        hostActivity = activity;
        stop();
        setStrengthRange(min, max);
        MusicSyncBridge.attachManager(activity);
        if (hasRecordPermission()) {
            startCapture();
            return;
        }
        MusicSyncHelper.showPermission();
        AndroidUtils.requestPermission(activity, "android.permission.RECORD_AUDIO", PERMISSION_REQUEST,
                new PermissionCallback());
    }

    public static void stop() {
        running = false;
        try {
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            releaseAudio();
        } catch (Throwable ignored) {
        }
        lastAppliedStrength = -1;
        targetMacAddress = null;
        targetItem = null;
        resetAudioLevels();
    }

    static final class TickRunnable implements Runnable {
        @Override
        public void run() {
            if (!running) {
                return;
            }
            applyStrength(computeStrength());
            scheduleTick();
        }
    }

    static final class PermissionCallback implements AndroidUtils.RequestPermissionCallback {
        @Override
        public void onRequestPermission(String permission, int requestCode, boolean granted) {
            if (granted) {
                MusicSyncBridge.attachManager(hostActivity);
                startCapture();
            } else {
                MusicSyncHelper.showError(ERROR_DENIED);
            }
        }
    }
}
