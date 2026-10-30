.class public Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICHRWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "00002A37-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000180D-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _isConnected:Z

.field private _isWriting:Z

.field private _writeDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private _writeIndex:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 95
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 105
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000180D-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 96
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "write data is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addWriteDatasNoEventId(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 88
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 90
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 6

    .line 142
    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_8

    .line 143
    aget-byte v0, p1, v0

    goto :goto_e

    .line 145
    :cond_8
    array-length p2, p1

    const/4 v2, 0x2

    if-lt p2, v2, :cond_e

    .line 146
    aget-byte v0, p1, v1

    :cond_e
    :goto_e
    and-int/lit16 p1, v0, 0xff

    .line 150
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "hr"

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x180d

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 120
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    .line 121
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 128
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000180D-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 81
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isConnected:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isWriting:Z

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_writeIndex:Ljava/lang/Integer;

    .line 69
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 160
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 171
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 173
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->discoverServices()V

    goto :goto_1a

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 177
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 181
    :cond_12
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postWorkerOver()V

    .line 182
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_6

    .line 199
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->cancelConnect()V

    return-void

    :cond_6
    const-string p1, "0000180D-0000-1000-8000-00805F9B34FB"

    const-string p2, "00002A37-0000-1000-8000-00805F9B34FB"

    const/4 p3, 0x1

    .line 203
    invoke-virtual {p0, p3, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDiscoverServices(Ljava/util/List;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_a

    if-eqz p1, :cond_a

    const-string p1, "0000180D-0000-1000-8000-00805F9B34FB"

    .line 190
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d

    .line 192
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->cancelConnect()V

    :goto_d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 4

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isConnected:Z

    if-nez p2, :cond_a

    .line 233
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 236
    :cond_a
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 208
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    if-eqz p3, :cond_9

    .line 210
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->cancelConnect()V

    return-void

    :cond_9
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isConnected:Z

    if-eqz p1, :cond_e

    return-void

    :cond_e
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->_isConnected:Z

    .line 220
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000180D-0000-1000-8000-00805F9B34FB"

    .line 225
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 226
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->handlePacketData([BLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public stop()V
    .registers 4

    .line 248
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->bStop:Z

    .line 250
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->stopScan()V

    .line 251
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->postWorkerOver()V

    goto :goto_2d

    .line 253
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000180D-0000-1000-8000-00805F9B34FB"

    const-string v1, "00002A37-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 254
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/hr/ICHRWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x96

    .line 257
    :try_start_22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 261
    :goto_2a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_2d
    return-void
.end method
