package com.isaigu.gymapp.train.model;

import com.isaigu.gymapp.bean.ProgramDataBean;

public class CommandSender {
    public boolean isBusy() {
        return false;
    }

    public void sendDuration(ProgramDataBean bean, boolean[] disabled, int workLength) {}

    public void sendActivePause(ProgramDataBean bean, boolean[] disabled, int workLength, int pauseHz,
            int pauseStrength) {}

    public void sendStart() {}

    public void sendStop() {}

    public void sendPause(ProgramDataBean bean, int workLength) {}
}
