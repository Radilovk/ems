.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleNewWorker.java"


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

.field _isSupportPH:Z

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _temperature:D

.field _weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

.field _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

.field _weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 166
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1b

    .line 169
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_cef

    .line 171
    :cond_1b
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_cd2

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 174
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_caf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_type"

    .line 177
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 179
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "decode data:%s"

    invoke-static {v8, v10, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xa5

    const-string v10, "type"

    const-string v14, "lb_scale_division"

    const-string v15, "kg_scale_division"

    const-string v13, "unit"

    if-eq v8, v9, :cond_a3c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xad

    if-ne v8, v9, :cond_73

    goto/16 :goto_a3c

    .line 301
    :cond_73
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v6, "weight_g_r"

    const-string v11, "weight_g_l"

    const-string v12, "weight_percent_r"

    const-string v4, "weight_percent_l"

    const-string v9, "precision"

    move-object/from16 v20, v3

    const-string v3, "weight_st_lb_r"

    const-string v1, "weight_st_r"

    move-object/from16 v21, v2

    const-string v2, "weight_lb_r"

    move-object/from16 v22, v10

    const-string v10, "weight_kg_r"

    move-object/from16 v23, v13

    const-string v13, "weight_st_lb_l"

    move-object/from16 v24, v7

    const-string v7, "weight_st_l"

    const-string v0, "weight_lb_l"

    move-object/from16 v25, v14

    const-string v14, "weight_kg_l"

    move-object/from16 v26, v15

    const/16 v15, 0xa0

    if-ne v8, v15, :cond_203

    .line 302
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 303
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 304
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 305
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 307
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 308
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 309
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 310
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 312
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 314
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 315
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 317
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 318
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v8, v26

    .line 320
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v9, v25

    .line 321
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v9, p0

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v10, :cond_147

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-nez v10, :cond_147

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    if-eqz v10, :cond_147

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayAndCall()V

    :cond_147
    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v10, :cond_200

    iget-object v11, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v11, :cond_200

    .line 328
    iget-wide v10, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v10, v14, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v19, v10, v12

    if-gez v19, :cond_161

    return-void

    :cond_161
    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 332
    iget-wide v10, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v10, v14

    iget-object v12, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 333
    iput v7, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v7, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 334
    iput v6, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 335
    iput v8, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 336
    iput v5, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v6, 0x0

    .line 338
    iput-boolean v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 340
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 341
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 342
    iput-wide v14, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 343
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 344
    invoke-static {v14, v15, v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 345
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v1

    .line 348
    invoke-direct {v9, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 349
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 350
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 355
    invoke-direct {v9, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 356
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 357
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 362
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 363
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 365
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 366
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 368
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 369
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 371
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 372
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 373
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 374
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_200
    :goto_200
    move-object v3, v9

    goto/16 :goto_ca5

    :cond_203
    move-object v15, v0

    move-object/from16 v8, v26

    .line 377
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v8, 0xa4

    if-ne v0, v8, :cond_362

    .line 378
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v19, v11

    move-object v8, v12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 379
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 380
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 381
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 383
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 384
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 385
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 386
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 388
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 390
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-object/from16 v7, v19

    .line 392
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 393
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v8, v26

    .line 395
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v9, v25

    .line 396
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v9, p0

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v10, :cond_2b7

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-nez v10, :cond_2b7

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    if-eqz v10, :cond_2b7

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayAndCall()V

    :cond_2b7
    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v10, :cond_200

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v10, :cond_200

    .line 401
    iget-wide v13, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 402
    iput v7, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v7, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 403
    iput v6, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 404
    iput v8, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 405
    iput v5, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v6, 0x1

    .line 407
    iput-boolean v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v17, 0x3e8

    div-long v6, v6, v17

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 409
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 410
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 411
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 412
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 413
    invoke-static {v11, v12, v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 414
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v1

    .line 417
    invoke-direct {v9, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 418
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 419
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 425
    invoke-direct {v9, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 426
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 427
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 432
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 433
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 435
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 436
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 438
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 439
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 441
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 442
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 443
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 445
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_200

    :cond_362
    move-object v8, v12

    move-object/from16 v0, v26

    .line 449
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v0, 0xc0

    if-ne v12, v0, :cond_4d1

    .line 450
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v19, v11

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 451
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 452
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 453
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 455
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 456
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 457
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 458
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 460
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 462
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 463
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-object/from16 v7, v19

    .line 465
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 466
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v8, v26

    .line 468
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v9, v25

    .line 469
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v9, p0

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v10, :cond_415

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-nez v10, :cond_415

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    if-eqz v10, :cond_415

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayAndCall()V

    :cond_415
    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v10, :cond_200

    iget-object v13, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v13, :cond_200

    .line 475
    iget-wide v13, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v10, v13, v22

    if-gez v10, :cond_42f

    return-void

    :cond_42f
    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 478
    iget-wide v13, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 480
    iput v7, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v7, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 481
    iput v6, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 482
    iput v8, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 483
    iput v5, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v6, 0x0

    .line 485
    iput-boolean v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v17, 0x3e8

    div-long v6, v6, v17

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 487
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 488
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 489
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 490
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 491
    invoke-static {v11, v12, v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 492
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v1

    .line 495
    invoke-direct {v9, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 496
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 497
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 503
    invoke-direct {v9, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 504
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 505
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 510
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 511
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 513
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 514
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 516
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 517
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 519
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 520
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 521
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 523
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_200

    :cond_4d1
    move-object/from16 v0, v26

    .line 526
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v0, 0xc4

    if-ne v12, v0, :cond_62e

    .line 527
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-object/from16 v19, v11

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 528
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 529
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 530
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 532
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 533
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 534
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 535
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 537
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 539
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 540
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-object/from16 v7, v19

    .line 542
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 543
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v8, v26

    .line 545
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v9, v25

    .line 546
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v9, p0

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v10, :cond_583

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-nez v10, :cond_583

    iget-boolean v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    if-eqz v10, :cond_583

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayAndCall()V

    :cond_583
    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v10, :cond_200

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v10, :cond_200

    .line 551
    iget-wide v13, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v10, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 553
    iput v7, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v7, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 554
    iput v6, v7, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 555
    iput v8, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v6, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 556
    iput v5, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v6, 0x1

    .line 558
    iput-boolean v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v17, 0x3e8

    div-long v6, v6, v17

    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 560
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 561
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 562
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 563
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 564
    invoke-static {v11, v12, v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 565
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v3, v1

    .line 568
    invoke-direct {v9, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    .line 569
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    .line 570
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 576
    invoke-direct {v9, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->toStLb(D)Ljava/util/List;

    move-result-object v5

    .line 577
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 578
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v5, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 583
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 584
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 586
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 587
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 589
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 590
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 592
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 593
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 594
    iput v0, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 596
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, v9, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_200

    :cond_62e
    move-object/from16 v0, p0

    move-object/from16 v19, v6

    move-object/from16 v12, v25

    move-object/from16 v6, v26

    move-object/from16 v25, v11

    .line 600
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v26, v8

    const/16 v8, 0xa9

    if-ne v11, v8, :cond_694

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-eqz v1, :cond_647

    return-void

    :cond_647
    const-string v1, "temperature"

    .line 604
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    move-object/from16 v8, v23

    .line 605
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 606
    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v4

    .line 607
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v4, v5, :cond_68c

    .line 608
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v4, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 609
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 610
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 611
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v11, v22

    invoke-virtual {v4, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_68c
    iput-wide v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 616
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto/16 :goto_a39

    :cond_694
    move-object/from16 v11, v22

    move-object/from16 v8, v23

    move-object/from16 v22, v4

    .line 619
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v23, v9

    const/16 v9, 0xa6

    const-wide/high16 v27, 0x4024000000000000L    # 10.0

    if-ne v4, v9, :cond_7ba

    const-string v1, "adc1"

    .line 620
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 623
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "bfaType"

    .line 624
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 626
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eqz v4, :cond_6d4

    .line 628
    invoke-static {v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v5

    .line 631
    :cond_6d4
    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v4

    .line 632
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v4, v6, :cond_6ff

    .line 633
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v4, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 634
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 636
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_6ff
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v3, :cond_a39

    .line 641
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 642
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v6, 0x4097700000000000L    # 1500.0

    cmpl-double v8, v3, v6

    if-ltz v8, :cond_736

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 643
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v3, v6

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v6, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v6, v6, v27

    const-wide v8, -0x4026666666666666L    # -0.4

    mul-double v6, v6, v8

    add-double/2addr v3, v6

    const-wide v6, 0x3fe3333333333333L    # 0.6

    div-double/2addr v3, v6

    div-double v3, v3, v27

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 644
    iput-wide v3, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 646
    :cond_736
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 647
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 649
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 650
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_temperature:D

    .line 651
    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 654
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 655
    iput-object v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 657
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v3, v4}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_79b

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayCall()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    .line 664
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 666
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_a39

    :cond_79b
    const/4 v1, 0x1

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayCall()V

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    .line 672
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 675
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_a39

    .line 679
    :cond_7ba
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v9, 0xa8

    if-ne v4, v9, :cond_a39

    const-string v4, "precision_lb"

    .line 680
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v9, "precision_kg"

    .line 681
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 p2, v3

    const-string v3, "weight_st_lb"

    .line 683
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v3, "weight_st"

    .line 684
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v24, v10

    const-string v10, "weight_lb"

    .line 685
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    move-object/from16 v30, v13

    move-object/from16 v29, v14

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-string v10, "weight_g"

    .line 686
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v31, v7

    const-string v7, "weight_kg"

    .line 687
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    move-wide/from16 v32, v1

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 689
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 690
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    move-object/from16 v35, v12

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v34, v6

    const-string v6, "time"

    .line 692
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v36, v15

    const-string v15, "hr"

    .line 693
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v37, v12

    const-string v12, "adc"

    .line 695
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    move/from16 v39, v6

    move/from16 v38, v7

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v12, "dianji"

    .line 696
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 697
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v40

    move/from16 v41, v12

    const-string v12, "bfaType"

    .line 698
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v42, v5

    .line 700
    invoke-static/range {v40 .. v40}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v5

    move/from16 v43, v12

    .line 701
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v5, v12, :cond_8bd

    .line 702
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v5, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 703
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 704
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    .line 705
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v8, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v8, v5}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 709
    :cond_8bd
    new-instance v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    invoke-direct {v5}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;-><init>()V

    .line 710
    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    .line 711
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    .line 712
    iput-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    .line 713
    iput v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    move-wide/from16 v1, v32

    .line 714
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    .line 716
    iput v15, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    move/from16 v1, v39

    .line 717
    iput v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    .line 718
    iput-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 719
    iget-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v6, 0x4097700000000000L    # 1500.0

    cmpl-double v3, v1, v6

    if-ltz v3, :cond_8ff

    .line 720
    iget-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v6

    iget-wide v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    mul-double v6, v6, v27

    const-wide v10, -0x4026666666666666L    # -0.4

    mul-double v6, v6, v10

    add-double/2addr v1, v6

    const-wide v6, 0x3fe3333333333333L    # 0.6

    div-double/2addr v1, v6

    div-double v1, v1, v27

    .line 721
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 724
    :cond_8ff
    iput v9, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    .line 725
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    .line 726
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    move/from16 v1, v38

    .line 728
    iput v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    move/from16 v1, v37

    .line 729
    iput v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    move/from16 v1, v41

    const/4 v2, 0x1

    if-ne v1, v2, :cond_915

    const/16 v1, 0x8

    goto :goto_916

    :cond_915
    const/4 v1, 0x4

    .line 730
    :goto_916
    iput v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 732
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-eqz v43, :cond_924

    .line 734
    invoke-static/range {v43 .. v43}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    .line 736
    :cond_924
    iput-object v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    const-string v1, "center"

    move-object/from16 v2, v42

    .line 738
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2f

    const-string v1, "center"

    .line 739
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object/from16 v2, v29

    .line 740
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-object/from16 v4, v36

    .line 741
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v4, v31

    .line 742
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v8, v30

    .line 743
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object/from16 v10, v24

    .line 745
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v12, v17

    .line 746
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-object/from16 v14, v18

    .line 747
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v15, p2

    .line 748
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Double;

    move/from16 p2, v14

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v0, v23

    .line 750
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v17, v5

    move-object/from16 v5, v22

    .line 752
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-wide/from16 v22, v14

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    move-object/from16 v5, v26

    .line 753
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-wide/from16 v26, v10

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v5, v25

    .line 755
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-wide/from16 v24, v12

    move-object/from16 v12, v19

    .line 756
    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v13, v34

    .line 758
    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-wide/from16 v28, v8

    move-object/from16 v8, v35

    .line 759
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 761
    new-instance v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v8}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    .line 763
    iput v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    .line 764
    iput v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    .line 765
    iput v13, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    .line 766
    iput v1, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    .line 768
    iput v5, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    .line 769
    iput v12, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    .line 771
    iput-wide v14, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    .line 772
    iput-wide v10, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    .line 774
    iput-wide v6, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    .line 775
    iput-wide v2, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    .line 777
    iput v4, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    move-wide/from16 v0, v28

    .line 778
    iput-wide v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    move-wide/from16 v0, v24

    .line 781
    iput-wide v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    move-wide/from16 v0, v26

    .line 782
    iput-wide v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    move/from16 v0, p2

    .line 784
    iput v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    move-wide/from16 v0, v22

    .line 785
    iput-wide v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    const/4 v0, 0x1

    .line 786
    iput-boolean v0, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    move-object/from16 v0, v17

    .line 788
    iput-object v8, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->centerData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto :goto_a30

    :cond_a2f
    move-object v0, v5

    .line 791
    :goto_a30
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_ca5

    :cond_a39
    :goto_a39
    move-object v3, v0

    goto/16 :goto_ca5

    :cond_a3c
    :goto_a3c
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    move-object v2, v5

    move-object v11, v10

    move-object v8, v14

    move-object v3, v0

    move-object v0, v13

    move-object v13, v15

    const-string v1, "state"

    .line 181
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v4, "dianji"

    .line 182
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "supportZx"

    .line 183
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    const-string v5, "supportPh"

    .line 184
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "supportHr"

    .line 185
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 186
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "precision_lb"

    .line 187
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "precision_kg"

    .line 188
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v12, "weight_st_lb"

    .line 190
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v12, "weight_st"

    .line 191
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v19, v5

    const-string v5, "weight_lb"

    .line 192
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-wide/from16 v22, v14

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v5, "weight_g"

    .line 193
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v24, v12

    const-string v12, "weight_kg"

    .line 194
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    move-wide/from16 v25, v14

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 196
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 197
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v13, "has_temperature"

    .line 199
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    if-nez v1, :cond_be2

    iget-boolean v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    if-eqz v1, :cond_b25

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayCall()V

    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_b25

    const/4 v2, 0x1

    .line 206
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 207
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_b26

    :cond_b25
    const/4 v1, 0x0

    :goto_b26
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    iput-boolean v2, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    iput-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_b40

    .line 218
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 219
    iget-object v2, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 222
    :cond_b40
    invoke-static {v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v1

    .line 223
    iget-object v2, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v1, v2, :cond_b6b

    .line 224
    iget-object v2, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 226
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 227
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_b6b
    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 231
    iget-wide v0, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v0, v14, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v27, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v2, v0, v27

    if-lez v2, :cond_b80

    const/4 v0, 0x1

    goto :goto_b81

    :cond_b80
    const/4 v0, 0x0

    :goto_b81
    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    if-ne v6, v2, :cond_b88

    const/4 v6, 0x1

    goto :goto_b89

    :cond_b88
    const/4 v6, 0x0

    .line 234
    :goto_b89
    iput-boolean v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    if-eqz v0, :cond_ca5

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 237
    iput v12, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 238
    iput v8, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v4, v2, :cond_b9c

    const/16 v1, 0x8

    goto :goto_b9d

    :cond_b9c
    const/4 v1, 0x4

    .line 239
    :goto_b9d
    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 240
    iput v10, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 241
    iput v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 242
    iput v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 243
    iput v5, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 244
    iput-wide v14, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v1, v25

    .line 245
    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v13, v24

    .line 246
    iput v13, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v1, v22

    .line 247
    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v1, 0x0

    .line 249
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 250
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_ca5

    :cond_be2
    move-wide/from16 v44, v22

    move-wide/from16 v1, v25

    .line 255
    invoke-static {v7}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v13

    .line 256
    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v13, v1, :cond_c11

    .line 257
    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v13, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 258
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_c11
    iget-boolean v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    if-eqz v0, :cond_c19

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->delayCall()Z

    return-void

    :cond_c19
    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v0, :cond_c2a

    .line 269
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 270
    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_c2a
    iget-boolean v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    const/4 v1, 0x1

    xor-int/lit8 v16, v0, 0x1

    iput-boolean v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 275
    iget-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v0, v14, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v17, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v2, v0, v17

    if-lez v2, :cond_c46

    const/16 v16, 0x1

    :cond_c46
    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v1, 0x1

    if-ne v6, v1, :cond_c4d

    const/4 v2, 0x1

    goto :goto_c4e

    :cond_c4d
    const/4 v2, 0x0

    .line 278
    :goto_c4e
    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    move/from16 v0, v19

    if-ne v0, v1, :cond_c56

    const/4 v0, 0x1

    goto :goto_c57

    :cond_c56
    const/4 v0, 0x0

    :goto_c57
    iput-boolean v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isSupportPH:Z

    if-eqz v16, :cond_ca5

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 281
    iput v12, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 282
    iput v8, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v4, v1, :cond_c6a

    const/16 v1, 0x8

    goto :goto_c6b

    :cond_c6a
    const/4 v1, 0x4

    .line 284
    :goto_c6b
    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 285
    iput v10, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 286
    iput v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 287
    iput v9, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 288
    iput v5, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 289
    iput-wide v14, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v1, v25

    .line 290
    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v1, v24

    .line 291
    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v1, v44

    .line 292
    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 296
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v1, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->delayCall()Z

    :cond_ca5
    :goto_ca5
    move-object/from16 v1, p1

    move-object v0, v3

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    const/4 v4, 0x0

    goto/16 :goto_31

    :cond_caf
    move-object v3, v0

    move-object/from16 v21, v2

    .line 794
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_cef

    .line 796
    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v2, p1

    iget-object v2, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "decode failed:%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cef

    :cond_cd2
    move-object v3, v0

    move-object v2, v1

    .line 799
    iget-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v1, :cond_cdb

    goto :goto_cef

    .line 804
    :cond_cdb
    iget-object v0, v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v0, v1, :cond_cef

    .line 806
    iget-object v0, v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verify data error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_cef
    :goto_cef
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

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 6

    .line 826
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "update weight unit:%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x20

    .line 829
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x4

    .line 831
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 833
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 834
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3d

    :cond_53
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 87
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 90
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public delayCall()Z
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_6
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 112
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_temperature:D

    .line 114
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 115
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 116
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 117
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/16 v2, 0x1388

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;

    invoke-direct {v3, p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 132
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    return v1
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isConnected:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_temperature:D

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isSupportPH:Z

    .line 71
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScaleNew:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 73
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_2b

    .line 74
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->startScan()V

    goto :goto_2e

    .line 78
    :cond_2b
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->connect()V

    :goto_2e
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 840
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 851
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 854
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 860
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_bStabilized:Z

    .line 864
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerOver()V

    .line 865
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1d
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

    .line 877
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    const/4 p3, 0x1

    .line 879
    invoke-virtual {p0, p3, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x64

    .line 881
    :try_start_10
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 883
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 885
    :goto_18
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    .line 886
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->updateTime()V

    iput-boolean p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isConnected:Z

    .line 889
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_2a
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

    .line 872
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 3

    .line 947
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 948
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "A"

    .line 949
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isConnected:Z

    if-nez v0, :cond_c

    .line 914
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 917
    :cond_c
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_23

    .line 918
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 919
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 920
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    .line 921
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_2a

    .line 925
    :cond_23
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_2a
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 4

    .line 904
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 905
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v0, p2, :cond_e

    .line 907
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    :cond_e
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 895
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 897
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 898
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public stop()V
    .registers 3

    .line 935
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->bStop:Z

    .line 937
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopScan()V

    .line 938
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerOver()V

    goto :goto_15

    .line 941
    :cond_12
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_15
    return-void
.end method

.method public stopDelayAndCall()V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    if-eqz v0, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 143
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_temperature:D

    .line 145
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 146
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 147
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 148
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    .line 151
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 152
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    return-void
.end method

.method public stopDelayCall()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 160
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    return-void
.end method

.method updateTime()V
    .registers 7

    .line 812
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "update time"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x20

    .line 815
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v3, 0x6

    .line 818
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 820
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method
