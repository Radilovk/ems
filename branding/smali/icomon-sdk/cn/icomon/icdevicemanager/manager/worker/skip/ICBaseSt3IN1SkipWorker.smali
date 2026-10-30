.class public Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBaseSt3IN1SkipWorker.java"


# static fields
.field private static final CHARACTERISTICS_FIRMWAREVER_UUID:Ljava/lang/String; = "00002a26-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_HARDWAREVER_UUID:Ljava/lang/String; = "00002a27-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MAC_UUID:Ljava/lang/String; = "00002a23-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MANFNAME_UUID:Ljava/lang/String; = "00002a29-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MODEL_UUID:Ljava/lang/String; = "00002a24-0000-1000-8000-00805f9b34fb"

.field private static CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFF4-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SOFTWAREVER_UUID:Ljava/lang/String; = "00002a28-0000-1000-8000-00805f9b34fb"

.field private static CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFF5-0000-1000-8000-00805F9B34FB"

.field private static final DEVINFO_SERVICE_UUID:Ljava/lang/String; = "0000180a-0000-1000-8000-00805f9b34fb"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFC0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _bStabilized:Z

.field _battery:I

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

.field private _eventMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _isBaseSt:Z

.field _isCall:Z

.field _isConnected:Z

.field private _isWriting:Z

.field private _lastTime:I

.field private _lastUploadTime:I

.field private _nodeId:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _read_userinfo_ing:Z

.field _skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

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

.field private isShouba:Z

.field private workHandler:Landroid/os/Handler;

.field public workHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_lastTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_lastUploadTime:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->isShouba:Z

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 187
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 194
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 197
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 188
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 178
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 180
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 182
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private calcCalories(JD)D
    .registers 10

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_22

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_d

    goto :goto_22

    :cond_d
    double-to-long p3, p3

    const-wide/16 v0, 0xc

    mul-long p3, p3, v0

    mul-long p1, p1, p3

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    const-wide/16 v0, 0xe10

    .line 237
    div-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-double p1, p1

    .line 238
    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_22
    :goto_22
    return-wide v2
.end method

.method private calcFatBurned(JD)D
    .registers 10

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1b

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_d

    goto :goto_1b

    :cond_d
    long-to-double p1, p1

    div-double/2addr p3, p1

    const-wide p1, 0x40ac200000000000L    # 3600.0

    mul-double p3, p3, p1

    .line 247
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_1b
    :goto_1b
    return-wide v2
.end method

.method private getDeviceType()I
    .registers 3

    .line 811
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 812
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x60

    return v0

    .line 817
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xe0

    return v0
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 212
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 213
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 220
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method bindDevice(III)V
    .registers 7

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "srcId"

    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "st_no"

    .line 336
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc5

    .line 337
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object p3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 341
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3d

    :cond_53
    return-void
.end method

.method bindHRDevice(ILjava/lang/String;)V
    .registers 9

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    if-ne p1, v1, :cond_a

    const p1, 0xffff

    :cond_a
    const-string v0, ":"

    .line 372
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    array-length v2, p2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2b

    aget-object v4, p2, v3

    const/16 v5, 0x10

    .line 375
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 377
    :cond_2b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_35
    if-ltz v2, :cond_43

    .line 379
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 381
    :cond_43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeId"

    .line 382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "macItems"

    .line 383
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xca

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 389
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_66

    :cond_7c
    return-void
.end method

.method changeName(Ljava/lang/String;II)V
    .registers 7

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 317
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 318
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 319
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "srcId"

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc4

    .line 321
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object p3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 325
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method

.method changeNickName(ILjava/lang/String;IIII)V
    .registers 9

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const p1, 0xffff

    .line 402
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeId"

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nickname"

    .line 404
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "headType"

    .line 405
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "class"

    .line 406
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "grade"

    .line 407
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "student_no"

    .line 408
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc3

    .line 410
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object p3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 414
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string p5, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, p5, p3, p4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_51

    :cond_67
    return-void
.end method

.method changeNodeIds(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeIds"

    .line 420
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc9

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 425
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_1a

    :cond_30
    return-void
.end method

.method public dealloc()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->workHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_25

    .line 151
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_25

    :catch_8
    move-exception v0

    .line 155
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealloc work thread error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    :goto_25
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_2f

    .line 159
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 162
    :cond_2f
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method exitNetwork()V
    .registers 6

    .line 430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xc8

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 434
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 435
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_15

    :cond_2b
    return-void
.end method

.method handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 559
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4b5

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 561
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 564
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 565
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "decode data:%s"

    invoke-static {v7, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "cmd"

    .line 567
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const-string v7, "opcode"

    .line 568
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "nodeId"

    .line 569
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "nodeInfo"

    .line 570
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v11, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    const v12, 0xffff

    if-nez v11, :cond_77

    if-eq v9, v12, :cond_76

    if-nez v9, :cond_77

    :cond_76
    const/4 v9, 0x1

    :cond_77
    const/16 v13, 0xf5

    const-string v12, "hr"

    const-string v4, "freq_count"

    const-string v14, "count"

    const-string v15, "count_time"

    const-string v5, "param"

    move-object/from16 v18, v2

    const-string v2, "mode"

    move-object/from16 v19, v1

    const-string v1, "battery"

    if-ne v7, v13, :cond_16f

    .line 583
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 584
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 585
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 586
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 587
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 588
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v11, "speed"

    .line 589
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 590
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v12, :cond_ed

    .line 593
    new-instance v12, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v12}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v13, -0x1

    .line 594
    iput v13, v12, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 597
    :cond_ed
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v2, :cond_16e

    const/4 v13, 0x1

    if-eq v2, v13, :cond_101

    const/4 v13, 0x2

    if-eq v2, v13, :cond_fe

    const/4 v13, 0x3

    if-eq v2, v13, :cond_fb

    goto :goto_103

    .line 608
    :cond_fb
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_103

    .line 605
    :cond_fe
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_103

    .line 602
    :cond_101
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_103
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 618
    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 619
    iput v1, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 620
    iput v10, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 621
    iput-object v12, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 622
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v9

    long-to-int v2, v9

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 623
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 624
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 625
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 626
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->hr:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 627
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 628
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 629
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x0

    .line 630
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 631
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v4, v7

    .line 632
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->calcCalories(JD)D

    move-result-wide v6

    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 633
    iget-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->calcFatBurned(JD)D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x0

    .line 635
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 636
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_16a
    :goto_16a
    move/from16 v20, v3

    goto/16 :goto_494

    :cond_16e
    return-void

    :cond_16f
    const/16 v13, 0xf6

    if-ne v7, v13, :cond_297

    .line 639
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 640
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 641
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "time"

    .line 642
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 643
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v11, "avg"

    .line 644
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v13, "fast"

    .line 645
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 646
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 647
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v14, "mac"

    .line 648
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1e9

    .line 649
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xc

    if-ne v14, v15, :cond_1e9

    .line 650
    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1e9
    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v14, :cond_1f4

    .line 654
    new-instance v14, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v14}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_1f4
    if-nez v3, :cond_1f7

    move v3, v9

    :cond_1f7
    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 659
    iput v9, v14, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 660
    iput v10, v14, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 661
    iput-object v6, v10, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeMac:Ljava/lang/String;

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 662
    iput v7, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 663
    iput v12, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->hr:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v10, 0x1

    .line 664
    iput-boolean v10, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_lastTime:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 666
    iput v4, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v6, 0x0

    .line 667
    iput v6, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v1, v10, :cond_232

    const/4 v4, 0x2

    if-eq v1, v4, :cond_22b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_224

    goto :goto_238

    :cond_224
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 679
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_238

    :cond_22b
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 676
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_238

    :cond_232
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 673
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_238
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v4, 0x0

    .line 684
    iput-object v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 685
    iput v11, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 686
    iput v13, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 687
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 688
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 689
    iput v8, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 690
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v5, v5

    .line 691
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v7, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->calcCalories(JD)D

    move-result-wide v7

    iput-wide v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 692
    iget-wide v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->calcFatBurned(JD)D

    move-result-wide v5

    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 693
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 697
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    if-eqz v1, :cond_291

    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_496

    :cond_291
    const/4 v1, 0x1

    .line 698
    invoke-virtual {v0, v9, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeResp(II)V

    goto/16 :goto_496

    :cond_297
    const/16 v2, 0xff

    if-ne v7, v2, :cond_2d6

    const-string v1, "nodes"

    .line 702
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 703
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 705
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-boolean v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez v5, :cond_2c9

    const v5, 0xffff

    if-eq v9, v5, :cond_2c8

    if-nez v9, :cond_2c9

    :cond_2c8
    const/4 v9, 0x1

    .line 714
    :cond_2c9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_2a7

    :cond_2d6
    const/16 v2, 0xf4

    if-ne v7, v2, :cond_2f7

    if-nez v11, :cond_2e4

    const v1, 0xffff

    if-eq v9, v1, :cond_2e3

    if-nez v9, :cond_2e4

    :cond_2e3
    const/4 v9, 0x1

    .line 728
    :cond_2e4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 729
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_16a

    :cond_2f7
    const/16 v2, 0xfa

    const-string v4, "nickName"

    const-string v5, "nickname"

    const-string v10, "type"

    const/16 v11, 0xf9

    const-string v12, "student_no"

    const-string v13, "grade"

    const-string v14, "class"

    const-string v15, "headType"

    if-ne v7, v2, :cond_39c

    const-string v1, "nodeInfos"

    .line 733
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 734
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_317
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 735
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 736
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 737
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 738
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 739
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 740
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 p1, v1

    .line 742
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move/from16 v20, v3

    .line 743
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move/from16 v3, v20

    goto/16 :goto_317

    :cond_39c
    move/from16 v20, v3

    if-ne v7, v11, :cond_407

    .line 755
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 756
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 757
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 758
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 759
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 761
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 762
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-interface {v7, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_494

    :cond_407
    const/16 v2, 0xf1

    if-ne v7, v2, :cond_41e

    .line 773
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 774
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_494

    :cond_41e
    const/16 v2, 0xf7

    if-ne v7, v2, :cond_44f

    .line 778
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 779
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const v4, 0xff2f

    .line 780
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_494

    :cond_44f
    const/16 v1, 0xca

    if-ne v7, v1, :cond_494

    const-string v1, "state"

    .line 786
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_eventMaps:Ljava/util/Map;

    .line 787
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46c

    return-void

    :cond_46c
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_eventMaps:Ljava/util/Map;

    .line 790
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_eventMaps:Ljava/util/Map;

    .line 791
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_48f

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    goto :goto_491

    :cond_48f
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    :goto_491
    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :cond_494
    :goto_494
    move/from16 v3, v20

    :cond_496
    :goto_496
    move-object/from16 v2, v18

    move-object/from16 v1, v19

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_49e
    move-object/from16 v19, v1

    .line 798
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4cc

    .line 800
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "decode failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4cc

    :cond_4b5
    const/4 v3, 0x0

    .line 804
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    invoke-virtual {v1}, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "decode failed: status = %s"

    invoke-static {v2, v1, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4cc
    :goto_4cc
    return-void
.end method

.method handleUserInfo([B)V
    .registers 12

    .line 481
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-gt v0, v1, :cond_8

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_read_userinfo_ing:Z

    return-void

    :cond_8
    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_read_userinfo_ing:Z

    .line 488
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p1

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 491
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v1

    .line 492
    new-array v3, v1, [B

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 494
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v1

    .line 496
    invoke-virtual {v1, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 498
    :goto_2b
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->isEOF()Z

    move-result v3

    if-nez v3, :cond_8d

    .line 499
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetSize()I

    move-result v3

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetPosition()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_3d

    goto :goto_8d

    .line 502
    :cond_3d
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    .line 503
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v4

    if-nez v4, :cond_48

    goto :goto_8d

    :cond_48
    iget-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez v5, :cond_54

    const v5, 0xffff

    if-eq v3, v5, :cond_53

    if-nez v3, :cond_54

    :cond_53
    const/4 v3, 0x1

    :cond_54
    add-int/lit8 v4, v4, -0x8

    if-lez v4, :cond_8d

    .line 518
    new-array v5, v4, [B

    .line 519
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 520
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v2, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 525
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v4

    .line 529
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v5

    .line 530
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v7

    .line 531
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v8

    .line 532
    new-instance v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {v9}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    .line 533
    iput v4, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    .line 534
    iput-object v6, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    .line 535
    iput v3, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    .line 536
    iput v5, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    .line 537
    iput v7, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    .line 538
    iput v8, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    .line 539
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 541
    :cond_8d
    :goto_8d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ef

    .line 542
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 543
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0xf9

    .line 544
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nodeId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "headType"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nickName"

    .line 547
    iget-object v4, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "class"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "grade"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "student_no"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    :cond_ef
    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_eventMaps:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isConnected:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_read_userinfo_ing:Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a23-0000-1000-8000-00805f9b34fb"

    .line 113
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a24-0000-1000-8000-00805f9b34fb"

    .line 114
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    .line 116
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 117
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a27-0000-1000-8000-00805f9b34fb"

    .line 118
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a29-0000-1000-8000-00805f9b34fb"

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfoUUIDsReadIndex:I

    .line 123
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_nodeId:I

    .line 125
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isWriting:Z

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_battery:I

    .line 137
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "workThread3iN1W"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->workHandlerThread:Landroid/os/HandlerThread;

    .line 138
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->workHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->workHandler:Landroid/os/Handler;

    .line 141
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeStHW:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 143
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 826
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 837
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 839
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 843
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_bStabilized:Z

    .line 848
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerOver()V

    .line 849
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_1d
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 8
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

    if-eqz p3, :cond_6

    .line 867
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->cancelConnect()V

    return-void

    :cond_6
    const-string p3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    .line 870
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 871
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_17
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 873
    iget-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v2, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    sget-object v3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 875
    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v2

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_17

    :cond_46
    const-string p2, "0000FFF5-0000-1000-8000-00805F9B34FB"

    .line 881
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "0000FFF4-0000-1000-8000-00805F9B34FB"

    if-eqz v0, :cond_58

    sput-object p2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    sput-object v2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    goto :goto_66

    :cond_58
    const-string p2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 886
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    sput-object p2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    sput-object v2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    :cond_66
    :goto_66
    sget-object p1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String;

    .line 893
    invoke-virtual {p0, v1, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isConnected:Z

    .line 895
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez p1, :cond_8a

    .line 897
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "nodeId"

    .line 898
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object p2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_8a
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

    if-nez p2, :cond_a

    if-eqz p1, :cond_a

    const-string p1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    .line 858
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d

    .line 860
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->cancelConnect()V

    :goto_d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 12

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isConnected:Z

    if-nez v0, :cond_a

    .line 929
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 933
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 934
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    .line 935
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-object v2, p3

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 937
    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_31

    .line 938
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 940
    :cond_31
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v2, "matchMode"

    const-string v3, "type"

    if-ne p2, v0, :cond_a6

    .line 942
    check-cast p3, Ljava/util/Map;

    .line 943
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_6e

    const-string p2, "mode"

    .line 945
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v0, "setting"

    .line 946
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 947
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 948
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->updateInfo(III)V

    goto :goto_8c

    :cond_6e
    const-string p2, "ext"

    .line 951
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez p2, :cond_7e

    .line 953
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 956
    :cond_7e
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    iget v0, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    invoke-virtual {p0, p3, v0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->updateInfo(III)V

    .line 958
    :goto_8c
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p2

    iget-object p2, p2, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    if-eqz p2, :cond_9f

    .line 959
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object p2

    iget-object p2, p2, Lcn/icomon/icdevicemanager/common/ICConfigManager;->ignoreDevices:Ljava/util/Set;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-interface {p2, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 961
    :cond_9f
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 963
    :cond_a6
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v4, 0x0

    if-ne p2, v0, :cond_e2

    .line 964
    check-cast p3, Ljava/util/Map;

    .line 965
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_bd

    .line 967
    invoke-virtual {p0, v1, v4, v4, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->stopSkip(IIII)V

    return-void

    :cond_bd
    const-string v0, "param"

    .line 971
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-eqz p3, :cond_db

    .line 973
    iget-object v0, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget p3, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    invoke-virtual {p0, p2, v0, v1, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->stopSkip(IIII)V

    .line 974
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 978
    :cond_db
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 980
    :cond_e2
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeQueryNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_f0

    .line 981
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->queryNode()V

    .line 982
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 984
    :cond_f0
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeStName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_10a

    .line 985
    check-cast p3, Ljava/util/Map;

    const-string p2, "name"

    .line 987
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_nodeId:I

    .line 990
    invoke-virtual {p0, p2, p3, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->changeName(Ljava/lang/String;II)V

    .line 991
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 993
    :cond_10a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const v1, 0xffff

    if-ne p2, v0, :cond_156

    .line 994
    check-cast p3, Ljava/util/Map;

    const-string p2, "dstId"

    .line 997
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "st_no"

    .line 998
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez v0, :cond_146

    .line 999
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-ne v0, v1, :cond_146

    .line 1000
    :cond_13f
    invoke-virtual {p0, v4, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->bindDevice(III)V

    .line 1001
    invoke-virtual {p0, v1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->bindDevice(III)V

    goto :goto_14f

    .line 1004
    :cond_146
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    invoke-virtual {p0, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->bindDevice(III)V

    .line 1006
    :goto_14f
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1009
    :cond_156
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeNickName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v3, "nodeId"

    if-ne p2, v0, :cond_1c4

    .line 1010
    check-cast p3, Ljava/util/Map;

    .line 1012
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string p2, "nickname"

    .line 1013
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string p2, "headType"

    .line 1014
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string p2, "class"

    .line 1016
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string p2, "grade"

    .line 1017
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string p2, "studentNo"

    .line 1018
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    const/16 v0, 0xff

    if-gt v5, v0, :cond_1be

    if-gt v4, v0, :cond_1be

    const-wide v6, 0xffffffffL

    cmp-long v0, p2, v6

    if-lez v0, :cond_1b2

    goto :goto_1be

    :cond_1b2
    long-to-int v6, p2

    move-object v0, p0

    .line 1025
    invoke-virtual/range {v0 .. v6}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->changeNickName(ILjava/lang/String;IIII)V

    .line 1027
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1021
    :cond_1be
    :goto_1be
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeInvalidParameter:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1029
    :cond_1c4
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetClientNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1e0

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez p2, :cond_1d9

    .line 1032
    invoke-virtual {p0, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setClientNodeId(I)V

    .line 1033
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setClientNodeId(I)V

    .line 1035
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1039
    :cond_1d9
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1042
    :cond_1e0
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeReadUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1f9

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez p2, :cond_1f2

    .line 1044
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->readUserNickAndHead()V

    .line 1045
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1049
    :cond_1f2
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1052
    :cond_1f9
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeNodes:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_211

    .line 1053
    check-cast p3, Ljava/util/Map;

    const-string p2, "nodeIds"

    .line 1055
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1056
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->changeNodeIds(Ljava/util/List;)V

    .line 1057
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_294

    .line 1059
    :cond_211
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeExitNet:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_228

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-eqz p2, :cond_21f

    .line 1063
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1067
    :cond_21f
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->exitNetwork()V

    .line 1068
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_294

    .line 1070
    :cond_228
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRootNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_268

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-eqz p2, :cond_236

    .line 1072
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 1076
    :cond_236
    check-cast p3, Ljava/util/Map;

    .line 1079
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1080
    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p3, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-eqz p3, :cond_25c

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p3, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-eq p3, v1, :cond_25c

    .line 1082
    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p3, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    invoke-virtual {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setRootNodeId(II)V

    goto :goto_262

    .line 1086
    :cond_25c
    invoke-virtual {p0, v4, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setRootNodeId(II)V

    .line 1088
    invoke-virtual {p0, v1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setRootNodeId(II)V

    .line 1091
    :goto_262
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_294

    .line 1093
    :cond_268
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindHRDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_28d

    .line 1094
    check-cast p3, Ljava/util/Map;

    .line 1095
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "device"

    .line 1096
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1098
    invoke-virtual {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->bindHRDevice(ILjava/lang/String;)V

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_eventMaps:Ljava/util/Map;

    .line 1099
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_294

    .line 1103
    :cond_28d
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_294
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 908
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 6

    .line 913
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    sget-object p4, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 915
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->handleUserInfo([B)V

    goto :goto_2a

    .line 918
    :cond_e
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const p4, 0xffff

    .line 919
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "nodeId"

    invoke-virtual {p2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 921
    invoke-virtual {p4, p1, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 922
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 1112
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeNext()V

    return-void
.end method

.method queryNode()V
    .registers 6

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xe1

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    sget-object v2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 299
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_2c

    :cond_42
    return-void
.end method

.method readUserNickAndHead()V
    .registers 3

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_read_userinfo_ing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_read_userinfo_ing:Z

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 311
    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->workHandler:Landroid/os/Handler;

    .line 168
    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$1;

    invoke-direct {v1, p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setClientNodeId(I)V
    .registers 6

    .line 465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xfe

    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nodeId"

    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 468
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "matchMode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc6

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 473
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_33

    :cond_49
    return-void
.end method

.method setRootNodeId(II)V
    .registers 7

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 444
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nodeId"

    .line 445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "matchMode"

    .line 446
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc6

    .line 447
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 451
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_32

    :cond_48
    const-wide/16 p1, 0x64

    .line 454
    :try_start_4a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 455
    invoke-virtual {p0, v3, v2, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->stopSkip(IIII)V

    .line 456
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 457
    invoke-virtual {p0, v3, v2, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->stopSkip(IIII)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p1

    .line 459
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_60
    return-void
.end method

.method public stop()V
    .registers 4

    .line 1118
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 1119
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->bStop:Z

    .line 1120
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->stopScan()V

    .line 1121
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postWorkerOver()V

    goto :goto_2d

    .line 1123
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1124
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x96

    .line 1127
    :try_start_22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 1129
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1131
    :goto_2a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_2d
    return-void
.end method

.method stopSkip(IIII)V
    .registers 7

    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mode"

    .line 278
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 279
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "matchMode"

    .line 280
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc2

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object p3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 286
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v0, p3, p4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method

.method updateInfo(III)V
    .registers 8

    .line 347
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v0

    long-to-int v1, v0

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_interval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 354
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "matchMode"

    .line 355
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc0

    .line 356
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object p3, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 360
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_56

    :cond_6c
    return-void
.end method

.method public writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V
    .registers 14

    .line 1138
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const-string v2, "write data:%s, type=%s"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;Ljava/lang/String;Ljava/lang/String;[BLcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method writeResp(II)V
    .registers 6

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_isBaseSt:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    const p1, 0xffff

    .line 260
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeId"

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xa1

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 269
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    sget-object v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->CHARACTERISTICS_WRITE_UUID:Ljava/lang/String;

    .line 270
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_31

    :cond_47
    return-void
.end method
