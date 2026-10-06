package com.isaigu.gymapp.train.model;

import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;

public class TrainItem {
    public TrainUserProgramDataWrapper data;
    public int workLength;
    public boolean[] partsDisabled;
    public boolean[] partsControl;
    CommandSender sender;

    public boolean isEmpty() {
        return true;
    }

    public TrainProgram getTrainProgram() {
        return null;
    }

    public void addStrenth(int delta) {}

    public void addMainAndPauseStrenth(int delta) {}

    /** Adds to the part (channel) values; all parts when ignoreControl, else the selected ones. Sends. */
    public void addAllPartValue(int value, boolean ignoreControl) {}

    public void onParamsChange() {}

    /** Added by apply-program-fit.py: onTrainItemChange() (the row redraws). */
    public void xemsRefresh() {}
    /** Sets data.trainProgram, applies the active-pause setting and resets the slot (stops it). */
    public void setTrainProgram(TrainProgram program) {}

    /** Added by apply-music-training-sync.py: BLE write in flight or commands queued. */
    public boolean isSenderBusy() {
        return false;
    }

    public boolean isMaSelected() {
        return false;
    }

    public boolean isPauseMaSelected() {
        return false;
    }

    public boolean isHzSelected() {
        return false;
    }

    public boolean isPauseHzSelected() {
        return false;
    }

    public void setMaSelected(boolean selected) {}

    public void setHzSelected(boolean selected) {}

    public void setPauseMaSelected(boolean selected) {}

    public void setPauseHzSelected(boolean selected) {}

    public void start() {}

    /** Vendor: stops, closes the receiver, connected = false, disconnects, drops the train record. */
    public void close() {}

    /** Added by apply-suit-reconnect.py: paused and marked not connected, the row stays as it is. */
    public void xemsHold() {}

    /** Added by apply-suit-reconnect.py: the same suit back — new sender/receiver, connected again. */
    public void xemsRebind(com.clj.fastble.data.BleDevice device) {}

    public void stop() {}

    /** Vendor: stops the slot and resets its time (the ■ of one row). */
    public void reset() {}
}
