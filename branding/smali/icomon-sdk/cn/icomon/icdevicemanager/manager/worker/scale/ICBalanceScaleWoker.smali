.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBalanceScaleWoker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_READ_UUID:Ljava/lang/String; = "0000FFB3-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bStabilized:Z

.field private _bWriteUser:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _isWriting:Z

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _temperature:D

.field private _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

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

    .line 39
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    if-eqz p1, :cond_4d

    .line 96
    iget-object v0, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 103
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    const/4 p1, 0x0

    .line 105
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 107
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    :goto_4d
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
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private getDeviceType()Ljava/lang/Integer;
    .registers 6

    .line 365
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 366
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker$1;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3f

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2d

    if-eq v0, v4, :cond_1b

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 389
    :cond_1b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_28

    .line 390
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 393
    :cond_28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 379
    :cond_2d
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_3a

    .line 380
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 383
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 369
    :cond_3f
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_4c

    .line 370
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 373
    :cond_4c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 150
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 153
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_47f

    .line 155
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_464

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 158
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 159
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_44c

    .line 161
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "package_type"

    .line 162
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 163
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const-string v2, "decode data:%s"

    invoke-static {v6, v2, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xcc

    const/4 v7, 0x0

    if-ne v2, v6, :cond_e7

    const-string v2, "type"

    .line 166
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "state"

    .line 167
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 168
    const-class v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "type : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_47f

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 173
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v6, v8, :cond_b3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v9, :cond_b3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_d7

    .line 174
    :cond_b3
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_bd

    .line 176
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 179
    :cond_bd
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_d2

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bWriteUser:Z

    if-nez v1, :cond_d2

    .line 180
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    if-ne v6, v1, :cond_d2

    iput-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bWriteUser:Z

    .line 182
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v7}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 186
    :cond_d2
    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :cond_d7
    const/4 v1, -0x1

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 189
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->writeNext()V

    return-void

    .line 198
    :cond_e7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v6, "has_temperature"

    const/16 v10, 0xce

    const-string v11, "temperature"

    const-string v14, "lb_scale_division"

    const-string v15, "kg_scale_division"

    const-string v7, "weight_g"

    const-string v8, "precision"

    const-string v9, "weight_st_lb"

    const-string v5, "weight_st"

    const-string v4, "weight_lb"

    const-string v12, "weight_kg"

    const-wide/16 v21, 0x3e8

    if-eq v2, v10, :cond_323

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v13, 0xae

    if-ne v2, v13, :cond_10f

    goto/16 :goto_323

    .line 258
    :cond_10f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v10, 0xa9

    if-ne v2, v10, :cond_1d8

    .line 259
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_temperature:D

    .line 260
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 261
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 262
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 263
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 264
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 266
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 267
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 269
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_temperature:D

    .line 270
    iput-wide v13, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 271
    iget-wide v13, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v13, v2, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v8, v13, v15

    if-lez v8, :cond_47f

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 272
    iput v7, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 273
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 274
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 275
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 278
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 279
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 280
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 281
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 282
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v21

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 284
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_47f

    .line 287
    :cond_1d8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v10, 0xca

    if-eq v2, v10, :cond_228

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v10, 0xaa

    if-ne v2, v10, :cond_1e9

    goto :goto_228

    .line 334
    :cond_1e9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_47f

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bStabilized:Z

    if-eqz v2, :cond_47f

    const-string v2, "x"

    .line 336
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "y"

    .line 337
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 339
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICCoordData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;-><init>()V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v21

    invoke-virtual {v3, v4, v5}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->setTime(J)V

    .line 341
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->setX(I)V

    .line 342
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->setY(I)V

    .line 343
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_47f

    :cond_228
    :goto_228
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bStabilized:Z

    if-eqz v2, :cond_22d

    return-void

    :cond_22d
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_23e

    .line 292
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 293
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_23e
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bStabilized:Z

    .line 296
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 297
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 298
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 299
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 300
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 302
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 303
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 305
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 306
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 308
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v15, 0x1

    if-ne v6, v15, :cond_2b6

    .line 309
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-wide/from16 v18, v9

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v23, v12

    .line 311
    iget-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v11, v9, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v15, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v11, v15

    if-lez v1, :cond_2ba

    iput-wide v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 313
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_2ba

    :cond_2b6
    move-wide/from16 v18, v9

    move-wide/from16 v23, v12

    :cond_2ba
    :goto_2ba
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 316
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 317
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 318
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 319
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 320
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 321
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 322
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v23

    .line 323
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 324
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v18

    .line 325
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_temperature:D

    .line 327
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 328
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v21

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 331
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_47f

    :cond_323
    :goto_323
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_337

    .line 201
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 202
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v13, v13, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v13, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 204
    :cond_337
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 205
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    move-object v4, v11

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 207
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 208
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-wide/from16 v23, v10

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 210
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 211
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 213
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 215
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 216
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 218
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v14, 0xce

    if-ne v3, v14, :cond_3d0

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 219
    iget-wide v14, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v14, v12, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v19, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v3, v14, v19

    if-lez v3, :cond_39d

    const/4 v3, 0x1

    goto :goto_39e

    :cond_39d
    const/4 v3, 0x0

    .line 223
    :goto_39e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_3cb

    .line 224
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 p1, v9

    .line 226
    iget-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v9, v14, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v16, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v9, v16

    if-lez v1, :cond_3cd

    iput-wide v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 229
    iput-wide v14, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_3e5

    :cond_3cb
    move-wide/from16 p1, v9

    :cond_3cd
    if-eqz v3, :cond_47f

    goto :goto_3e5

    :cond_3d0
    move-wide/from16 p1, v9

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 234
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v12, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v9, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v1, v3, v9

    if-lez v1, :cond_47f

    :goto_3e5
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 240
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 241
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 242
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 243
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v3, v23

    .line 244
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 245
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 246
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 247
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 248
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 249
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, p1

    .line 251
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v21

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 254
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 255
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_47f

    .line 349
    :cond_44c
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "decode failed:%s"

    invoke-static {v2, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_47f

    .line 352
    :cond_464
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_46b

    goto :goto_47f

    .line 357
    :cond_46b
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_47f

    .line 359
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47f
    :goto_47f
    return-void
.end method

.method private readHistoryData()V
    .registers 4

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 406
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x1

    .line 407
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 408
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    return-void
.end method

.method private updateTime()V
    .registers 6

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 427
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x3

    .line 429
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 431
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    return-void
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 5

    .line 436
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "update weight unit:%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 439
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x4

    .line 441
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 443
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    return-void
.end method

.method private updateUserInfo()V
    .registers 4

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 414
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "age"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x2

    .line 419
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    return-void
.end method

.method private writeNext()V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 121
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 124
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3b

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, 0x0

    :cond_3b
    if-eqz v0, :cond_54

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_54
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 81
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 5

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scanInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_isWriting:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_temperature:D

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bWriteUser:Z

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bStabilized:Z

    .line 69
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBalanceScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 71
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 448
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    if-eqz p2, :cond_a

    .line 453
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_a

    .line 455
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->cancelConnect()V

    return-void

    .line 459
    :cond_a
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_12

    .line 462
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->discoverServices()V

    goto :goto_27

    :cond_12
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_1c

    .line 468
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_1c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_bStabilized:Z

    .line 472
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerOver()V

    .line 473
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_27
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

    const-string p2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 485
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    const-string p3, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 488
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->updateUserInfo()V

    .line 490
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->updateTime()V

    .line 491
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    :cond_1b
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

    const-string p1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 480
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    .line 518
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_a

    .line 519
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 520
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    goto :goto_11

    .line 523
    :cond_a
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_11
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 513
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->updateUserInfo()V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 499
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 501
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 502
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 508
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceScaleWoker;->writeNext()V

    return-void
.end method
