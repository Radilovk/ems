.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleShoubaWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFF1-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_NOTIFY_UUID2:Ljava/lang/String; = "00002A9C-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFF2-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFF0-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID2:Ljava/lang/String; = "0000181B-0000-1000-8000-00805F9B34FB"


# instance fields
.field private _bStabilized:Z

.field private _bWriteUser:Z

.field private _bWriteWithResp:Z

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field private _historyData:[B

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
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 129
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 141
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFF2-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 131
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "write data is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addWriteDatasNoEventId(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 121
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 123
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private fixWeight(DI)D
    .registers 11

    int-to-double v0, p3

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 224
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double p1, p1, v4

    double-to-int p3, p1

    int-to-double v4, p3

    sub-double/2addr p1, v4

    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    cmpl-double v6, p1, v4

    if-lez v6, :cond_17

    add-int/lit8 p3, p3, 0x1

    :cond_17
    int-to-double p1, p3

    .line 231
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    .line 237
    invoke-static/range {p1 .. p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v1

    const/4 v2, 0x1

    .line 238
    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 239
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    const/16 v4, 0x603

    if-ne v3, v4, :cond_169

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/4 v4, 0x7

    .line 242
    invoke-virtual {v1, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    .line 243
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    .line 244
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v8

    int-to-double v9, v8

    div-double/2addr v9, v6

    const/4 v11, 0x2

    .line 246
    invoke-virtual {v1, v11}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Skip(I)V

    .line 247
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x18

    shr-int/lit8 v1, v1, 0x3

    const-wide/high16 v11, 0x4030000000000000L    # 16.0

    if-ne v1, v2, :cond_5a

    const-wide v13, 0x3fdd07a86aedb4a4L    # 0.4535924

    mul-double v13, v13, v9

    mul-double v13, v13, v6

    double-to-int v1, v13

    int-to-double v13, v1

    div-double/2addr v13, v6

    div-double v6, v9, v11

    double-to-int v1, v6

    mul-int/lit8 v6, v1, 0x10

    int-to-double v6, v6

    sub-double v6, v9, v6

    const-wide v11, 0x408f400000000000L    # 1000.0

    mul-double v11, v11, v13

    double-to-int v8, v11

    move-wide/from16 v19, v9

    move-wide v9, v13

    move-wide/from16 v13, v19

    goto :goto_78

    :cond_5a
    if-nez v1, :cond_73

    const-wide v13, 0x4001a3112c782e0fL    # 2.2046226

    mul-double v13, v13, v9

    mul-double v13, v13, v6

    double-to-int v1, v13

    int-to-double v13, v1

    div-double/2addr v13, v6

    div-double v6, v13, v11

    double-to-int v1, v6

    mul-int/lit8 v6, v1, 0x10

    int-to-double v6, v6

    sub-double v6, v13, v6

    mul-int/lit8 v8, v8, 0x64

    goto :goto_78

    :cond_73
    const-wide/16 v6, 0x0

    move-wide v13, v6

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_78
    const-string v11, "0000FFF1-0000-1000-8000-00805F9B34FB"

    move-object/from16 v12, p2

    .line 274
    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const-wide/16 v15, 0x3e8

    const/4 v12, 0x4

    if-eqz v11, :cond_fe

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v4, :cond_90

    .line 277
    iget-boolean v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v4, :cond_90

    const/4 v4, 0x0

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    :cond_90
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v4, :cond_a1

    .line 282
    new-instance v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 283
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v5, v5, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v5, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_a1
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 286
    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v4, v9, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v11, v4, v17

    if-lez v11, :cond_b6

    const/4 v4, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v4, 0x0

    :goto_b7
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 289
    iput-boolean v3, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    if-eqz v4, :cond_169

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 291
    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 292
    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 293
    iput v12, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 294
    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 295
    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 296
    iput v2, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 297
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 298
    iput-wide v9, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 299
    iput-wide v13, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 300
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 301
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v15

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 303
    iput-boolean v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 304
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_169

    :cond_fe
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v11, :cond_107

    .line 309
    iget-boolean v11, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v11, :cond_107

    return-void

    :cond_107
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v11, :cond_118

    .line 313
    new-instance v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v11}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 314
    iget-object v15, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v15, v15, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v15, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :cond_118
    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 318
    iput-boolean v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 319
    iput-boolean v3, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 320
    iput-wide v4, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 321
    iput v2, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 322
    iput v2, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 323
    iput v12, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 324
    iput v2, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 325
    iput v2, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 326
    iput v2, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 327
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 328
    iput-wide v9, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 329
    iput-wide v13, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 330
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 331
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 334
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 336
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_169
    :goto_169
    return-void
.end method

.method private toG(I)I
    .registers 8

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_src:I

    rsub-int/lit8 p1, p1, 0x3

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 185
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private toKg(Ljava/lang/Integer;)D
    .registers 10

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_src:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_kg:I

    int-to-double v2, p1

    .line 191
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    rem-double v6, v0, v2

    mul-double v6, v6, v4

    double-to-int p1, v6

    const/4 v6, 0x5

    if-lt p1, v6, :cond_23

    add-double/2addr v0, v2

    :cond_23
    double-to-int p1, v0

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_kg:I

    int-to-double v2, p1

    .line 196
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private toLb(Ljava/lang/Integer;)D
    .registers 8

    .line 204
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x561e

    div-int/lit16 p1, p1, 0x2710

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_src:I

    int-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 205
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_lb:I

    int-to-double v2, p1

    .line 206
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int p1, v0

    int-to-double v0, p1

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_point_lb:I

    int-to-double v2, p1

    .line 208
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private toStLb(D)Ljava/util/List;
    .registers 6

    const-wide/high16 v0, 0x402c000000000000L    # 14.0

    div-double v0, p1, v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0xe

    int-to-double v1, v1

    sub-double/2addr p1, v1

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 7

    .line 345
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "update weight unit:%s"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v0

    .line 347
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1f

    const/4 v0, 0x3

    goto :goto_26

    .line 350
    :cond_1f
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    if-ne p1, v3, :cond_26

    const/4 v0, 0x2

    :cond_26
    :goto_26
    const/16 p1, 0x8

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p1

    .line 354
    invoke-virtual {p1, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    int-to-byte v0, v0

    .line 355
    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 357
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object p1

    const-string v0, "0000FFF2-0000-1000-8000-00805F9B34FB"

    .line 358
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method private writeNext()V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 158
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_3b

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, 0x0

    :cond_3b
    if-eqz v0, :cond_54

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF2-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFF0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_54
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 111
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 114
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_is_get_point:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_bWriteWithResp:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_isWriting:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_temperature:D

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_bStabilized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_is_app_calc:Z

    .line 104
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 363
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 374
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 377
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 383
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_bStabilized:Z

    .line 387
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->postWorkerOver()V

    .line 388
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 7
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

    const-string p3, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 401
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    .line 404
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 405
    iget-object v0, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFF2-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    .line 406
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWrite:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v0

    and-int/2addr p2, v0

    if-lez p2, :cond_d

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->_bWriteWithResp:Z

    goto :goto_d

    :cond_35
    const-string p1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 411
    invoke-virtual {p0, v1, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_3b
    const-string p2, "0000181B-0000-1000-8000-00805F9B34FB"

    .line 413
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const-string p1, "00002A9C-0000-1000-8000-00805F9B34FB"

    .line 414
    invoke-virtual {p0, v1, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_52

    .line 419
    :cond_4f
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->cancelConnect()V

    :goto_52
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

    const-string p1, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 395
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 5

    .line 453
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_10

    .line 454
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 455
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 456
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    goto :goto_17

    .line 460
    :cond_10
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_17
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    const-string p2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 425
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "0000181B-0000-1000-8000-00805F9B34FB"

    .line 426
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->discoverCharacteristics(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 4

    .line 445
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v0, p2, :cond_b

    .line 447
    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->updateUnit(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    :cond_b
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    .line 435
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->handlePacketData([BLjava/lang/String;)V

    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 440
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleShoubaWorker;->writeNext()V

    return-void
.end method
