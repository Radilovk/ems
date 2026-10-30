.class public Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICSkipWorker.java"


# static fields
.field private static final CHARACTERISTICS_FIRMWAREVER_UUID:Ljava/lang/String; = "00002a26-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_HARDWAREVER_UUID:Ljava/lang/String; = "00002a27-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MAC_UUID:Ljava/lang/String; = "00002a23-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MANFNAME_UUID:Ljava/lang/String; = "00002a29-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MODEL_UUID:Ljava/lang/String; = "00002a24-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SOFTWAREVER_UUID:Ljava/lang/String; = "00002a28-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final DEVINFO_SERVICE_UUID:Ljava/lang/String; = "0000180a-0000-1000-8000-00805f9b34fb"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _bStabilized:Z

.field _battery:I

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

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

.field _isConnected:Z

.field private _isWriting:Z

.field private _lastJumpTime:I

.field private _lastTime:I

.field private _lastUploadTime:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

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

.field private isCallDevInfo:Z

.field private isShouba:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastJumpTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastUploadTime:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isCallDevInfo:Z

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 147
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 154
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 157
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 148
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 138
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 140
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 142
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private calcCalories(JD)D
    .registers 10

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_22

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_d

    goto :goto_22

    :cond_d
    double-to-long p3, p3

    const-wide/16 v0, 0xc

    mul-long p3, p3, v0

    mul-long p1, p1, p3

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    const-wide/16 v0, 0xe10

    .line 197
    div-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-double p1, p1

    .line 198
    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_22
    :goto_22
    return-wide v2
.end method

.method private calcFatBurned(JD)D
    .registers 10

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1b

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_d

    goto :goto_1b

    :cond_d
    long-to-double p1, p1

    div-double/2addr p3, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    mul-double p3, p3, p1

    .line 207
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_1b
    :goto_1b
    return-wide v2
.end method

.method private enterOTA()V
    .registers 6

    .line 739
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 741
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 742
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ota_flag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xc1

    .line 743
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 744
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 746
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 747
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    const-wide/16 v1, 0x96

    .line 749
    :try_start_4b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_34

    :catch_4f
    move-exception v1

    .line 751
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_34

    :cond_54
    return-void
.end method

.method private getDeviceType()I
    .registers 3

    .line 707
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 708
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x60

    return v0

    .line 713
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xe0

    return v0
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 240
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 242
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_778

    .line 243
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_75c

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 245
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 247
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_73a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_type"

    .line 248
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 250
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "decode data:%s"

    invoke-static {v8, v10, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xa0

    const-string v10, "count"

    const-string v11, "count_time"

    const-string v12, "param"

    const-string v15, "realTime"

    const-string v14, "type"

    const-string v13, "mode"

    const-string v4, "calorie"

    const-string v6, "battery"

    move-object/from16 v18, v3

    if-ne v8, v9, :cond_1b3

    .line 252
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 253
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 254
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 255
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 256
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 257
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "maxSkipCount"

    .line 259
    invoke-interface {v5, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c1

    .line 260
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_c2

    :cond_c1
    const/4 v13, 0x0

    :goto_c2
    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isCallDevInfo:Z

    if-nez v3, :cond_dc

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isCallDevInfo:Z

    if-nez v13, :cond_cd

    const/16 v13, 0x270f

    :cond_cd
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 268
    iput v13, v3, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->maxSkipCount:I

    .line 269
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDeviceInfo:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    invoke-virtual {v13}, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_dc
    const/4 v3, 0x1

    if-ne v12, v3, :cond_ea

    .line 276
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_eb

    :cond_ea
    const/4 v3, 0x0

    :goto_eb
    iget v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    if-lez v13, :cond_f6

    iget-boolean v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    if-eqz v13, :cond_f6

    const/4 v13, 0x0

    iput v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    :cond_f6
    iget v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    if-eq v13, v11, :cond_115

    iput v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    .line 287
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v6, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v6, v13}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_115
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v6, :cond_123

    .line 293
    new-instance v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v6}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v11, -0x1

    .line 294
    iput v11, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 297
    :cond_123
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v7, :cond_1b2

    const/4 v11, 0x1

    if-eq v7, v11, :cond_137

    const/4 v11, 0x2

    if-eq v7, v11, :cond_134

    const/4 v11, 0x3

    if-eq v7, v11, :cond_131

    goto :goto_139

    .line 308
    :cond_131
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_139

    .line 305
    :cond_134
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_139

    .line 302
    :cond_137
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_139
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 311
    iget v7, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    if-ne v7, v10, :cond_14c

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v7, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    if-ne v7, v9, :cond_14c

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v6, v7, :cond_14c

    return-void

    :cond_14c
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 316
    iput-object v6, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v7, v13

    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 318
    iput v9, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v7, 0x1

    if-eq v12, v7, :cond_167

    move v11, v9

    goto :goto_168

    :cond_167
    move v11, v3

    .line 319
    :goto_168
    iput v11, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 320
    iput v10, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 321
    iput v8, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    if-ne v12, v7, :cond_175

    move v9, v3

    :cond_175
    int-to-long v6, v9

    .line 325
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v8, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v6, v7, v8, v9}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcCalories(JD)D

    move-result-wide v8

    .line 326
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_190

    .line 327
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :cond_190
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 329
    iput-wide v8, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 330
    iget-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v6, v7, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcFatBurned(JD)D

    move-result-wide v4

    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v4, 0x0

    .line 333
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 336
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 v21, v2

    goto/16 :goto_731

    :cond_1b2
    return-void

    .line 338
    :cond_1b3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v9, "filter"

    const-string v8, "fast"

    const-string v1, "avg"

    move-object/from16 v21, v2

    const-string v2, "jump"

    move-object/from16 v22, v4

    const-string v4, "jumptime"

    move-object/from16 v23, v9

    const-string v9, "setting"

    move-object/from16 v24, v8

    const/16 v8, 0xa1

    if-eq v3, v8, :cond_591

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v8, 0xa4

    if-ne v3, v8, :cond_1d9

    goto/16 :goto_591

    .line 437
    :cond_1d9
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v8, 0xa3

    move-object/from16 v20, v1

    const/16 v1, 0xa5

    if-eq v3, v8, :cond_415

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1ed

    goto/16 :goto_415

    .line 530
    :cond_1ed
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xb0

    if-ne v1, v3, :cond_2e7

    .line 531
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 532
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 533
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 534
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 535
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 536
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 538
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    if-eq v8, v7, :cond_259

    iput v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    .line 542
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 543
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 544
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v6, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v6, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_259
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v6, :cond_264

    .line 548
    iget-boolean v6, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    if-eqz v6, :cond_264

    const/4 v6, 0x0

    iput-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_264
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v6, :cond_272

    .line 553
    new-instance v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v6}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v7, -0x1

    .line 554
    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 557
    :cond_272
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v1, :cond_2e6

    const/4 v7, 0x1

    if-eq v1, v7, :cond_286

    const/4 v7, 0x2

    if-eq v1, v7, :cond_283

    const/4 v7, 0x3

    if-eq v1, v7, :cond_280

    goto :goto_288

    .line 568
    :cond_280
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_288

    .line 565
    :cond_283
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_288

    .line 562
    :cond_286
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_288
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 571
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    if-ne v1, v4, :cond_29b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    if-ne v1, v3, :cond_29b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v6, v1, :cond_29b

    return-void

    :cond_29b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 576
    iput-object v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v7, v6

    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 578
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 579
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 580
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 581
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v2, v5

    .line 582
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcCalories(JD)D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 583
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcFatBurned(JD)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x0

    .line 585
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 588
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_731

    :cond_2e6
    return-void

    .line 590
    :cond_2e7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xb1

    if-ne v1, v3, :cond_3e2

    .line 591
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 592
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 593
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 594
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v6

    .line 595
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v8, v20

    .line 596
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v10, v24

    .line 597
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 600
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 601
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 603
    sget-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v1, :cond_3e1

    const/4 v11, 0x1

    if-eq v1, v11, :cond_356

    const/4 v11, 0x2

    if-eq v1, v11, :cond_353

    const/4 v11, 0x3

    if-eq v1, v11, :cond_350

    goto :goto_358

    .line 614
    :cond_350
    sget-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_358

    .line 611
    :cond_353
    sget-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_358

    .line 608
    :cond_356
    sget-object v10, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_358
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 617
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    if-ne v1, v2, :cond_37d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    if-ne v1, v4, :cond_37d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v10, v1, :cond_37d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    if-eqz v1, :cond_37d

    .line 621
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v3, v23

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 624
    :cond_37d
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    long-to-int v7, v6

    sub-int/2addr v7, v4

    .line 626
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v6, 0x0

    .line 627
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 628
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 630
    iput-object v10, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v7, 0x1

    .line 632
    iput-boolean v7, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 633
    iput-object v1, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 634
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 635
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 636
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 637
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 638
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 639
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v2, v5

    .line 640
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcCalories(JD)D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 641
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcFatBurned(JD)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 643
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_731

    :cond_3e1
    return-void

    .line 646
    :cond_3e2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa2

    if-ne v1, v2, :cond_731

    .line 647
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    if-eq v2, v1, :cond_731

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    .line 651
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 653
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_731

    :cond_415
    :goto_415
    move-object/from16 v8, v20

    move-object/from16 v3, v23

    move-object/from16 v10, v24

    .line 438
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 439
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 440
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v11, "time"

    .line 441
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 442
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 443
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 444
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v12, "freqsCount"

    .line 445
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "mostJump"

    .line 446
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "durations"

    .line 448
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v23, v3

    .line 450
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_496

    .line 451
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_497

    :cond_496
    const/4 v3, 0x0

    :goto_497
    iget v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    if-lez v15, :cond_4a2

    iget-boolean v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    if-eqz v15, :cond_4a2

    const/4 v15, 0x0

    iput v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    :cond_4a2
    iget v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    if-ne v15, v11, :cond_4ac

    iget v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastJumpTime:I

    const/4 v1, 0x2

    if-le v15, v1, :cond_4ac

    return-void

    .line 466
    :cond_4ac
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    .line 467
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    const/4 v15, 0x1

    .line 468
    iput-boolean v15, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    iput v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastJumpTime:I

    if-eq v6, v15, :cond_4cd

    const/4 v15, 0x2

    if-eq v6, v15, :cond_4c8

    const/4 v15, 0x3

    if-eq v6, v15, :cond_4c3

    goto :goto_4d1

    .line 482
    :cond_4c3
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_4d1

    .line 479
    :cond_4c8
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_4d1

    .line 476
    :cond_4cd
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 486
    :goto_4d1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 p2, v3

    const/4 v15, 0x0

    .line 487
    :goto_4d9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_508

    .line 488
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;-><init>()V

    .line 489
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move/from16 v19, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->duration:I

    add-int/lit8 v11, v15, 0x1

    .line 490
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->skip_count:I

    .line 491
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x2

    move/from16 v11, v19

    goto :goto_4d9

    :cond_508
    move/from16 v19, v11

    .line 493
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    .line 494
    iput v13, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    .line 496
    iput-object v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    .line 497
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    .line 498
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    .line 499
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    .line 500
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0xa5

    if-eq v3, v6, :cond_520

    move v3, v4

    goto :goto_522

    :cond_520
    move/from16 v3, p2

    :goto_522
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    .line 501
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 502
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    .line 503
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_530

    move/from16 v4, p2

    :cond_530
    int-to-long v2, v4

    .line 506
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v8, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v2, v3, v8, v9}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcCalories(JD)D

    move-result-wide v8

    move-object/from16 v6, v22

    .line 507
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 508
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 510
    :cond_54d
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    .line 512
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcFatBurned(JD)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    if-eqz v2, :cond_57f

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastUploadTime:I

    move/from16 v3, v19

    if-eq v2, v3, :cond_588

    const v2, 0x3a4f5c5d

    if-ge v3, v2, :cond_573

    .line 516
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    move-object/from16 v11, v23

    invoke-static {v1, v11, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_57c

    .line 519
    :cond_573
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_57c
    iput v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastUploadTime:I

    goto :goto_588

    .line 525
    :cond_57f
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 528
    :cond_588
    :goto_588
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeResp(I)V

    goto/16 :goto_731

    :cond_591
    :goto_591
    move-object v8, v1

    move-object/from16 v6, v22

    move-object/from16 v11, v23

    move-object/from16 v10, v24

    .line 339
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 340
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 341
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v9, "time"

    .line 342
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 343
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 344
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 345
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v12, "freqsCount"

    .line 346
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "mostJump"

    .line 347
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "durations"

    .line 348
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v23, v11

    .line 352
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v22, v6

    const/16 v6, 0xa4

    if-ne v11, v6, :cond_617

    .line 353
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_618

    :cond_617
    const/4 v6, 0x0

    :goto_618
    iget v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    if-lez v11, :cond_623

    iget-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    if-eqz v11, :cond_623

    const/4 v11, 0x0

    iput v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    :cond_623
    iget v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    if-ne v11, v9, :cond_62d

    iget v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastJumpTime:I

    const/4 v15, 0x2

    if-le v11, v15, :cond_62d

    return-void

    :cond_62d
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v11, :cond_638

    .line 370
    new-instance v11, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v11}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_638
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 372
    iput v9, v11, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v15, 0x1

    .line 373
    iput-boolean v15, v11, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v9, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastTime:I

    iput v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastJumpTime:I

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 376
    iput v12, v11, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 377
    iput v13, v11, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v1, v15, :cond_664

    const/4 v11, 0x2

    if-eq v1, v11, :cond_65d

    const/4 v11, 0x3

    if-eq v1, v11, :cond_656

    goto :goto_66a

    :cond_656
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 389
    sget-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v11, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_66a

    :cond_65d
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 386
    sget-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v11, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_66a

    :cond_664
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 383
    sget-object v11, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v11, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 393
    :goto_66a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 394
    :goto_670
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_69b

    .line 395
    new-instance v12, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;

    invoke-direct {v12}, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;-><init>()V

    .line 396
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->duration:I

    add-int/lit8 v13, v11, 0x1

    .line 397
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->skip_count:I

    .line 398
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x2

    goto :goto_670

    :cond_69b
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 400
    iput-object v1, v11, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 401
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 402
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 403
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 404
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xa4

    if-eq v8, v10, :cond_6b7

    move v8, v4

    goto :goto_6b8

    :cond_6b7
    move v8, v6

    :goto_6b8
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 406
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 407
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    .line 408
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_6c9

    move v4, v6

    :cond_6c9
    int-to-long v1, v4

    .line 412
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcCalories(JD)D

    move-result-wide v3

    move-object/from16 v6, v22

    .line 413
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e6

    .line 414
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :cond_6e6
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 416
    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 418
    iget-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v1, v2, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->calcFatBurned(JD)D

    move-result-wide v1

    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    if-eqz v1, :cond_71c

    iget v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastUploadTime:I

    if-eq v1, v9, :cond_727

    const v1, 0x3a4f5c5d

    if-ge v9, v1, :cond_70e

    .line 422
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    move-object/from16 v2, v23

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_719

    .line 425
    :cond_70e
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_719
    iput v9, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_lastUploadTime:I

    goto :goto_727

    .line 431
    :cond_71c
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_727
    :goto_727
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 435
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeResp(I)V

    :cond_731
    :goto_731
    move-object/from16 v1, p1

    move-object/from16 v3, v18

    move-object/from16 v2, v21

    const/4 v4, 0x0

    goto/16 :goto_30

    :cond_73a
    move-object/from16 v21, v2

    .line 659
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_778

    .line 660
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_778

    :cond_75c
    move-object v3, v1

    .line 662
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_764

    goto :goto_778

    .line 665
    :cond_764
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_778

    .line 666
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_778
    :goto_778
    return-void
.end method

.method private stopSkip()V
    .registers 6

    .line 782
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 784
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 785
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xc2

    .line 786
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 787
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 789
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 790
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    const-wide/16 v1, 0x96

    .line 792
    :try_start_4b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_34

    :catch_4f
    move-exception v1

    .line 794
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_34

    :cond_54
    return-void
.end method

.method private updateInfo(II)V
    .registers 12

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 672
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 674
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 675
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 676
    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2c

    const/16 v3, 0xc80

    .line 680
    :cond_2c
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->getDeviceType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "device_type"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "time"

    .line 681
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    .line 682
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 683
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "utc_offset"

    .line 684
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "age"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "weight"

    .line 687
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 p2, 0x0

    :goto_8d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sex"

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc0

    .line 689
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ce

    .line 690
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_ce

    .line 692
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ae
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ce

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 693
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    const-wide/16 v0, 0x96

    .line 695
    :try_start_c5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c8
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_ae

    :catch_c9
    move-exception p2

    .line 697
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_ae

    :cond_ce
    return-void
.end method

.method private updateLightSetting(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 721
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "colors"

    .line 722
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mode"

    .line 723
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc5

    .line 724
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 725
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_58

    .line 726
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 727
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    const-wide/16 v0, 0x96

    .line 729
    :try_start_4f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_38

    :catch_53
    move-exception p2

    .line 731
    invoke-virtual {p2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_38

    :cond_58
    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 164
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 172
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 173
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 180
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method

.method private writeResp(I)V
    .registers 6

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 762
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cmd"

    .line 764
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc2

    .line 765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 766
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 768
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 769
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    const-wide/16 v0, 0x96

    .line 771
    :try_start_54
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_3d

    :catch_58
    move-exception v0

    .line 773
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3d

    :cond_5d
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 133
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isConnected:Z

    .line 92
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    const-string v2, "tmts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->isShouba:Z

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a23-0000-1000-8000-00805f9b34fb"

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a24-0000-1000-8000-00805f9b34fb"

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a27-0000-1000-8000-00805f9b34fb"

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a29-0000-1000-8000-00805f9b34fb"

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    .line 104
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isWriting:Z

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_battery:I

    .line 115
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRope:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 117
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_79

    .line 118
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->startScan()V

    goto :goto_7c

    .line 121
    :cond_79
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->connect()V

    :goto_7c
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 804
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 815
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 817
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 821
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_bStabilized:Z

    .line 826
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerOver()V

    .line 827
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    if-eqz p3, :cond_6

    .line 849
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->cancelConnect()V

    return-void

    :cond_6
    const-string p3, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 852
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    .line 853
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_58

    :cond_22
    const-string p3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 855
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 856
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 857
    iget-object v0, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 858
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v0

    and-int/2addr p2, v0

    if-ne p2, v1, :cond_2e

    :cond_53
    const-string p1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 865
    invoke-virtual {p0, v1, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_58
    :goto_58
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

    if-nez p2, :cond_16

    if-eqz p1, :cond_16

    const-string p2, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 836
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 837
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_19

    :cond_10
    const-string p1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 839
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_19

    .line 842
    :cond_16
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->cancelConnect()V

    :goto_19
    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 3

    .line 1031
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1032
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "BROAD"

    .line 1033
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isConnected:Z

    if-nez v0, :cond_a

    .line 941
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 945
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 946
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    .line 947
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-object v2, p3

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 949
    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_31

    .line 950
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_d7

    .line 952
    :cond_31
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v2, "mode"

    if-ne p2, v0, :cond_84

    .line 953
    check-cast p3, Ljava/util/Map;

    const-string p2, "type"

    .line 954
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_62

    .line 956
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v0, "setting"

    .line 957
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 958
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p2

    add-int/2addr p2, v1

    invoke-direct {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->updateInfo(II)V

    goto :goto_7e

    :cond_62
    const-string p2, "ext"

    .line 961
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez p2, :cond_72

    .line 963
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 966
    :cond_72
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    invoke-direct {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->updateInfo(II)V

    .line 968
    :goto_7e
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_d7

    .line 970
    :cond_84
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipLightSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_a5

    .line 971
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "colors"

    .line 972
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 973
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;

    .line 974
    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;->ordinal()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->updateLightSetting(Ljava/util/List;I)V

    .line 975
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_d7

    .line 977
    :cond_a5
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_b2

    .line 978
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->stopSkip()V

    .line 979
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_d7

    .line 981
    :cond_b2
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipSoundSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_d0

    .line 982
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceFlag:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c5

    .line 983
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 986
    :cond_c5
    check-cast p3, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;

    .line 987
    invoke-virtual {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->updateSoundSetting(Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;)V

    .line 988
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_d7

    .line 991
    :cond_d0
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_d7
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 872
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    if-eqz p3, :cond_9

    .line 874
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->cancelConnect()V

    return-void

    :cond_9
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isConnected:Z

    if-eqz p1, :cond_e

    return-void

    :cond_e
    const/4 p1, 0x0

    .line 882
    invoke-direct {p0, p1, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->updateInfo(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_isConnected:Z

    .line 890
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 891
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDeviceInfo:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    const/4 p1, 0x0

    .line 1005
    invoke-direct {p0, p1, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->updateInfo(II)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string p4, "0000180a-0000-1000-8000-00805f9b34fb"

    .line 896
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    if-eqz v0, :cond_9d

    .line 897
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a23-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 905
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->mac:Ljava/lang/String;

    goto :goto_7b

    .line 906
    :cond_1d
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a24-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_30

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 907
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->model:Ljava/lang/String;

    goto :goto_7b

    .line 917
    :cond_30
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_43

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 918
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->firmwareVer:Ljava/lang/String;

    goto :goto_7b

    .line 919
    :cond_43
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_56

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 920
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->softwareVer:Ljava/lang/String;

    goto :goto_7b

    .line 921
    :cond_56
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002a27-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_69

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 922
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->hardwareVer:Ljava/lang/String;

    goto :goto_7b

    .line 923
    :cond_69
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p3, "00002a29-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7b

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;

    .line 924
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipDeviceInfo;->manufactureName:Ljava/lang/String;

    :cond_7b
    :goto_7b
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 926
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_89

    .line 927
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_ae

    :cond_89
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    .line 929
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p4, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_ae

    .line 932
    :cond_9d
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ae

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 933
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 934
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method public stop()V
    .registers 4

    .line 1011
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->bStop:Z

    .line 1013
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->stopScan()V

    .line 1014
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->postWorkerOver()V

    goto :goto_2d

    .line 1016
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000FFB0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 1017
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x96

    .line 1020
    :try_start_22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 1022
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1024
    :goto_2a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_2d
    return-void
.end method

.method updateSoundSetting(Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;)V
    .registers 7

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundOn:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    const/4 v1, 0x2

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "sound_enable"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "sound_type"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "sound_vol"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreOn:Z

    if-eqz v1, :cond_44

    const/4 v1, 0x2

    goto :goto_45

    :cond_44
    const/4 v1, 0x1

    :goto_45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "win_enable"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->fullScoreBPM:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "win_bpm"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipSoundMode;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "sound_mode"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->modeParam:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "sound_value"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->isAutoStop:Z

    if-eqz p1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v2, 0x1

    :goto_79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sound_flag"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc6

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ba

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ba

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 227
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    const-wide/16 v0, 0x96

    .line 229
    :try_start_b1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_9a

    :catch_b5
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9a

    :cond_ba
    return-void
.end method
