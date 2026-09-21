package com.isaigu.gymapp.train.model;

import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUserProgramDataWrapper;

public class TrainItem {
    public TrainUserProgramDataWrapper data;
    public int workLength;

    public boolean isEmpty() {
        return true;
    }

    public TrainProgram getTrainProgram() {
        return null;
    }

    public void addStrenth(int delta) {}

    public void onParamsChange() {}

    public void setMaSelected(boolean selected) {}

    public void setHzSelected(boolean selected) {}

    public void setPauseMaSelected(boolean selected) {}

    public void setPauseHzSelected(boolean selected) {}

    public void start() {}

    public void stop() {}
}
