.class public interface abstract Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager;
.super Ljava/lang/Object;
.source "ICDeviceManagerSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;
    }
.end annotation


# virtual methods
.method public abstract bindHRDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract cancelSendData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract changeStName(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract changeStNo(Lcn/icomon/icdevicemanager/model/device/ICDevice;IILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract configWifi(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract deleteTareWeight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract exitNetwork(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract lockStSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract lockStSkipEx(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICSkipParam;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract pauseSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract powerOffKitchenScale(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract queryStAllNode(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract readUserInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract removeNodeIds(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract resumeSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract sendData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;JLjava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setBPM(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBPMType;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setClientNodeId(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setCommand(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setDeviceKey(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/String;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setDeviceLightSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setHR(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setHRMax(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setKitchenScaleUnit(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setNickNameInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/String;IIIILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setNutritionFacts(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;Ljava/lang/Integer;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setOtherParams(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setRootNodeId(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setRulerBodyPartsType(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setRulerMeasureMode(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setRulerUnit(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setScaleSoundSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setScaleUIItems(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setScaleUnit(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setSkipPlayFreq(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setSkipSoundSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setUserInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setUserList(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;",
            "Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setVolume(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract setWeight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Integer;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract startSkipExt(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICSkipParam;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract startSkipMode(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;Ljava/lang/Integer;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method

.method public abstract stopSkip(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/ICDeviceManagerSettingManager$ICSettingCallback;)V
.end method
