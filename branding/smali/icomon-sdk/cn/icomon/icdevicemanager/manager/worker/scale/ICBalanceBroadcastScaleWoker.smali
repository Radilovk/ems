.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBalanceBroadcastScaleWoker.java"


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

    .line 28
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 76
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 79
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_423

    .line 81
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_408

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 84
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_3f0

    .line 87
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "package_type"

    .line 88
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 89
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const-string v2, "decode data:%s"

    invoke-static {v6, v2, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xcc

    if-ne v2, v6, :cond_8f

    const-string v2, "type"

    .line 92
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "state"

    .line 93
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 94
    const-class v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_423

    .line 96
    :cond_8f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v8, "has_temperature"

    const/16 v9, 0xce

    const-string v10, "temperature"

    const-string v13, "precision"

    const-string v14, "lb_scale_division"

    const-string v15, "kg_scale_division"

    const-string v6, "weight_g"

    const-string v7, "weight_st_lb"

    const-string v5, "weight_st"

    const-string v4, "weight_lb"

    const-string v11, "weight_kg"

    const-wide/16 v20, 0x3e8

    if-eq v2, v9, :cond_2ca

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v12, 0xae

    if-ne v2, v12, :cond_b7

    goto/16 :goto_2ca

    .line 156
    :cond_b7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v9, 0xa9

    if-ne v2, v9, :cond_180

    .line 157
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_temperature:D

    .line 158
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 159
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 160
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 161
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 162
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 164
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 165
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 167
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_temperature:D

    .line 168
    iput-wide v13, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 169
    iget-wide v12, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v12, v2, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v16, v12, v14

    if-lez v16, :cond_423

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 170
    iput v5, v12, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 171
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 172
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 174
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 176
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 177
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 178
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 179
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 180
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 182
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_423

    .line 185
    :cond_180
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v9, 0xca

    if-eq v2, v9, :cond_1d0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v9, 0xaa

    if-ne v2, v9, :cond_191

    goto :goto_1d0

    .line 232
    :cond_191
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_423

    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_bStabilized:Z

    if-eqz v2, :cond_423

    const-string v2, "x"

    .line 234
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "y"

    .line 235
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 237
    new-instance v3, Lcn/icomon/icdevicemanager/model/data/ICCoordData;

    invoke-direct {v3}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;-><init>()V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v20

    invoke-virtual {v3, v4, v5}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->setTime(J)V

    .line 239
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->setX(I)V

    .line 240
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcn/icomon/icdevicemanager/model/data/ICCoordData;->setY(I)V

    .line 241
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_423

    :cond_1d0
    :goto_1d0
    iget-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_bStabilized:Z

    if-eqz v2, :cond_1d5

    return-void

    :cond_1d5
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_1e6

    .line 190
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 191
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_1e6
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_bStabilized:Z

    .line 194
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 195
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 196
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 197
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-object v9, v4

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 198
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 200
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 201
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 203
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 204
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v15, 0x1

    if-ne v8, v15, :cond_25f

    .line 207
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-wide/from16 v17, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-object/from16 v19, v9

    .line 209
    iget-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v22, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v8, v22

    if-lez v1, :cond_263

    iput-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 211
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_263

    :cond_25f
    move-wide/from16 v17, v4

    move-object/from16 v19, v9

    :cond_263
    :goto_263
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 214
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 215
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 216
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 217
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 218
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 219
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 220
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 221
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 222
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v17

    .line 223
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_temperature:D

    .line 225
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 226
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 229
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto/16 :goto_423

    :cond_2ca
    :goto_2ca
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_bStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v2, :cond_2de

    .line 99
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 100
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v12, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 102
    :cond_2de
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 103
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    move-object/from16 v22, v10

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 105
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 106
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 107
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 109
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 110
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 112
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 113
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0xce

    if-ne v3, v7, :cond_376

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v23, v4

    .line 117
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v11, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v18, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v5, v3, v18

    if-lez v5, :cond_345

    const/4 v3, 0x1

    goto :goto_346

    :cond_345
    const/4 v3, 0x0

    .line 121
    :goto_346
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_373

    move-object/from16 v4, v22

    .line 122
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 124
    iget-wide v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v18, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v7, v18

    if-lez v1, :cond_373

    iput-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 127
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_38b

    :cond_373
    if-eqz v3, :cond_423

    goto :goto_38b

    :cond_376
    move-wide/from16 v23, v4

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 132
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v11, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v7, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v1, v3, v7

    if-lez v1, :cond_423

    :goto_38b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 138
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 139
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 140
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 141
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 142
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 143
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 144
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 145
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 146
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 147
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v23

    .line 149
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v20

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 152
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 153
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_423

    .line 247
    :cond_3f0
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_423

    .line 250
    :cond_408
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_40f

    goto :goto_423

    .line 255
    :cond_40f
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_423

    .line 257
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_423
    :goto_423
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 71
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 5

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scanInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->macAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_isWriting:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_temperature:D

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_writeDatas:Ljava/util/ArrayList;

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_bWriteUser:Z

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_bStabilized:Z

    .line 58
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBalanceScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 59
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->startScan()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 272
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerOver()V

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 5

    .line 277
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_20

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 280
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 281
    invoke-virtual {p1, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "BB"

    .line 282
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->bStop:Z

    .line 266
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->stopScan()V

    .line 267
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICBalanceBroadcastScaleWoker;->postWorkerOver()V

    return-void
.end method
