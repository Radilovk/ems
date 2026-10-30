.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleBroadcastBM02Woker.java"


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
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_weightCenterData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private getDeviceType()Ljava/lang/Integer;
    .registers 6

    .line 793
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 794
    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$2;->$SwitchMap$cn$icomon$icdevicemanager$model$other$ICConstant$ICDeviceType:[I

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

    .line 828
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 817
    :cond_1b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_28

    .line 818
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 821
    :cond_28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 807
    :cond_2d
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_3a

    .line 808
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 811
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 797
    :cond_3f
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_4c

    .line 798
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 801
    :cond_4c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 164
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 167
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d0e

    .line 169
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_cf2

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 172
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_cd0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_type"

    .line 176
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 177
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    const-string v10, "decode data:%s"

    invoke-static {v8, v10, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xcc

    if-ne v8, v9, :cond_66

    move-object/from16 v20, v2

    :cond_62
    :goto_62
    move-object/from16 v22, v3

    goto/16 :goto_cc7

    .line 182
    :cond_66
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xce

    const-string v10, "weight_lb"

    const-string v11, "weight_kg"

    const-string v14, "lb_scale_division"

    const-string v15, "kg_scale_division"

    const-string v6, "precision"

    const-wide/16 v16, 0x3e8

    if-eq v8, v9, :cond_b5a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xae

    if-ne v8, v9, :cond_84

    goto/16 :goto_b5a

    .line 257
    :cond_84
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xa9

    if-ne v8, v9, :cond_15a

    iget-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-eqz v4, :cond_91

    return-void

    :cond_91
    const-string v4, "temperature"

    .line 262
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 263
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 264
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v4, "weight_st"

    .line 265
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const-string v11, "weight_st_lb"

    .line 266
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    move-object/from16 v20, v2

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v11, "weight_g"

    .line 268
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 270
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 271
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 272
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iput-wide v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 274
    iput-wide v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 275
    iget-wide v6, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v6, v12, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v18, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v8, v6, v18

    if-lez v8, :cond_62

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 276
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 277
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 278
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 279
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 280
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 281
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 282
    iput-wide v12, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 283
    iput-wide v9, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 284
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 285
    iput-wide v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 286
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v16

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 288
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_62

    :cond_15a
    move-object/from16 v20, v2

    .line 291
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_a26

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xaa

    if-ne v1, v2, :cond_16e

    goto/16 :goto_a26

    .line 353
    :cond_16e
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v8, "weight_g_r"

    const-string v9, "weight_g_l"

    const-string v10, "weight_percent_r"

    const-string v11, "weight_percent_l"

    const-string v12, "weight_st_lb_r"

    const-string v13, "weight_st_r"

    const-string v4, "weight_lb_r"

    const-string v2, "weight_kg_r"

    move-object/from16 v22, v3

    const-string v3, "weight_st_lb_l"

    move-object/from16 v23, v7

    const-string v7, "weight_st_l"

    move-object/from16 v24, v14

    const-string v14, "weight_lb_l"

    move-object/from16 v25, v15

    const-string v15, "weight_kg_l"

    move-object/from16 v19, v8

    const/16 v8, 0xa0

    if-ne v1, v8, :cond_2fb

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_1a7

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-nez v1, :cond_1a7

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    if-eqz v1, :cond_1a7

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayAndCall()V

    :cond_1a7
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v1, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_cc7

    .line 359
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 360
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 361
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 362
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 364
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 365
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 366
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 367
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 369
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 370
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 371
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 373
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v9, v19

    .line 374
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v10, v25

    .line 376
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v11, v24

    .line 377
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 380
    iget-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v13, v18

    if-gez v1, :cond_24b

    return-void

    :cond_24b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 383
    iget-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x0

    .line 384
    iput-boolean v15, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 386
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 387
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 388
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 389
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v8, v8, v16

    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 392
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 393
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 394
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 395
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 397
    invoke-static {v11, v12, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 398
    iget-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v5, v3

    .line 400
    invoke-direct {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x1

    .line 401
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 402
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 404
    invoke-direct {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 405
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 406
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 409
    iput-wide v3, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 410
    iput-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 411
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 412
    iput v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 413
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 414
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 416
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 417
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 418
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 419
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_cc7

    :cond_2fb
    move-object/from16 v1, v19

    .line 422
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v1, 0xa4

    if-ne v8, v1, :cond_457

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_314

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-nez v1, :cond_314

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    if-eqz v1, :cond_314

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayAndCall()V

    :cond_314
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v1, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_cc7

    .line 428
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 429
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 430
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 431
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 433
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 434
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 435
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 436
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 438
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 439
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 440
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 442
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v9, v19

    .line 443
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v10, v25

    .line 445
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v11, v24

    .line 446
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 448
    iget-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x1

    .line 449
    iput-boolean v15, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 451
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 452
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 453
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 454
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v8, v8, v16

    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 457
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 458
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 459
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 460
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 462
    invoke-static {v11, v12, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 463
    iget-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v5, v3

    .line 465
    invoke-direct {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x1

    .line 466
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 467
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 469
    invoke-direct {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 470
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 471
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 474
    iput-wide v3, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 475
    iput-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 476
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 477
    iput v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 478
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 479
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 481
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 482
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 483
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 485
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_cc7

    :cond_457
    move-object/from16 v1, v19

    .line 489
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v1, 0xc0

    if-ne v8, v1, :cond_5c5

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_470

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-nez v1, :cond_470

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    if-eqz v1, :cond_470

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayAndCall()V

    :cond_470
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v1, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_cc7

    .line 495
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 496
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 497
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 498
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 500
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 501
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 502
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 503
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 505
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 506
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 507
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 509
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v9, v19

    .line 510
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v10, v25

    .line 512
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v11, v24

    .line 513
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 516
    iget-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    sub-double v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v18, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, v13, v18

    if-gez v1, :cond_515

    goto/16 :goto_cc7

    :cond_515
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v13, 0x0

    .line 520
    iput-boolean v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 521
    iget-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 522
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 523
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 524
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 525
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v8, v8, v16

    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 528
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 529
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 530
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 531
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 533
    invoke-static {v11, v12, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 534
    iget-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v5, v3

    .line 536
    invoke-direct {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x1

    .line 537
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 538
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 540
    invoke-direct {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 541
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 542
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 545
    iput-wide v3, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 546
    iput-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 547
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 548
    iput v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 549
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 550
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 552
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 553
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 554
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 555
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_cc7

    :cond_5c5
    move-object/from16 v1, v19

    .line 558
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v1, 0xc4

    if-ne v8, v1, :cond_721

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_5de

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-nez v1, :cond_5de

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    if-eqz v1, :cond_5de

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayAndCall()V

    :cond_5de
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    if-eqz v1, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_cc7

    .line 564
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 565
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    .line 566
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 567
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 569
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 570
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 571
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 572
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 574
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 575
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 576
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 577
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v9, v19

    .line 578
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v12, v25

    .line 580
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v13, v24

    .line 581
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 583
    iget-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double/2addr v13, v11

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v15, 0x1

    .line 584
    iput-boolean v15, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 586
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 587
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 588
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 589
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long v8, v8, v16

    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 592
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->leftPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 593
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->rightPercent:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 594
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 595
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_kg:D

    .line 597
    invoke-static {v11, v12, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 598
    iget-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    sub-double/2addr v5, v3

    .line 600
    invoke-direct {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x1

    .line 601
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    .line 602
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 604
    invoke-direct {v0, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->toStLb(D)Ljava/util/List;

    move-result-object v11

    .line 605
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 606
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 609
    iput-wide v3, v10, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 610
    iput-wide v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_lb:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 611
    iput v7, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 612
    iput v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 613
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->left_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 614
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->right_weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 616
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 617
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    .line 618
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->precision_st_lb:I

    .line 619
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_cc7

    .line 623
    :cond_721
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_73f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xab

    if-ne v1, v2, :cond_732

    goto :goto_73f

    .line 771
    :cond_732
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_cc7

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_is_app_calc:Z

    goto/16 :goto_cc7

    :cond_73f
    :goto_73f
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-eqz v1, :cond_745

    goto/16 :goto_cc7

    :cond_745
    const-string v1, "type"

    .line 627
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "data"

    .line 628
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 629
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xfd

    if-eq v3, v4, :cond_925

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xa001

    if-ne v3, v4, :cond_768

    goto/16 :goto_925

    .line 689
    :cond_768
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_8c7

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_is_app_calc:Z

    if-nez v1, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_cc7

    const-string v1, "type"

    .line 691
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v3, "state"

    .line 692
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v5, 0x1

    .line 694
    iput-boolean v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 695
    iput-wide v6, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 697
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_79b

    goto/16 :goto_893

    .line 700
    :cond_79b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_7b3

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "bmi"

    .line 701
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    goto/16 :goto_893

    .line 703
    :cond_7b3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7cc

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "fatRate"

    .line 704
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    goto/16 :goto_893

    .line 706
    :cond_7cc
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7e5

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "subcutaneousFat"

    .line 707
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->subcutaneousFatPercent:D

    goto/16 :goto_893

    .line 709
    :cond_7e5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7ff

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "visceralFat"

    .line 710
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v4, v2

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->visceralFat:D

    goto/16 :goto_893

    .line 712
    :cond_7ff
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_818

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "muscle"

    .line 713
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->musclePercent:D

    goto/16 :goto_893

    .line 715
    :cond_818
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_830

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "bmr"

    .line 716
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmr:I

    goto :goto_893

    .line 718
    :cond_830
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_848

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "boneMass"

    .line 719
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->boneMass:D

    goto :goto_893

    .line 721
    :cond_848
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_861

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "moisture"

    .line 722
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->moisturePercent:D

    goto :goto_893

    .line 724
    :cond_861
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_87b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "physicalAge"

    .line 725
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v4, v2

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->physicalAge:D

    goto :goto_893

    .line 727
    :cond_87b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_893

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-string v4, "proteinRate"

    .line 728
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->proteinPercent:D

    .line 731
    :cond_893
    :goto_893
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_8a4

    .line 734
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_8a4
    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v16

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 740
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 742
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_cc7

    .line 746
    :cond_8c7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xfb

    if-ne v1, v2, :cond_cc7

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-eqz v1, :cond_8d5

    goto/16 :goto_cc7

    :cond_8d5
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_is_app_calc:Z

    if-nez v1, :cond_cc7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_8df

    goto/16 :goto_cc7

    :cond_8df
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_8e9

    .line 754
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 757
    :cond_8e9
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 758
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 760
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 761
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v16

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 765
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 768
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_cc7

    :cond_925
    :goto_925
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_cc7

    const-string v1, "state"

    .line 631
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 632
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9cc

    const-string v1, "adc"

    .line 633
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 634
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 635
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 636
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 637
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v4, v4

    iget-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_is_app_calc:Z

    if-eqz v5, :cond_9c6

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 639
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v3

    iput-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_9b6

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayCall()V

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 647
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 648
    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v16

    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 652
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 653
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    .line 656
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 658
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_cc7

    .line 661
    :cond_9b6
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imp..."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_cc7

    :cond_9c6
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 665
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    goto/16 :goto_cc7

    .line 668
    :cond_9cc
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_cc7

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-eqz v1, :cond_9d9

    goto/16 :goto_cc7

    .line 672
    :cond_9d9
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayCall()V

    .line 673
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 674
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v2, v2

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 676
    iput-boolean v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 677
    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v4, v4, v16

    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 681
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v1

    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 682
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 685
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    goto/16 :goto_cc7

    :cond_a26
    :goto_a26
    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object v13, v14

    move-object v12, v15

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    if-eqz v1, :cond_a34

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->delayCall()Z

    return-void

    :cond_a34
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_a45

    .line 298
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 299
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 301
    :cond_a45
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 302
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v7, "weight_st"

    .line 303
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "weight_st_lb"

    .line 304
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "weight_g"

    .line 306
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 308
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 309
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 310
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v13, "has_temperature"

    .line 311
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    iget-boolean v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    iput-boolean v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    .line 314
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v16, v14

    const/16 v14, 0xca

    if-ne v15, v14, :cond_ae6

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 315
    iget-wide v14, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v14, v1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v18, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v17, v14, v18

    if-lez v17, :cond_ab4

    const/16 v16, 0x1

    .line 319
    :cond_ab4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_ae3

    const-string v13, "temperature"

    .line 320
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v24, v8

    .line 322
    iget-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v8, v13, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v18, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v5, v8, v18

    if-lez v5, :cond_afc

    iput-wide v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 325
    iput-wide v13, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_b00

    :cond_ae3
    move-wide/from16 v24, v8

    goto :goto_afc

    :cond_ae6
    move-wide/from16 v24, v8

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 330
    iget-wide v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v8, v1, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v13, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v5, v8, v13

    if-lez v5, :cond_afc

    goto :goto_b00

    :cond_afc
    :goto_afc
    move/from16 v14, v16

    if-eqz v14, :cond_cc7

    :goto_b00
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 336
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 337
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 338
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 339
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 340
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 341
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 342
    iput-wide v1, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 343
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 344
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v24

    .line 345
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 349
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->delayCall()Z

    goto/16 :goto_cc7

    :cond_b5a
    :goto_b5a
    move-object/from16 v20, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v7

    move-object v13, v14

    move-object v12, v15

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    if-eqz v1, :cond_b93

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayCall()V

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-nez v1, :cond_b8f

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_b8f

    const/4 v2, 0x1

    .line 188
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 189
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v16

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 191
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_b8f
    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_b94

    :cond_b93
    const/4 v1, 0x0

    :goto_b94
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_bae

    .line 201
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 202
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 204
    :cond_bae
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 205
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v7, "weight_st"

    .line 207
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "weight_st_lb"

    .line 208
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 210
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v10, "weight_g"

    .line 212
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 214
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 215
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    const-string v13, "has_temperature"

    .line 217
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 220
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0xce

    if-ne v14, v15, :cond_c4e

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 221
    iget-wide v14, v14, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v14, v1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v18, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v21, v14, v18

    if-lez v21, :cond_c15

    const/4 v14, 0x1

    goto :goto_c16

    :cond_c15
    const/4 v14, 0x0

    .line 225
    :goto_c16
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c47

    const-string v13, "temperature"

    .line 226
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    move-wide/from16 v23, v8

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v25, v3

    .line 228
    iget-wide v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    sub-double v3, v8, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v18, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v5, v3, v18

    if-lez v5, :cond_c4b

    iput-wide v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 231
    iput-wide v8, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    goto :goto_c65

    :cond_c47
    move-wide/from16 v25, v3

    move-wide/from16 v23, v8

    :cond_c4b
    if-eqz v14, :cond_cc7

    goto :goto_c65

    :cond_c4e
    move-wide/from16 v25, v3

    move-wide/from16 v23, v8

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 236
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v8, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpl-double v5, v3, v8

    if-lez v5, :cond_cc7

    :goto_c65
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 242
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 243
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 244
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 245
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 246
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 247
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 248
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v25

    .line 249
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 250
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v23

    .line 251
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long v2, v2, v16

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 253
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 254
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_cc7
    :goto_cc7
    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    const/4 v4, 0x0

    goto/16 :goto_30

    :cond_cd0
    move-object/from16 v20, v2

    .line 775
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d0e

    .line 777
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_d0e

    :cond_cf2
    move-object v3, v1

    .line 780
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_cfa

    goto :goto_d0e

    .line 785
    :cond_cfa
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_d0e

    .line 787
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d0e
    :goto_d0e
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

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 86
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 89
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public delayCall()Z
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_6
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 109
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 111
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 112
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 113
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    const/16 v2, 0x1388

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;

    invoke-direct {v3, p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 129
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    return v1
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_is_get_point:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bWriteWithResp:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isWriting:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_writeDatas:Ljava/util/ArrayList;

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_bStabilized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_is_app_calc:Z

    .line 76
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 77
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->startScan()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 840
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerOver()V

    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 6

    .line 845
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_1b

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 848
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 849
    invoke-virtual {p1, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "BM02"

    .line 850
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 833
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->bStop:Z

    .line 834
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopScan()V

    .line 835
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerOver()V

    return-void
.end method

.method public stopDelayAndCall()V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    if-eqz v0, :cond_5

    return-void

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->stopDelayCall()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 140
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-wide v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_temperature:D

    .line 142
    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 143
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 144
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    double-to-float v3, v3

    .line 145
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->getBMI(FI)D

    move-result-wide v2

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bmi:D

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_isCall:Z

    .line 148
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 149
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    return-void
.end method

.method public stopDelayCall()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 157
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_a
    return-void
.end method
