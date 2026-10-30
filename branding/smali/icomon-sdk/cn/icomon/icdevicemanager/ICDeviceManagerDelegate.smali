.class public interface abstract Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;
.super Ljava/lang/Object;
.source "ICDeviceManagerDelegate.java"


# virtual methods
.method public abstract onBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
.end method

.method public abstract onDeviceConnectionChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;)V
.end method

.method public abstract onInitFinish(Z)V
.end method

.method public abstract onNodeConnectionChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;)V
.end method

.method public abstract onReceiveBattery(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;)V
.end method

.method public abstract onReceiveConfigWifiResult(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;)V
.end method

.method public abstract onReceiveCoordData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICCoordData;)V
.end method

.method public abstract onReceiveDebugData(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;)V
.end method

.method public abstract onReceiveDeviceInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;)V
.end method

.method public abstract onReceiveDeviceLightSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Object;)V
.end method

.method public abstract onReceiveHR(Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
.end method

.method public abstract onReceiveHistorySkipData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICSkipData;)V
.end method

.method public abstract onReceiveKitchenScaleData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;)V
.end method

.method public abstract onReceiveKitchenScaleUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V
.end method

.method public abstract onReceiveMeasureStepData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
.end method

.method public abstract onReceiveRSSI(Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
.end method

.method public abstract onReceiveRulerData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICRulerData;)V
.end method

.method public abstract onReceiveRulerHistoryData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICRulerData;)V
.end method

.method public abstract onReceiveRulerMeasureModeChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;)V
.end method

.method public abstract onReceiveRulerUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V
.end method

.method public abstract onReceiveSkipData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICSkipData;)V
.end method

.method public abstract onReceiveUpgradePercent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;I)V
.end method

.method public abstract onReceiveUserInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
.end method

.method public abstract onReceiveUserInfoList(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReceiveWeightCenterData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V
.end method

.method public abstract onReceiveWeightData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
.end method

.method public abstract onReceiveWeightHistoryData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;)V
.end method

.method public abstract onReceiveWeightUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
.end method
