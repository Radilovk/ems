package com.isaigu.gymapp.bean;

import java.io.Serializable;

public class TrainUserProgramDataWrapper implements Serializable {
    public String macAddress;
    public TrainUser trainUser;
    public TrainProgram trainProgram;
    public boolean connected;
    public boolean inStart;
    public boolean start;
    public int secondValue;
}
