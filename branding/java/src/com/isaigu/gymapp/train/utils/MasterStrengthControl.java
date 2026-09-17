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
    private static int lastApplied = -1;

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

    /** Manual ceiling from circle-slider position (set before mic / protocol drive). */
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

    /** Map raw sound level 0–100% onto [0, ceiling]. */
    public static int scaleFromSound(int soundPercent) {
        return clamp(ceiling * clamp(soundPercent) / 100);
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
                ma.setText(percent + " %");
            }
        }

        if (item.data != null && item.data.connected) {
            item.onParamsChange();
        }
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
            item.setMaSelected(true);
            item.setHzSelected(false);
            item.setPauseMaSelected(false);
            item.setPauseHzSelected(false);
        } catch (Throwable ignored) {
        }
    }

    public static void resetApplied() {
        lastApplied = -1;
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
