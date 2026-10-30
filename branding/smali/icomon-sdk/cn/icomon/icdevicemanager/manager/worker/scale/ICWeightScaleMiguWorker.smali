.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleMiguWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFF1-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFF2-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFF0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _isCall:Z

.field private _isWriting:Z

.field _last_weight:I

.field _timer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

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

    .line 25
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    return-void
.end method

.method private addWriteDataNoEventId([B)V
    .registers 4

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {p1, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 63
    iput-object v0, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 65
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    if-eqz p1, :cond_4d

    .line 83
    iget-object v0, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    const/4 p1, 0x0

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 94
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFF2-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    :goto_4d
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

    .line 50
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 52
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 54
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    .line 143
    invoke-static/range {p1 .. p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 145
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v3

    const/16 v4, 0xdb

    if-eq v3, v4, :cond_13

    return-void

    .line 149
    :cond_13
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    .line 150
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v3

    const/high16 v12, 0x42c80000    # 100.0f

    const-wide/high16 v15, 0x402c000000000000L    # 14.0

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_2d3

    .line 156
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    .line 157
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v7

    .line 158
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v13

    .line 159
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v1

    int-to-float v14, v3

    div-float/2addr v14, v12

    .line 163
    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v12, v12, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "weight="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",adc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",isStable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v12, v8, v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    const-wide v17, 0x3fa999999999999aL    # 0.05

    if-ne v1, v6, :cond_12a

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_73

    .line 167
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    :cond_73
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    if-eqz v1, :cond_8b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 171
    iget-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    float-to-double v6, v14

    sub-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v1, v6, v17

    if-lez v1, :cond_8b

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 173
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    :cond_8b
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    if-nez v1, :cond_129

    float-to-double v6, v14

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 178
    iget-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v1, v10, v8

    if-gez v1, :cond_a4

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_a4

    goto/16 :goto_129

    :cond_a4
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 182
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    .line 183
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 187
    iput-object v1, v8, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 188
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 189
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 190
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 191
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 192
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 193
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    mul-int/lit8 v3, v3, 0xa

    .line 194
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 195
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 196
    invoke-static {v6, v7, v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v5

    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 197
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    div-double/2addr v3, v15

    double-to-int v3, v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 198
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    mul-int/lit8 v5, v5, 0xe

    int-to-double v5, v5

    sub-double/2addr v3, v5

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 199
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-double v2, v2

    .line 201
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-long v2, v13

    .line 202
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    .line 204
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 206
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v1

    const/4 v2, 0x1

    .line 207
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    const/16 v2, 0x2710

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;

    invoke-direct {v3, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 219
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto/16 :goto_38a

    :cond_129
    :goto_129
    return-void

    :cond_12a
    const/4 v6, 0x0

    if-ne v1, v4, :cond_23c

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v1, :cond_138

    .line 223
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    :cond_138
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    if-eqz v1, :cond_150

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 226
    iget-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    float-to-double v4, v14

    sub-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v1, v4, v17

    if-lez v1, :cond_150

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 228
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    :cond_150
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 231
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    float-to-double v10, v14

    sub-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v1, v4, v17

    if-lez v1, :cond_164

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 233
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    :cond_164
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    if-nez v1, :cond_23b

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 235
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    sub-double v4, v10, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_17e

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v1, :cond_17e

    goto/16 :goto_23b

    :cond_17e
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_187

    .line 239
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_187
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 243
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    .line 244
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 248
    iput-object v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 249
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x4

    .line 250
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 251
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x2

    .line 252
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 253
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 254
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    mul-int/lit8 v3, v3, 0xa

    .line 255
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 256
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 257
    invoke-static {v10, v11, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v3

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 258
    iget-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    div-double/2addr v2, v15

    double-to-int v2, v2

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 259
    iget-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v4, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    mul-int/lit8 v4, v4, 0xe

    int-to-double v4, v4

    sub-double/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-double v2, v7

    .line 261
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-long v4, v13

    .line 262
    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 264
    iput-boolean v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    if-eqz v7, :cond_22e

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 267
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 268
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v3, 0x4097700000000000L    # 1500.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_21f

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 269
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v3

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v3, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v5

    const-wide v7, -0x4026666666666666L    # -0.4

    mul-double v3, v3, v7

    add-double/2addr v1, v3

    const-wide v3, 0x3fe3333333333333L    # 0.6

    div-double/2addr v1, v3

    div-double/2addr v1, v5

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 270
    iput-wide v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    .line 272
    :cond_21f
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 276
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 278
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 280
    :cond_22e
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_38a

    :cond_23b
    :goto_23b
    return-void

    :cond_23c
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v1, :cond_245

    .line 285
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iput-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_247

    :cond_245
    const-wide/16 v4, 0x0

    .line 289
    :goto_247
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_257

    .line 292
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_257
    float-to-double v10, v14

    sub-double v4, v10, v4

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v1, v4, v8

    if-gez v1, :cond_263

    return-void

    :cond_263
    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 301
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    .line 302
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 306
    iput-object v1, v4, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 307
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x4

    .line 308
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 309
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x2

    .line 310
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x1

    .line 311
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 312
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    mul-int/lit8 v3, v3, 0xa

    .line 313
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 314
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 315
    invoke-static {v10, v11, v4}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v3

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 316
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    div-double/2addr v3, v15

    double-to-int v3, v3

    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 317
    iget-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget v5, v5, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    mul-int/lit8 v5, v5, 0xe

    int-to-double v5, v5

    sub-double/2addr v3, v5

    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 319
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-double v3, v7

    .line 320
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-long v3, v13

    .line 321
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 323
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    .line 324
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_38a

    :cond_2d3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_301

    .line 328
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v1

    if-ne v1, v4, :cond_2de

    const/4 v2, 0x1

    goto :goto_2e1

    :cond_2de
    const/4 v3, 0x4

    if-ne v1, v3, :cond_300

    .line 340
    :goto_2e1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "type"

    const/4 v4, 0x1

    .line 341
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "state"

    .line 342
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_38a

    :cond_300
    return-void

    :cond_301
    const/4 v4, 0x2

    if-ne v3, v4, :cond_38a

    .line 346
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    .line 347
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v4

    .line 348
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v5

    .line 349
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    int-to-float v1, v3

    div-float/2addr v1, v12

    .line 353
    new-instance v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    invoke-direct {v6}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;-><init>()V

    .line 355
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v7

    .line 359
    iput-object v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 360
    iput v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    const/4 v2, 0x4

    .line 361
    iput v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    .line 362
    iput v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    const/4 v2, 0x2

    .line 363
    iput v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    const/4 v2, 0x1

    .line 364
    iput v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    .line 365
    iput v2, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    mul-int/lit8 v3, v3, 0xa

    .line 366
    iput v3, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    float-to-double v7, v1

    .line 367
    iput-wide v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    .line 368
    invoke-static {v7, v8, v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->kg2lb(DI)D

    move-result-wide v1

    iput-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    .line 369
    iget-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    div-double/2addr v1, v15

    double-to-int v1, v1

    iput v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    .line 370
    iget-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    iget v3, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    mul-int/lit8 v3, v3, 0xe

    int-to-double v9, v3

    sub-double/2addr v1, v9

    iput-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    .line 372
    iput-wide v7, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    int-to-double v1, v4

    .line 373
    iput-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 374
    iput v5, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    .line 376
    iput-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 378
    iget-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v3, 0x4097700000000000L    # 1500.0

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_37f

    .line 379
    iget-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    sub-double/2addr v1, v3

    iget-wide v3, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double v3, v3, v7

    const-wide v9, -0x4026666666666666L    # -0.4

    mul-double v3, v3, v9

    add-double/2addr v1, v3

    const-wide v3, 0x3fe3333333333333L    # 0.6

    div-double/2addr v1, v3

    div-double/2addr v1, v7

    .line 380
    iput-wide v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 382
    :cond_37f
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getDefaultBFAType()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v1

    .line 386
    iput-object v1, v6, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    .line 388
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_38a
    :goto_38a
    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 112
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    .line 113
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 122
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_76

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isWriting:Z

    const-wide/16 v1, 0x64

    .line 133
    :try_start_59
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_61
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeIndex:Ljava/lang/Integer;

    .line 137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF2-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFF0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_76
    return-void
.end method


# virtual methods
.method configWifi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p0

    .line 449
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "config Wifi"

    invoke-static {v1, v4, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    const/16 v4, -0x43

    const/16 v5, 0x20

    .line 453
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    const/16 v8, 0x10

    if-nez v1, :cond_3f

    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v1

    .line 454
    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 455
    invoke-virtual {v1, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 456
    invoke-virtual {v1, v7}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 457
    invoke-virtual {v1, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 459
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->xorData([B)[B

    move-result-object v1

    .line 461
    invoke-direct {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDataNoEventId([B)V

    goto/16 :goto_ad

    .line 464
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 466
    array-length v9, v1

    div-int/2addr v9, v8

    .line 468
    array-length v10, v1

    rem-int/2addr v10, v8

    if-eqz v10, :cond_4d

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v10, 0x0

    .line 472
    :goto_4e
    invoke-static {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v11

    .line 473
    invoke-virtual {v11, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/4 v12, 0x0

    :goto_56
    if-ge v12, v9, :cond_ad

    add-int/lit8 v13, v9, -0x1

    if-ne v12, v13, :cond_61

    if-eqz v10, :cond_61

    .line 478
    array-length v13, v1

    rem-int/2addr v13, v8

    goto :goto_63

    :cond_61
    const/16 v13, 0x10

    :goto_63
    new-array v14, v8, [B

    .line 481
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 485
    array-length v15, v1

    if-le v15, v8, :cond_75

    if-nez v12, :cond_73

    const/4 v15, 0x1

    goto :goto_76

    :cond_73
    const/4 v15, 0x2

    goto :goto_76

    :cond_75
    const/4 v15, 0x0

    .line 497
    :goto_76
    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v6

    .line 498
    invoke-virtual {v6, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 499
    invoke-virtual {v6, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    add-int/lit8 v7, v13, 0x2

    int-to-byte v7, v7

    .line 500
    invoke-virtual {v6, v7}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 501
    invoke-virtual {v6, v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 502
    invoke-virtual {v6, v15}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/4 v7, 0x0

    :goto_8d
    if-ge v7, v13, :cond_97

    .line 504
    aget-byte v15, v14, v7

    invoke-virtual {v6, v15}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_8d

    :cond_97
    if-ne v13, v8, :cond_9e

    .line 509
    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v6

    goto :goto_a6

    .line 512
    :cond_9e
    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->xorData([B)[B

    move-result-object v6

    .line 517
    :goto_a6
    invoke-direct {v0, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDataNoEventId([B)V

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_56

    .line 524
    :cond_ad
    :goto_ad
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 526
    array-length v3, v1

    div-int/2addr v3, v8

    .line 528
    array-length v6, v1

    rem-int/2addr v6, v8

    if-eqz v6, :cond_bb

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    goto :goto_bc

    :cond_bb
    const/4 v6, 0x0

    .line 532
    :goto_bc
    invoke-static {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v7

    .line 533
    invoke-virtual {v7, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/4 v9, 0x0

    :goto_c4
    if-ge v9, v3, :cond_11b

    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_cf

    if-eqz v6, :cond_cf

    .line 538
    array-length v10, v1

    rem-int/2addr v10, v8

    goto :goto_d1

    :cond_cf
    const/16 v10, 0x10

    :goto_d1
    new-array v11, v8, [B

    .line 541
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 543
    array-length v12, v1

    if-le v12, v8, :cond_e3

    if-nez v9, :cond_e1

    const/4 v12, 0x1

    goto :goto_e4

    :cond_e1
    const/4 v12, 0x2

    goto :goto_e4

    :cond_e3
    const/4 v12, 0x0

    .line 555
    :goto_e4
    invoke-static {v5}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v13

    .line 556
    invoke-virtual {v13, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 558
    invoke-virtual {v13, v4}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    add-int/lit8 v14, v10, 0x2

    int-to-byte v14, v14

    .line 559
    invoke-virtual {v13, v14}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/4 v14, 0x5

    .line 560
    invoke-virtual {v13, v14}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 561
    invoke-virtual {v13, v12}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/4 v12, 0x0

    :goto_fc
    if-ge v12, v10, :cond_106

    .line 564
    aget-byte v14, v11, v12

    invoke-virtual {v13, v14}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    add-int/lit8 v12, v12, 0x1

    goto :goto_fc

    :cond_106
    if-ne v10, v8, :cond_10d

    .line 568
    invoke-virtual {v13}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v10

    goto :goto_115

    .line 571
    :cond_10d
    invoke-virtual {v13}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->xorData([B)[B

    move-result-object v10

    .line 576
    :goto_115
    invoke-direct {v0, v10}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDataNoEventId([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_c4

    :cond_11b
    return-void
.end method

.method public initWorker()V
    .registers 2

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_writeDatas:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_last_weight:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    .line 45
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 581
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 592
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 595
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->discoverServices()V

    goto :goto_1a

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 600
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 603
    :cond_12
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerOver()V

    .line 604
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1a
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

    const-string p2, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 616
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    const-string p3, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 619
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x64

    .line 621
    :try_start_10
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 625
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 629
    :goto_18
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->updateUserInfo()V

    .line 630
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->updateUserInfo()V

    .line 631
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->updateTime()V

    .line 632
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->updateTime()V

    .line 633
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_2a
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

    .line 611
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 647
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "0000FFF0-0000-1000-8000-00805F9B34FB"

    .line 639
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 641
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->handlePacketData([BLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 652
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    .line 653
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->writeNext()V

    return-void
.end method

.method public stop()V
    .registers 4

    const-string v0, "0000FFF0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    return-void
.end method

.method updateTime()V
    .registers 6

    const/16 v0, 0x20

    .line 432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/16 v1, -0x43

    .line 435
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/4 v1, 0x5

    .line 436
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    .line 439
    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteInt(I)I

    .line 441
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->xorData([B)[B

    move-result-object v0

    .line 442
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDataNoEventId([B)V

    return-void
.end method

.method updateUserInfo()V
    .registers 7

    const/16 v0, 0x20

    .line 412
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 413
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/16 v2, -0x43

    .line 415
    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    const/16 v2, 0x9

    .line 416
    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 417
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 418
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 419
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 420
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ICSexTypeFemal:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    if-ne v2, v3, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 421
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteShort(S)I

    .line 422
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteShort(S)I

    .line 423
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 425
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->xorData([B)[B

    move-result-object v0

    .line 426
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->addWriteDataNoEventId([B)V

    return-void
.end method

.method xorData([B)[B
    .registers 7

    .line 394
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 398
    :goto_a
    array-length v4, p1

    if-ge v2, v4, :cond_15

    .line 399
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v4

    xor-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    const/16 v2, 0x20

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v2

    .line 403
    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 405
    invoke-virtual {v2, p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteData([B)I

    int-to-byte p1, v3

    .line 406
    invoke-virtual {v2, p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->WriteByte(B)I

    .line 407
    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer()[B

    move-result-object p1

    return-object p1
.end method
