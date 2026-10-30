.class public Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICRulerGeneralWorker.java"


# static fields
.field private static final CHARACTERISTICS_FIRMWAREVER_UUID:Ljava/lang/String; = "00002A26-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_HARDWAREVER_UUID:Ljava/lang/String; = "00002A27-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_MAC_UUID:Ljava/lang/String; = "00002A23-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_MANFNAME_UUID:Ljava/lang/String; = "00002A29-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_MODEL_UUID:Ljava/lang/String; = "00002A24-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FEB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SN_UUID:Ljava/lang/String; = "00002A25-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SOFTWAREVER_UUID:Ljava/lang/String; = "00002A28-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FEB1-0000-1000-8000-00805F9B34FB"

.field private static final DEVINFO_SERVICE_UUID:Ljava/lang/String; = "0000180A-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FEB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bFirstUpload:Z

.field private _bStabilized:Z

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

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 113
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 116
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_342

    .line 118
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_327

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 121
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_30f

    .line 124
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "decode data:%s"

    invoke-static {v1, v6, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "package_type"

    .line 127
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "unit"

    .line 128
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 132
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 133
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v5, :cond_68

    .line 134
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitCM:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    goto :goto_70

    .line 136
    :cond_68
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v9, :cond_70

    .line 137
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->ICRulerUnitInch:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 141
    :cond_70
    :goto_70
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    const-string v8, "type"

    if-eq v7, v6, :cond_97

    .line 142
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v7, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 144
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x2

    .line 145
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v6}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_98

    :cond_97
    const/4 v3, 0x0

    .line 152
    :goto_98
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v10, "length_ft_in"

    const-string v11, "length_ft"

    const-string v12, "point_cm"

    const-string v13, "point_in"

    const-string v14, "length_in"

    const-string v15, "length_cm"

    const-string v4, "length_src"

    const/16 v9, 0xa0

    if-eq v6, v9, :cond_192

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0xa1

    if-ne v6, v9, :cond_b8

    goto/16 :goto_192

    .line 225
    :cond_b8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_342

    const-string v2, "datas"

    .line 226
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_342

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 228
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 229
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 230
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    .line 231
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 p2, v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v18, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 233
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v19, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v20, v13

    const-string v13, "time"

    .line 234
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 235
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v21, v11

    move-object/from16 v11, v17

    .line 236
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    move-object/from16 v17, v14

    move-object/from16 v22, v15

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 239
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    move-object/from16 v23, v2

    const/4 v2, 0x1

    if-ne v8, v2, :cond_14c

    .line 241
    sget-object v8, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeGirth:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    goto :goto_14e

    :cond_14c
    move-object/from16 v8, v23

    .line 243
    :goto_14e
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;-><init>()V

    .line 244
    iput-object v7, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    move-object/from16 v23, v7

    const/4 v7, 0x1

    .line 246
    iput-boolean v7, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    .line 247
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iput-object v7, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    .line 248
    iput v12, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    .line 249
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    .line 250
    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    .line 251
    iput-wide v9, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    .line 252
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    .line 253
    iput-wide v14, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    .line 255
    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    .line 256
    iput-object v8, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    int-to-long v5, v13

    .line 257
    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    .line 258
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 v1, p2

    move-object v10, v11

    move-object/from16 v14, v17

    move-object/from16 v12, v18

    move-object/from16 v8, v19

    move-object/from16 v13, v20

    move-object/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v7, v23

    const/4 v5, 0x1

    goto/16 :goto_cc

    :cond_192
    :goto_192
    move-object/from16 v23, v7

    move-object/from16 v19, v8

    move-object/from16 v21, v11

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    move-object/from16 v17, v14

    move-object/from16 v22, v15

    move-object v11, v10

    .line 153
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v5, v22

    .line 154
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    move-object/from16 v7, v17

    .line 155
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-object/from16 v9, v20

    .line 156
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v9, v18

    .line 157
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/Integer;

    move-object/from16 v13, v19

    .line 158
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    move-object/from16 v14, v21

    .line 159
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 160
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move-object v11, v14

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 162
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeLength:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 163
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v17, v1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_1fa

    .line 164
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->ICRulerMeasureModeGirth:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    goto :goto_1fc

    :cond_1fa
    move-object/from16 v1, v17

    .line 167
    :goto_1fc
    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v9, v9, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v9, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    if-eq v1, v9, :cond_225

    .line 169
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object v1, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-wide/from16 v17, v14

    const/4 v9, 0x3

    .line 171
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "mode"

    .line 172
    invoke-virtual {v3, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v9, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v9, v3}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_227

    :cond_225
    move-wide/from16 v17, v14

    .line 179
    :goto_227
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/16 v13, 0x3e8

    const/16 v9, 0xa0

    if-ne v2, v9, :cond_2a2

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    if-nez v2, :cond_23c

    .line 181
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    :cond_23c
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 183
    iget v2, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v2, v9, :cond_247

    const/4 v3, 0x1

    :cond_247
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-object/from16 v9, v23

    .line 186
    iput-object v9, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    const/4 v9, 0x0

    .line 187
    iput-boolean v9, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 188
    sget-object v9, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iput-object v9, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 189
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 190
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 191
    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 192
    iput-wide v7, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 193
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-wide/from16 v5, v17

    .line 194
    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 195
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 196
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v13

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    if-eqz v3, :cond_342

    .line 199
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_342

    :cond_2a2
    move-wide/from16 v2, v17

    move-object/from16 v9, v23

    .line 203
    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v15, v15, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/4 v13, 0x3

    if-ne v15, v13, :cond_2b4

    .line 204
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;-><init>()V

    iput-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    :cond_2b4
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    if-eqz v13, :cond_342

    .line 207
    iput-object v9, v13, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    const/4 v13, 0x1

    .line 208
    iput-boolean v13, v9, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->isStabilized:Z

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 209
    sget-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;->ICRulerPartsTypeShoulder:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iput-object v13, v9, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->partsType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerBodyPartsType;

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 210
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v9, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_cm:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 211
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v9, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->precision_in:I

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 212
    iput-wide v5, v9, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_cm:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 213
    iput-wide v7, v5, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_in:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 214
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 215
    iput-wide v2, v5, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance_ft_in:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 216
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->distance:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 217
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->time:J

    .line 219
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICRulerData;->clone()Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_rulerData:Lcn/icomon/icdevicemanager/model/data/ICRulerData;

    goto :goto_342

    .line 264
    :cond_30f
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    goto :goto_342

    .line 267
    :cond_327
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_32e

    goto :goto_342

    .line 272
    :cond_32e
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_342

    .line 274
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_342
    :goto_342
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 105
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 108
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_bFirstUpload:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_bStabilized:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    .line 88
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 89
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    .line 90
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerRulerGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 91
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_38

    .line 92
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->startScan()V

    goto :goto_3b

    .line 96
    :cond_38
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->connect()V

    :goto_3b
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 299
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 310
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 313
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 319
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_bStabilized:Z

    .line 323
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerOver()V

    .line 324
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 6
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

    const-string p3, "0000180A-0000-1000-8000-00805F9B34FB"

    .line 343
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 344
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 345
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    .line 347
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_63

    :cond_34
    const-string p2, "0000FEB0-0000-1000-8000-00805F9B34FB"

    .line 350
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_63

    const-string p1, "0000FEB2-0000-1000-8000-00805F9B34FB"

    .line 353
    invoke-virtual {p0, v1, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x12c

    .line 355
    :try_start_43
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 359
    :goto_4b
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->updateSetting()V

    .line 360
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    if-eqz p1, :cond_63

    .line 362
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDeviceInfo:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_63
    :goto_63
    return-void
.end method

.method public onDiscoverServices(Ljava/util/List;Ljava/lang/Exception;)V
    .registers 4
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

    const-string p2, "0000180A-0000-1000-8000-00805F9B34FB"

    .line 331
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1c

    :cond_13
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    const-string p1, "0000FEB0-0000-1000-8000-00805F9B34FB"

    .line 336
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_1f

    .line 332
    :cond_1c
    :goto_1c
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->discoverCharacteristics(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public onScanDevice(Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;)V
    .registers 3

    .line 461
    iget-object v0, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 462
    iget-object p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->manfactureData:[B

    invoke-virtual {v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    const-string v0, "A"

    .line 463
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    .line 425
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_15

    .line 426
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 427
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    .line 428
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->updateSetting()V

    .line 429
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_33

    .line 431
    :cond_15
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRulerMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_2c

    .line 432
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 433
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    .line 434
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->updateSetting()V

    .line 435
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_33

    .line 438
    :cond_2c
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_33
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 5

    .line 413
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 414
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    iget-object v1, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    if-eq v0, v1, :cond_d

    .line 415
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->updateSetting()V

    goto :goto_16

    .line 417
    :cond_d
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    if-eq p1, p2, :cond_16

    .line 418
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->updateSetting()V

    :cond_16
    :goto_16
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string p4, "0000180A-0000-1000-8000-00805F9B34FB"

    .line 369
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0000FEB0-0000-1000-8000-00805F9B34FB"

    if-eqz v0, :cond_c7

    .line 370
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A23-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 371
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->mac:Ljava/lang/String;

    goto/16 :goto_a3

    .line 373
    :cond_1e
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A24-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_33

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 374
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->model:Ljava/lang/String;

    goto/16 :goto_a3

    .line 376
    :cond_33
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A25-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_54

    if-eqz p1, :cond_4d

    .line 377
    array-length p2, p1

    if-nez p2, :cond_43

    goto :goto_4d

    :cond_43
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 381
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    goto :goto_a3

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    const-string p2, ""

    .line 378
    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->sn:Ljava/lang/String;

    goto :goto_a3

    .line 384
    :cond_54
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A26-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_68

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 385
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->firmwareVer:Ljava/lang/String;

    goto :goto_a3

    .line 387
    :cond_68
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A27-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7c

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 388
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->hardwareVer:Ljava/lang/String;

    goto :goto_a3

    .line 390
    :cond_7c
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A28-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_90

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 391
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->softwareVer:Ljava/lang/String;

    goto :goto_a3

    .line 393
    :cond_90
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p3, "00002A29-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a3

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    .line 394
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->manufactureName:Ljava/lang/String;

    :cond_a3
    :goto_a3
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 396
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_b3

    .line 397
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d8

    :cond_b3
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    .line 400
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p4, p1}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_d8

    .line 404
    :cond_c7
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d8

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 406
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 407
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_d8
    :goto_d8
    return-void
.end method

.method public stop()V
    .registers 3

    .line 449
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->bStop:Z

    .line 451
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->stopScan()V

    .line 452
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->postWorkerOver()V

    goto :goto_15

    .line 455
    :cond_12
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_15
    return-void
.end method

.method public updateSetting()V
    .registers 7

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 281
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 283
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "unit"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "time"

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utc_offset"

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "update setting :%s"

    invoke-static {v0, v4, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FEB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FEB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ruler/ICRulerGeneralWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method
