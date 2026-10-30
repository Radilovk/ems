.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScale27Worker.java"


# static fields
.field private static final CHARACTERISTICS_FIRMWAREVER_UUID:Ljava/lang/String; = "00002a26-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_HARDWAREVER_UUID:Ljava/lang/String; = "00002a27-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MAC_UUID:Ljava/lang/String; = "00002a23-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MANFNAME_UUID:Ljava/lang/String; = "00002a29-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MODEL_UUID:Ljava/lang/String; = "00002a24-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SN_UUID:Ljava/lang/String; = "00002a25-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_SOFTWAREVER_UUID:Ljava/lang/String; = "00002a28-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final DEVINFO_SERVICE_UUID:Ljava/lang/String; = "0000180a-0000-1000-8000-00805f9b34fb"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _bStabilized:Z

.field _bWriteUser:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

.field private _deviceInfoUUIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _deviceInfoUUIDsReadIndex:I

.field _isCall:Z

.field private _isConnected:Z

.field _isMeasureHr:Z

.field _isSupportHR:Z

.field _isSupportPH:Z

.field private _isWelluePro:Z

.field _isWriteWithResp:Z

.field private _isWriting:Z

.field private _nCalibrationMode:I

.field private _nLastBattery:I

.field private _noDeviceInfo:Z

.field private _postDeviceInfo:Z

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _reDiscoverCharacteristicsCount:I

.field _temperature:D

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
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostUploadData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_noDeviceInfo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_postDeviceInfo:Z

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6c

    .line 185
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6c

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    if-eqz p1, :cond_52

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriting:Z

    if-nez p1, :cond_52

    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_52

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 197
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_6b

    :cond_52
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-nez p1, :cond_6b

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 203
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 204
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6b
    :goto_6b
    return-void

    .line 187
    :cond_6c
    :goto_6c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 175
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 177
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 179
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private configWifi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1553
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1554
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ssid"

    .line 1555
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 1556
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xdb

    .line 1557
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_52

    .line 1558
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_52

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-eqz p2, :cond_38

    .line 1560
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    goto :goto_52

    .line 1564
    :cond_38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1565
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3c

    :cond_52
    :goto_52
    return-void
.end method

.method private getDeviceType()I
    .registers 3

    .line 1120
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 1121
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x20

    return v0

    .line 1126
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 263
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    .line 266
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_114c

    .line 268
    :cond_1b
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_112f

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 271
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 273
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_110c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_type"

    .line 274
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 276
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "decode data:%s"

    invoke-static {v8, v10, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xd5

    const-string v10, "supportZx"

    const-string v11, "dianji"

    const-string v12, "mode"

    const-string v13, "unit"

    const/16 v16, 0x8

    const-string v14, "lb_scale_division"

    const-string v15, "kg_scale_division"

    const-string v4, "state"

    const-string v6, "type"

    move-object/from16 v21, v3

    if-ne v8, v9, :cond_4ad

    .line 278
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 279
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 280
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    const-string v8, "supportPh"

    .line 281
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "supportHr"

    .line 282
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 283
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "precision_lb"

    .line 284
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v3, "precision_kg"

    .line 285
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v1, "weight_st_lb"

    .line 287
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object/from16 v24, v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move/from16 v25, v8

    const-string v8, "weight_st"

    .line 288
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-wide/from16 v26, v1

    const-string v1, "weight_lb"

    .line 289
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move/from16 v28, v8

    const-string v8, "weight_g"

    .line 290
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-wide/from16 v29, v1

    const-string v1, "weight_kg"

    .line 291
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 293
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 294
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v31, v8

    const-string v8, "has_temperature"

    .line 296
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    const/4 v8, 0x1

    if-ne v9, v8, :cond_137

    goto :goto_138

    :cond_137
    const/4 v8, 0x0

    :goto_138
    iput-boolean v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportHR:Z

    .line 299
    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 300
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_14c

    :cond_14b
    const/4 v8, 0x0

    :goto_14c
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1fa

    const-string v8, "calibrationMode"

    .line 304
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_164

    const-string v8, "calibrationMode"

    .line 305
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_165

    :cond_164
    const/4 v8, 0x0

    :goto_165
    const-string v12, "battery"

    .line 308
    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17a

    const-string v12, "battery"

    .line 309
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_17c

    :cond_17a
    const/16 v12, 0xff

    :goto_17c
    move/from16 v22, v11

    const-string v11, "over_weight"

    .line 312
    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_193

    const-string v11, "over_weight"

    .line 313
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_194

    :cond_193
    const/4 v5, 0x0

    :goto_194
    if-eqz v8, :cond_1bc

    iget v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_nCalibrationMode:I

    if-eq v11, v8, :cond_1bc

    .line 317
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move/from16 v32, v3

    const-string v3, "calibrationMode"

    move/from16 v33, v7

    .line 318
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v11}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_nCalibrationMode:I

    goto :goto_1c0

    :cond_1bc
    move/from16 v32, v3

    move/from16 v33, v7

    :goto_1c0
    const/16 v3, 0xff

    if-eq v12, v3, :cond_1e5

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_nLastBattery:I

    if-eq v3, v12, :cond_1e5

    .line 327
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v7, "battery"

    .line 328
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x7

    .line 329
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v7, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v7, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_nLastBattery:I

    :cond_1e5
    const/4 v3, 0x1

    if-ne v5, v3, :cond_230

    .line 336
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 337
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v5, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v5, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_230

    :cond_1fa
    move/from16 v32, v3

    move/from16 v33, v7

    move/from16 v22, v11

    const/4 v3, 0x2

    if-ne v8, v3, :cond_230

    const-string v3, "support_funs"

    .line 343
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_214
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 348
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_214

    :cond_22c
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 351
    iput-object v5, v3, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->supportFuns:Ljava/util/List;

    :cond_230
    :goto_230
    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_noDeviceInfo:Z

    if-nez v3, :cond_246

    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_postDeviceInfo:Z

    if-nez v3, :cond_246

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_postDeviceInfo:Z

    .line 357
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDeviceInfo:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_246
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isMeasureHr:Z

    if-nez v4, :cond_347

    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    if-eqz v3, :cond_282

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v3, :cond_259

    .line 366
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_259
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v3, :cond_282

    const/4 v4, 0x1

    .line 370
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 371
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 372
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v4, v4

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 373
    invoke-static {v4, v3}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v3

    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 374
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_283

    :cond_282
    const/4 v3, 0x0

    :goto_283
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v3, :cond_29d

    .line 385
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 386
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 389
    :cond_29d
    invoke-static {v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v3

    .line 390
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v3, v4, :cond_2c8

    .line 391
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v3, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 392
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 393
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 394
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_2c8
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 398
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2dd

    const/4 v3, 0x1

    goto :goto_2de

    :cond_2dd
    const/4 v3, 0x0

    :goto_2de
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v5, 0x1

    if-ne v9, v5, :cond_2e5

    const/4 v6, 0x1

    goto :goto_2e6

    :cond_2e5
    const/4 v6, 0x0

    .line 401
    :goto_2e6
    iput-boolean v6, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    if-eqz v3, :cond_609

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 404
    iput v15, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 405
    iput v14, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v4, v33

    if-ne v4, v5, :cond_2fb

    const/16 v4, 0x8

    goto :goto_2fc

    :cond_2fb
    const/4 v4, 0x4

    .line 406
    :goto_2fc
    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v5, v32

    .line 407
    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v7, v22

    .line 408
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 409
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v8, v31

    .line 410
    iput v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 411
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v11, v29

    .line 412
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v3, v28

    .line 413
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v26

    .line 414
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 416
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 417
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_609

    :cond_347
    move/from16 v7, v22

    move-wide/from16 v34, v26

    move-wide/from16 v11, v29

    move/from16 v8, v31

    move/from16 v5, v32

    move/from16 v4, v33

    .line 422
    invoke-static {v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v3

    .line 423
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v3, v11, :cond_37e

    .line 424
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v3, v11, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 425
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 426
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    .line 427
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v6, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v6, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_37e
    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    if-eqz v3, :cond_383

    return-void

    :cond_383
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v3, :cond_394

    .line 435
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 436
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_394
    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    const/4 v6, 0x1

    xor-int/lit8 v19, v3, 0x1

    iput-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 441
    iget-wide v10, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v10, v1, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v3, v10, v12

    if-lez v3, :cond_3b0

    const/16 v19, 0x1

    :cond_3b0
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v9, v6, :cond_3b6

    const/4 v9, 0x1

    goto :goto_3b7

    :cond_3b6
    const/4 v9, 0x0

    .line 444
    :goto_3b7
    iput-boolean v9, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    move/from16 v3, v25

    if-ne v3, v6, :cond_3bf

    const/4 v3, 0x1

    goto :goto_3c0

    :cond_3bf
    const/4 v3, 0x0

    :goto_3c0
    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportPH:Z

    if-eqz v19, :cond_609

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 447
    iput v15, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 448
    iput v14, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v4, v6, :cond_3d3

    const/16 v4, 0x8

    goto :goto_3d4

    :cond_3d3
    const/4 v4, 0x4

    .line 450
    :goto_3d4
    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 451
    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 452
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 453
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 454
    iput v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 455
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v29

    .line 456
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v2, v28

    .line 457
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v34

    .line 458
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 461
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v1, v2, :cond_443

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 462
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 463
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 464
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v2, v2

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 465
    invoke-static {v2, v1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v1

    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 467
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    .line 468
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_609

    :cond_443
    const/4 v1, 0x1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 473
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    .line 475
    iput-boolean v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-wide v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_temperature:D

    .line 477
    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 478
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 479
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 480
    invoke-static {v3, v1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v3

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 481
    iget-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    const/16 v1, 0x1b58

    .line 482
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;

    invoke-direct {v3, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v1, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 500
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 502
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportPH:Z

    if-eqz v1, :cond_4a0

    .line 506
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_609

    .line 509
    :cond_4a0
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_609

    :cond_4ad
    move-object/from16 v24, v2

    .line 515
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_60c

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_4c1

    .line 517
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_4c1
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_4c6

    return-void

    .line 524
    :cond_4c6
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "weight_kg_l"

    .line 525
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "weight_g_l"

    .line 526
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "weight_percent_l"

    .line 527
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 529
    iget-wide v8, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    int-to-double v8, v4

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 530
    iget v10, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    sub-int/2addr v10, v4

    const/4 v11, 0x2

    .line 532
    invoke-static {v2, v3, v11}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 533
    iget-wide v11, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    const-string v11, "precision"

    .line 541
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    double-to-float v6, v6

    float-to-double v12, v6

    const-wide v25, 0x3fb999999999999aL    # 0.1

    cmpg-double v7, v12, v25

    if-gez v7, :cond_538

    const/16 v7, 0xa

    if-le v4, v7, :cond_538

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 545
    iget v6, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    int-to-double v6, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v12

    div-double/2addr v8, v6

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double v8, v8, v6

    double-to-float v6, v8

    float-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    double-to-float v6, v6

    :cond_538
    const/high16 v7, 0x42c80000    # 100.0f

    sub-float/2addr v7, v6

    .line 549
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 550
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v9, 0x1

    if-ne v1, v9, :cond_554

    const/4 v9, 0x1

    goto :goto_555

    :cond_554
    const/4 v9, 0x0

    :goto_555
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v12, :cond_609

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v13, :cond_609

    if-nez v9, :cond_571

    .line 556
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v9, v12, v14

    if-gez v9, :cond_571

    return-void

    :cond_571
    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 561
    iget-wide v12, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v2

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 562
    iput v4, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 563
    iput v10, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 564
    iput v8, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 565
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v5, 0x1

    if-ne v1, v5, :cond_58d

    const/4 v1, 0x1

    goto :goto_58e

    :cond_58d
    const/4 v1, 0x0

    .line 567
    :goto_58e
    iput-boolean v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v4, v6

    .line 569
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v4, v7

    .line 570
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 571
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 572
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 573
    invoke-static {v2, v3, v11}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 574
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v1

    .line 575
    div-int/lit8 v10, v10, 0xe

    const-wide/high16 v5, 0x402c000000000000L    # 14.0

    mul-double v5, v5, v3

    sub-double v5, v3, v5

    double-to-int v7, v1

    .line 578
    div-int/lit8 v7, v7, 0xe

    mul-int/lit8 v8, v7, 0xe

    int-to-double v8, v8

    sub-double v8, v1, v8

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 581
    iput-wide v1, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 582
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 584
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 585
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 587
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 588
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 590
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 591
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 592
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 594
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureCenterData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 595
    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    if-eqz v1, :cond_609

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 597
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    :cond_609
    :goto_609
    move-object v1, v0

    goto/16 :goto_1102

    .line 601
    :cond_60c
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd6

    const-wide v25, 0x3fe3333333333333L    # 0.6

    const-wide v27, -0x4026666666666666L    # -0.4

    const-wide v29, 0x4097700000000000L    # 1500.0

    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    if-ne v1, v2, :cond_afd

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_62f

    .line 603
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_62f
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_756

    .line 609
    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_756

    .line 610
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_756

    .line 613
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 614
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 616
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 617
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 618
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    const-string v2, "supportPh"

    .line 619
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "supportHr"

    .line 620
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 621
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    const-string v6, "precision_lb"

    .line 622
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "precision_kg"

    .line 623
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v10, "weight_st_lb"

    .line 625
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v12, "weight_st"

    .line 626
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "weight_lb"

    .line 627
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v13, "weight_g"

    .line 628
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v3, "weight_kg"

    .line 629
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    move/from16 v36, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 631
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 632
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move/from16 v37, v4

    const-string v4, "has_temperature"

    .line 634
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 636
    iput v15, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 637
    iput v14, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v14, 0x1

    if-ne v1, v14, :cond_717

    const/16 v1, 0x8

    goto :goto_718

    :cond_717
    const/4 v1, 0x4

    .line 638
    :goto_718
    iput v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 639
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 640
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 641
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 642
    iput v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 643
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 644
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 645
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 646
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v2, v37

    const/4 v3, 0x1

    if-ne v2, v3, :cond_743

    const/4 v4, 0x1

    goto :goto_744

    :cond_743
    const/4 v4, 0x0

    .line 648
    :goto_744
    iput-boolean v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    if-ne v2, v3, :cond_74a

    const/4 v1, 0x1

    goto :goto_74b

    :cond_74a
    const/4 v1, 0x0

    :goto_74b
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportHR:Z

    move/from16 v1, v36

    if-ne v1, v3, :cond_753

    const/4 v1, 0x1

    goto :goto_754

    :cond_753
    const/4 v1, 0x0

    :goto_754
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportPH:Z

    :cond_756
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_afc

    .line 655
    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v1, :cond_760

    goto/16 :goto_afc

    :cond_760
    const-string v1, "adcs"

    .line 659
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "device_type"

    .line 662
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    const-string v2, "alg_type"

    .line 663
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 665
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eqz v2, :cond_78b

    .line 667
    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    :cond_78b
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v4, :cond_609

    .line 680
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7e3

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x4

    .line 681
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x0

    .line 682
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 683
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x2

    .line 684
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x3

    .line 685
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    goto/16 :goto_aa4

    .line 687
    :cond_7e3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8ed

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x0

    .line 688
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 689
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x2

    .line 690
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x3

    .line 691
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 692
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 693
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_84d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 694
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 695
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    :cond_84d
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 697
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_870

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 698
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 699
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    :cond_870
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 701
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_893

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 702
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 703
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    :cond_893
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 705
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_8b6

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 706
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 707
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    .line 709
    :cond_8b6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 710
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 711
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 712
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 713
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 714
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    goto/16 :goto_aa4

    .line 716
    :cond_8ed
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9ba

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x0

    .line 717
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 718
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x2

    .line 719
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 720
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 721
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_948

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 722
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 723
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    :cond_948
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 725
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_96b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 726
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 727
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    :cond_96b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 729
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_98e

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 730
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 731
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    .line 733
    :cond_98e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 734
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 735
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 736
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 737
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    goto/16 :goto_aa4

    .line 739
    :cond_9ba
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a49

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x0

    .line 740
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 741
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 742
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 743
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_a06

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 744
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 745
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    :cond_a06
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 747
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    cmpl-double v4, v1, v29

    if-ltz v4, :cond_a29

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 748
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v4, v4, v31

    mul-double v4, v4, v27

    add-double/2addr v1, v4

    div-double v1, v1, v25

    div-double v1, v1, v31

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 749
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    .line 751
    :cond_a29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 752
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 753
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 754
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    goto :goto_aa4

    .line 756
    :cond_a49
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_aa4

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v5, 0x0

    .line 757
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 758
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    cmpl-double v1, v4, v29

    if-ltz v1, :cond_a90

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 759
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v4, v6

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v4, v6

    div-double v4, v4, v25

    div-double v4, v4, v31

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWelluePro:Z

    if-eqz v1, :cond_a8c

    const/16 v1, 0x23

    if-ne v2, v1, :cond_a8c

    const/16 v1, 0x17

    .line 764
    invoke-static {v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    :cond_a8c
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 766
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 768
    :cond_a90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 769
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 770
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    :cond_aa4
    :goto_aa4
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 773
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_temperature:D

    .line 774
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 776
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->data_calc_type:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 777
    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 779
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 781
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportHR:Z

    if-eqz v1, :cond_ae9

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isMeasureHr:Z

    .line 784
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_609

    :cond_ae9
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    .line 788
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_609

    :cond_afc
    :goto_afc
    return-void

    .line 793
    :cond_afd
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd7

    if-ne v1, v2, :cond_b81

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_b0f

    .line 795
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_b0f
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    if-nez v1, :cond_b80

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_b18

    goto :goto_b80

    :cond_b18
    const-string v1, "data_type"

    .line 802
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_b57

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    const-string v1, "hr"

    .line 805
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isMeasureHr:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 807
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    .line 808
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    .line 809
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_609

    :cond_b57
    const/4 v2, 0x1

    if-ne v1, v2, :cond_609

    .line 813
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 814
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 815
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 816
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_609

    :cond_b80
    :goto_b80
    return-void

    .line 820
    :cond_b81
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_1050

    const-string v1, "weight"

    .line 821
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "coord"

    .line 822
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "adcs"

    .line 823
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "hr"

    .line 824
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "time"

    .line 825
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "uint"

    .line 826
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const-string v7, "alg_type"

    .line 827
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "device_type"

    .line 828
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 830
    new-instance v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    invoke-direct {v5}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;-><init>()V

    .line 831
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v8, v8, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v8, v8, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 835
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 836
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    const-string v9, "supportPh"

    .line 837
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "supportHr"

    .line 838
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    const-string v10, "precision_lb"

    .line 839
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "precision_kg"

    .line 840
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "weight_st_lb"

    .line 842
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-object/from16 v17, v2

    const-string v2, "weight_st"

    .line 843
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v18, v9

    const-string v9, "weight_lb"

    .line 844
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    move-object/from16 v23, v3

    move/from16 v36, v4

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v9, "weight_g"

    .line 845
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v37, v7

    const-string v7, "weight_kg"

    .line 846
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    move/from16 v38, v6

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 848
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    move-object/from16 v40, v15

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 849
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    move-object/from16 v41, v14

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v0, "has_temperature"

    .line 851
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 853
    iput v15, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    .line 854
    iput v14, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    const/4 v0, 0x1

    if-ne v8, v0, :cond_c9f

    const/16 v0, 0x8

    goto :goto_ca0

    :cond_c9f
    const/4 v0, 0x4

    .line 855
    :goto_ca0
    iput v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 856
    iput v11, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    .line 857
    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    .line 858
    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    .line 859
    iput v9, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    .line 860
    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    .line 861
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    .line 862
    iput v2, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    .line 863
    iput-wide v12, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    move/from16 v0, v38

    .line 864
    iput v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    move-object/from16 v1, p0

    .line 867
    iget-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eqz v37, :cond_cc4

    .line 870
    invoke-static/range {v37 .. v37}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v2

    :cond_cc4
    iget-boolean v3, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWelluePro:Z

    if-eqz v3, :cond_cd4

    const/16 v3, 0x23

    move/from16 v4, v37

    if-ne v4, v3, :cond_cd4

    const/16 v2, 0x17

    .line 876
    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v2

    .line 880
    :cond_cd4
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d22

    move-object/from16 v3, v23

    const/4 v4, 0x4

    .line 881
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v4, 0x0

    .line 882
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const/4 v4, 0x1

    .line 883
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    const/4 v4, 0x2

    .line 884
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    const/4 v4, 0x3

    .line 885
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    :cond_d1e
    :goto_d1e
    move/from16 v3, v36

    goto/16 :goto_f52

    :cond_d22
    move-object/from16 v3, v23

    .line 887
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_dfa

    const/4 v4, 0x0

    .line 888
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v4, 0x1

    .line 889
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const/4 v4, 0x2

    .line 890
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    const/4 v4, 0x3

    .line 891
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    .line 892
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 893
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_d7c

    .line 894
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 895
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 897
    :cond_d7c
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_d97

    .line 898
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 899
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    .line 901
    :cond_d97
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_db2

    .line 902
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 903
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    .line 905
    :cond_db2
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_dcd

    .line 906
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 907
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    .line 909
    :cond_dcd
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 910
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    goto/16 :goto_d1e

    .line 916
    :cond_dfa
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_e9f

    const/4 v4, 0x0

    .line 917
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v4, 0x1

    .line 918
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const/4 v4, 0x2

    .line 919
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    .line 920
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 921
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_e45

    .line 922
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 923
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 925
    :cond_e45
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_e60

    .line 926
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 927
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    .line 929
    :cond_e60
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_e7b

    .line 930
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 931
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    .line 933
    :cond_e7b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 934
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    goto/16 :goto_d1e

    .line 939
    :cond_e9f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_f13

    const/4 v4, 0x0

    .line 940
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v4, 0x1

    .line 941
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    .line 942
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 943
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_edd

    .line 944
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 945
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 947
    :cond_edd
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    cmpl-double v6, v3, v29

    if-ltz v6, :cond_ef8

    .line 948
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 949
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    .line 951
    :cond_ef8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 952
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    goto/16 :goto_d1e

    .line 956
    :cond_f13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_d1e

    const/4 v4, 0x0

    .line 957
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 958
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    double-to-int v3, v3

    .line 959
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    cmpl-double v4, v6, v29

    if-ltz v4, :cond_f40

    add-int/lit16 v3, v3, -0x3e8

    int-to-double v3, v3

    .line 960
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v31

    mul-double v6, v6, v27

    add-double/2addr v3, v6

    div-double v3, v3, v25

    div-double v3, v3, v31

    .line 961
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 963
    :cond_f40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 964
    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    goto/16 :goto_d1e

    .line 967
    :goto_f52
    iput v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    move/from16 v3, v18

    const/4 v4, 0x1

    if-ne v3, v4, :cond_103e

    .line 973
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const-string v3, "weight_kg_l"

    move-object/from16 v4, v17

    .line 975
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v3, "weight_g_l"

    .line 976
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 977
    iget-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    int-to-double v8, v3

    .line 978
    iget v10, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    sub-int/2addr v10, v3

    const/4 v11, 0x2

    .line 980
    invoke-static {v6, v7, v11}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v11

    .line 981
    iget-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    sub-double/2addr v13, v11

    double-to-int v15, v11

    .line 983
    div-int/lit8 v15, v15, 0xe

    mul-int/lit8 v1, v15, 0xe

    move-object/from16 v16, v2

    int-to-double v1, v1

    sub-double v1, v11, v1

    move-wide/from16 v17, v1

    double-to-int v1, v13

    .line 986
    div-int/lit8 v1, v1, 0xe

    mul-int/lit8 v2, v1, 0xe

    move/from16 v20, v1

    int-to-double v1, v2

    sub-double v1, v13, v1

    move-wide/from16 v22, v1

    const-string v1, "precision"

    .line 989
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 991
    iget v2, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    move/from16 v25, v1

    int-to-double v1, v2

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v26

    div-double/2addr v8, v1

    const-wide v1, 0x40c3880000000000L    # 10000.0

    mul-double v8, v8, v1

    double-to-float v1, v8

    float-to-double v1, v1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v8

    double-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    sub-float/2addr v2, v1

    move-object/from16 v8, v40

    .line 994
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v9, v41

    .line 995
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v26, v13

    .line 997
    iget-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    sub-double/2addr v13, v6

    .line 999
    iget-object v9, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v3, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    .line 1000
    iget-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v10, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    .line 1001
    iget-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    .line 1002
    iget-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    .line 1004
    iget-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    .line 1005
    iget-object v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    int-to-long v8, v0

    iput-wide v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    .line 1006
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v3, v1

    iput-wide v3, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    .line 1007
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    float-to-double v1, v2

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    .line 1008
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-wide v6, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    .line 1009
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-wide v13, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 1011
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-wide v11, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    .line 1012
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-wide/from16 v13, v26

    iput-wide v13, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    .line 1014
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v15, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    .line 1015
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move/from16 v1, v20

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    .line 1017
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-wide/from16 v11, v17

    iput-wide v11, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    .line 1018
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-wide/from16 v13, v22

    iput-wide v13, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    .line 1020
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move/from16 v1, v25

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    .line 1021
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    .line 1022
    iget-object v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    goto :goto_1040

    :cond_103e
    move-object/from16 v16, v2

    :goto_1040
    const/4 v0, 0x0

    .line 1067
    iput v0, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->data_calc_type:I

    move-object/from16 v2, v16

    .line 1068
    iput-object v2, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 1069
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_1102

    :cond_1050
    move-object v1, v0

    .line 1078
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xdd

    if-ne v0, v2, :cond_107b

    const-string v0, "sid"

    .line 1079
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1080
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "data"

    .line 1081
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x100000

    .line 1082
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_1102

    .line 1085
    :cond_107b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xdf

    if-ne v0, v2, :cond_1102

    .line 1086
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;-><init>()V

    const-string v2, "operate_type"

    .line 1087
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->operateType:I

    const-string v2, "num"

    .line 1088
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightNum:I

    const-string v2, "light_switch"

    .line 1089
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightOn:I

    const-string v2, "brightness"

    .line 1090
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->brightness:I

    const-string v2, "r"

    .line 1091
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->r:I

    const-string v2, "g"

    .line 1092
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->g:I

    const-string v2, "b"

    .line 1093
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->b:I

    .line 1095
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0xdf

    .line 1096
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lightSettingData"

    .line 1097
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_1102
    :goto_1102
    move-object v0, v1

    move-object/from16 v3, v21

    move-object/from16 v2, v24

    const/4 v4, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_31

    :cond_110c
    move-object v1, v0

    move-object/from16 v24, v2

    .line 1102
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_114c

    .line 1104
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_114c

    :cond_112f
    move-object v3, v1

    move-object v1, v0

    .line 1107
    iget-object v0, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v2, :cond_1138

    goto :goto_114c

    .line 1112
    :cond_1138
    iget-object v0, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v2, :cond_114c

    .line 1114
    iget-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_114c
    :goto_114c
    return-void
.end method

.method private postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 4

    .line 255
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;-><init>()V

    .line 256
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->step:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 257
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->model:Ljava/lang/Object;

    .line 258
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDataEx:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method private setParam(ILjava/lang/String;)V
    .registers 6

    .line 1573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1574
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 1575
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sid"

    .line 1576
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xdd

    .line 1577
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 1578
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_56

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-eqz p2, :cond_3c

    .line 1580
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    goto :goto_56

    .line 1584
    :cond_3c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1585
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_40

    :cond_56
    :goto_56
    return-void
.end method

.method private setServerUrl(Ljava/lang/String;)V
    .registers 6

    .line 1534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1535
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    .line 1536
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xdc

    .line 1537
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 1538
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4d

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-eqz v0, :cond_33

    .line 1540
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    goto :goto_4d

    .line 1544
    :cond_33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1545
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_37

    :cond_4d
    :goto_4d
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

    .line 247
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateInfo()V
    .registers 6

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1135
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1137
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1139
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->getDeviceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "device_type"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "time"

    .line 1140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utc_offset"

    .line 1141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "unit"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "user_index"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "height"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "weight"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "ver"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "peopleType"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v3, "target_weight"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "weight_type"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v1

    if-ne v1, v0, :cond_bf

    const/4 v1, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v1, 0x2

    :goto_c0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "sex"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "age"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fun_open_imp"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableSmallThing:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fun_open_littleweight"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fun_open_banlance"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fun_open_hr"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fun_open_gravity"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v3, 0x9

    if-eq v1, v3, :cond_137

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_138

    :cond_137
    const/4 v0, 0x3

    :cond_138
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_162

    .line 1164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_162

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-eqz v1, :cond_152

    .line 1166
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    goto :goto_162

    :cond_152
    const/4 v1, 0x0

    .line 1169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_162
    :goto_162
    return-void
.end method

.method private updateLightSetting(Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;)V
    .registers 6

    .line 1593
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1594
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->operateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "operate_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "num"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->lightOn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "light_switch"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->brightness:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "brightness"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "r"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "g"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    iget p1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "b"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xdf

    .line 1603
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 1604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_95

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-eqz v0, :cond_7b

    .line 1606
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    goto :goto_95

    .line 1610
    :cond_7b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1611
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_7f

    :cond_95
    :goto_95
    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 219
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    .line 220
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 229
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 169
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_nCalibrationMode:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_nLastBattery:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isConnected:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_reDiscoverCharacteristicsCount:I

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 130
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    const-string v2, "Wellue pro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWelluePro:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    .line 134
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 135
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->mac:Ljava/lang/String;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_temperature:D

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportPH:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportHR:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isMeasureHr:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriting:Z

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_writeIndex:Ljava/lang/Integer;

    .line 150
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleNew2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 152
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_6c

    .line 153
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->startScan()V

    goto :goto_6f

    .line 157
    :cond_6c
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->connect()V

    :goto_6f
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 1176
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 4

    .line 1187
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 1190
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->discoverServices()V

    goto :goto_44

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 1196
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_bStabilized:Z

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isMeasureHr:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1204
    iput p1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    .line 1205
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    .line 1206
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1210
    :cond_3c
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerOver()V

    .line 1211
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_44
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 8
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "0000180a-0000-1000-8000-00805f9b34fb"

    if-eqz p3, :cond_28

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_reDiscoverCharacteristicsCount:I

    add-int/2addr p2, v1

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_reDiscoverCharacteristicsCount:I

    const/4 p3, 0x2

    if-lt p2, p3, :cond_12

    .line 1238
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->cancelConnect()V

    goto :goto_27

    .line 1242
    :cond_12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    :cond_22
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_noDeviceInfo:Z

    .line 1245
    :cond_24
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->discoverCharacteristics(Ljava/lang/String;)V

    :goto_27
    return-void

    .line 1249
    :cond_28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_59

    .line 1250
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 1251
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_46
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    .line 1253
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_91

    :cond_59
    const-string p3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1256
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 1258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 1259
    iget-object v2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v3, "0000FFB1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1260
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v2

    and-int/2addr p2, v2

    if-ne p2, v1, :cond_65

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    :cond_8c
    const-string p1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 1267
    invoke-virtual {p0, v1, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_91
    :goto_91
    return-void
.end method

.method public onDiscoverServices(Ljava/util/List;Ljava/lang/Exception;)V
    .registers 4
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

    if-nez p2, :cond_24

    if-eqz p1, :cond_24

    const-string p2, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 1220
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_1d

    :cond_17
    const-string p1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1225
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_27

    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_noDeviceInfo:Z

    .line 1222
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_27

    .line 1229
    :cond_24
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->cancelConnect()V

    :goto_27
    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 4

    .line 1524
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_1b

    .line 1525
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1526
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "A"

    .line 1527
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 7

    .line 1414
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 1415
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_133

    :cond_13
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isConnected:Z

    if-nez v0, :cond_1f

    .line 1419
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1422
    :cond_1f
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_37

    .line 1423
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1424
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1426
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateInfo()V

    .line 1427
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_133

    .line 1430
    :cond_37
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleConfigWifi:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/16 v1, 0xa

    if-ne p2, v0, :cond_6f

    .line 1431
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq p2, v1, :cond_4d

    .line 1432
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1435
    :cond_4d
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "ssid"

    .line 1437
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 1438
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1439
    invoke-direct {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->configWifi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_133

    .line 1442
    :cond_6f
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleServerUrl:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_9b

    .line 1443
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq p2, v1, :cond_83

    .line 1444
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1447
    :cond_83
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "server"

    .line 1449
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1451
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->setServerUrl(Ljava/lang/String;)V

    .line 1452
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_133

    .line 1454
    :cond_9b
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeCommand:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v2, "param"

    if-ne p2, v0, :cond_d2

    .line 1455
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq p2, v1, :cond_b1

    .line 1456
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1459
    :cond_b1
    check-cast p3, Ljava/util/Map;

    const-string p2, "cmd"

    .line 1460
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_c8

    .line 1462
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_133

    .line 1465
    :cond_c8
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1466
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->setServerUrl(Ljava/lang/String;)V

    goto :goto_133

    .line 1470
    :cond_d2
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleOtherParam:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_11b

    .line 1471
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-eq p2, v1, :cond_e6

    .line 1472
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1475
    :cond_e6
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "type"

    .line 1477
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "subType"

    .line 1478
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez p2, :cond_113

    .line 1480
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1481
    invoke-direct {p0, v0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->setParam(ILjava/lang/String;)V

    .line 1482
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1485
    :cond_113
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_133

    .line 1488
    :cond_11b
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleLightSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_12c

    .line 1490
    check-cast p3, Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;

    .line 1491
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateLightSetting(Lcn/icomon/icdevicemanager/model/data/ICScaleLightSettingData;)V

    .line 1492
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_133

    .line 1495
    :cond_12c
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_133
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1276
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    const-wide/16 p1, 0x32

    .line 1278
    :try_start_5
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p3

    .line 1280
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1283
    :goto_d
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateUserList()V

    .line 1285
    :try_start_10
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p3

    .line 1287
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1289
    :goto_18
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateInfo()V

    .line 1291
    :try_start_1b
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p3

    .line 1293
    invoke-virtual {p3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1295
    :goto_23
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateUserList()V

    .line 1297
    :try_start_26
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 1299
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1301
    :goto_2e
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateInfo()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isConnected:Z

    .line 1303
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 1401
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 1402
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateInfo()V

    return-void
.end method

.method public onUpdateUserInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation

    .line 1408
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->updateUserList()V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 9

    const-string p4, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 1308
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    if-eqz v0, :cond_16f

    .line 1309
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a23-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1317
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->mac:Ljava/lang/String;

    goto/16 :goto_14d

    .line 1319
    :cond_1e
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a24-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v2, ""

    if-eqz p2, :cond_57

    if-eqz p1, :cond_51

    .line 1320
    array-length p2, p1

    if-eqz p2, :cond_51

    aget-byte p2, p1, v0

    if-nez p2, :cond_35

    goto :goto_51

    :cond_35
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1324
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1325
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1326
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    const-string p3, "Model Number"

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    goto/16 :goto_14d

    :cond_51
    :goto_51
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1321
    iput-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    goto/16 :goto_14d

    .line 1331
    :cond_57
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v3, "00002a25-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7b

    if-eqz p1, :cond_75

    .line 1332
    array-length p2, p1

    if-eqz p2, :cond_75

    aget-byte p2, p1, v0

    if-nez p2, :cond_6b

    goto :goto_75

    :cond_6b
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1336
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->sn:Ljava/lang/String;

    goto/16 :goto_14d

    :cond_75
    :goto_75
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1333
    iput-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->sn:Ljava/lang/String;

    goto/16 :goto_14d

    .line 1339
    :cond_7b
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v3, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b1

    if-eqz p1, :cond_ab

    .line 1340
    array-length p2, p1

    if-eqz p2, :cond_ab

    aget-byte p2, p1, v0

    if-nez p2, :cond_8f

    goto :goto_ab

    :cond_8f
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1344
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->firmwareVer:Ljava/lang/String;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1345
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->firmwareVer:Ljava/lang/String;

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1346
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->firmwareVer:Ljava/lang/String;

    const-string p3, "Serial Number"

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->firmwareVer:Ljava/lang/String;

    goto/16 :goto_14d

    :cond_ab
    :goto_ab
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1341
    iput-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->firmwareVer:Ljava/lang/String;

    goto/16 :goto_14d

    .line 1351
    :cond_b1
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v3, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e6

    if-eqz p1, :cond_e1

    .line 1352
    array-length p2, p1

    if-eqz p2, :cond_e1

    aget-byte p2, p1, v0

    if-nez p2, :cond_c5

    goto :goto_e1

    :cond_c5
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1356
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->softwareVer:Ljava/lang/String;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1357
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->softwareVer:Ljava/lang/String;

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1358
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->softwareVer:Ljava/lang/String;

    const-string p3, "Software Revision"

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->softwareVer:Ljava/lang/String;

    goto/16 :goto_14d

    :cond_e1
    :goto_e1
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1353
    iput-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->softwareVer:Ljava/lang/String;

    goto :goto_14d

    .line 1362
    :cond_e6
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v3, "00002a27-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11a

    if-eqz p1, :cond_115

    .line 1363
    array-length p2, p1

    if-eqz p2, :cond_115

    aget-byte p2, p1, v0

    if-nez p2, :cond_fa

    goto :goto_115

    :cond_fa
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1367
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->hardwareVer:Ljava/lang/String;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1368
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->hardwareVer:Ljava/lang/String;

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1369
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->hardwareVer:Ljava/lang/String;

    const-string p3, "Hardware Revision"

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->hardwareVer:Ljava/lang/String;

    goto :goto_14d

    :cond_115
    :goto_115
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1364
    iput-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->hardwareVer:Ljava/lang/String;

    goto :goto_14d

    .line 1373
    :cond_11a
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p3, "00002a29-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14d

    if-eqz p1, :cond_149

    .line 1374
    array-length p2, p1

    if-eqz p2, :cond_149

    aget-byte p2, p1, v0

    if-nez p2, :cond_12e

    goto :goto_149

    :cond_12e
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1378
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->manufactureName:Ljava/lang/String;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1379
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->manufactureName:Ljava/lang/String;

    if-eqz p1, :cond_14d

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1380
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->manufactureName:Ljava/lang/String;

    const-string p3, "Manufacturer Name"

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->manufactureName:Ljava/lang/String;

    goto :goto_14d

    :cond_149
    :goto_149
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1375
    iput-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->manufactureName:Ljava/lang/String;

    :cond_14d
    :goto_14d
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 1384
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_15b

    .line 1385
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_180

    :cond_15b
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    .line 1388
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p4, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_180

    .line 1392
    :cond_16f
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_180

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1394
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 1395
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_180
    :goto_180
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1503
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeNext()V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 1509
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 1510
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->bStop:Z

    .line 1511
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->stopScan()V

    .line 1512
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->postWorkerOver()V

    goto :goto_23

    .line 1515
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000FFB0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 1516
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_20
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_23
    return-void
.end method

.method public updateUserList()V
    .registers 7

    .line 1620
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->userInfoList:Ljava/util/List;

    .line 1621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1624
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 1625
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1626
    iget v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "user_index"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    iget v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "weight"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1629
    iget-object v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sex"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    iget v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "age"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    iget-wide v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "target_weight"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    iget v4, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightDirection:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "weight_type"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1633
    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "peopleType"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1638
    :cond_80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1639
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "users"

    .line 1640
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ver"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_bd

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_bb

    goto :goto_bd

    :cond_bb
    const/4 v1, 0x2

    goto :goto_be

    :cond_bd
    :goto_bd
    const/4 v1, 0x4

    :goto_be
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1647
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 1648
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f2

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isWriteWithResp:Z

    if-eqz v1, :cond_d8

    .line 1650
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    goto :goto_f2

    .line 1654
    :cond_d8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1655
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_dc

    :cond_f2
    :goto_f2
    return-void
.end method
