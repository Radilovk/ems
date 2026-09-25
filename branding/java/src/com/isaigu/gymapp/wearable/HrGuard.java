package com.isaigu.gymapp.wearable;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.train.TrainItemManager;
import com.isaigu.gymapp.train.model.TrainItem;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Pulse module driver: feeds {@link HrGuardCore} with band HR and the running program, and writes
 * its factors to the running rows. The trainer's values are the base and the ceiling; a value
 * the trainer changes by hand becomes the new base. When training stops the base values are put
 * back, so the saved program is never altered. Idle while an AI session owns the output.
 * Log: hr-guard.csv next to the band log (from the last ↻ calibration).
 */
public final class HrGuard {
    private static final long TICK_MS = 1000L;
    private static final long IDLE_STOP_MS = 60000L;
    static final String LOG_FILE = "hr-guard.csv";

    private static final HrGuardCore core = new HrGuardCore();
    private static final long NO_PERSON = Long.MIN_VALUE;
    /** Client whose data the core has (user id), NO_PERSON = population defaults. */
    private static long personId = NO_PERSON;
    private static final Handler handler = new Handler(Looper.getMainLooper());
    /** Per row: trainer's values {strength, pwUs, hz} and what the guard last wrote. */
    private static final Map<TrainItem, int[]> base = new HashMap<TrainItem, int[]>();
    private static final Map<TrainItem, int[]> written = new HashMap<TrainItem, int[]>();
    private static boolean ticking;
    private static long lastHrMs;
    private static boolean loadedRest;

    private HrGuard() {}

    public static HrGuardCore core() {
        return core;
    }

    /** Every valid band sample (NotifyWearableBridge.onHeartRate). */
    static void onHeartRate(int bpm) {
        long now = System.currentTimeMillis();
        lastHrMs = now;
        core.onHr(now, bpm, false);
        ensureTicking();
    }

    /** ↻ on the dial: 30 s resting calibration → lower limit, recommended upper limit. */
    public static void startCalibration() {
        long now = System.currentTimeMillis();
        core.startCalibration(now);
        core.resetEnergy();
        try {
            WearableBleDiagLog.appendRaw(LOG_FILE, core.csvHeader());
        } catch (Throwable ignored) {
        }
        ensureTicking();
    }

    private static void ensureTicking() {
        if (!ticking) {
            ticking = true;
            handler.postDelayed(TICK, TICK_MS);
        }
    }

    private static final Runnable TICK = new Runnable() {
        @Override
        public void run() {
            boolean keep;
            try {
                keep = tick();
            } catch (Throwable t) {
                WearableBleDiagLog.log("hr_guard", "tick: " + t);
                keep = true;
            }
            if (keep) {
                handler.postDelayed(this, TICK_MS);
            } else {
                ticking = false;
            }
            WearableSyncHelper.updateDiagnostics();
        }
    };

    private static boolean tick() {
        long now = System.currentTimeMillis();
        Context ctx = WearableSyncHelper.getContext();
        if (ctx != null) {
            if (!loadedRest) {
                loadedRest = true;
                core.setRestHr(WearableConfig.getRestHr(ctx));
            }
            core.setManualUpper(WearableConfig.isHrThresholdManual(ctx)
                    ? WearableConfig.getHrThreshold(ctx) : -1);
            core.setMaxStepPct(WearableConfig.getStrengthStep(ctx) * 2);
        }
        boolean wasCalibrating = core.isCalibrating();
        boolean aiOwns = aiOwnsOutput();
        boolean enabled = ctx != null && WearableConfig.isAutoReduceEnabled(ctx) && !aiOwns
                && com.isaigu.gymapp.widget.XemsLicense.has(ctx, com.isaigu.gymapp.widget.XemsLicense.PULSE);
        TrainItemManager manager = WearableSyncHelper.getItemManager();
        List<TrainItem> items = manager != null ? manager.getItemList() : null;

        HrGuardCore.Stim stim = new HrGuardCore.Stim();
        TrainItem leader = null;
        if (items != null && !aiOwns) {
            for (TrainItem item : items) {
                ProgramDataBean b = bean(item);
                if (b == null || item.data == null || !item.data.start) {
                    continue;
                }
                trackTrainerChanges(item, b);
                if (leader == null) {
                    leader = item;
                    stim.running = true;
                    stim.hz = b.hz;
                    stim.pwUs = b.pulseWidth;
                    stim.onS = b.pulseContinue;
                    stim.offS = b.pulsePause;
                    stim.strength = b.strenth;
                    stim.activePause = b.activePause;
                    stim.pauseStrength = b.pauseStrenthPercent;
                    stim.pauseHz = b.pauseHz;
                    stim.channels = b.strenthBean != null && b.strenthBean.buwei != null
                            ? b.strenthBean.buwei.clone() : null;
                    stim.disabled = item.partsDisabled != null ? item.partsDisabled.clone() : null;
                }
            }
        }
        if (leader != null) {
            // The client in the leading slot: personal max HR and energy model (kcal).
            com.isaigu.gymapp.ai.AiProfile person = com.isaigu.gymapp.ai.AiProfile.of(leader);
            long id = person != null ? person.userId : NO_PERSON;
            if (id != personId) {
                personId = id;
                core.setPerson(person != null ? person.toInput() : null);
            }
        }
        if (aiOwns) {
            // The AI writes the rows itself; forget our bases without touching them.
            base.clear();
            written.clear();
            core.resetFactors();
        }
        boolean changed = core.tick(now, stim, enabled);
        if (wasCalibrating && !core.isCalibrating() && ctx != null) {
            WearableConfig.setRestHr(ctx, core.getRestHr());
            WearableBleDiagLog.log("hr_guard", "rest=" + core.getRestHr() + " upper=" + core.getUpper()
                    + (core.isManualUpper() ? " (trainer)" : " (auto)"));
        }
        if (stim.running && enabled) {
            if (changed || !written.isEmpty()) {
                applyFactors(items);
            }
        } else if (!base.isEmpty()) {
            restoreBase();
            core.resetFactors();
        }
        if (stim.running || core.isCalibrating()) {
            WearableBleDiagLog.appendRaw(LOG_FILE, core.csvRow(now, stim));
        }
        return stim.running || core.isCalibrating() || now - lastHrMs < IDLE_STOP_MS
                || !base.isEmpty();
    }

    private static boolean aiOwnsOutput() {
        try {
            return com.isaigu.gymapp.ai.AiSession.ownsOutput();
        } catch (Throwable t) {
            return false;
        }
    }

    private static ProgramDataBean bean(TrainItem item) {
        if (item == null || item.isEmpty() || item.getTrainProgram() == null) {
            return null;
        }
        return item.getTrainProgram().matchProgram();
    }

    /** A value that differs from what the guard wrote was set by the trainer → new base. */
    private static void trackTrainerChanges(TrainItem item, ProgramDataBean b) {
        int[] w = written.get(item);
        int[] bs = base.get(item);
        if (bs == null) {
            base.put(item, new int[] {b.strenth, b.pulseWidth, b.hz});
            written.put(item, new int[] {b.strenth, b.pulseWidth, b.hz});
            return;
        }
        if (w == null) {
            return;
        }
        if (b.strenth != w[0]) {
            bs[0] = b.strenth;
            w[0] = b.strenth;
            core.onTrainerChange(HrGuardCore.Lever.STRENGTH);
        }
        if (b.pulseWidth != w[1]) {
            bs[1] = b.pulseWidth;
            w[1] = b.pulseWidth;
            core.onTrainerChange(HrGuardCore.Lever.WIDTH);
        }
        if (b.hz != w[2]) {
            bs[2] = b.hz;
            w[2] = b.hz;
            core.onTrainerChange(HrGuardCore.Lever.FREQ);
        }
    }

    private static void applyFactors(List<TrainItem> items) {
        if (items == null) {
            return;
        }
        for (TrainItem item : items) {
            ProgramDataBean b = bean(item);
            int[] bs = base.get(item);
            if (b == null || bs == null || item.data == null || !item.data.start) {
                continue;
            }
            int s = (int) Math.round(bs[0] * core.getStrengthFactor());
            int pw = Math.max(50, (int) Math.round(bs[1] * core.getWidthFactor()));
            int hz = Math.max(1, (int) Math.round(bs[2] * core.getFreqFactor()));
            write(item, b, s, pw, hz);
        }
    }

    private static void restoreBase() {
        for (Map.Entry<TrainItem, int[]> e : base.entrySet()) {
            TrainItem item = e.getKey();
            ProgramDataBean b = bean(item);
            int[] w = written.get(item);
            int[] bs = e.getValue();
            // Only put back what is still ours (the trainer may have changed it meanwhile).
            if (b != null && w != null && b.strenth == w[0] && b.pulseWidth == w[1] && b.hz == w[2]) {
                write(item, b, bs[0], bs[1], bs[2]);
            }
        }
        base.clear();
        written.clear();
    }

    private static void write(TrainItem item, ProgramDataBean b, int s, int pw, int hz) {
        int[] w = written.get(item);
        if (b.strenth == s && b.pulseWidth == pw && b.hz == hz) {
            if (w != null) {
                w[0] = s;
                w[1] = pw;
                w[2] = hz;
            }
            return;
        }
        b.strenth = s;
        b.pulseWidth = pw;
        b.hz = hz;
        if (w != null) {
            w[0] = s;
            w[1] = pw;
            w[2] = hz;
        }
        try {
            item.onParamsChange();
        } catch (Throwable t) {
            WearableBleDiagLog.log("hr_guard", "onParamsChange: " + t);
        }
    }

    // ================================================================ dial text

    static String actionText(String code) {
        if ("strength_down".equals(code)) return WearableUi.tr("сила ↓", "strength ↓");
        if ("width_down".equals(code)) return WearableUi.tr("импулс µs ↓", "pulse µs ↓");
        if ("freq_down".equals(code)) return WearableUi.tr("честота ↓", "frequency ↓");
        if ("restore".equals(code)) return WearableUi.tr("връщане ↑", "restoring ↑");
        if ("cap".equals(code)) return WearableUi.tr("СТОП — таван", "STOP — ceiling");
        if ("resume".equals(code)) return WearableUi.tr("продължава", "resumed");
        if ("calibrated".equals(code)) return WearableUi.tr("калибрирано", "calibrated");
        return "";
    }
}
