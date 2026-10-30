.class public Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICKitchenScaleGeneralWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bStabilized:Z

.field private _bWriteUser:Z

.field private _deviceType:Ljava/lang/Integer;

.field private _isAlreadySendUser:Z

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _timer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

.field private deviceInfoDict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private deviceInfoExt:Lcn/icomon/icdevicemanager/model/device/ICKitchenDeviceInfoExt;


# direct methods
.method static bridge synthetic -$$Nest$fput_isAlreadySendUser(Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_isAlreadySendUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserInfo(Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;)V
    .registers 1

    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setUserInfo()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 82
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1a

    .line 85
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3b1

    .line 87
    :cond_1a
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_396

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 90
    iget-object v3, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->deviceInfoDict:Ljava/util/Map;

    invoke-virtual {v2, v3, v5, v6}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_37e

    .line 93
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "package_type"

    .line 94
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 95
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v4

    const-string v2, "decode data:%s"

    invoke-static {v6, v2, v7}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "funInfo"

    const/16 v6, 0xa0

    if-ne v3, v6, :cond_ac

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->deviceInfoDict:Ljava/util/Map;

    .line 100
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    if-eqz v7, :cond_77

    const-string v8, "batteryType"

    .line 104
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_78

    :cond_77
    const/4 v7, 0x0

    :goto_78
    if-eq v7, v5, :cond_7d

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a5

    :cond_7d
    const-string v7, "battery"

    .line 109
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 110
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0xb

    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v7, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v7, v9}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 117
    :cond_a5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setAppReply(Ljava/lang/Integer;I)V

    :cond_ac
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->deviceInfoDict:Ljava/util/Map;

    if-nez v6, :cond_b8

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_isAlreadySendUser:Z

    if-eqz v1, :cond_b7

    .line 124
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setUserInfo()V

    :cond_b7
    return-void

    :cond_b8
    const/16 v6, 0xa1

    const-string v7, "state"

    if-ne v3, v6, :cond_e6

    .line 130
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "cmd"

    .line 131
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xd0

    if-ne v3, v4, :cond_d9

    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_3b1

    .line 137
    :cond_d9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xd2

    if-ne v1, v3, :cond_3b1

    .line 138
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_3b1

    :cond_e6
    const/16 v6, 0xa6

    if-ne v3, v6, :cond_371

    const-string v3, "weight_mg"

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v6, "weight_g"

    .line 145
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v6, "weight_ml"

    .line 146
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v6, "weight_oz"

    .line 147
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v6, "weight_lboz_lb"

    .line 148
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v14, "weight_lboz_oz"

    .line 149
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v4, "weight_ml_milk"

    .line 150
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move/from16 p1, v6

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-string v4, "weight_floz_us"

    .line 151
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move-wide/from16 v17, v5

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v6, "weight_floz_uk"

    .line 152
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-wide/from16 v19, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v6, "weight_floz_milk_us"

    .line 153
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-wide/from16 v21, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v6, "weight_floz_milk_uk"

    .line 154
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-wide/from16 v23, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-string v6, "precision_g"

    .line 156
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-wide/from16 v25, v4

    const-string v4, "precision_ml"

    .line 157
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "precision_lboz"

    .line 158
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-wide/from16 v27, v10

    const-string v10, "precision_oz"

    .line 159
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v11, "precision_ml_milk"

    .line 160
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-wide/from16 v29, v14

    const-string v14, "precision_floz_us"

    .line 161
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "precision_floz_uk"

    .line 162
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-wide/from16 v31, v12

    const-string v12, "precision_floz_milk_us"

    .line 163
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "precision_floz_milk_uk"

    .line 164
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-wide/from16 v33, v8

    const-string v8, "unit"

    .line 167
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 168
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v9, "flag"

    .line 169
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move/from16 v35, v13

    const-string v13, "isTare"

    .line 170
    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v13, v13, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    invoke-virtual {v13}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->getValue()I

    move-result v13

    move/from16 v36, v12

    if-eq v8, v13, :cond_23e

    .line 174
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move/from16 v37, v15

    invoke-static {v8}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->value(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    move-result-object v15

    iput-object v15, v12, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    .line 175
    sget-object v12, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_240

    :cond_23e
    move/from16 v37, v15

    :goto_240
    if-nez v3, :cond_246

    const/4 v8, 0x1

    if-ne v7, v8, :cond_246

    const/4 v7, 0x0

    :cond_246
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    if-nez v8, :cond_251

    .line 187
    new-instance v8, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    invoke-direct {v8}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;-><init>()V

    iput-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    :cond_251
    const/4 v8, 0x1

    if-ne v7, v8, :cond_256

    const/4 v7, 0x1

    goto :goto_257

    :cond_256
    const/4 v7, 0x0

    :goto_257
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 193
    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized()Z

    move-result v8

    if-eq v8, v7, :cond_261

    const/4 v8, 0x1

    goto :goto_262

    :cond_261
    const/4 v8, 0x0

    :goto_262
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 196
    iget v12, v12, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_mg:I

    sub-int v12, v3, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v15, 0x1

    if-lt v12, v15, :cond_270

    const/4 v8, 0x1

    :cond_270
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 199
    invoke-virtual {v12}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->getUnit()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    move-result-object v12

    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v15, v15, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->kitchenUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    if-eq v12, v15, :cond_27d

    const/4 v8, 0x1

    :cond_27d
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->deviceInfoDict:Ljava/util/Map;

    .line 203
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v12, "unitType"

    .line 204
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 206
    iput-boolean v7, v12, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isStabilized:Z

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 207
    invoke-static {v13}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->value(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    move-result-object v12

    iput-object v12, v7, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 208
    iput v2, v7, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->unitType:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2a8

    const/4 v1, 0x1

    goto :goto_2a9

    :cond_2a8
    const/4 v1, 0x0

    .line 210
    :goto_2a9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isTare:Ljava/lang/Boolean;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    if-ne v9, v7, :cond_2b6

    const/16 v16, 0x1

    goto :goto_2b8

    :cond_2b6
    const/16 v16, 0x0

    .line 211
    :goto_2b8
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->isNegative:Ljava/lang/Boolean;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 213
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 214
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 215
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 216
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_lboz:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 217
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_oz:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 218
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_ml_milk:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 219
    iput v14, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_us:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move/from16 v2, v37

    .line 220
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_uk:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move/from16 v2, v36

    .line 221
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_us:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move/from16 v2, v35

    .line 222
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision_floz_milk_uk:I

    packed-switch v13, :pswitch_data_3b2

    goto :goto_318

    :pswitch_2f0
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 247
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_2f5
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 244
    iput v14, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_2fa
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 241
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_2ff
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    const/4 v2, 0x0

    .line 238
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_305
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 235
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_30a
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 232
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_30f
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 229
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    goto :goto_318

    :pswitch_314
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 226
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->precision:I

    :goto_318
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 250
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_mg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v33

    .line 251
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_g:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v31

    .line 252
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_oz:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move/from16 v2, p1

    .line 253
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v29

    .line 254
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_lb_oz:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v27

    .line 255
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v17

    .line 256
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_ml_milk:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v19

    .line 257
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v21

    .line 258
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_uk:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v23

    .line 259
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-wide/from16 v2, v25

    .line 260
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->value_fl_oz_milk_uk:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->time:J

    if-eqz v8, :cond_3b1

    .line 265
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;->clone()Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_3b1

    :cond_371
    const/16 v1, 0xa8

    if-ne v3, v1, :cond_3b1

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setAppReply(Ljava/lang/Integer;I)V

    goto :goto_3b1

    :cond_37e
    const/4 v2, 0x1

    .line 274
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const-string v1, "decode failed:%s"

    invoke-static {v3, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3b1

    .line 277
    :cond_396
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_39d

    goto :goto_3b1

    .line 282
    :cond_39d
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_3b1

    .line 284
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b1
    :goto_3b1
    return-void

    :pswitch_data_3b2
    .packed-switch 0x0
        :pswitch_314
        :pswitch_30f
        :pswitch_30a
        :pswitch_305
        :pswitch_2ff
        :pswitch_2fa
        :pswitch_2f5
        :pswitch_2f0
    .end packed-switch
.end method

.method private setAppReply(Ljava/lang/Integer;I)V
    .registers 8

    .line 320
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "set app reply=%d, status=%d"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_deviceType:Ljava/lang/Integer;

    .line 323
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 324
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "status"

    .line 325
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xd1

    .line 327
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 328
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private setSetting(Ljava/lang/Integer;I)V
    .registers 8

    .line 307
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "set setting=%d, param=%d"

    invoke-static {v0, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "device_type"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_deviceType:Ljava/lang/Integer;

    .line 310
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 311
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 312
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xd2

    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 315
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private setUserInfo()V
    .registers 7

    .line 290
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "set user info"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 292
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    .line 294
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "device_type"

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_deviceType:Ljava/lang/Integer;

    .line 295
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "time"

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utc_offset"

    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xd0

    .line 300
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 73
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 77
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_isAlreadySendUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_bStabilized:Z

    const/16 v0, 0x40

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_deviceType:Ljava/lang/Integer;

    .line 65
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerKitchenScaleGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 66
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 333
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 344
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 347
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->discoverServices()V

    goto :goto_14

    :cond_8
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_bStabilized:Z

    .line 352
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerOver()V

    .line 353
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    .line 365
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    const-string p3, "0000FFB2-0000-1000-8000-00805F9B34FB"

    .line 368
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;

    invoke-direct {p2, p0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;)V

    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 380
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 382
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_28
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

    .line 360
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 7

    .line 399
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 400
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_17

    .line 401
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;

    const/4 p1, 0x2

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;->getValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setSetting(Ljava/lang/Integer;I)V

    .line 403
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_5d

    .line 405
    :cond_17
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleTareWeight:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_26

    .line 406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setSetting(Ljava/lang/Integer;I)V

    .line 407
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_5d

    .line 409
    :cond_26
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScalePowerOff:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_35

    const/4 p1, 0x1

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setSetting(Ljava/lang/Integer;I)V

    .line 411
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_5d

    .line 413
    :cond_35
    sget-object v1, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleWeight:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v1, :cond_4a

    .line 414
    check-cast p3, Ljava/lang/Integer;

    const/4 p1, 0x3

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setSetting(Ljava/lang/Integer;I)V

    .line 416
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_5d

    .line 418
    :cond_4a
    sget-object p3, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetKitchenScaleFactory:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, p3, :cond_5a

    const/16 p1, 0xff

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->setSetting(Ljava/lang/Integer;I)V

    .line 421
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_5d

    .line 424
    :cond_5a
    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_5d
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 390
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 392
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 393
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_13
    return-void
.end method
