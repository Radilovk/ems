.class public Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICRulerGemWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0783B03E-8535-B5A0-7140-A304D2495CB8"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0783B03E-8535-B5A0-7140-A304D2495CBA"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0783B03E-8535-B5A0-7140-A304D2495CB7"


# instance fields
.field private _bFirstUpload:Z

.field private _bStabilized:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

.field private _uploadData:Lcn/icomon/icdevicemanager/common/ICStreamBuffer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x0

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_159

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 68
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v7}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "decode data:%s"

    invoke-static {v7, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "type"

    .line 69
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 70
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_14f

    const-string v8, "state"

    .line 71
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "inch"

    .line 72
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    const-string v10, "cm"

    .line 73
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    const-string v11, "mm"

    .line 74
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const-string v11, "unit"

    .line 75
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    const-string v13, "mode"

    .line 76
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    if-nez v5, :cond_82

    .line 79
    new-instance v5, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-direct {v5}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;-><init>()V

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    :cond_82
    if-ne v8, v6, :cond_86

    const/4 v5, 0x1

    goto :goto_87

    :cond_86
    const/4 v5, 0x0

    .line 85
    :goto_87
    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 87
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_92

    .line 88
    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    goto :goto_94

    .line 91
    :cond_92
    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 94
    :goto_94
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    const/4 v13, 0x2

    if-eq v12, v8, :cond_b9

    .line 95
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v8, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 96
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v12, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object v8, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v7, v8, v12}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_b9
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 101
    iget-boolean v7, v7, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    const-wide v11, 0x3f50624de0000000L    # 0.0010000000474974513

    if-eqz v7, :cond_d6

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    iget-wide v14, v14, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    sub-double/2addr v7, v14

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v14, v7, v11

    if-gez v14, :cond_d6

    return-void

    :cond_d6
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 105
    iget-boolean v7, v7, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    if-eq v7, v5, :cond_de

    const/4 v7, 0x1

    goto :goto_df

    :cond_de
    const/4 v7, 0x0

    .line 108
    :goto_df
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-object/from16 v16, v3

    iget-wide v2, v8, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    sub-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v8, v2, v11

    if-lez v8, :cond_f3

    const/4 v7, 0x1

    :cond_f3
    if-eqz v7, :cond_154

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 113
    iput-boolean v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 114
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 115
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iput-wide v8, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 116
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v10

    double-to-int v3, v8

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 117
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 118
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 119
    iput v13, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 120
    iput v6, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 121
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    if-eqz v7, :cond_154

    .line 124
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_154

    :cond_14f
    move-object/from16 v16, v3

    .line 129
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    :cond_154
    :goto_154
    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto/16 :goto_13

    .line 134
    :cond_159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_175

    .line 136
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "decode failed:%s"

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_175
    return-void
.end method

.method private updateBodyPartsType(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;)V
    .registers 6

    .line 154
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update body parts type type:%s"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x2

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0783B03E-8535-B5A0-7140-A304D2495CBA"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0783B03E-8535-B5A0-7140-A304D2495CB7"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V
    .registers 6

    .line 142
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "update weight unit:%s"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v1, 0x3

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0783B03E-8535-B5A0-7140-A304D2495CBA"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0783B03E-8535-B5A0-7140-A304D2495CB7"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 58
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 61
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_bFirstUpload:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_bStabilized:Z

    const/16 v0, 0x40

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_uploadData:Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    .line 49
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerRulerGem:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 50
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 167
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 178
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 181
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 187
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_bStabilized:Z

    .line 191
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->postWorkerOver()V

    .line 192
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    const-string p2, "0783B03E-8535-B5A0-7140-A304D2495CB7"

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    const-string p3, "0783B03E-8535-B5A0-7140-A304D2495CB8"

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_14
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

    const-string p1, "0783B03E-8535-B5A0-7140-A304D2495CB7"

    .line 199
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 4

    .line 252
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 10

    const-string p4, "0783B03E-8535-B5A0-7140-A304D2495CB7"

    .line 214
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9b

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_uploadData:Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    .line 216
    invoke-virtual {p2, p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    .line 218
    new-instance p1, Ljava/lang/String;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_uploadData:Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    .line 219
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p4, "\r"

    .line 220
    invoke-virtual {p1, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 221
    array-length v0, p4

    if-nez v0, :cond_27

    return-void

    .line 226
    :cond_27
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v0, :cond_3a

    aget-object v3, p4, v2

    .line 227
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_37

    .line 228
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3a
    const/16 p4, 0x40

    .line 231
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p4

    .line 232
    :goto_44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0xd

    if-ge v1, v0, :cond_61

    .line 233
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p4, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    .line 234
    invoke-virtual {p4, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_61
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_uploadData:Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    .line 237
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Clear()V

    .line 238
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_88

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->_uploadData:Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    .line 240
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    goto :goto_92

    .line 243
    :cond_88
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p4, p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    .line 244
    invoke-virtual {p4, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 246
    :goto_92
    invoke-virtual {p4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object p1

    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGemWorker;->handlePacketData([BLjava/lang/String;)V

    :cond_9b
    return-void
.end method
