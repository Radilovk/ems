.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleA4Worker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _bStabilized:Z

.field _bWriteUser:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _isCall:Z

.field _isConnected:Z

.field _isSupportHR:Z

.field _isSupportPH:Z

.field _isWriteWithResp:Z

.field private _isWriting:Z

.field _point_kg:I

.field _point_lb:I

.field _point_src:I

.field _point_st:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _temperature:D

.field _timer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

.field _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

.field _weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

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
.method static bridge synthetic -$$Nest$mpostUploadData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6c

    .line 151
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6c

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriteWithResp:Z

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    if-eqz p1, :cond_52

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriting:Z

    if-nez p1, :cond_52

    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_52

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 163
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_6b

    :cond_52
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriteWithResp:Z

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 169
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6b
    :goto_6b
    return-void

    .line 153
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 141
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 143
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 145
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private convertHTADC(I)I
    .registers 4

    mul-int/lit8 p1, p1, 0x2

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    return p1
.end method

.method private getDeviceType()I
    .registers 3

    .line 966
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 967
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x20

    return v0

    .line 972
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 229
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    .line 232
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_dfc

    .line 234
    :cond_1b
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_ddf

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 237
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 239
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_dbc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_type"

    .line 240
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 242
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "decode data:%s"

    invoke-static {v8, v10, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xa5

    const-string v11, "unit"

    const-string v15, "lb_scale_division"

    const-string v10, "kg_scale_division"

    if-ne v8, v9, :cond_31b

    const-string v7, "state"

    .line 244
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "dianji"

    .line 245
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "supportZx"

    .line 246
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    const-string v9, "supportPh"

    .line 247
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v13, "supportHr"

    .line 248
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 249
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v4, "precision_lb"

    .line 250
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v12, "precision_kg"

    .line 251
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v6, "weight_st_lb"

    .line 253
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-object/from16 v21, v2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v6, "weight_st"

    .line 254
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v22, v3

    const-string v3, "weight_lb"

    .line 255
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    move-wide/from16 v23, v1

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "weight_g"

    .line 256
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v25, v9

    const-string v9, "weight_kg"

    .line 257
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    move-wide/from16 v26, v1

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 259
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 260
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v15, "has_temperature"

    .line 262
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    const/4 v5, 0x1

    if-ne v13, v5, :cond_12e

    const/4 v5, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v5, 0x0

    :goto_12f
    iput-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isSupportHR:Z

    if-nez v7, :cond_234

    iget-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    if-eqz v5, :cond_158

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v5, :cond_142

    .line 268
    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v5, 0x0

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    goto :goto_143

    :cond_142
    const/4 v5, 0x0

    :goto_143
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v7, :cond_159

    const/4 v15, 0x1

    .line 272
    iput-boolean v15, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 273
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v15}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v15

    invoke-direct {v0, v7, v15}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_159

    :cond_158
    const/4 v5, 0x0

    :cond_159
    :goto_159
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isCall:Z

    iput-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v5, :cond_173

    .line 283
    new-instance v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v5}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 284
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v7, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 287
    :cond_173
    invoke-static {v14}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v5

    .line 288
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v5, v7, :cond_1a0

    .line 289
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v5, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 290
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 291
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "type"

    const/4 v11, 0x1

    .line 292
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v7, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v7, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_1a0
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 296
    iget-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v14, v1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v28, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v5, v14, v28

    if-lez v5, :cond_1b5

    const/4 v5, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v5, 0x0

    :goto_1b6
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v11, 0x1

    if-ne v13, v11, :cond_1bd

    const/4 v11, 0x1

    goto :goto_1be

    :cond_1bd
    const/4 v11, 0x0

    .line 299
    :goto_1be
    iput-boolean v11, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v7, :cond_1ca

    .line 301
    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v7, 0x0

    iput-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_1ca
    const/16 v7, 0x258

    .line 304
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;

    invoke-direct {v11, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;)V

    invoke-static {v7, v11}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v7

    iput-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 321
    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    if-eqz v5, :cond_db1

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 323
    iput v9, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 324
    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v7, 0x1

    if-ne v8, v7, :cond_1f0

    const/16 v10, 0x8

    goto :goto_1f1

    :cond_1f0
    const/4 v10, 0x4

    .line 325
    :goto_1f1
    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 326
    iput v12, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 327
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 328
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 329
    iput v3, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 330
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v26

    .line 331
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 332
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v23

    .line 333
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 335
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 336
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_db1

    :cond_234
    move v7, v6

    move-wide/from16 v30, v23

    move-wide/from16 v5, v26

    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v15, :cond_243

    .line 341
    invoke-virtual {v15}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v15, 0x0

    iput-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 344
    :cond_243
    invoke-static {v14}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v15

    move/from16 v17, v7

    .line 345
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v15, v7, :cond_272

    .line 346
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v15, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 347
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 348
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "type"

    const/4 v14, 0x1

    .line 349
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v11, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v11, v7}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_272
    iget-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    if-eqz v7, :cond_277

    return-void

    :cond_277
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v7, :cond_288

    .line 357
    new-instance v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v7}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 358
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v11, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_288
    iget-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    const/4 v11, 0x1

    xor-int/lit8 v20, v7, 0x1

    iput-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 363
    iget-wide v14, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v14, v1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v23, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v7, v14, v23

    if-lez v7, :cond_2a4

    const/16 v20, 0x1

    :cond_2a4
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v13, v11, :cond_2aa

    const/4 v13, 0x1

    goto :goto_2ab

    :cond_2aa
    const/4 v13, 0x0

    .line 366
    :goto_2ab
    iput-boolean v13, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    move/from16 v7, v25

    if-ne v7, v11, :cond_2b3

    const/4 v7, 0x1

    goto :goto_2b4

    :cond_2b3
    const/4 v7, 0x0

    :goto_2b4
    iput-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isSupportPH:Z

    if-eqz v20, :cond_db1

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 369
    iput-boolean v11, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 370
    iput v9, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 371
    iput v10, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v8, v11, :cond_2cb

    const/16 v10, 0x8

    goto :goto_2cc

    :cond_2cb
    const/4 v10, 0x4

    .line 373
    :goto_2cc
    iput v10, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 374
    iput v12, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 375
    iput v4, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 376
    iput v4, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 377
    iput v3, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 378
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 379
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v2, v17

    .line 380
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v30

    .line 381
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    .line 383
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isSupportPH:Z

    if-eqz v1, :cond_30e

    .line 387
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_db1

    .line 390
    :cond_30e
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_db1

    :cond_31b
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 395
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "weight_g_r"

    const-string v4, "weight_g_l"

    const-string v6, "weight_percent_r"

    const-string v8, "weight_percent_l"

    const-string v9, "precision"

    const-string v12, "weight_st_lb_r"

    const-string v13, "weight_st_r"

    const-string v14, "weight_lb_r"

    const-string v2, "weight_kg_r"

    move-object/from16 v24, v11

    const-string v11, "weight_st_lb_l"

    move-object/from16 v25, v7

    const-string v7, "weight_st_l"

    const-string v0, "weight_lb_l"

    move-object/from16 v26, v15

    const-string v15, "weight_kg_l"

    move-object/from16 v27, v10

    const/16 v10, 0xa0

    if-ne v1, v10, :cond_4a9

    .line 396
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v10, v3

    move-object/from16 v23, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 397
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 398
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 399
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 401
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 402
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 403
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 404
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 406
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 408
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 409
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v8, v23

    .line 411
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 412
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, v27

    .line 414
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v11, v26

    .line 415
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v11, p0

    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v12, :cond_3ed

    .line 418
    invoke-virtual {v12}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v12, 0x0

    iput-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_3ed
    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v12, :cond_4a6

    iget-object v13, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v13, :cond_4a6

    .line 424
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v12, v3, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v16, v12, v14

    if-gez v16, :cond_407

    return-void

    :cond_407
    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 428
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v3

    iget-object v14, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 429
    iput v8, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 430
    iput v9, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 431
    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 432
    iput v5, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v8, 0x0

    .line 434
    iput-boolean v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    iput-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 436
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 437
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 438
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 439
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 440
    invoke-static {v3, v4, v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 441
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v1

    .line 444
    invoke-direct {v11, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 445
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 446
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 452
    invoke-direct {v11, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 453
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 454
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 459
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 460
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 462
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 463
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 465
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 466
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 468
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 469
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 470
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 471
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    :cond_4a6
    :goto_4a6
    move-object v1, v11

    goto/16 :goto_db2

    :cond_4a9
    move-object v10, v3

    move-object v1, v4

    move-object v3, v0

    move-object/from16 v0, v27

    .line 474
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v0, 0xa4

    if-ne v4, v0, :cond_60e

    .line 475
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v23, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 476
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 477
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 478
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 480
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 481
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 482
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 483
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 485
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 486
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 487
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v8, v23

    .line 489
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 490
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, v27

    .line 492
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v11, v26

    .line 493
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v11, p0

    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v12, :cond_559

    .line 495
    invoke-virtual {v12}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v12, 0x0

    iput-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_559
    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v12, :cond_4a6

    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v12, :cond_4a6

    .line 501
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v0

    iget-object v14, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 502
    iput v8, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 503
    iput v9, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 504
    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 505
    iput v5, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v8, 0x1

    .line 507
    iput-boolean v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    iput-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 509
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 510
    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 511
    iput-wide v0, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 512
    iput-wide v12, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 513
    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v0

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 514
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v0

    .line 517
    invoke-direct {v11, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 518
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 519
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 525
    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 526
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 527
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 532
    iput-wide v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 533
    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 535
    iput v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 536
    iput v7, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 538
    iput-wide v12, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 539
    iput-wide v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 541
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 542
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 543
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 545
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 547
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_4a6

    :cond_60e
    move-object/from16 v0, v27

    .line 550
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v0, 0xc0

    if-ne v4, v0, :cond_776

    .line 551
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v23, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 552
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 553
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 554
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 556
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 557
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 558
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 559
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 561
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 563
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 564
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v8, v23

    .line 566
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 567
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, v27

    .line 569
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v11, v26

    .line 570
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v11, p0

    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v12, :cond_6bb

    .line 573
    invoke-virtual {v12}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v12, 0x0

    iput-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_6bb
    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v12, :cond_4a6

    iget-object v13, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v13, :cond_4a6

    .line 578
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v12, v0, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v16, v12, v14

    if-gez v16, :cond_6d5

    return-void

    :cond_6d5
    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 581
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v0

    iget-object v14, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 583
    iput v8, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 584
    iput v9, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 585
    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 586
    iput v5, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v8, 0x0

    .line 588
    iput-boolean v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    iput-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 590
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 591
    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 592
    iput-wide v0, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 593
    iput-wide v12, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 594
    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v0

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 595
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v0

    .line 598
    invoke-direct {v11, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 599
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 600
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 606
    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 607
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 608
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 613
    iput-wide v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 614
    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 616
    iput v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 617
    iput v7, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 619
    iput-wide v12, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 620
    iput-wide v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 622
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 623
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 624
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 626
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_4a6

    :cond_776
    move-object/from16 v0, v27

    .line 629
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v0, 0xc4

    if-ne v4, v0, :cond_8d8

    .line 630
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v23, v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 631
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 632
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 633
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 635
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 636
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 637
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 638
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 640
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 642
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 643
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v8, v23

    .line 645
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 646
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, v27

    .line 648
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v11, v26

    .line 649
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v11, p0

    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v12, :cond_823

    .line 651
    invoke-virtual {v12}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v12, 0x0

    iput-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_823
    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v12, :cond_4a6

    iget-object v12, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v12, :cond_4a6

    .line 656
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v0

    iget-object v14, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 658
    iput v8, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 659
    iput v9, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 660
    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v8, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 661
    iput v5, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v8, 0x1

    .line 663
    iput-boolean v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    iput-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 665
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 666
    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 667
    iput-wide v0, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 668
    iput-wide v12, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 669
    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v0

    iget-object v3, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 670
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v0

    .line 674
    invoke-direct {v11, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 675
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 676
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 682
    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 683
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 684
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 689
    iput-wide v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 690
    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 692
    iput v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 693
    iput v7, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 695
    iput-wide v12, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 696
    iput-wide v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 698
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 699
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 700
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 702
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 704
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v1, v11, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_4a6

    :cond_8d8
    move-object/from16 v0, p0

    move-object/from16 v23, v10

    move-object/from16 v4, v26

    move-object/from16 v10, v27

    move-object/from16 v26, v1

    .line 707
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v27, v6

    const/16 v6, 0xa6

    if-ne v1, v6, :cond_a56

    const-string v1, "adcs"

    .line 708
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object/from16 v2, v24

    .line 710
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "device_type"

    .line 711
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v5, :cond_916

    .line 715
    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v5, 0x0

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 719
    :cond_916
    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v5

    .line 720
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v5, v6, :cond_943

    .line 721
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v5, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 722
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 723
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const/4 v3, 0x1

    .line 724
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_943
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v2, :cond_a46

    .line 731
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_99b

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x4

    .line 732
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x0

    .line 733
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x1

    .line 734
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x2

    .line 735
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x3

    .line 736
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    const/4 v3, 0x1

    goto :goto_9b1

    .line 738
    :cond_99b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9b1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v5, 0x0

    .line 739
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    :cond_9b1
    :goto_9b1
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 742
    iput-boolean v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_temperature:D

    .line 743
    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 745
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 748
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    .line 749
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    .line 750
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 751
    iget-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v5

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 752
    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    const/16 v2, 0x26

    if-eq v4, v2, :cond_9f8

    const/16 v2, 0xa6

    if-ne v4, v2, :cond_a17

    :cond_9f8
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x0

    .line 754
    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->data_calc_type:I

    .line 755
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a0b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/16 v6, 0x8

    .line 759
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    goto :goto_a10

    :cond_a0b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x4

    .line 765
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    .line 768
    :goto_a10
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 771
    :cond_a17
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isSupportHR:Z

    if-eqz v1, :cond_a33

    .line 773
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_db1

    :cond_a33
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isCall:Z

    .line 777
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_db1

    .line 782
    :cond_a46
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no weight data"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_db1

    :cond_a56
    const/16 v6, 0x8

    .line 785
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0xa7

    if-ne v1, v6, :cond_aab

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_a6a

    .line 787
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a6a
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isCall:Z

    if-eqz v1, :cond_a6f

    return-void

    :cond_a6f
    const-string v1, "data_type"

    .line 793
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_db1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isCall:Z

    const-string v1, "hr"

    .line 796
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 797
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    .line 798
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    .line 799
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_db1

    .line 803
    :cond_aab
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v6, 0xcd

    if-ne v1, v6, :cond_db1

    const-string v1, "weight"

    .line 804
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v6, "coord"

    .line 805
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    move-object/from16 v17, v8

    const-string v8, "adcs"

    .line 806
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object/from16 v18, v9

    const-string v9, "hr"

    .line 807
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v19, v12

    const-string v12, "time"

    .line 808
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v24, v13

    const-string v13, "uint"

    .line 809
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    const-string v13, "alg_type"

    .line 810
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    const-string v13, "device_type"

    .line 811
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 813
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;-><init>()V

    move/from16 v25, v5

    .line 814
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v5, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 816
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v28, v14

    const/4 v14, 0x5

    if-ne v5, v14, :cond_b73

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x4

    .line 817
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    move-object/from16 v29, v15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x0

    .line 818
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x1

    .line 819
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x2

    .line 820
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x3

    .line 821
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    goto :goto_b8b

    :cond_b73
    move-object/from16 v29, v15

    .line 823
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_b8b

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x0

    .line 824
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iput-wide v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 827
    :cond_b8b
    :goto_b8b
    iput v9, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    const-string v5, "dianji"

    .line 831
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v9, "supportZx"

    .line 832
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    const-string v9, "supportPh"

    .line 833
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v14, "supportHr"

    .line 834
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    const-string v14, "precision_lb"

    .line 835
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "precision_kg"

    .line 836
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v0, "weight_st_lb"

    .line 838
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object/from16 v16, v8

    const-string v8, "weight_st"

    .line 839
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v31, v2

    const-string v2, "weight_lb"

    .line 840
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v32, v11

    const-string v11, "weight_g"

    .line 841
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v33, v7

    const-string v7, "weight_kg"

    .line 842
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 844
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    move-object/from16 v35, v10

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 845
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    move-object/from16 v36, v4

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v34, v3

    const-string v3, "has_temperature"

    .line 847
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 849
    iput v10, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    .line 850
    iput v4, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    const/4 v1, 0x1

    if-ne v5, v1, :cond_c46

    const/16 v10, 0x8

    goto :goto_c47

    :cond_c46
    const/4 v10, 0x4

    .line 851
    :goto_c47
    iput v10, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 852
    iput v15, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    .line 853
    iput v14, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    .line 854
    iput v14, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    .line 855
    iput v11, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    float-to-double v3, v7

    .line 856
    iput-wide v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    float-to-double v1, v2

    .line 857
    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    .line 858
    iput v8, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    float-to-double v0, v0

    .line 859
    iput-wide v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    .line 860
    iput v12, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    const/4 v0, 0x1

    if-ne v9, v0, :cond_d80

    move-object/from16 v0, v29

    .line 866
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move-object/from16 v1, v34

    .line 867
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object/from16 v2, v33

    .line 868
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v3, v32

    .line 869
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v4, v31

    .line 871
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object/from16 v5, v28

    .line 872
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object/from16 v7, v24

    .line 873
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v8, v19

    .line 874
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    move-object/from16 v9, v18

    .line 876
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, v17

    .line 878
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v14, v27

    .line 879
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move/from16 p2, v9

    move-object/from16 v9, v26

    .line 881
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v17, v8

    move-object/from16 v8, v23

    .line 882
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move/from16 v18, v3

    move-object/from16 v3, v35

    .line 884
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v19, v7

    move-object/from16 v7, v36

    .line 885
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 887
    new-instance v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v7}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v7, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 889
    iget-object v7, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v9, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    .line 890
    iget-object v7, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v8, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    .line 891
    iget-object v7, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v3, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    .line 892
    iget-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    .line 894
    iget-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    .line 895
    iget-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    int-to-long v6, v12

    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    .line 896
    iget-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-wide v10, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    .line 897
    iget-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-wide v14, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    .line 898
    iget-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v6, v0

    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    .line 899
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v3, v4

    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 901
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v3, v1

    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    .line 902
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v3, v5

    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    .line 904
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    .line 905
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move/from16 v1, v19

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    .line 907
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move/from16 v1, v18

    float-to-double v1, v1

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    .line 908
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move/from16 v1, v17

    float-to-double v1, v1

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    .line 910
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move/from16 v1, p2

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    .line 911
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    .line 912
    iget-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    :cond_d80
    const/16 v0, 0x26

    move/from16 v1, v25

    if-eq v1, v0, :cond_d9d

    const/16 v0, 0xa6

    if-ne v1, v0, :cond_d8b

    goto :goto_d9d

    :cond_d8b
    const/16 v0, 0x24

    if-eq v1, v0, :cond_d93

    const/16 v0, 0xa4

    if-ne v1, v0, :cond_da9

    :cond_d93
    const/4 v0, 0x2

    .line 930
    iput v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->data_calc_type:I

    .line 931
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v0

    iput-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_da9

    :cond_d9d
    :goto_d9d
    const/4 v0, 0x0

    .line 916
    iput v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->data_calc_type:I

    .line 917
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v0

    iput-object v0, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 918
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 936
    :cond_da9
    :goto_da9
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v13}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_db2

    :cond_db1
    :goto_db1
    move-object v1, v0

    :goto_db2
    move-object v0, v1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    const/4 v4, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_31

    :cond_dbc
    move-object v1, v0

    move-object/from16 v21, v2

    .line 940
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_dfc

    .line 942
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v3, p1

    iget-object v3, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "decode failed:%s"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_dfc

    :cond_ddf
    move-object v3, v1

    move-object v1, v0

    .line 945
    iget-object v0, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v2, :cond_de8

    goto :goto_dfc

    .line 950
    :cond_de8
    iget-object v0, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v2, :cond_dfc

    .line 952
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_dfc
    :goto_dfc
    return-void
.end method

.method private postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 4

    .line 221
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;-><init>()V

    .line 222
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->step:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 223
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->model:Ljava/lang/Object;

    .line 224
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDataEx:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method private toStLb(D)Ljava/util/List;
    .registers 6

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    div-double v0, p1, v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0xe

    int-to-double v1, v1

    sub-double/2addr p1, v1

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateInfo()V
    .registers 6

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 981
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 983
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 985
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->getDeviceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "device_type"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "time"

    .line 986
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utc_offset"

    .line 987
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unit"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 989
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "user_index"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "height"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "weight"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v3

    if-ne v3, v0, :cond_7e

    goto :goto_7f

    :cond_7e
    const/4 v0, 0x2

    :goto_7f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "sex"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "age"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 994
    invoke-virtual {v0, v2, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 995
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a8

    .line 996
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_a8
    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 185
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    .line 186
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 195
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 132
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 135
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isConnected:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isCall:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_temperature:D

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isSupportPH:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isSupportHR:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriteWithResp:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriting:Z

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_writeIndex:Ljava/lang/Integer;

    .line 116
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleA4:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 118
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_41

    .line 119
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->startScan()V

    goto :goto_44

    .line 123
    :cond_41
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->connect()V

    :goto_44
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 1002
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 1013
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 1016
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->discoverServices()V

    goto :goto_26

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 1022
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_1b

    .line 1026
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_1b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_bStabilized:Z

    .line 1030
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerOver()V

    .line 1031
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_26
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

    .line 1043
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1045
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 1046
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1047
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    and-int/2addr p2, v1

    if-ne p2, v0, :cond_c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isWriteWithResp:Z

    :cond_35
    const-string p1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 1054
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_3a
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

    .line 1038
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 3

    .line 1121
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1122
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    :cond_b
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 6

    .line 1083
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    .line 1084
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_2d

    :cond_12
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isConnected:Z

    if-nez v0, :cond_1e

    .line 1088
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1091
    :cond_1e
    sget-object p1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, p1, :cond_2d

    .line 1092
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1093
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1095
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->updateInfo()V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1061
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->updateInfo()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_isConnected:Z

    .line 1063
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 1077
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 1078
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->updateInfo()V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1068
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1070
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 1071
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1103
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->writeNext()V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 1109
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 1110
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->bStop:Z

    .line 1111
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->stopScan()V

    .line 1112
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->postWorkerOver()V

    goto :goto_15

    .line 1115
    :cond_12
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_15
    return-void
.end method
