.class public Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;
.super Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;
.source "ICBleUScanDeviceModel.java"


# instance fields
.field public batteryType:I

.field public bfDataCalcType:I

.field public bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

.field public broadcastName:Ljava/lang/String;

.field public communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

.field public deviceFlag:I

.field public deviceFuns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;",
            ">;"
        }
    .end annotation
.end field

.field public deviceSubType:I

.field public freqCount:I

.field public identifier:Ljava/lang/String;

.field public impendenceProperty:I

.field public impendenceType:I

.field public isSupportBalance:Z

.field public isSupportGravity:Z

.field public isSupportHr:Z

.field public isSupportOTA:Z

.field public isSupportOffline:Z

.field public isSupportUnitJin:Z

.field public isSupportUnitKg:Z

.field public isSupportUnitLb:Z

.field public isSupportUnitStLb:Z

.field public isSupportUserInfo:Z

.field public kg_scale_division:I

.field public lb_scale_division:I

.field public macAddr:Ljava/lang/String;

.field public manfactureData:[B

.field public maxUserCount:I

.field public nodeId:I

.field public otaType:I

.field public pole:I

.field public protocol_ver:I

.field public rssi:Ljava/lang/Integer;

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public st_no:I

.field public subType:I

.field public supportEnableMeasureBalance:Z

.field public supportEnableMeasureGravity:Z

.field public supportEnableMeasureHr:Z

.field public supportEnableMeasureImpendence:Z

.field public type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel;-><init>()V

    return-void
.end method
