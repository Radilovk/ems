.class public Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICRulerWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FEB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FEB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FEB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bFirstUpload:Z

.field private _bStabilized:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 16

    .line 70
    iget-object p2, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_16

    .line 73
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object p1

    const-string p2, "packet data error"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1a6

    .line 75
    :cond_16
    iget-object p2, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne p2, v0, :cond_18c

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 78
    iget-object v0, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_176

    .line 81
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "package_type"

    .line 82
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    const-string p2, "decode data:%s"

    invoke-static {v3, p2, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1a6

    const-string p2, "state"

    .line 87
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const-string v0, "distance"

    .line 88
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-string v0, "type"

    .line 89
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    if-nez v0, :cond_7e

    .line 91
    new-instance v0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 95
    :cond_7e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_86

    const/4 p2, 0x1

    goto :goto_87

    :cond_86
    const/4 p2, 0x0

    .line 97
    :goto_87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8e

    return-void

    .line 103
    :cond_8e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    if-ne v0, v5, :cond_9e

    const-wide v5, 0x3fd93264d71a2da9L    # 0.3937008

    mul-double v5, v5, v3

    goto :goto_a8

    :cond_9e
    const-wide v5, 0x400451eb851eb852L    # 2.54

    mul-double v5, v5, v3

    move-wide v11, v3

    move-wide v3, v5

    move-wide v5, v11

    :goto_a8
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_bFirstUpload:Z

    const-wide v7, 0x3f50624de0000000L    # 0.0010000000474974513

    if-eqz v0, :cond_c4

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_bFirstUpload:Z

    cmpg-double v0, v3, v7

    if-gez v0, :cond_c4

    .line 114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    invoke-virtual {v9}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->getValue()I

    move-result v9

    if-ne v0, v9, :cond_c4

    return-void

    :cond_c4
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 119
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized()Z

    move-result v0

    if-eq v0, p2, :cond_cd

    const/4 v1, 0x1

    :cond_cd
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 122
    iget-wide v9, v0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    sub-double v9, v3, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v0, v9, v7

    if-lez v0, :cond_dc

    const/4 v1, 0x1

    :cond_dc
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 125
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->getPartsType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    move-result-object v0

    if-nez v0, :cond_f3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->setPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V

    :goto_f1
    const/4 v1, 0x1

    goto :goto_104

    :cond_f3
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 129
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->getPartsType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->getValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v0, v7, :cond_104

    goto :goto_f1

    :cond_104
    :goto_104
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 133
    invoke-virtual {v0, p2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->setStabilized(Z)V

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 134
    invoke-static {v5, v6, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyFloatPrecision(DI)D

    move-result-wide v5

    iput-wide v5, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 135
    invoke-static {v3, v4, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyFloatPrecision(DI)D

    move-result-wide v5

    iput-wide v5, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 136
    iget-wide v5, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    double-to-int v0, v5

    div-int/lit8 v0, v0, 0xc

    iput v0, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 137
    iget-wide v5, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    iget v0, v0, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    mul-int/lit8 v0, v0, 0xc

    int-to-double v7, v0

    sub-double/2addr v5, v7

    iput-wide v5, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    double-to-int v0, v3

    .line 139
    iput v0, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 140
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iput-object v0, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 141
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iput-object v0, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 142
    iput v2, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 143
    iput v2, p2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->setPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->setTime(J)V

    if-eqz v1, :cond_1a6

    .line 147
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_1a6

    .line 153
    :cond_176
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "decode failed:%s"

    invoke-static {p2, p1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a6

    .line 156
    :cond_18c
    iget-object p2, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne p2, v0, :cond_193

    goto :goto_1a6

    .line 161
    :cond_193
    iget-object p1, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object p2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne p1, p2, :cond_1a6

    .line 163
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object p1

    const-string p2, "verify data error"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a6
    :goto_1a6
    return-void
.end method

.method private updateBodyPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update body parts type type:%s"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x2

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 188
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FEB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FEB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V
    .registers 6

    .line 169
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update weight unit:%s"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x3

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FEB1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FEB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 62
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 65
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_bFirstUpload:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_bStabilized:Z

    .line 53
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerRuler:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 54
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 194
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 205
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 208
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 214
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_bStabilized:Z

    .line 218
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->postWorkerOver()V

    .line 219
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    const-string p2, "0000FEB0-0000-1000-8000-00805F9B34FB"

    .line 231
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    const-string p3, "0000FEB2-0000-1000-8000-00805F9B34FB"

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V

    .line 236
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V

    .line 237
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateBodyPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V

    .line 238
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateBodyPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V

    .line 240
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_2c
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

    const-string p1, "0000FEB0-0000-1000-8000-00805F9B34FB"

    .line 226
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    .line 264
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_19

    .line 265
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 266
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 267
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V

    .line 268
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_29

    .line 270
    :cond_19
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerBodyPartsType:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_29

    .line 271
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 272
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateBodyPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V

    .line 273
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    .line 275
    :cond_29
    :goto_29
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 4

    .line 255
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 256
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    if-eq v0, p2, :cond_e

    .line 257
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V

    :cond_e
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FEB0-0000-1000-8000-00805F9B34FB"

    .line 246
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 248
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 249
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
