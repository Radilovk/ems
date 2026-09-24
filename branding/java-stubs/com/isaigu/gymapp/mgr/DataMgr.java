package com.isaigu.gymapp.mgr;

import com.isaigu.gymapp.bean.DeviceBean;
import com.isaigu.gymapp.bean.TrainProgram;
import com.isaigu.gymapp.bean.TrainUser;
import com.isaigu.gymapp.bean.vo.RegisterProtocolVO;
import java.util.List;

public class DataMgr {
    public static boolean singleMode;
    public List<TrainUser> trainUsers;
    public List<TrainProgram> trainData;
    public List<DeviceBean> deviceBeanList;
    public TrainUser loginUser;
    public RegisterProtocolVO registerProtocolVO;

    public static DataMgr getInstance() { return null; }
    public void addOrUpdateTrainUser(TrainUser user) {}
    public void addOrUpdateTrainProgram(TrainProgram program) {}
}
