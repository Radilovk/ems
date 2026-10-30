.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleWoker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_READ_UUID:Ljava/lang/String; = "0000FFB3-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bStabilized:Z

.field private _bWriteUser:Z

.field private _bWriteWithResp:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _historyData:[B

.field private _isCall:Z

.field private _isWriting:Z

.field private _is_app_calc:Z

.field private _is_get_point:Z

.field private _point_kg:I

.field private _point_lb:I

.field private _point_src:I

.field private _point_st:I

.field private _points:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _temperature:D

.field private _weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

.field private _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

.field private _weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

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
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_weightCenterData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 126
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 138
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 128
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 116
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 118
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 120
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private fixWeight(DI)D
    .registers 11

    int-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 221
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double p1, p1, v4

    double-to-int p3, p1

    int-to-double v4, p3

    sub-double/2addr p1, v4

    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    cmpl-double v6, p1, v4

    if-lez v6, :cond_17

    add-int/lit8 p3, p3, 0x1

    :cond_17
    int-to-double p1, p3

    .line 228
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private getDeviceType()Ljava/lang/Integer;
    .registers 6

    .line 1175
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 1176
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I

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

    .line 1210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1199
    :cond_1b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_28

    .line 1200
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1203
    :cond_28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1189
    :cond_2d
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_3a

    .line 1190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1179
    :cond_3f
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_4c

    .line 1180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1183
    :cond_4c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getPointInfo()V
    .registers 6

    .line 1281
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "get point info"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 1284
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x5

    .line 1285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    if-nez v1, :cond_45

    .line 1288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1289
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_2f

    .line 1293
    :cond_45
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_48
    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 234
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 237
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_fbb

    .line 239
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_f9f

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 242
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 243
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_f7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_type"

    .line 246
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 247
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "decode data:%s"

    invoke-static {v8, v10, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xcc

    const/4 v10, 0x2

    const-string v11, "state"

    const-string v12, "type"

    const/4 v13, 0x3

    const/4 v14, 0x0

    if-ne v8, v9, :cond_ce

    .line 250
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 251
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_10f

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 256
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v10, :cond_96

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v13, :cond_96

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_be

    .line 257
    :cond_96
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 258
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a0

    .line 259
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 262
    :cond_a0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_b9

    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteUser:Z

    if-nez v3, :cond_b9

    .line 263
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    if-ne v2, v3, :cond_b9

    iput-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteUser:Z

    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    if-eqz v3, :cond_b9

    .line 266
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v14}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 271
    :cond_b9
    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :cond_be
    const/4 v1, -0x1

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 275
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeNext()V

    return-void

    .line 282
    :cond_ce
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_115

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_points:Ljava/util/Map;

    const-string v6, "point_src"

    .line 284
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_src:I

    const-string v6, "point_st"

    .line 285
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_st:I

    const-string v6, "point_lb"

    .line 286
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    const-string v6, "point_kg"

    .line 287
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    :cond_10f
    :goto_10f
    move-object/from16 v27, v2

    move-object/from16 v25, v3

    goto/16 :goto_f74

    .line 289
    :cond_115
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x7

    const-string v15, "has_temperature"

    const-wide v16, 0x3f50624de0000000L    # 0.0010000000474974513

    const-wide v18, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    const-wide/16 v20, 0x3e8

    if-ne v8, v9, :cond_3bb

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_points:Ljava/util/Map;

    if-nez v7, :cond_139

    iget-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_get_point:Z

    if-nez v5, :cond_30

    .line 292
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->getPointInfo()V

    iput-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_get_point:Z

    goto/16 :goto_30

    .line 297
    :cond_139
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "weight"

    .line 298
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "temp"

    .line 299
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 300
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v7, v6, :cond_28a

    iget-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    if-eqz v7, :cond_199

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v7, :cond_174

    .line 306
    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_174
    iget-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-nez v7, :cond_197

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 310
    iput-boolean v6, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 311
    iput-wide v9, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long v9, v9, v20

    iput-wide v9, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 313
    sget-object v7, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v9}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_197
    iput-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    :cond_199
    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    iput-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v7, :cond_1b2

    .line 323
    new-instance v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v7}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 324
    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v9, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v9, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 326
    :cond_1b2
    invoke-direct {v0, v8}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toG(I)I

    move-result v7

    .line 327
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v0, v9}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toKg(Ljava/lang/Integer;)D

    move-result-wide v9

    .line 328
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v8}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toLb(Ljava/lang/Integer;)D

    move-result-wide v14

    .line 329
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    invoke-direct {v0, v14, v15}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toStLb(D)Ljava/util/List;

    move-result-object v8

    .line 332
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 333
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    move-wide/from16 v24, v14

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move v15, v5

    .line 337
    iget-wide v4, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v4, v9, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v8, v4, v18

    move v5, v15

    if-lez v8, :cond_1f1

    const/4 v4, 0x1

    goto :goto_1f2

    :cond_1f1
    const/4 v4, 0x0

    :goto_1f2
    if-ne v5, v6, :cond_20b

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 p2, v7

    .line 343
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v5, v11, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v7, v5, v16

    if-lez v7, :cond_20d

    iput-wide v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 346
    iput-wide v11, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_20f

    :cond_20b
    move/from16 p2, v7

    :cond_20d
    if-eqz v4, :cond_10f

    :goto_20f
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v5, p2

    .line 351
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_221

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v6, 0x3

    .line 353
    iput v6, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    const/4 v7, 0x0

    goto :goto_227

    :cond_221
    const/4 v6, 0x3

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v7, 0x0

    .line 356
    iput v7, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    :goto_227
    iget v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    if-ne v4, v5, :cond_230

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 360
    iput v6, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    goto :goto_234

    :cond_230
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 363
    iput v7, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    :goto_234
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    .line 366
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_st:I

    .line 367
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    .line 368
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    .line 369
    invoke-direct {v0, v9, v10, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->fixWeight(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    move-wide/from16 v6, v24

    .line 370
    invoke-direct {v0, v6, v7, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->fixWeight(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 371
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_st:I

    .line 372
    invoke-direct {v0, v13, v14, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->fixWeight(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long v5, v5, v20

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v5, 0x0

    .line 375
    iput-boolean v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 376
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_10f

    :cond_28a
    if-eq v7, v10, :cond_28f

    const/4 v4, 0x3

    if-ne v7, v4, :cond_10f

    :cond_28f
    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    if-nez v4, :cond_f7a

    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-eqz v4, :cond_299

    goto/16 :goto_f7a

    :cond_299
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v4, :cond_2aa

    .line 384
    new-instance v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 385
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v6, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 387
    :cond_2aa
    invoke-direct {v0, v8}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toG(I)I

    move-result v4

    .line 388
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toKg(Ljava/lang/Integer;)D

    move-result-wide v6

    .line 389
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v8}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toLb(Ljava/lang/Integer;)D

    move-result-wide v8

    const/4 v10, 0x0

    .line 390
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 392
    invoke-direct {v0, v8, v9}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toStLb(D)Ljava/util/List;

    move-result-object v13

    .line 393
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    const/4 v10, 0x1

    .line 394
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    move-wide/from16 v24, v11

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iget-boolean v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    const/4 v13, 0x1

    xor-int/lit8 v26, v12, 0x1

    iput-boolean v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-object v15, v14

    .line 398
    iget-wide v13, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v12, v6, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v14, v12, v18

    if-lez v14, :cond_2f3

    const/4 v12, 0x1

    const/16 v20, 0x1

    goto :goto_2f6

    :cond_2f3
    move/from16 v20, v26

    const/4 v12, 0x1

    :goto_2f6
    if-ne v5, v12, :cond_30f

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 405
    iget-wide v12, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v12, v24, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v5, v12, v16

    if-lez v5, :cond_30f

    move-wide/from16 v12, v24

    iput-wide v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 408
    iput-wide v12, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_311

    :cond_30f
    if-eqz v20, :cond_10f

    :goto_311
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 413
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 414
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_325

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v12, 0x3

    .line 416
    iput v12, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    const/4 v13, 0x0

    goto :goto_32b

    :cond_325
    const/4 v12, 0x3

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v13, 0x0

    .line 419
    iput v13, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    :goto_32b
    iget v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    if-ne v4, v5, :cond_334

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 423
    iput v12, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    goto :goto_338

    :cond_334
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 426
    iput v13, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    :goto_338
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    .line 429
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_st:I

    .line 430
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    .line 431
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    .line 432
    invoke-direct {v0, v6, v7, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->fixWeight(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    .line 433
    invoke-direct {v0, v8, v9, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->fixWeight(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 434
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_st:I

    .line 435
    invoke-direct {v0, v10, v11, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->fixWeight(DI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 438
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 440
    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v4

    const/4 v5, 0x1

    .line 441
    iput-boolean v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 442
    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 443
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 445
    iget-wide v6, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v6, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    const/16 v5, 0x1388

    .line 448
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$1;

    invoke-direct {v6, v0, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v5, v6}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v4

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 461
    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto/16 :goto_10f

    .line 465
    :cond_3bb
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v8, "temperature"

    const-string v9, "weight_g"

    const-string v13, "weight_st_lb"

    const-string v10, "weight_st"

    const-string v14, "weight_lb"

    const-string v6, "weight_kg"

    move-object/from16 v25, v3

    const-string v3, "precision"

    const-string v1, "lb_scale_division"

    move-object/from16 v27, v2

    const-string v2, "kg_scale_division"

    move-object/from16 v28, v15

    const/16 v15, 0xce

    if-eq v4, v15, :cond_e25

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v15, 0xae

    if-ne v4, v15, :cond_3e5

    goto/16 :goto_e25

    .line 544
    :cond_3e5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v15, 0xa9

    if-ne v4, v15, :cond_4b0

    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-eqz v4, :cond_3f2

    return-void

    .line 549
    :cond_3f2
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 550
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 551
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 552
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 553
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-wide/from16 v16, v14

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 555
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 557
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 558
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 560
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-wide v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 562
    iput-wide v7, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 563
    iget-wide v7, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v7, v11, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v5, v7, v18

    if-lez v5, :cond_f74

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 564
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 565
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 566
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 568
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 569
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 570
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 571
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v16

    .line 572
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 573
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 574
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 575
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 577
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_f74

    .line 580
    :cond_4b0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v15, 0xca

    if-eq v4, v15, :cond_cd1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v15, 0xaa

    if-ne v4, v15, :cond_4c2

    goto/16 :goto_cd1

    .line 671
    :cond_4c2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0xc0

    if-ne v4, v8, :cond_62e

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v4, :cond_f74

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v4, :cond_f74

    const-string v4, "weight_kg_l"

    .line 673
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v4, "weight_lb_l"

    .line 674
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_l"

    .line 675
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_l"

    .line 676
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_kg_r"

    .line 678
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_lb_r"

    .line 679
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_r"

    .line 680
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_r"

    .line 681
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 683
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "weight_percent_l"

    .line 684
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v4, "weight_percent_r"

    .line 685
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v4, "weight_g_l"

    .line 687
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v12, "weight_g_r"

    .line 688
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 690
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 691
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 694
    iget-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v13, v6, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v13, v15

    if-gez v5, :cond_57e

    goto/16 :goto_f74

    :cond_57e
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 697
    iget-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v6

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x0

    .line 699
    iput-boolean v15, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 701
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 702
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 703
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 704
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v20

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 707
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 708
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 709
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 710
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 712
    invoke-static {v6, v7, v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 713
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v4, v1

    .line 715
    invoke-direct {v0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toStLb(D)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    .line 716
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 717
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 719
    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 720
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 721
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 724
    iput-wide v1, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 725
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 726
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 727
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 728
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 729
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 731
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 732
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 733
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 734
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_f74

    .line 737
    :cond_62e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0xc4

    if-ne v4, v8, :cond_788

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v4, :cond_f74

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v4, :cond_f74

    const-string v4, "weight_kg_l"

    .line 739
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v4, "weight_lb_l"

    .line 740
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_l"

    .line 741
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_l"

    .line 742
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_kg_r"

    .line 744
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_lb_r"

    .line 745
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_r"

    .line 746
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_r"

    .line 747
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 749
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "weight_percent_l"

    .line 750
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v4, "weight_percent_r"

    .line 751
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v4, "weight_g_l"

    .line 752
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v12, "weight_g_r"

    .line 753
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 755
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 756
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 758
    iget-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v6

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x1

    .line 760
    iput-boolean v15, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 762
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 763
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 764
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 765
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v20

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 768
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 769
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 770
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 771
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 773
    invoke-static {v6, v7, v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 774
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v4, v1

    .line 776
    invoke-direct {v0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toStLb(D)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    .line 777
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 778
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 780
    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 781
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 782
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 785
    iput-wide v1, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 786
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 787
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 788
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 789
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 790
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 792
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 793
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 794
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 795
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_f74

    .line 799
    :cond_788
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xad

    if-ne v3, v4, :cond_9cf

    .line 800
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "unit"

    .line 801
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 802
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-object v15, v12

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 803
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-object v8, v15

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 804
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 805
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    move-wide/from16 v16, v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 807
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 809
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 810
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 812
    invoke-static {v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v10

    const-string v15, "precision_kg"

    .line 815
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v22, v8

    const-string v8, "precision_lb"

    .line 816
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v3, :cond_8e1

    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    if-eqz v3, :cond_839

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v3, :cond_812

    .line 822
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_812
    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-nez v3, :cond_839

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v8, 0x1

    .line 826
    iput-boolean v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v28, v13

    iget-wide v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 827
    iput-wide v13, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    div-long v13, v13, v20

    iput-wide v13, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 829
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_83b

    :cond_839
    move-wide/from16 v28, v13

    :goto_83b
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v3, :cond_856

    .line 838
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 839
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v8, v8, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 842
    :cond_856
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v10, v3, :cond_87f

    .line 843
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v10, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 844
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 845
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 846
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v8, v22

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_87f
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 850
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v11, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v7, v3, v18

    if-lez v7, :cond_f74

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 855
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 856
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 857
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 859
    iput v15, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 860
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 861
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 862
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v16

    .line 863
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 864
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v13, v28

    .line 865
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 867
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 868
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_f74

    :cond_8e1
    move-wide/from16 v2, v16

    move-object/from16 v8, v22

    .line 872
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v10, v1, :cond_90c

    .line 873
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v10, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 874
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 875
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 876
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_90c
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    if-eqz v1, :cond_911

    return-void

    :cond_911
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_922

    .line 883
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 884
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 887
    :cond_922
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 891
    iget-wide v7, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v7, v11, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v4, v7, v18

    if-lez v4, :cond_93e

    goto :goto_940

    :cond_93e
    if-eqz v1, :cond_f74

    :goto_940
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 896
    iput v15, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 897
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 898
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 899
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 900
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 901
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 902
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 906
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v1, v2, :cond_988

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 907
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 908
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 909
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_f74

    :cond_988
    const/4 v2, 0x1

    .line 914
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 916
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    .line 917
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 918
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 919
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 920
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 921
    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/16 v4, 0x1388

    .line 924
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$3;

    invoke-direct {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$3;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 935
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto/16 :goto_f74

    :cond_9cf
    move-object v8, v12

    .line 941
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_b04

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xab

    if-ne v1, v2, :cond_9e2

    goto/16 :goto_b04

    .line 1115
    :cond_9e2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_9ef

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    goto/16 :goto_f74

    .line 1118
    :cond_9ef
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f74

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    if-nez v1, :cond_f74

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_f74

    const-string v1, "adc"

    .line 1121
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1123
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 1124
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1125
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "bmi"

    .line 1126
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "fatRate"

    .line 1127
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "subcutaneousFat"

    .line 1128
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->subcutaneousFatPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "visceralFat"

    .line 1129
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->visceralFat:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "muscle"

    .line 1130
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->musclePercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "bmr"

    .line 1131
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmr:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "boneMass"

    .line 1132
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMass:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "moisture"

    .line 1133
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->moisturePercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "physicalAge"

    .line 1134
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->physicalAge:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v2, "proteinRate"

    .line 1135
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_ac4

    .line 1138
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_ac4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1142
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->data_calc_type:I

    .line 1144
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calcOther(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1146
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    .line 1147
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-static {v2, v1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1148
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smPercent:D

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->smPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 1151
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1153
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_f74

    :cond_b04
    :goto_b04
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-eqz v1, :cond_b0a

    goto/16 :goto_f74

    .line 945
    :cond_b0a
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "data"

    .line 946
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 947
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xfd

    if-eq v3, v4, :cond_ba3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xa001

    if-ne v3, v4, :cond_b2b

    goto/16 :goto_ba3

    .line 1023
    :cond_b2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_b9e

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    if-nez v1, :cond_b3d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_b3d

    goto/16 :goto_f74

    .line 1082
    :cond_b3d
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->is_fill_adc:Z

    if-eqz v1, :cond_f74

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    if-eqz v1, :cond_f74

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_f74

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_b57

    .line 1088
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_b57
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 1093
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 1094
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1095
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1097
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-wide v2, 0x4080400000000000L    # 520.0

    .line 1099
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 1100
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    .line 1104
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1106
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_f74

    .line 1111
    :cond_b9e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_f74

    :cond_ba3
    :goto_ba3
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_f74

    .line 949
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 950
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c70

    const-string v1, "adc"

    .line 951
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 952
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 953
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 954
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 955
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v4, v4

    iget-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    if-eqz v5, :cond_c6a

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 957
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v3

    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_c5a

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v3, :cond_bff

    .line 963
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_bff
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 968
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 969
    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v20

    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 973
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 974
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    const-wide v3, 0x4072c00000000000L    # 300.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_c39

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 977
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v2

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 978
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_c40

    .line 982
    :cond_c39
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    :goto_c40
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    .line 987
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 989
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_f74

    .line 992
    :cond_c5a
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imp..."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f74

    :cond_c6a
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 996
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    goto/16 :goto_f74

    .line 999
    :cond_c70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f74

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-eqz v1, :cond_c7d

    goto/16 :goto_f74

    :cond_c7d
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_c87

    .line 1004
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 1007
    :cond_c87
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1008
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v2, v2

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 1010
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 1011
    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1013
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v20

    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1015
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v1

    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 1016
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1019
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_f74

    :cond_cd1
    :goto_cd1
    const/16 v4, 0x1388

    iget-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-nez v11, :cond_e24

    iget-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    if-eqz v11, :cond_cdd

    goto/16 :goto_e24

    :cond_cdd
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v11, :cond_cee

    .line 586
    new-instance v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v11}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 587
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v12, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 590
    :cond_cee
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 591
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 592
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 593
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    move-wide/from16 v20, v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 595
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 597
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 598
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 600
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v15, v28

    .line 601
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-boolean v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    const/4 v4, 0x1

    xor-int/2addr v15, v4

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    .line 604
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0xca

    if-ne v4, v7, :cond_d79

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v22, v13

    .line 605
    iget-wide v13, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v4, v13, v18

    if-lez v4, :cond_d53

    const/4 v15, 0x1

    .line 609
    :cond_d53
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_d8a

    .line 610
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 612
    iget-wide v7, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v10, v7, v16

    if-lez v10, :cond_d8a

    iput-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 615
    iput-wide v4, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_d8c

    :cond_d79
    move-wide/from16 v22, v13

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 620
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v4, v11, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v7, v4, v18

    if-lez v7, :cond_d8a

    goto :goto_d8c

    :cond_d8a
    if-eqz v15, :cond_f74

    :goto_d8c
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 626
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 627
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 628
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 630
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 631
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 632
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 633
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v20

    .line 634
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 635
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v22

    .line 636
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 640
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 642
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    const/4 v2, 0x1

    .line 643
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 644
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 645
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 646
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 647
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    if-nez v2, :cond_e0e

    const/16 v15, 0x1f40

    goto :goto_e10

    :cond_e0e
    const/16 v15, 0x1388

    .line 655
    :goto_e10
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;

    invoke-direct {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 668
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto/16 :goto_f74

    :cond_e24
    :goto_e24
    return-void

    :cond_e25
    :goto_e25
    move-object/from16 v15, v28

    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    if-eqz v4, :cond_e5f

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v4, :cond_e35

    .line 469
    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_e35
    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    if-nez v4, :cond_e5b

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v4, :cond_e5b

    const/4 v11, 0x1

    .line 474
    iput-boolean v11, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 475
    iput-wide v11, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    div-long v11, v11, v20

    iput-wide v11, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 477
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v11}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_e5b
    const/4 v4, 0x0

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_e60

    :cond_e5f
    const/4 v4, 0x0

    :goto_e60
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    iput-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v4, :cond_e7a

    .line 487
    new-instance v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 488
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v11, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 490
    :cond_e7a
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 491
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-wide/from16 v22, v11

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 493
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 494
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 496
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 498
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 500
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 501
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 503
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 506
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v10, 0xce

    if-ne v7, v10, :cond_f02

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v28, v13

    .line 507
    iget-wide v13, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v13, v22, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v7, v13, v18

    if-lez v7, :cond_ed8

    const/4 v7, 0x1

    goto :goto_ed9

    :cond_ed8
    const/4 v7, 0x0

    .line 511
    :goto_ed9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_eff

    .line 512
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 514
    iget-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v13, v8, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v5, v13, v16

    if-lez v5, :cond_eff

    iput-wide v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 517
    iput-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_f12

    :cond_eff
    if-eqz v7, :cond_f74

    goto :goto_f12

    :cond_f02
    move-wide/from16 v28, v13

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 522
    iget-wide v7, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v7, v22, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v5, v7, v18

    if-lez v5, :cond_f74

    :goto_f12
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 528
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 529
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 530
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 532
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 533
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 534
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v22

    .line 535
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 536
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 537
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v28

    .line 538
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 540
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 541
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_f74
    :goto_f74
    move-object/from16 v1, p1

    move-object/from16 v3, v25

    move-object/from16 v2, v27

    :cond_f7a
    :goto_f7a
    const/4 v4, 0x0

    goto/16 :goto_30

    :cond_f7d
    move-object/from16 v27, v2

    .line 1157
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_fbb

    .line 1159
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v3, p1

    iget-object v3, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "decode failed:%s"

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_fbb

    :cond_f9f
    move-object v3, v1

    .line 1162
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_fa7

    goto :goto_fbb

    .line 1167
    :cond_fa7
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_fbb

    .line 1169
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_fbb
    :goto_fbb
    return-void
.end method

.method private readHistoryData()V
    .registers 4

    .line 1215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 1216
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x1

    .line 1217
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 1218
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    return-void
.end method

.method private toG(I)I
    .registers 8

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_src:I

    rsub-int/lit8 p1, p1, 0x3

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 182
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private toKg(Ljava/lang/Integer;)D
    .registers 10

    .line 187
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_src:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    int-to-double v2, p1

    .line 188
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    rem-double v6, v0, v2

    mul-double v6, v6, v4

    double-to-int p1, v6

    const/4 v6, 0x5

    if-lt p1, v6, :cond_23

    add-double/2addr v0, v2

    :cond_23
    double-to-int p1, v0

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_kg:I

    int-to-double v2, p1

    .line 193
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private toLb(Ljava/lang/Integer;)D
    .registers 8

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x561e

    div-int/lit16 p1, p1, 0x2710

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_src:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 202
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    int-to-double v2, p1

    .line 203
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_point_lb:I

    int-to-double v2, p1

    .line 205
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private toStLb(D)Ljava/util/List;
    .registers 6

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    div-double v0, p1, v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0xe

    int-to-double v1, v1

    sub-double/2addr p1, v1

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateTime()V
    .registers 6

    .line 1245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 1246
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x3

    .line 1248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    if-nez v1, :cond_48

    .line 1251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1252
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_32

    .line 1256
    :cond_48
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_4b
    return-void
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 6

    .line 1262
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "update weight unit:%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 1265
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x4

    .line 1267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    if-nez v0, :cond_55

    .line 1270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1271
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3f

    .line 1275
    :cond_55
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_58
    return-void
.end method

.method private updateUserInfo()V
    .registers 6

    .line 1223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    .line 1224
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->getDeviceType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "age"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "user_index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x2

    .line 1230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    if-nez v1, :cond_71

    .line 1234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1235
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_5b

    .line 1239
    :cond_71
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_74
    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 155
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 156
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 165
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 108
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 111
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_get_point:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_isWriting:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_temperature:D

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_is_app_calc:Z

    .line 98
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 101
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 1299
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 1310
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 1313
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 1319
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bStabilized:Z

    .line 1323
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerOver()V

    .line 1324
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 7
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

    const-string p3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1336
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1339
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 1340
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 1341
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWrite:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    and-int/2addr p2, v1

    if-lez p2, :cond_c

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    goto :goto_c

    :cond_35
    const-string p1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 1346
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1350
    :cond_3b
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->cancelConnect()V

    :goto_3e
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

    .line 1331
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    .line 1428
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_10

    .line 1429
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1430
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1431
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    goto :goto_17

    .line 1435
    :cond_10
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_17
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_bWriteWithResp:Z

    if-eqz p1, :cond_12

    .line 1363
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUserInfo()V

    .line 1364
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateTime()V

    .line 1365
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    goto :goto_32

    .line 1369
    :cond_12
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUserInfo()V

    .line 1370
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUserInfo()V

    .line 1371
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateTime()V

    .line 1372
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateTime()V

    .line 1373
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    .line 1374
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    .line 1375
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_32
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 4

    .line 1419
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUserInfo()V

    .line 1420
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v0, p2, :cond_e

    .line 1422
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    :cond_e
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string p4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1382
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 1385
    array-length p2, p1

    const/16 p4, 0x14

    if-ne p2, p4, :cond_45

    .line 1386
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p2

    .line 1387
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result p4

    const/16 v0, 0xac

    const/4 v1, 0x1

    if-ne p4, v0, :cond_28

    .line 1392
    invoke-virtual {p2, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    .line 1393
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result p2

    const/16 p4, 0xff

    if-ne p2, p4, :cond_45

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_historyData:[B

    return-void

    :cond_28
    if-ne p4, v1, :cond_45

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_historyData:[B

    if-eqz p2, :cond_45

    .line 1399
    array-length p4, p2

    if-lez p4, :cond_45

    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1400
    invoke-virtual {p4, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1401
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_historyData:[B

    .line 1403
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    return-void

    :cond_45
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1407
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 1408
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1414
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->writeNext()V

    return-void
.end method
