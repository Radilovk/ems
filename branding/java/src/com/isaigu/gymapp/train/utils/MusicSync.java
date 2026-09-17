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
import com.isaigu.gymapp.dialog.MusicSyncHelper;
import com.isaigu.gymapp.train.TrainItem;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.utils.AndroidUtils;

import java.util.Iterator;

public class MusicSync {
    static final int PERMISSION_REQUEST = 0x4254;
    static final int ERROR_DENIED = 0x7f0d010d;
    static final int ERROR_MIC = 0x7f0d010e;

    private static AudioRecord audioRecord;
    private static Handler handler;
    private static Activity hostActivity;
    static int lastAppliedStrength = -1;
    private static TrainItemManager manager;
    private static int maxStrength = 80;
    private static int minStrength = 20;
    static boolean running;

    static void ensureHandler() {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
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

    private static void applyStrength(int strength) {
        lastAppliedStrength = strength;
        MusicSyncHelper.showActive(strength);
        try {
            TrainItemManager mgr = manager;
            if (mgr != null) {
                Iterator<TrainItem> it = mgr.notEmptyItems().iterator();
                while (it.hasNext()) {
                    TrainItem item = it.next();
                    if (item == null || item.isEmpty()) {
                        continue;
                    }
                    int current = item.getStrength();
                    if (current == strength) {
                        continue;
                    }
                    item.addStrenth(strength - current);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    static int computeStrength() {
        AudioRecord rec = audioRecord;
        if (rec == null) {
            return lastAppliedStrength;
        }
        short[] buffer = new short[1024];
        int read = rec.read(buffer, 0, buffer.length);
        if (read <= 0) {
            return lastAppliedStrength;
        }
        long sumSq = 0L;
        for (int i = 0; i < read; i++) {
            sumSq += (long) buffer[i] * buffer[i];
        }
        double rms = Math.sqrt((double) sumSq / read);
        double normalized = Math.min(rms / 750.0, 1.0);
        int span = maxStrength - minStrength;
        int value = minStrength + (int) (normalized * span);
        if (value < minStrength) {
            value = minStrength;
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
                startCapture();
            } else {
                MusicSyncHelper.showError(ERROR_DENIED);
            }
        }
    }
}
