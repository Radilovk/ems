.class public Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICSkipS2Worker.java"


# static fields
.field private static final CHARACTERISTICS_CFG_UUID:Ljava/lang/String; = "0000FFF3-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFF1-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFF2-0000-1000-8000-00805F9B34FB"

.field private static final ROPE_CTRL_PAUSE:I = 0x4

.field private static final ROPE_CTRL_RESUME:I = 0x5

.field private static final ROPE_CTRL_START_COUNT:I = 0x3

.field private static final ROPE_CTRL_START_FREE:I = 0x1

.field private static final ROPE_CTRL_START_INTERVAL_SKIP:I = 0xa

.field private static final ROPE_CTRL_START_MUSIC:I = 0xc

.field private static final ROPE_CTRL_START_SOUND_OR_VIDEO:I = 0xb

.field private static final ROPE_CTRL_START_SYNC_HISTORY:I = 0x7

.field private static final ROPE_CTRL_START_TIMER:I = 0x2

.field private static final ROPE_CTRL_STOP:I = 0x6

.field private static final ROPE_CTRL_STOP_SYNC_HISTORY:I = 0x8

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFF0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _bStabilized:Z

.field _battery:I

.field _cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

.field _checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

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

.field _historyCount:I

.field _historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _interrutSKips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;",
            ">;"
        }
    .end annotation
.end field

.field _isAppStart:Z

.field _isAppStart2:Z

.field _isCall:Z

.field _isConnected:Z

.field private _isWriting:Z

.field _lastCount:I

.field _lastCountTime:J

.field _lastStabilizedElapsedTime:I

.field private _lastTime:I

.field _mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

.field _most_jump:I

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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_66

    .line 209
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_66

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isWriting:Z

    if-nez p1, :cond_65

    .line 216
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_65

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 219
    iget-object v0, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isWriting:Z

    .line 221
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    const-string v2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    .line 222
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, v0, v2, p1, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_65

    :cond_52
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    .line 225
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFF2-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_65
    :goto_65
    return-void

    .line 210
    :cond_66
    :goto_66
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 200
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 202
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 204
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 191
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 193
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 194
    iput-object p2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    .line 196
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

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

    .line 465
    div-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-double p1, p1

    .line 466
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

    .line 475
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_1b
    :goto_1b
    return-wide v2
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 480
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    .line 482
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v0

    goto/16 :goto_81d

    .line 483
    :cond_1b
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_800

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 485
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 487
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 488
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "decode data:%s"

    invoke-static {v7, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "cmd"

    .line 489
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-ne v7, v9, :cond_94

    const-string v6, "battery"

    .line 491
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_battery:I

    if-eq v7, v5, :cond_8d

    iput v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_battery:I

    .line 494
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 495
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "type"

    .line 496
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v5, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v5, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_8d
    move-object v6, v0

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    goto/16 :goto_7d3

    :cond_94
    const-string v10, "mode"

    const-string v11, "have_ext"

    const-string v12, "most_jump"

    const-string v13, "skip_count"

    const-string v14, "status"

    const-string v15, "calorie"

    const-string v6, "freq_count"

    const-string v4, "avg_freq"

    const-string v9, "time"

    move-object/from16 v18, v9

    const/4 v9, 0x4

    if-ne v7, v9, :cond_411

    .line 502
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v9, v18

    .line 503
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 504
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 505
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 506
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 507
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 508
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 509
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    if-lez v15, :cond_11e

    sub-int v8, v9, v15

    move-object/from16 v21, v3

    const/4 v3, 0x2

    if-gt v8, v3, :cond_120

    sub-int v3, v9, v15

    if-ltz v3, :cond_120

    .line 512
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v4, "filter same skip data _lastStabilizedElapsedTime"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_11a
    move-object/from16 v3, v21

    goto/16 :goto_7da

    :cond_11e
    move-object/from16 v21, v3

    :cond_120
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v3, :cond_148

    .line 515
    iget-boolean v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    if-eqz v3, :cond_148

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    sub-int v3, v9, v3

    const/4 v8, 0x2

    if-gt v3, v8, :cond_148

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    sub-int v3, v9, v3

    if-ltz v3, :cond_148

    .line 516
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v4, "filter same skip data"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11a

    :cond_148
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v3, :cond_18c

    iget-boolean v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    if-eqz v8, :cond_18c

    .line 522
    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eq v3, v8, :cond_179

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v3, v8, :cond_15f

    goto :goto_179

    :cond_15f
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 530
    iget v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    if-gt v3, v9, :cond_16b

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    if-le v3, v13, :cond_18c

    :cond_16b
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    const/4 v8, 0x0

    iput-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 533
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    goto :goto_18c

    :cond_179
    :goto_179
    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 523
    iget v15, v15, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    if-le v15, v9, :cond_18c

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    iput-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 526
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    :cond_18c
    :goto_18c
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v3, :cond_19e

    .line 538
    iget-boolean v3, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    if-eqz v3, :cond_19e

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 540
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    :cond_19e
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v3, :cond_1e8

    move-object v3, v2

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    const/4 v1, 0x0

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    .line 547
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move v8, v14

    .line 548
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v14

    long-to-int v15, v14

    iput v15, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-eqz v1, :cond_1ea

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 553
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 554
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 555
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 556
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    goto :goto_1ea

    :cond_1e8
    move-object v3, v2

    move v8, v14

    :cond_1ea
    :goto_1ea
    iget v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    if-le v12, v1, :cond_1f0

    iput v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    :cond_1f0
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 566
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    if-nez v1, :cond_204

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 567
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v22, v3

    int-to-long v2, v9

    sub-long/2addr v14, v2

    long-to-int v2, v14

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    goto :goto_206

    :cond_204
    move-object/from16 v22, v3

    :goto_206
    if-nez v7, :cond_216

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 571
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x1

    .line 572
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v9, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    goto :goto_233

    :cond_216
    const/4 v2, 0x1

    if-ne v7, v2, :cond_227

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 575
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumping:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x0

    .line 576
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    goto :goto_233

    :cond_227
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v7, v1, :cond_233

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 579
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    :cond_233
    :goto_233
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 582
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    const/4 v1, 0x1

    if-ne v11, v1, :cond_2d4

    const-string v1, "cur_freq"

    .line 584
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 585
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    const/4 v7, 0x5

    if-eq v2, v3, :cond_256

    if-ne v2, v7, :cond_2d4

    :cond_256
    if-ne v2, v3, :cond_25f

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 589
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_267

    :cond_25f
    if-ne v2, v7, :cond_267

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 591
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :cond_267
    :goto_267
    const-string v2, "interval_index"

    .line 593
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "interval_time"

    .line 594
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    if-nez v5, :cond_28a

    .line 598
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    :cond_28a
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 602
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_290
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;

    .line 603
    iget v10, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->index:I

    if-ne v10, v2, :cond_290

    goto :goto_2a2

    :cond_2a1
    const/4 v7, 0x0

    :goto_2a2
    if-nez v7, :cond_2ae

    .line 610
    new-instance v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;

    invoke-direct {v7}, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;-><init>()V

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 611
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_2ae
    iput v2, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->index:I

    .line 615
    iput v13, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 616
    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    if-ne v2, v5, :cond_2bd

    .line 617
    iput v3, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    goto :goto_2ce

    :cond_2bd
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 618
    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumping:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    if-ne v2, v5, :cond_2ce

    .line 619
    iput v3, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    int-to-double v2, v8

    .line 620
    iput-wide v2, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    .line 621
    iput v1, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->avg_freq:I

    .line 622
    iput v6, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    :cond_2ce
    :goto_2ce
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 625
    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->interrupts:Ljava/util/List;

    :cond_2d4
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 632
    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    if-eqz v1, :cond_326

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eq v1, v2, :cond_2ea

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v1, v2, :cond_326

    :cond_2ea
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 640
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_314

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;

    .line 641
    iget v8, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    .line 642
    iget v8, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    iget v10, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    add-int/2addr v8, v10

    add-int/2addr v2, v8

    .line 643
    iget v8, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    add-int/2addr v3, v8

    int-to-double v10, v6

    .line 644
    iget-wide v12, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    add-double/2addr v10, v12

    double-to-int v6, v10

    .line 645
    iget v7, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    add-int/2addr v5, v7

    goto :goto_2f4

    :cond_314
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 647
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 648
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 650
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-double v2, v6

    .line 651
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    goto :goto_37b

    :cond_326
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 654
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eq v1, v2, :cond_336

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v1, v2, :cond_36a

    :cond_336
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 655
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    if-ne v3, v13, :cond_34f

    iget-wide v10, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    const-wide/16 v14, 0x0

    cmp-long v5, v10, v14

    if-nez v5, :cond_34f

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    goto :goto_36a

    :cond_34f
    if-ne v3, v13, :cond_366

    iget-wide v10, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    sub-long/2addr v1, v10

    const-wide/16 v10, 0x3e8

    cmp-long v3, v1, v10

    if-lez v3, :cond_36a

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 662
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x0

    .line 663
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    goto :goto_36a

    :cond_366
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    :cond_36a
    :goto_36a
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 671
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 672
    iput v13, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 673
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-double v2, v8

    .line 674
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    :goto_37b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 676
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    if-ne v1, v2, :cond_388

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x0

    .line 677
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    :cond_388
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 679
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    .line 680
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 681
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v2, v9

    .line 682
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->calcFatBurned(JD)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 683
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    if-ne v1, v2, :cond_3bc

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    if-eqz v1, :cond_3bc

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    .line 685
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_3c7

    .line 688
    :cond_3bc
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_3c7
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 690
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    if-ne v1, v2, :cond_40e

    const/4 v1, 0x0

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-eqz v1, :cond_40e

    .line 693
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 694
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 695
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 696
    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 697
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 698
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 699
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    :cond_40e
    move-object v6, v0

    goto/16 :goto_7d3

    :cond_411
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v9, v18

    const/4 v1, 0x5

    if-ne v7, v1, :cond_5ba

    const-string v1, "historyCount"

    .line 706
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 707
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 708
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "skip_time"

    .line 709
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 710
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 711
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 712
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 713
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 715
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    const/4 v14, 0x1

    if-ne v11, v14, :cond_553

    .line 718
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 719
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v14, "max_jump"

    .line 720
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v0, "interval_skip"

    .line 721
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x4

    if-ne v10, v5, :cond_4a5

    .line 724
    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v5, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_4ac

    :cond_4a5
    const/4 v5, 0x5

    if-ne v10, v5, :cond_4ac

    .line 727
    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v5, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 730
    :cond_4ac
    :goto_4ac
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_546

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v16, v0

    const-string v0, "index"

    .line 734
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v17, v12

    const-string v12, "rest_time"

    .line 735
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v19, v7

    const-string v7, "count"

    .line 736
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 738
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v23, v9

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 739
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v24, v15

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 740
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v25, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 741
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v26, v6

    .line 743
    new-instance v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;

    invoke-direct {v6}, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;-><init>()V

    .line 744
    iput v0, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->index:I

    .line 745
    iput v12, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    .line 746
    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    move v0, v2

    move v7, v3

    int-to-double v2, v15

    .line 747
    iput-wide v2, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    .line 748
    iput v4, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->avg_freq:I

    .line 749
    iput v9, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    .line 750
    iput v10, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    .line 751
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v0

    move v3, v7

    move-object/from16 v0, v16

    move/from16 v12, v17

    move/from16 v7, v19

    move-object/from16 v9, v23

    move-object/from16 v15, v24

    move-object/from16 v4, v25

    move-object/from16 v6, v26

    goto/16 :goto_4b5

    :cond_546
    move v0, v2

    move/from16 v19, v7

    move/from16 v17, v12

    move v7, v3

    .line 754
    iput-object v5, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->interrupts:Ljava/util/List;

    .line 756
    iput v11, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    .line 757
    iput v14, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    goto :goto_559

    :cond_553
    move v0, v2

    move/from16 v19, v7

    move/from16 v17, v12

    move v7, v3

    .line 760
    :goto_559
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v2, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    .line 761
    iput v1, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    const/4 v1, 0x1

    .line 762
    iput-boolean v1, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 764
    iput v8, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    .line 766
    iput v7, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    .line 767
    iput v7, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    .line 768
    iput v0, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    move/from16 v1, v19

    .line 769
    iput v1, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    move/from16 v1, v17

    int-to-double v1, v1

    .line 770
    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    int-to-long v1, v7

    .line 771
    iget-wide v3, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    move-object/from16 v6, p0

    invoke-direct {v6, v1, v2, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->calcFatBurned(JD)D

    move-result-wide v1

    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    if-nez v0, :cond_58f

    .line 775
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "filter skip_count = 0"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_594

    .line 779
    :cond_58f
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v6, v0, v13}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_594
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_59e

    .line 783
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_59e
    iget v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyCount:I

    const/16 v0, 0x3e8

    .line 788
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;

    invoke-direct {v1, v6}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 797
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto/16 :goto_7d3

    :cond_5ba
    move-object v6, v0

    const/4 v0, 0x6

    if-lt v7, v0, :cond_632

    const/16 v0, 0xa

    if-gt v7, v0, :cond_632

    packed-switch v7, :pswitch_data_81e

    goto/16 :goto_7d3

    :pswitch_5c7
    const-string v0, "hardware_ver"

    .line 835
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 836
    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->hardwareVer:Ljava/lang/String;

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 837
    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isConnected:Z

    .line 839
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 840
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDeviceInfo:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 841
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->getBattery()V

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->updateUserInfo()V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->queryHistory()V

    goto/16 :goto_7d3

    :pswitch_5fa
    const-string v0, "software_ver"

    .line 828
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 829
    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    goto/16 :goto_7d3

    :pswitch_608
    const-string v0, "sn"

    .line 821
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 822
    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    goto/16 :goto_7d3

    :pswitch_616
    const-string v0, "model"

    .line 814
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 815
    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->model:Ljava/lang/String;

    goto/16 :goto_7d3

    :pswitch_624
    const-string v0, "manufacturer_name"

    .line 807
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 808
    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->manufactureName:Ljava/lang/String;

    goto/16 :goto_7d3

    :cond_632
    const/16 v0, 0xb

    if-ne v7, v0, :cond_7d3

    .line 848
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6d6

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v0, :cond_64b

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->resumeSkip()V

    :cond_64b
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez v0, :cond_651

    goto/16 :goto_7d3

    :cond_651
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    const/4 v0, 0x0

    iput v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    .line 859
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 860
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 861
    iput v0, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 862
    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v2, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 863
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 864
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 865
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    .line 867
    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6c6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6c6

    if-eq v0, v1, :cond_6c6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6b5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6a4

    :goto_6a2
    const/4 v0, 0x0

    goto :goto_6d2

    :cond_6a4
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 882
    iget v0, v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    const/4 v3, 0x0

    invoke-virtual {v6, v3, v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startIntervalSkip(IIII)V

    goto :goto_6a2

    :cond_6b5
    const/4 v3, 0x0

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 877
    iget v0, v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    invoke-virtual {v6, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startIntervalSkip(IIII)V

    goto :goto_6a2

    :cond_6c6
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 872
    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    invoke-virtual {v6, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startSkip(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;I)V

    goto :goto_6a2

    :goto_6d2
    iput-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    goto/16 :goto_7d3

    :cond_6d6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6f8

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->pauseSkip()V

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v0, :cond_6e2

    goto/16 :goto_7d3

    :cond_6e2
    const/4 v1, 0x0

    .line 896
    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->cur_speed:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 897
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusRest:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    .line 898
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_7d3

    :cond_6f8
    if-ne v0, v1, :cond_7d3

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->stopSkip()V

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-eqz v0, :cond_7d3

    .line 903
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7d3

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 904
    iget v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    if-nez v0, :cond_70e

    goto/16 :goto_7d3

    :cond_70e
    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    const/4 v0, 0x0

    iput v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 910
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 911
    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eq v0, v1, :cond_729

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne v0, v1, :cond_764

    :cond_729
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 919
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_733
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_753

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;

    .line 920
    iget v7, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    .line 921
    iget v7, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->rest_time:I

    iget v8, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->time:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 922
    iget v7, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->skip_count:I

    add-int/2addr v2, v7

    int-to-double v7, v4

    .line 923
    iget-wide v9, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->calories_burned:D

    add-double/2addr v7, v9

    double-to-int v4, v7

    .line 924
    iget v5, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipInterruptData;->freq_count:I

    add-int/2addr v3, v5

    goto :goto_733

    :cond_753
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 926
    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 927
    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 929
    iput v3, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-double v1, v4

    .line 930
    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    :cond_764
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 933
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;->ICSkipStatusJumpOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->status:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipStatus;

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    .line 934
    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    iget-boolean v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    if-eqz v0, :cond_783

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    .line 937
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_78f

    :cond_783
    const/4 v0, 0x0

    .line 940
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_78f
    iput v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-eqz v1, :cond_7d3

    const-wide/16 v1, 0x0

    iput-wide v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    iput v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 948
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 949
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 950
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 951
    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 952
    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_group:I

    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    iget-object v1, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 953
    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting_rest_time:I

    const/4 v0, 0x0

    iput-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    :cond_7d3
    :goto_7d3
    move-object/from16 v1, p1

    move-object v0, v6

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    :goto_7da
    const/4 v4, 0x0

    goto/16 :goto_31

    :cond_7dd
    move-object v6, v0

    move-object/from16 v22, v2

    .line 960
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_81d

    .line 961
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v2, p1

    iget-object v2, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "decode failed:%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_81d

    :cond_800
    move-object v6, v0

    move-object v2, v1

    .line 963
    iget-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v1, :cond_809

    goto :goto_81d

    .line 966
    :cond_809
    iget-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v1, :cond_81d

    .line 967
    iget-object v0, v6, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verify data error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_81d
    :goto_81d
    return-void

    :pswitch_data_81e
    .packed-switch 0x6
        :pswitch_624
        :pswitch_616
        :pswitch_608
        :pswitch_5fa
        :pswitch_5c7
    .end packed-switch
.end method

.method private writeNext()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    .line 236
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 239
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    .line 240
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 247
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    :cond_53
    :goto_53
    if-eqz v4, :cond_84

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isWriting:Z

    .line 254
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    const-string v2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_84

    :cond_71
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF2-0000-1000-8000-00805F9B34FB"

    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, v0, v2, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_84
    :goto_84
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 169
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_13

    .line 173
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_1c

    .line 177
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_1c
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_25

    .line 182
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 186
    :cond_25
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method deleteHistory(I)V
    .registers 4

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "param"

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 310
    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method getBattery()V
    .registers 4

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x2

    .line 279
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 281
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method getDevInfo()V
    .registers 4

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x4

    .line 290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 291
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 292
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method public initWorker()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_most_jump:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isConnected:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfoUUIDsReadIndex:I

    .line 133
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isWriting:Z

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_battery:I

    const/16 v0, 0x2710

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 157
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 159
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeS2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 161
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 3

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 974
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_13

    .line 978
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_13
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_1c

    .line 983
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 987
    :cond_1c
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    if-eqz p2, :cond_a

    .line 992
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_a

    .line 994
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->cancelConnect()V

    return-void

    .line 998
    :cond_a
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_12

    .line 1000
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->discoverServices()V

    goto :goto_42

    :cond_12
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_1c

    .line 1004
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_1c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_25

    .line 1008
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyQueryDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_25
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_2e

    .line 1012
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyDataTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_2e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_37

    .line 1017
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_37
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_bStabilized:Z

    .line 1023
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerOver()V

    .line 1024
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_42
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

    .line 1042
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->cancelConnect()V

    return-void

    :cond_6
    const-string p3, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 1045
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1046
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 1047
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFF2-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1048
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    and-int/2addr p2, v1

    if-ne p2, v0, :cond_12

    :cond_38
    const-string p1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 1055
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_3d
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

    const-string p1, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 1033
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d

    .line 1035
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->cancelConnect()V

    :goto_d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 9

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isConnected:Z

    if-nez v0, :cond_a

    .line 1135
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1139
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 1140
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    .line 1141
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-object v2, p3

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 1143
    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_31

    .line 1144
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1147
    :cond_31
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_f8

    .line 1148
    check-cast p3, Ljava/util/Map;

    const-string p2, "type"

    .line 1149
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCountTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastCount:I

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    .line 1154
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_54
    const/16 v2, 0x3e8

    .line 1157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;

    invoke-direct {v4, p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$3;-><init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;)V

    invoke-static {v2, v4}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 1173
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    if-nez p2, :cond_9c

    const-string p2, "mode"

    .line 1175
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v2, "setting"

    .line 1176
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    .line 1180
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1181
    iput-object p2, v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1182
    iput p3, v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_interrutSKips:Ljava/util/List;

    .line 1190
    invoke-virtual {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startSkip(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;I)V

    goto :goto_f1

    :cond_9c
    const-string p2, "ext"

    .line 1193
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez p2, :cond_b5

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p2, :cond_af

    .line 1197
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_checkAppStartTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 1201
    :cond_af
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    :cond_b5
    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_lastStabilizedElapsedTime:I

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_mcfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isAppStart2:Z

    .line 1209
    sget-object p3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker$4;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICSkipMode:[I

    iget-object v2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v2

    aget p3, p3, v2

    if-eq p3, v1, :cond_ea

    const/4 v1, 0x2

    if-eq p3, v1, :cond_ea

    const/4 v1, 0x3

    if-eq p3, v1, :cond_ea

    const/4 v1, 0x4

    if-eq p3, v1, :cond_e0

    const/4 v1, 0x5

    if-eq p3, v1, :cond_d6

    goto :goto_f1

    .line 1224
    :cond_d6
    iget p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget v1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    invoke-virtual {p0, v0, p3, v1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startIntervalSkip(IIII)V

    goto :goto_f1

    .line 1219
    :cond_e0
    iget p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget v1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    invoke-virtual {p0, p3, v0, v1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startIntervalSkip(IIII)V

    goto :goto_f1

    .line 1214
    :cond_ea
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    invoke-virtual {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->startSkip(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;I)V

    .line 1231
    :goto_f1
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1233
    :cond_f8
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_109

    .line 1234
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->stopSkip()V

    .line 1235
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->queryHistory()V

    .line 1236
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1238
    :cond_109
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipPause:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_117

    .line 1239
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->pauseSkip()V

    .line 1240
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1242
    :cond_117
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipResume:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_125

    .line 1243
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->resumeSkip()V

    .line 1244
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1246
    :cond_125
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetMaxHR:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v1, "hr"

    if-ne p2, v0, :cond_141

    .line 1247
    check-cast p3, Ljava/util/Map;

    .line 1248
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1250
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setMaxHR(I)V

    .line 1251
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1253
    :cond_141
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetHR:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_15b

    .line 1254
    check-cast p3, Ljava/util/Map;

    .line 1255
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1257
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setHR(I)V

    .line 1258
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_1ce

    .line 1260
    :cond_15b
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetBPM:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_182

    .line 1261
    check-cast p3, Ljava/util/Map;

    const-string p2, "bpm"

    .line 1262
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "bpm_type"

    .line 1263
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 1264
    invoke-virtual {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setBPM(II)V

    .line 1265
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_1ce

    .line 1267
    :cond_182
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetVolume:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_19d

    .line 1268
    check-cast p3, Ljava/util/Map;

    const-string p2, "volume"

    .line 1269
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1271
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setSoundVol(I)V

    .line 1272
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_1ce

    .line 1274
    :cond_19d
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipPlayFreq:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1b8

    .line 1275
    check-cast p3, Ljava/util/Map;

    const-string p2, "freq"

    .line 1276
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1278
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setPlayFreq(I)V

    .line 1279
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_1ce

    .line 1281
    :cond_1b8
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipSoundSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1c7

    .line 1287
    check-cast p3, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;

    .line 1288
    invoke-virtual {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->updateSoundSetting(Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;)V

    .line 1289
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_1ce

    .line 1293
    :cond_1c7
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_1ce
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1062
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    if-eqz p3, :cond_9

    .line 1064
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->cancelConnect()V

    return-void

    .line 1067
    :cond_9
    iget-object p1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const-string p1, "0000FFF0-0000-1000-8000-00805F9B34FB"

    const-string p2, "0000FFF3-0000-1000-8000-00805F9B34FB"

    const/4 p3, 0x1

    .line 1068
    invoke-virtual {p0, p3, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 1071
    :cond_1c
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->updateTime()V

    .line 1072
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->getDevInfo()V

    :goto_22
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 1307
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_isConnected:Z

    if-eqz p1, :cond_a

    .line 1309
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->updateUserInfo()V

    :cond_a
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string p4, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 1078
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9d

    .line 1079
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p4, "0000FFF1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1080
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 1081
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    goto/16 :goto_9d

    .line 1084
    :cond_1f
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p1

    const/4 p2, 0x0

    .line 1085
    invoke-virtual {p1, p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/4 p2, 0x2

    .line 1086
    invoke-virtual {p1, p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    .line 1088
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_9d

    .line 1090
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result p3

    if-nez p3, :cond_39

    return-void

    .line 1094
    :cond_39
    invoke-virtual {p1, p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    .line 1095
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1097
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne p3, p2, :cond_58

    .line 1099
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result p1

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1100
    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1101
    iput p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    goto :goto_9d

    :cond_58
    if-ne p3, p4, :cond_69

    .line 1104
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result p1

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1105
    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1106
    iput p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    goto :goto_9d

    :cond_69
    const/4 p2, 0x5

    if-ne p3, p2, :cond_9d

    .line 1112
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result p2

    .line 1113
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result p3

    .line 1114
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result p4

    .line 1115
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result p1

    if-eqz p2, :cond_89

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1117
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptTime:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v0, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1118
    iput p2, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    goto :goto_95

    :cond_89
    if-eqz p3, :cond_95

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1121
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeInterruptCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v0, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1122
    iput p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    :cond_95
    :goto_95
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1124
    iput p4, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->rest_time:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_cfg:Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    .line 1125
    iput p1, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->group:I

    :cond_9d
    :goto_9d
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1302
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->writeNext()V

    return-void
.end method

.method pauseSkip()V
    .registers 3

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x4

    .line 366
    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method queryHistory()V
    .registers 3

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_historyCount:I

    const/4 v1, 0x7

    .line 302
    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method resumeSkip()V
    .registers 3

    .line 373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x5

    .line 374
    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method setBPM(II)V
    .registers 5

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "bpm_type"

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bpm"

    .line 419
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0x204

    .line 420
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 421
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_30

    const-string p2, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 422
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method setHR(I)V
    .registers 4

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hr"

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x5

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 397
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 398
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_24
    return-void
.end method

.method setMaxHR(I)V
    .registers 4

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hr"

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0x205

    .line 407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    const-string v0, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 409
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method setPlayFreq(I)V
    .registers 4

    .line 438
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "freq"

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const v1, 0xff08

    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    const-string v0, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 442
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method setRopeCtrl(ILjava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_command"

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_13

    .line 320
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_13
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 p2, 0x3

    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 323
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_29

    .line 324
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_29
    return-void
.end method

.method setSoundVol(I)V
    .registers 4

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vol"

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const v1, 0xff01

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    const-string v0, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 432
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method startIntervalSkip(IIII)V
    .registers 7

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "time"

    .line 331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "count"

    .line 332
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rest_time"

    .line 333
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "group"

    .line 334
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 335
    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method startSkip(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;I)V
    .registers 5

    .line 341
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_11

    .line 344
    :cond_6
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne p1, v0, :cond_c

    const/4 v1, 0x2

    goto :goto_11

    .line 347
    :cond_c
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-ne p1, v0, :cond_11

    const/4 v1, 0x3

    .line 350
    :cond_11
    :goto_11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "param"

    .line 351
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual {p0, v1, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method public stop()V
    .registers 6

    .line 1316
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 1317
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->bStop:Z

    .line 1318
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->stopScan()V

    .line 1319
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->postWorkerOver()V

    goto :goto_3c

    .line 1321
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_2f

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    const/4 v1, 0x0

    const-string v2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 1322
    invoke-virtual {p0, v1, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    .line 1324
    :try_start_22
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 1326
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2a
    const-string v0, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 1329
    invoke-virtual {p0, v1, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-wide/16 v0, 0x96

    .line 1332
    :try_start_31
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    .line 1334
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1336
    :goto_39
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_3c
    return-void
.end method

.method stopSkip()V
    .registers 3

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x6

    .line 359
    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->setRopeCtrl(ILjava/util/HashMap;)V

    return-void
.end method

.method updateSoundSetting(Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;)V
    .registers 5

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 449
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->soundOn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->assistantOn:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "assistant_on"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->bpmOn:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bpm_on"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->vibrationOn:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vibration_on"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/data/ICSkipSoundSettingData;->hrMonitorOn:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "hr_monitor_on"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0x101

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 455
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_57

    const-string v0, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 456
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method updateTime()V
    .registers 5

    .line 266
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v0

    .line 267
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "time"

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x1

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 270
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 271
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_28
    return-void
.end method

.method updateUserInfo()V
    .registers 4

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "weight"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sex"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const v2, 0xff09

    .line 385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 386
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4e

    const-string v1, "0000FFF3-0000-1000-8000-00805F9B34FB"

    .line 387
    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICSkipS2Worker;->addWriteDatasNoEventId(Ljava/util/List;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method
