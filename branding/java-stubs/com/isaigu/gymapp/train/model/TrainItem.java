package com.isaigu.gymapp.train.model;

import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;

public class TrainItem {
    public TrainUserProgramDataWrapper data;
    public int workLength;
    public boolean[] partsDisabled;
    public boolean[] partsControl;

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

    public void setMaSelected(boolean selected) {}

    public void setHzSelected(boolean selected) {}

    public void setPauseMaSelected(boolean selected) {}

    public void setPauseHzSelected(boolean selected) {}

    public void start() {}

    public void stop() {}
}
