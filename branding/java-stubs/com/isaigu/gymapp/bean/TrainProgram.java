package com.isaigu.gymapp.bean;

public class TrainProgram {
    public TrainProgram() {}
    public static TrainProgram getTrainProgramTemplate1() { return null; }
    public TrainProgram(Long id, String name) {
        this.id = id;
        this.name = name;
    }
    public Long id;
    public String name;
    public int useType;
    public ProgramDataBean programDataBean;
    public ProgramDataBean muscleTrainingProgramDataBean;
    public ProgramDataBean aerobicTrainingProgramDataBean;
    public ProgramDataBean massageModeProgramDataBean;

    public ProgramDataBean matchProgram() {
        return programDataBean;
    }
}
