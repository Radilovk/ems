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
    /** Per row: trainer's values {strength, pwUs, hz, on s, off s, double impulse strength %, double impulse on 0/1}
     *  and what the guard last wrote. */
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
                    int[] bs = base.get(item);
                    if (bs != null) {
                        stim.baseHz = bs[2];
                        stim.baseOnS = bs[3];
                        stim.baseOffS = bs[4];
                        stim.basePause = bs[6] == 1;
                    }
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
            if (personId != NO_PERSON) {
                com.isaigu.gymapp.wearable.scale.RestHrStore.add(ctx, personId, core.getRestHr());
            }
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

    /** What the row has now, in the order of {@link #base}. */
    private static int[] values(ProgramDataBean b) {
        return new int[] {b.strenth, b.pulseWidth, b.hz, b.pulseContinue, b.pulsePause, b.pauseStrenthPercent,
                b.activePause ? 1 : 0};
    }

    private static final HrGuardCore.Lever[] LEVER_OF = {
            HrGuardCore.Lever.STRENGTH, HrGuardCore.Lever.WIDTH, HrGuardCore.Lever.FREQ,
            HrGuardCore.Lever.ON, HrGuardCore.Lever.OFF, HrGuardCore.Lever.PAUSE, HrGuardCore.Lever.PAUSE};

    /** A value that differs from what the guard wrote was set by the trainer → new base. */
    private static void trackTrainerChanges(TrainItem item, ProgramDataBean b) {
        int[] w = written.get(item);
        int[] bs = base.get(item);
        int[] now = values(b);
        if (bs == null) {
            base.put(item, now.clone());
            written.put(item, now.clone());
            return;
        }
        if (w == null) {
            return;
        }
        for (int i = 0; i < now.length; i++) {
            if (now[i] != w[i]) {
                bs[i] = now[i];
                w[i] = now[i];
                if (i == 6 && now[i] == 1) {
                    bs[5] = now[5];
                    w[5] = now[5];
                }
                core.onTrainerChange(LEVER_OF[i]);
            }
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
            int[] v = new int[7];
            v[0] = (int) Math.round(bs[0] * core.getStrengthFactor());
            v[1] = Math.max(50, (int) Math.round(bs[1] * core.getWidthFactor()));
            v[2] = Math.max(1, (int) Math.round(bs[2] * core.getFreqFactor()));
            v[3] = Math.max(1, bs[3] - core.getOnCut());
            v[4] = Math.max(1, bs[4] + core.getOffAdd());
            boolean pause = bs[6] == 1 && core.getPauseFactor() > 0;
            v[5] = pause ? Math.max(1, (int) Math.round(bs[5] * core.getPauseFactor())) : bs[5];
            v[6] = pause ? 1 : 0;
            write(item, b, v);
        }
    }

    private static void restoreBase() {
        for (Map.Entry<TrainItem, int[]> e : base.entrySet()) {
            TrainItem item = e.getKey();
            ProgramDataBean b = bean(item);
            int[] w = written.get(item);
            // Only put back what is still ours (the trainer may have changed it meanwhile).
            if (b != null && w != null && java.util.Arrays.equals(values(b), w)) {
                write(item, b, e.getValue().clone());
            }
        }
        base.clear();
        written.clear();
    }

    private static void write(TrainItem item, ProgramDataBean b, int[] v) {
        int[] w = written.get(item);
        if (w != null) {
            System.arraycopy(v, 0, w, 0, v.length);
        }
        if (java.util.Arrays.equals(values(b), v)) {
            return;
        }
        b.strenth = v[0];
        b.pulseWidth = v[1];
        b.hz = v[2];
        b.pulseContinue = v[3];
        b.pulsePause = v[4];
        b.pauseStrenthPercent = v[5];
        b.activePause = v[6] == 1;
        try {
            item.onParamsChange();
        } catch (Throwable t) {
            WearableBleDiagLog.log("hr_guard", "onParamsChange: " + t);
        }
    }

    /** The HR's zone colour as on the dial and the HR panel (zone 1–5 of the maximum HR) — for other screens. */
    public static int zoneColor(int hr, int hrMax) {
        return WearableUi.zoneColor(Math.max(1, WearableUi.zoneFor(hr, hrMax)));
    }

    // ================================================================ dial text

    static String actionText(String code) {
        if ("strength_down".equals(code)) return WearableUi.tr("сила ↓", "strength ↓");
        if ("width_down".equals(code)) return WearableUi.tr("импулс µs ↓", "pulse µs ↓");
        if ("freq_down".equals(code)) return WearableUi.tr("честота ↓", "frequency ↓");
        if ("pause_down".equals(code)) return WearableUi.tr("двоен импулс ↓", "double impulse ↓");
        if ("pause_off".equals(code)) return WearableUi.tr("двоен импулс изкл.", "double impulse off");
        if ("off_up".equals(code)) return WearableUi.tr("пауза ↑", "pause ↑");
        if ("on_down".equals(code)) return WearableUi.tr("импулс s ↓", "impulse s ↓");
        if ("restore".equals(code)) return WearableUi.tr("връщане ↑", "restoring ↑");
        if ("cap".equals(code)) return WearableUi.tr("СТОП — таван", "STOP — ceiling");
        if ("resume".equals(code)) return WearableUi.tr("продължава", "resumed");
        if ("calibrated".equals(code)) return WearableUi.tr("калибрирано", "calibrated");
        return "";
    }
}
