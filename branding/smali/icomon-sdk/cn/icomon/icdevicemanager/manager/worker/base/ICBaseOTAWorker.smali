.class public Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBaseOTAWorker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method


# virtual methods
.method public writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V
    .registers 6

    .line 13
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;-><init>()V

    .line 14
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->service:Ljava/lang/String;

    .line 15
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->characteristic:Ljava/lang/String;

    .line 16
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->data:[B

    .line 17
    iput-object p4, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const/16 p1, 0x64

    .line 18
    iput p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->time:I

    .line 19
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeWriteValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method

.method public writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V
    .registers 10

    .line 24
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "write data:%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;-><init>()V

    .line 26
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->service:Ljava/lang/String;

    .line 27
    iput-object p3, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->characteristic:Ljava/lang/String;

    .line 28
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->data:[B

    .line 29
    iput-object p4, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    .line 30
    iput p5, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->time:I

    .line 31
    sget-object p1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeWriteValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method
