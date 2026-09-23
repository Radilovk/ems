package com.isaigu.gymapp.train.utils;

import android.widget.TextView;

import com.isaigu.gymapp.bean.ProgramDataBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.train.model.TrainItem;
import com.isaigu.gymapp.widget.CircleSeekBar;

import java.lang.ref.WeakReference;

/**
 * External control channel for master impulse strength (MA / circle slider).
 * UI slider and future protocols both call {@link #setMasterStrength(int)}.
 */
public final class MasterStrengthControl {
    private static TrainItem targetItem;
    private static WeakReference<CircleSeekBar> seekBarRef;
    private static WeakReference<TextView> maLabelRef;
    private static int ceiling = 100;
    /** Minimum strength while music plays, as % of {@link #ceiling}. */
    private static int floorPercent;
    private static int lastApplied = -1;
    private static boolean syncActive;

    private MasterStrengthControl() {
    }

    public static void bind(CircleSeekBar seekBar, TextView maLabel, TrainItem item) {
        seekBarRef = seekBar != null ? new WeakReference<CircleSeekBar>(seekBar) : null;
        maLabelRef = maLabel != null ? new WeakReference<TextView>(maLabel) : null;
        if (item != null) {
            targetItem = item;
        }
    }

    public static void setTarget(TrainItem item) {
        targetItem = item;
    }

    public static int getCeiling() {
        return ceiling;
    }

    public static int getLastApplied() {
        return lastApplied < 0 ? 0 : lastApplied;
    }

    /** Manual ceiling from circle-slider position (set before player / protocol drive). */
    public static int captureCeilingFromSlider() {
        TrainItem item = targetItem;
        if (item == null) {
            ceiling = 100;
            return ceiling;
        }
        try {
            TrainProgram program = item.getTrainProgram();
            if (program == null) {
                ceiling = 100;
                return ceiling;
            }
            ProgramDataBean bean = program.matchProgram();
            if (bean == null) {
                ceiling = 100;
                return ceiling;
            }
            int value = clamp(bean.strenth);
            ceiling = value < 1 ? 1 : value;
            return ceiling;
        } catch (Throwable ignored) {
            ceiling = 100;
            return ceiling;
        }
    }

    public static void setCeiling(int maxPercent) {
        ceiling = clamp(maxPercent);
        if (ceiling < 1) {
            ceiling = 1;
        }
    }

    /** Bump impulse ceiling during music sync (+/− with MA index selected). */
    public static int adjustCeiling(int delta) {
        setCeiling(ceiling + delta);
        return ceiling;
    }

    public static void setSyncActive(boolean active) {
        syncActive = active;
    }

    public static boolean isSyncActive() {
        return syncActive;
    }

    public static int getFloorPercent() {
        return floorPercent;
    }

    public static void setFloorPercent(int percent) {
        floorPercent = Math.min(clamp(percent), 90);
    }

    /** Absolute floor strength (0–100%) for the current ceiling. */
    public static int getFloorStrength() {
        return ceiling * floorPercent / 100;
    }

    /**
     * Map sound level 0–100% onto [floor, ceiling]; level 0 (silence) stays 0 so a paused or
     * silent track never holds the suit at the floor.
     */
    public static int scaleFromSound(int soundPercent) {
        int level = clamp(soundPercent);
        if (level == 0) {
            return 0;
        }
        int floor = getFloorStrength();
        return clamp(floor + Math.round((ceiling - floor) * level / 100f));
    }

    /**
     * Direct master-strength write: bean.strenth, circle slider, MA label, onParamsChange.
     * Same path as releasing the circle slider in MA mode.
     */
    public static void setMasterStrength(int percent) {
        setMasterStrength(percent, true);
    }

    /** @param updateUi false for high-rate music player drive (BLE only, UI throttled elsewhere) */
    public static void setMasterStrength(int percent, boolean updateUi) {
        setMasterStrength(percent, updateUi, true);
    }

    /**
     * @param sendBle false to update bean/UI only (e.g. freeze on training pause without
     *                enqueueing strength commands behind stop)
     */
    public static void setMasterStrength(int percent, boolean updateUi, boolean sendBle) {
        percent = clamp(percent);
        if (percent == lastApplied) {
            return;
        }
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

        bean.strenth = percent;
        lastApplied = percent;

        if (updateUi) {
            CircleSeekBar bar = seekBarRef != null ? seekBarRef.get() : null;
            if (bar != null) {
                bar.setCurProcess(percent * 75 / 100);
            }

            TextView ma = maLabelRef != null ? maLabelRef.get() : null;
            if (ma != null) {
                if (syncActive) {
                    ma.setText(percent + "% / " + ceiling + "%");
                } else {
                    ma.setText(percent + " %");
                }
            }
        }

        if (sendBle && item.data != null && item.data.connected && shouldSendBle(item)) {
            item.onParamsChange();
        }
    }

    private static boolean shouldSendBle(TrainItem item) {
        if (!syncActive) {
            return true;
        }
        if (!MusicSync.isTrainingGateOpen()) {
            return false;
        }
        return item.data == null || item.data.start;
    }

    public static TrainItem getTarget() {
        return targetItem;
    }

    public static void ensureMaMode() {
        ensureMaMode(targetItem);
    }

    public static void ensureMaMode(TrainItem item) {
        if (item == null) {
            return;
        }
        try {
            TrainProgram program = item.getTrainProgram();
            if (program != null
                    && program.programDataBean != null
                    && program.programDataBean.activePause) {
                return;
            }
            item.setMaSelected(true);
            item.setHzSelected(false);
            item.setPauseMaSelected(false);
            item.setPauseHzSelected(false);
        } catch (Throwable ignored) {
        }
    }

    /** Undo music-sync MA selection when yellow active-pause coupled mode is active. */
    public static void releaseMaModeForActivePause() {
        TrainItem item = targetItem;
        if (item == null) {
            return;
        }
        try {
            TrainProgram program = item.getTrainProgram();
            if (program != null
                    && program.programDataBean != null
                    && program.programDataBean.activePause) {
                item.setMaSelected(false);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void resetApplied() {
        lastApplied = -1;
    }

    /**
     * Send one impulse level over BLE without changing program strength, ceiling, or UI slider.
     */
    public static void sendImpulseLevel(int percent) {
        percent = clamp(percent);
        TrainItem item = targetItem;
        if (item == null || item.data == null || !item.data.connected || !shouldSendBle(item)) {
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
        int savedStrength = bean.strenth;
        try {
            bean.strenth = percent;
            item.onParamsChange();
        } finally {
            bean.strenth = savedStrength;
        }
    }

    /** Update MA label after ceiling change without a new BLE write. */
    public static void refreshSyncLabel() {
        if (!syncActive) {
            return;
        }
        TextView ma = maLabelRef != null ? maLabelRef.get() : null;
        if (ma != null) {
            ma.setText(getLastApplied() + "% / " + ceiling + "%");
        }
    }

    private static int clamp(int value) {
        if (value < 0) {
            return 0;
        }
        if (value > 100) {
            return 100;
        }
        return value;
    }
}
