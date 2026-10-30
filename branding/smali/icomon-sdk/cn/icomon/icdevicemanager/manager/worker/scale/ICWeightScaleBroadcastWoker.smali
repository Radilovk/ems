.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleBroadcastWoker.java"


# instance fields
.field private _bStabilized:Z

.field private _bStartChange:Z

.field private _bSupportUnitChange:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _delayTimerDisconnected:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _isCall:Z

.field private _isFirstConnected:Z

.field private _nLastChangeUnitTime:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _protocolHandlerApp:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _strDecryptKey:Ljava/lang/String;

.field private _temperature:D

.field private _weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

.field private _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

.field private _weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_weightCenterData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 6

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-eqz v0, :cond_2d

    .line 948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_nLastChangeUnitTime:I

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    if-le v1, v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStartChange:Z

    .line 953
    :cond_15
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v0, p1, :cond_2d

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStartChange:Z

    if-nez p1, :cond_2d

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStartChange:Z

    .line 955
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    :cond_2d
    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 192
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 195
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d83

    .line 197
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_d68

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 200
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 201
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_d50

    .line 203
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "package_type"

    .line 204
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 205
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const-string v2, "decode data:%s"

    invoke-static {v6, v2, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xce

    const-string v7, "temperature"

    const-string v8, "weight_g"

    const-string v9, "weight_st_lb"

    const-string v10, "weight_st"

    const-string v11, "weight_lb"

    const-string v12, "weight_kg"

    const-string v13, "precision"

    const-string v14, "lb_scale_division"

    const-string v15, "kg_scale_division"

    const-wide v16, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    const-string v4, "type"

    const-wide/16 v18, 0x3e8

    const-string v5, "unit"

    if-eq v2, v6, :cond_bc6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xae

    if-ne v2, v6, :cond_83

    goto/16 :goto_bc6

    .line 289
    :cond_83
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xa9

    if-ne v2, v6, :cond_193

    .line 290
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 291
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v3

    .line 292
    invoke-direct {v0, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    iget-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v6, :cond_c3

    .line 293
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v3, v6, :cond_c3

    .line 295
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v3, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 296
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 297
    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_c3
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-eqz v2, :cond_c8

    return-void

    .line 305
    :cond_c8
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 306
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 307
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 308
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 309
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 311
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 313
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 314
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 316
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v13, :cond_11f

    .line 318
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 319
    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v15, v15, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v15, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_11f
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 322
    iput-wide v2, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 323
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v13, v2, v16

    if-lez v13, :cond_d83

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 324
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 325
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 326
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 327
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 330
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 331
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 332
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 333
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 334
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v18

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 336
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_d83

    .line 339
    :cond_193
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xca

    if-eq v2, v6, :cond_a70

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xaa

    if-ne v2, v6, :cond_1a5

    goto/16 :goto_a70

    .line 414
    :cond_1a5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xad

    if-ne v2, v6, :cond_4be

    const-string v2, "state"

    .line 415
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 416
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 417
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 418
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 419
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 420
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    move v13, v10

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 421
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 423
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 424
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move/from16 v20, v13

    .line 427
    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v13

    move-wide/from16 v21, v9

    const-string v9, "precision_kg"

    .line 430
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "precision_lb"

    .line 431
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-wide/from16 v23, v11

    const-string v11, "dianji"

    .line 434
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "supportZx"

    .line 435
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    const-string v12, "supportPh"

    .line 436
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    const-string v12, "supportHr"

    .line 437
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v25, 0x4

    if-nez v2, :cond_39a

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    if-eqz v2, :cond_2c2

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-nez v2, :cond_2c2

    .line 446
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v26, v8

    move/from16 v27, v9

    .line 447
    iget-wide v8, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v8, v8

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 448
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v28, v14

    move-object v12, v15

    invoke-static {v8, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v14

    iput-wide v14, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v8, 0x1

    if-ne v1, v8, :cond_288

    const/4 v9, 0x1

    goto :goto_289

    :cond_288
    const/4 v9, 0x0

    .line 449
    :goto_289
    iput-boolean v9, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-ne v11, v8, :cond_292

    const/16 v9, 0x8

    goto :goto_293

    :cond_292
    const/4 v9, 0x4

    .line 450
    :goto_293
    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 451
    iput-boolean v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 452
    iput-wide v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v8, v8, v18

    iput-wide v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 454
    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v8

    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 455
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_2ca

    :cond_2c2
    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v14

    move-object v12, v15

    const/4 v2, 0x0

    :goto_2ca
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    iput-boolean v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_2e4

    .line 465
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 466
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v8, v8, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 469
    :cond_2e4
    invoke-direct {v0, v13}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v2, :cond_312

    .line 470
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v13, v2, :cond_312

    .line 472
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v13, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 473
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 474
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 475
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_312
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 479
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v16

    if-lez v4, :cond_322

    const/4 v2, 0x1

    goto :goto_323

    :cond_322
    const/4 v2, 0x0

    :goto_323
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_32a

    const/4 v1, 0x1

    goto :goto_32b

    :cond_32a
    const/4 v1, 0x0

    .line 483
    :goto_32b
    iput-boolean v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    if-eqz v2, :cond_d83

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 486
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 487
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    if-ne v11, v2, :cond_347

    const/16 v12, 0x8

    goto :goto_348

    :cond_347
    const/4 v12, 0x4

    .line 488
    :goto_348
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v2, v27

    .line 489
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 490
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 491
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v8, v26

    .line 492
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 493
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v14, v23

    .line 494
    iput-wide v14, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v9, v20

    .line 495
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v21

    .line 496
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v18

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 498
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 499
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 500
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_d83

    :cond_39a
    move v2, v9

    move-object/from16 v28, v14

    move-object v12, v15

    move/from16 v9, v20

    move-wide/from16 v29, v21

    move-wide/from16 v14, v23

    .line 504
    invoke-direct {v0, v13}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v1, :cond_3d2

    .line 505
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v13, v1, :cond_3d2

    .line 507
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v13, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 508
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 509
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 510
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_3d2
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    if-eqz v1, :cond_3da

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->delayCall()Z

    return-void

    :cond_3da
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_3eb

    .line 518
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 519
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_3eb
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 524
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v5, v3, v16

    if-lez v5, :cond_400

    goto :goto_402

    :cond_400
    if-eqz v1, :cond_d83

    :goto_402
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 529
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 530
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x1

    if-ne v11, v3, :cond_41a

    const/16 v12, 0x8

    goto :goto_41b

    :cond_41a
    const/4 v12, 0x4

    .line 531
    :goto_41b
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 532
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 533
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 534
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 535
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 536
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 537
    iput-wide v14, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 538
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v29

    .line 539
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 542
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v1, v2, :cond_48f

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 543
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 544
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 545
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v2, v2

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 546
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v1

    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 547
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 548
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 549
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_d83

    :cond_48f
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 554
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 555
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 557
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 558
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->delayCall()Z

    goto/16 :goto_d83

    .line 566
    :cond_4be
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xcb

    const-string v7, "adc"

    const-wide v8, 0x4097700000000000L    # 1500.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    if-eq v2, v6, :cond_9cd

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xab

    if-ne v2, v6, :cond_4d9

    goto/16 :goto_9cd

    .line 608
    :cond_4d9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xa0

    if-ne v2, v6, :cond_653

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v2, :cond_4f0

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-nez v2, :cond_4f0

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    if-eqz v2, :cond_4f0

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayAndCall()V

    :cond_4f0
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v2, :cond_d83

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v2, :cond_d83

    const-string v2, "weight_kg_l"

    .line 613
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "weight_lb_l"

    .line 614
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_l"

    .line 615
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_l"

    .line 616
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_kg_r"

    .line 618
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_lb_r"

    .line 619
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_r"

    .line 620
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_r"

    .line 621
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 623
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "weight_percent_l"

    .line 624
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-string v7, "weight_percent_r"

    .line 625
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-string v9, "weight_g_l"

    .line 627
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const-string v10, "weight_g_r"

    .line 628
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 630
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 631
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 634
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v16, v12, v14

    if-gez v16, :cond_5a3

    return-void

    :cond_5a3
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 637
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v2

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x0

    .line 638
    iput-boolean v15, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 640
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 641
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 642
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 643
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long v9, v9, v18

    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 646
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 647
    iput-wide v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 648
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 649
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 651
    invoke-static {v2, v3, v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 652
    iget-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v5, v1

    .line 654
    invoke-direct {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->toStLb(D)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x1

    .line 655
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 656
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 658
    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 659
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 660
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 663
    iput-wide v1, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 664
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 665
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 666
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 667
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 668
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 670
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 671
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 672
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 673
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_d83

    .line 676
    :cond_653
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xa4

    if-ne v2, v6, :cond_7bc

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v2, :cond_66a

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-nez v2, :cond_66a

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    if-eqz v2, :cond_66a

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayAndCall()V

    :cond_66a
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v2, :cond_d83

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v2, :cond_d83

    const-string v2, "weight_kg_l"

    .line 682
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "weight_lb_l"

    .line 683
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_l"

    .line 684
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_l"

    .line 685
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_kg_r"

    .line 687
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_lb_r"

    .line 688
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    const-string v4, "weight_st_r"

    .line 689
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    const-string v4, "weight_st_lb_r"

    .line 690
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 692
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "weight_percent_l"

    .line 693
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-string v7, "weight_percent_r"

    .line 694
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-string v9, "weight_g_l"

    .line 696
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    const-string v10, "weight_g_r"

    .line 697
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 699
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 700
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 702
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v12, v2

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x1

    .line 703
    iput-boolean v15, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 705
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 706
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 707
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 708
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v9, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long v9, v9, v18

    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 711
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 712
    iput-wide v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 713
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 714
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 716
    invoke-static {v2, v3, v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 717
    iget-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v5, v1

    .line 719
    invoke-direct {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->toStLb(D)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x1

    .line 720
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 721
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 723
    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 724
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 725
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 728
    iput-wide v1, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 729
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 730
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 731
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 732
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 733
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 735
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 736
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 737
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 739
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_d83

    .line 743
    :cond_7bc
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xaf

    if-ne v2, v6, :cond_8af

    .line 744
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 745
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v3, "hr"

    .line 746
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 747
    invoke-static {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v3

    .line 748
    invoke-direct {v0, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    iget-boolean v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v12, :cond_816

    .line 749
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v3, v12, :cond_816

    .line 751
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v3, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 752
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 753
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 754
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_816
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v2, :cond_d83

    .line 758
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 759
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 760
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 761
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 763
    iput v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 764
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 765
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 767
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 768
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v18

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    cmpl-double v1, v6, v8

    if-lez v1, :cond_86d

    div-double/2addr v6, v10

    :cond_86d
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 776
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide/16 v1, 0x0

    cmpl-double v3, v6, v1

    if-lez v3, :cond_898

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    .line 781
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 783
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 785
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_d83

    :cond_898
    const/4 v1, 0x0

    .line 788
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 790
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_d83

    .line 794
    :cond_8af
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa6

    if-ne v2, v3, :cond_d83

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-eqz v2, :cond_8bc

    return-void

    .line 799
    :cond_8bc
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 800
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v3

    .line 801
    invoke-direct {v0, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    iget-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v6, :cond_8f4

    .line 802
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v3, v6, :cond_8f4

    .line 804
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v3, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 805
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 806
    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 807
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 810
    :cond_8f4
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-string v4, "bfaType"

    .line 811
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "hr"

    .line 812
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 813
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 814
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_922

    .line 815
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v5

    :cond_922
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v4, :cond_d83

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 822
    iput-wide v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 823
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 825
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    cmpl-double v3, v1, v8

    if-ltz v3, :cond_960

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 826
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v3

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    mul-double v3, v3, v10

    const-wide v6, -0x4026666666666666L    # -0.4

    mul-double v3, v3, v6

    add-double/2addr v1, v3

    const-wide v3, 0x3fe3333333333333L    # 0.6

    div-double/2addr v1, v3

    div-double/2addr v1, v10

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 827
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    :cond_960
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 830
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    cmpl-double v3, v1, v8

    if-lez v3, :cond_96f

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 831
    iget-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    div-double/2addr v2, v10

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    :cond_96f
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 833
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v18

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 837
    iput-object v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 839
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 841
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 842
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 843
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 844
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 846
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    .line 847
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 849
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_d83

    :cond_9cd
    :goto_9cd
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-eqz v2, :cond_9d2

    return-void

    :cond_9d2
    const-string v2, "data"

    .line 570
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 571
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 572
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v3

    .line 573
    invoke-direct {v0, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    iget-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v6, :cond_a12

    .line 574
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v3, v6, :cond_a12

    .line 576
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v3, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 577
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 578
    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 579
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 582
    :cond_a12
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_d83

    cmpl-double v3, v1, v8

    if-lez v3, :cond_a27

    div-double/2addr v1, v10

    :cond_a27
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v3, :cond_d83

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 591
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 592
    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 593
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v18

    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 597
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 599
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 601
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 603
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_d83

    .line 340
    :cond_a70
    :goto_a70
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 341
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v6

    .line 342
    invoke-direct {v0, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    move-object/from16 v21, v7

    iget-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v7, :cond_aaa

    .line 343
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v6, v7, :cond_aaa

    .line 345
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v6, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 346
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 347
    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_aaa
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    if-eqz v2, :cond_ab2

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->delayCall()Z

    return-void

    :cond_ab2
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_ac3

    .line 358
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 359
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v4, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 361
    :cond_ac3
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 362
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 363
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 364
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 366
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 368
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 369
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 371
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    const-string v14, "has_temperature"

    .line 372
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    iget-boolean v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    move-wide/from16 p1, v9

    const/4 v9, 0x1

    xor-int/lit8 v10, v15, 0x1

    iput-boolean v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    .line 376
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v9, 0xca

    if-ne v3, v9, :cond_b59

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move v15, v10

    .line 377
    iget-wide v9, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v3, v9, v16

    if-lez v3, :cond_b28

    const/4 v15, 0x1

    .line 381
    :cond_b28
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_b56

    move-object/from16 v3, v21

    .line 382
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move v3, v15

    .line 384
    iget-wide v14, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v14, v9, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v14, v16

    if-lez v1, :cond_b57

    iput-wide v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 387
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_b6c

    :cond_b56
    move v3, v15

    :cond_b57
    move v10, v3

    goto :goto_b6a

    :cond_b59
    move v15, v10

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 392
    iget-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v16

    if-lez v1, :cond_b69

    goto :goto_b6c

    :cond_b69
    move v10, v15

    :goto_b6a
    if-eqz v10, :cond_d83

    :goto_b6c
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 398
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 399
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 400
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 401
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 402
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 403
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 404
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 405
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 406
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, p1

    .line 407
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 410
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->delayCall()Z

    goto/16 :goto_d83

    :cond_bc6
    :goto_bc6
    move-object v2, v7

    iget-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    if-eqz v6, :cond_bf7

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    iget-boolean v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-nez v6, :cond_bf7

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v7, 0x1

    .line 212
    iput-boolean v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-object/from16 v21, v2

    move-object v7, v3

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 213
    iput-wide v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object v3, v7

    div-long v6, v22, v18

    iput-wide v6, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 215
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_bf9

    :cond_bf7
    move-object/from16 v21, v2

    :goto_bf9
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_c0f

    .line 221
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 222
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v6, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_c0f
    const/4 v2, 0x0

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 226
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 227
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 228
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 229
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 231
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 233
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 234
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 237
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-wide/from16 v22, v9

    const-string v9, "has_temperature"

    .line 238
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 240
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 241
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 p1, v2

    invoke-static/range {v24 .. v24}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v2

    .line 242
    invoke-direct {v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->checkWeight(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    move-wide/from16 v24, v11

    iget-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-nez v11, :cond_c96

    .line 243
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v2, v11, :cond_c96

    .line 245
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v11, v11, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v2, v11, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 246
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 247
    invoke-virtual {v2, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 253
    :cond_c96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xce

    if-ne v2, v3, :cond_cdf

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 254
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v16

    if-lez v4, :cond_cae

    const/4 v2, 0x1

    goto :goto_caf

    :cond_cae
    const/4 v2, 0x0

    .line 257
    :goto_caf
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_cdc

    move-object/from16 v3, v21

    .line 258
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 260
    iget-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v9, v11

    if-lez v1, :cond_cdc

    iput-wide v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 263
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_ced

    :cond_cdc
    if-eqz v2, :cond_d83

    goto :goto_ced

    :cond_cdf
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 268
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v3, v1, v16

    if-lez v3, :cond_d83

    :goto_ced
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 274
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 275
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 276
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 277
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 278
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 279
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 280
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v24

    .line 281
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 282
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v22

    .line 283
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v18

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 285
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 286
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_d83

    .line 856
    :cond_d50
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_d83

    .line 859
    :cond_d68
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_d6f

    goto :goto_d83

    .line 864
    :cond_d6f
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_d83

    .line 866
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d83
    :goto_d83
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

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 8

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-eqz v0, :cond_77

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_nLastChangeUnitTime:I

    .line 965
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "update weight unit:%s"

    invoke-static {v0, v4, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 968
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mac"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    .line 969
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "unit"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_protocolHandlerApp:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 971
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "update weight unit:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postAdv([B)V

    :cond_77
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 89
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayDisconnected()V

    .line 90
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public delayCall()Z
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 109
    :cond_6
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 111
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 113
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 114
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 115
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 116
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/16 v2, 0x1388

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;

    invoke-direct {v3, p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 132
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    return v1
.end method

.method public initWorker()V
    .registers 4

    const-string v0, ""

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_strDecryptKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bStartChange:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_nLastChangeUnitTime:I

    .line 71
    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBroadcastScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isFirstConnected:Z

    .line 74
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    .line 76
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerAppBoradcast:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_protocolHandlerApp:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 79
    :cond_31
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->startScan()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 880
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerOver()V

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 5

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isFirstConnected:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isFirstConnected:Z

    .line 887
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 892
    :cond_d
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->startDelayDisconnected()V

    .line 894
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_2d

    .line 896
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_strDecryptKey:Ljava/lang/String;

    .line 897
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 898
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v1, p1, v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "A"

    .line 899
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_bSupportUnitChange:Z

    if-eqz v0, :cond_27

    .line 915
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_27

    .line 918
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 919
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-ne p2, p3, :cond_18

    .line 920
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 924
    :cond_18
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 925
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    .line 926
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 931
    :cond_27
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleKey:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_3b

    .line 932
    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_34

    const-string p2, ""

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_strDecryptKey:Ljava/lang/String;

    goto :goto_36

    :cond_34
    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_strDecryptKey:Ljava/lang/String;

    .line 939
    :goto_36
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    .line 941
    :cond_3b
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 4

    .line 905
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 906
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v0, p2, :cond_e

    .line 908
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    :cond_e
    return-void
.end method

.method public startDelayDisconnected()V
    .registers 3

    .line 168
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayDisconnected()V

    const/16 v0, 0x2710

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimerDisconnected:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 177
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 873
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->bStop:Z

    .line 874
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopScan()V

    .line 875
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerOver()V

    return-void
.end method

.method public stopDelayAndCall()V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    if-eqz v0, :cond_5

    return-void

    .line 141
    :cond_5
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 143
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_temperature:D

    .line 145
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 146
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

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

    .line 150
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v2

    iput v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_isCall:Z

    .line 152
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 153
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    return-void
.end method

.method public stopDelayCall()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 161
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    return-void
.end method

.method public stopDelayDisconnected()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimerDisconnected:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 184
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->_delayTimerDisconnected:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    return-void
.end method
