.class public Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICKitchenScaleWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bStabilized:Z

.field private _bWriteUser:Z

.field private _deviceType:Ljava/lang/Integer;

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 69
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1b7

    .line 71
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_19c

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 74
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_184

    .line 77
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "package_type"

    .line 78
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 79
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const-string v2, "decode data:%s"

    invoke-static {v6, v2, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xcc

    const-string v7, "unit"

    if-ne v2, v6, :cond_79

    .line 82
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1b7

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->ICKitchenScaleUnitOz:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->getValue()I

    move-result v3

    if-gt v2, v3, :cond_1b7

    .line 85
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_1b7

    .line 90
    :cond_79
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xca

    if-eq v2, v6, :cond_89

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v8, 0xce

    if-ne v2, v8, :cond_1b7

    :cond_89
    const-string v2, "precision"

    .line 91
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v8, "type"

    .line 92
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v9, "weight"

    .line 93
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "weight_lb"

    .line 94
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v12, "weight_lb_oz"

    .line 95
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v14, "weight_ml"

    .line 96
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v4, "weight_fl_oz"

    .line 97
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-object/from16 p1, v7

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 100
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 101
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v5, :cond_f2

    move-object/from16 v8, p1

    .line 102
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    :cond_f2
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    if-nez v1, :cond_fd

    .line 106
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 110
    :cond_fd
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xca

    if-ne v1, v3, :cond_107

    const/4 v1, 0x1

    goto :goto_108

    :cond_107
    const/4 v1, 0x0

    :goto_108
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 112
    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized()Z

    move-result v3

    if-eq v3, v1, :cond_112

    const/4 v3, 0x1

    goto :goto_113

    :cond_112
    const/4 v3, 0x0

    :goto_113
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v16, v6

    .line 115
    iget-wide v5, v8, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_g:D

    sub-double v5, v9, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v18, v5, v7

    if-lez v18, :cond_129

    const/4 v3, 0x1

    :cond_129
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 118
    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->getUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    move-result-object v5

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    if-eq v5, v6, :cond_137

    const/4 v5, 0x1

    goto :goto_138

    :cond_137
    move v5, v3

    :goto_138
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 121
    iput-boolean v1, v3, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 122
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->value(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    move-result-object v3

    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    const/4 v3, 0x2

    .line 123
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unitType:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 125
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_g:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 126
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 127
    iput-wide v12, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb_oz:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 128
    iput-wide v14, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v3, v16

    .line 129
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->time:J

    if-eqz v5, :cond_1b7

    .line 134
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->clone()Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_1b7

    .line 140
    :cond_184
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_1b7

    .line 143
    :cond_19c
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_1a3

    goto :goto_1b7

    .line 148
    :cond_1a3
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_1b7

    .line 150
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b7
    :goto_1b7
    return-void
.end method

.method private powerOff()V
    .registers 5

    .line 207
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "power off"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device_type"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_deviceType:Ljava/lang/Integer;

    .line 210
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v3, 0x4

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private setCommand(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;)V
    .registers 8

    .line 185
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "update command=%s, value=%d"

    invoke-static {v0, v4, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xb1

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;->ICKitchenScaleNutritionFactTypeSugar:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;

    if-ne p2, v1, :cond_25

    const/16 p2, 0xe0

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_32

    .line 192
    :cond_25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;->ordinal()I

    move-result p2

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 194
    :goto_32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_deviceType:Ljava/lang/Integer;

    .line 195
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    .line 196
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    .line 197
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 201
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private setShelling()V
    .registers 5

    .line 220
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "tare"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device_type"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_deviceType:Ljava/lang/Integer;

    .line 223
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v3, 0x2

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private setWeight(Ljava/lang/Integer;)V
    .registers 6

    .line 170
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update weight=%d"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_deviceType:Ljava/lang/Integer;

    .line 173
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "weight"

    .line 174
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x5

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 178
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V
    .registers 6

    .line 156
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p1, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    .line 157
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update unit=%s"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_deviceType:Ljava/lang/Integer;

    .line 160
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x3

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 165
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 1

    .line 61
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_bStabilized:Z

    const/4 v0, 0x4

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_deviceType:Ljava/lang/Integer;

    .line 55
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerKitchenScale:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 56
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 245
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 248
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->discoverServices()V

    goto :goto_14

    :cond_8
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_bStabilized:Z

    .line 253
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postWorkerOver()V

    .line 254
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_14
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

    .line 266
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 268
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V

    const/4 p1, 0x1

    const-string p3, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_1b
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

    .line 261
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 6

    .line 288
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 289
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_e

    .line 290
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    .line 291
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V

    .line 292
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_49

    .line 294
    :cond_e
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleTareWeight:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_18

    .line 295
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->setShelling()V

    .line 296
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_49

    .line 298
    :cond_18
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScalePowerOff:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_22

    .line 299
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->powerOff()V

    .line 300
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_49

    .line 302
    :cond_22
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleWeight:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_2e

    .line 303
    check-cast p3, Ljava/lang/Integer;

    .line 304
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->setWeight(Ljava/lang/Integer;)V

    .line 305
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_49

    .line 307
    :cond_2e
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleCMD:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_49

    .line 308
    check-cast p3, Ljava/util/Map;

    const-string p2, "type"

    .line 310
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;

    const-string v0, "value"

    .line 311
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 312
    invoke-direct {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->setCommand(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleNutritionFactType;)V

    .line 313
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 316
    :cond_49
    :goto_49
    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 279
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 281
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 282
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
