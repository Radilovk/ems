.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleBroadcastBM15Woker.java"


# instance fields
.field private _bStabilized:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _isCall:Z

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _temperature:D

.field private _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 117
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 120
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_340

    .line 122
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_325

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 125
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_30d

    .line 128
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "package_type"

    .line 129
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 130
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const-string v2, "decode data:%s"

    invoke-static {v6, v2, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "state"

    .line 131
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v6, "weight_kg"

    .line 132
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v8, "weight_lb"

    .line 133
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "weight_st"

    .line 134
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const-string v11, "weight_st_lb"

    .line 135
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string v13, "temp"

    .line 137
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-double v13, v13

    iput-wide v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    const-string v13, "adc"

    .line 138
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const-string v15, "precision"

    .line 139
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    const-string v4, "weight_g"

    .line 141
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v5, "kg_scale_division"

    .line 143
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-wide/from16 v16, v13

    const-string v13, "lb_scale_division"

    .line 144
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-wide v18, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    const-wide/16 v20, 0x3e8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_195

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_195

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    if-eqz v2, :cond_103

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->stopDelayCall()V

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    if-nez v2, :cond_103

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 151
    iput-boolean v14, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    .line 152
    iput-wide v13, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    div-long v13, v13, v20

    iput-wide v13, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 154
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_103
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_119

    .line 160
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 161
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_119
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 164
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v13, v2, v18

    if-lez v13, :cond_340

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 169
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 170
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 171
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 172
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 173
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 174
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 175
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 176
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 177
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 178
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 179
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 180
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    .line 181
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 183
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 184
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_340

    .line 187
    :cond_195
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_226

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v14, :cond_226

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    if-eqz v2, :cond_1aa

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->delayCall()Z

    return-void

    :cond_1aa
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_1bb

    .line 193
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 194
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_1bb
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 199
    iget-wide v13, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v13, v6, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpl-double v3, v13, v18

    if-lez v3, :cond_1d0

    goto :goto_1d2

    :cond_1d0
    if-eqz v2, :cond_340

    :goto_1d2
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 204
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 206
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 207
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 208
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 209
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 210
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 211
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 212
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 213
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    .line 214
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->delayCall()Z

    goto/16 :goto_340

    .line 218
    :cond_226
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_340

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_340

    const-wide/16 v2, 0x0

    cmpl-double v13, v16, v2

    if-lez v13, :cond_2a2

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_292

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->stopDelayCall()V

    .line 223
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 226
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 228
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    .line 229
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v20

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v16

    .line 233
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 235
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 237
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_340

    .line 241
    :cond_292
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imp..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_340

    :cond_2a2
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    if-nez v2, :cond_340

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_2b7

    .line 248
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 249
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_2b7
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 259
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 261
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 262
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 263
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 264
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 265
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 266
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 267
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 268
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    .line 269
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->delayCall()Z

    goto :goto_340

    .line 278
    :cond_30d
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_340

    .line 281
    :cond_325
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_32c

    goto :goto_340

    .line 286
    :cond_32c
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_340

    .line 288
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_340
    :goto_340
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 50
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 53
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public delayCall()Z
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_6
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 64
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    .line 66
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 67
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 68
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/16 v2, 0x1388

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker$1;

    invoke-direct {v3, p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 83
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    return v1
.end method

.method public initWorker()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_bStabilized:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    .line 41
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBroadcastScaleBM15:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 42
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->startScan()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 302
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerOver()V

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 3

    .line 307
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 309
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "A"

    .line 310
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->bStop:Z

    .line 296
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->stopScan()V

    .line 297
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerOver()V

    return-void
.end method

.method public stopDelayAndCall()V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    if-eqz v0, :cond_5

    return-void

    .line 92
    :cond_5
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 94
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_temperature:D

    .line 96
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 97
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 98
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 99
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_isCall:Z

    .line 102
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    return-void
.end method

.method public stopDelayCall()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 110
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM15Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    return-void
.end method
