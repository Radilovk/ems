.class public Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBaseStSkipWorker.java"


# static fields
.field private static final CHARACTERISTICS_FIRMWAREVER_UUID:Ljava/lang/String; = "00002a26-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_HARDWAREVER_UUID:Ljava/lang/String; = "00002a27-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MAC_UUID:Ljava/lang/String; = "00002a23-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MANFNAME_UUID:Ljava/lang/String; = "00002a29-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_MODEL_UUID:Ljava/lang/String; = "00002a24-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFF4-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SOFTWAREVER_UUID:Ljava/lang/String; = "00002a28-0000-1000-8000-00805f9b34fb"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFF1-0000-1000-8000-00805F9B34FB"

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

.field _isCall:Z

.field _isConnected:Z

.field private _isWriting:Z

.field private _lastTime:I

.field private _lastUploadTime:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

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

.field private nodeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_lastTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_lastUploadTime:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->isShouba:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->nodeId:I

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 146
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 154
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 156
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 147
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 137
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 139
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 141
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

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

    .line 196
    div-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-double p1, p1

    .line 197
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

    .line 206
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_1b
    :goto_1b
    return-wide v2
.end method

.method private getDeviceType()I
    .registers 3

    .line 614
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 615
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x60

    return v0

    .line 620
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xe0

    return v0
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 171
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 172
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 179
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method bindDevice(III)V
    .registers 7

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "srcId"

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "st_no"

    .line 274
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc5

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 278
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string p3, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 279
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3d

    :cond_53
    return-void
.end method

.method changeName(Ljava/lang/String;II)V
    .registers 7

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 256
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 257
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "srcId"

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc4

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string p3, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 263
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method

.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 129
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 132
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 321
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_542

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 323
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 327
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "decode data:%s"

    invoke-static {v7, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "cmd"

    .line 329
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const-string v7, "opcode"

    .line 330
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "nodeId"

    .line 331
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "nodeInfo"

    .line 332
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0xf5

    const-string v12, "battery"

    const-string v13, "freq_count"

    const-string v14, "count"

    const-string v15, "count_time"

    const-string v4, "param"

    const-string v5, "mode"

    move-object/from16 p1, v2

    const/4 v2, 0x2

    if-ne v7, v11, :cond_147

    .line 335
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 336
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 337
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 338
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 339
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 340
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v12, :cond_c8

    .line 343
    new-instance v12, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v12}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v13, -0x1

    .line 344
    iput v13, v12, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 347
    :cond_c8
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v5, :cond_146

    const/4 v13, 0x1

    if-eq v5, v13, :cond_db

    if-eq v5, v2, :cond_d8

    const/4 v2, 0x3

    if-eq v5, v2, :cond_d5

    goto :goto_dd

    .line 358
    :cond_d5
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_dd

    .line 355
    :cond_d8
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_dd

    .line 352
    :cond_db
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_dd
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 368
    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 369
    iput v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 370
    iput v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 372
    iput-object v12, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 373
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v5

    long-to-int v6, v5

    iput v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 374
    iput v7, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 375
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 376
    iput v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 377
    iput v11, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 378
    iput v7, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v4, 0x0

    .line 379
    iput v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 380
    iput v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 381
    iput v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v4, v7

    .line 382
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v6, v6, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v6, v6, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcCalories(JD)D

    move-result-wide v6

    iput-wide v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 383
    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcFatBurned(JD)D

    move-result-wide v4

    iput-wide v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v4, 0x0

    .line 385
    iput-boolean v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 386
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 v16, v1

    :cond_142
    :goto_142
    move/from16 v20, v3

    goto/16 :goto_521

    :cond_146
    return-void

    :cond_147
    const/16 v11, 0xf6

    const-string v2, "fast"

    move-object/from16 v16, v1

    const-string v1, "avg"

    move-object/from16 v17, v12

    const-string v12, "time"

    if-ne v7, v11, :cond_238

    .line 389
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 390
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 391
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 392
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 393
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 394
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 395
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 396
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v13, :cond_1b0

    .line 399
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_1b0
    if-nez v3, :cond_1b3

    move v3, v9

    :cond_1b3
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 404
    iput v9, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 405
    iput v10, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 407
    iput v8, v10, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v13, 0x1

    .line 408
    iput-boolean v13, v10, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_lastTime:I

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 410
    iput v6, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v8, 0x0

    .line 411
    iput v8, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v5, v13, :cond_1e6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1df

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1d8

    goto :goto_1ec

    :cond_1d8
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 423
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v6, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_1ec

    :cond_1df
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 420
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v6, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_1ec

    :cond_1e6
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 417
    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v6, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_1ec
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v6, 0x0

    .line 428
    iput-object v6, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 429
    iput v1, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 430
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 431
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 432
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 433
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 434
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v4, v7

    .line 435
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcCalories(JD)D

    move-result-wide v6

    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 436
    iget-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v4, v5, v6, v7}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcFatBurned(JD)D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 437
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/16 v1, 0xe1

    const/4 v2, 0x1

    .line 440
    invoke-virtual {v0, v1, v11, v9, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeResp(IIII)V

    goto/16 :goto_523

    :cond_238
    const/16 v11, 0xff

    if-ne v7, v11, :cond_25a

    const-string v1, "nodes"

    .line 443
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 444
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_248
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_142

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 446
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_248

    :cond_25a
    const/16 v11, 0xf4

    if-ne v7, v11, :cond_271

    .line 450
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_142

    :cond_271
    const/16 v11, 0xf1

    if-ne v7, v11, :cond_288

    .line 455
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 456
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_142

    :cond_288
    const/16 v11, 0xf7

    if-ne v7, v11, :cond_2be

    move-object/from16 v11, v17

    .line 460
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 461
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v4, 0xff1f

    .line 462
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_142

    :cond_2be
    const-string v11, "durations"

    const-string v8, "mostJumpTime"

    move/from16 v18, v10

    const-string v10, "mostJump"

    move/from16 v19, v9

    const-string v9, "realTime"

    move/from16 v20, v3

    const/16 v3, 0xf9

    if-ne v7, v3, :cond_40c

    .line 469
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 470
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 471
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 472
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 473
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 474
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 475
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 476
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 477
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 478
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 479
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 480
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v8, :cond_34e

    .line 483
    new-instance v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v8}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_34e
    if-nez v20, :cond_352

    move/from16 v20, v19

    :cond_352
    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move/from16 v11, v19

    .line 488
    iput v11, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move/from16 v14, v18

    .line 489
    iput v14, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 491
    iput v7, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v8, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v14, 0x1

    .line 492
    iput-boolean v14, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_lastTime:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 494
    iput v13, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 495
    iput v10, v7, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v3, v14, :cond_388

    const/4 v7, 0x2

    if-eq v3, v7, :cond_381

    const/4 v7, 0x3

    if-eq v3, v7, :cond_37a

    goto :goto_38e

    :cond_37a
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 507
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v7, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_38e

    :cond_381
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 504
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v7, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_38e

    :cond_388
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 501
    sget-object v7, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v7, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 512
    :goto_38e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 513
    :goto_394
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3bf

    .line 514
    new-instance v8, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;

    invoke-direct {v8}, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;-><init>()V

    .line 515
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->duration:I

    add-int/lit8 v10, v7, 0x1

    .line 516
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->skip_count:I

    .line 517
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x2

    goto :goto_394

    :cond_3bf
    iget-object v6, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 519
    iput-object v3, v6, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 520
    iput v1, v3, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 521
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 522
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 523
    iput v9, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 524
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 525
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v2, v5

    .line 526
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcCalories(JD)D

    move-result-wide v4

    iput-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 527
    iget-wide v4, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcFatBurned(JD)D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 529
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/16 v1, 0xe1

    const/4 v2, 0x3

    const/16 v3, 0xf8

    .line 533
    invoke-virtual {v0, v1, v3, v11, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeResp(IIII)V

    goto/16 :goto_521

    :cond_40c
    move/from16 v21, v18

    move/from16 v0, v19

    const/16 v3, 0xf8

    if-ne v7, v3, :cond_51f

    .line 536
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 537
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 538
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 539
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 540
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 541
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 542
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 543
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 544
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 545
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 546
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 547
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 548
    new-instance v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v8}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    if-nez v20, :cond_490

    move/from16 v20, v0

    .line 553
    :cond_490
    iput v0, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    move/from16 v11, v21

    .line 554
    iput v11, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    .line 556
    iput v7, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    const/4 v7, 0x1

    .line 557
    iput-boolean v7, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 558
    iput v13, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    .line 559
    iput v10, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v3, v7, :cond_4b2

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4ad

    const/4 v7, 0x3

    if-eq v3, v7, :cond_4a8

    goto :goto_4b6

    .line 571
    :cond_4a8
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v3, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_4b6

    .line 568
    :cond_4ad
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v3, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_4b6

    .line 565
    :cond_4b2
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v3, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    .line 576
    :goto_4b6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 577
    :goto_4bc
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_4e7

    .line 578
    new-instance v10, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;

    invoke-direct {v10}, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;-><init>()V

    .line 579
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->duration:I

    add-int/lit8 v11, v7, 0x1

    .line 580
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v10, Lcn/icomon/icdevicemanager/model/data/ICSkipFreqData;->skip_count:I

    .line 581
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x2

    goto :goto_4bc

    .line 583
    :cond_4e7
    iput-object v3, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    .line 584
    iput v1, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    .line 585
    iput v2, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    .line 586
    iput v5, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    .line 587
    iput v9, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    .line 588
    iput v12, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 589
    iput v4, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    int-to-long v1, v5

    move v3, v0

    move-object/from16 v0, p0

    .line 590
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v4, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v1, v2, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcCalories(JD)D

    move-result-wide v4

    iput-wide v4, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    .line 591
    iget-wide v4, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v1, v2, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->calcFatBurned(JD)D

    move-result-wide v1

    iput-wide v1, v8, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 593
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v8}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    const/16 v1, 0xf8

    const/16 v2, 0xe1

    const/4 v4, 0x3

    .line 595
    invoke-virtual {v0, v2, v1, v3, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeResp(IIII)V

    goto :goto_521

    :cond_51f
    move-object/from16 v0, p0

    :goto_521
    move/from16 v3, v20

    :goto_523
    move-object/from16 v2, p1

    move-object/from16 v1, v16

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_52b
    move-object/from16 v16, v1

    .line 601
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_555

    .line 603
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "decode failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_555

    :cond_542
    const/4 v3, 0x0

    .line 607
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    aput-object v1, v4, v3

    const-string v1, "decode failed: status = %s"

    invoke-static {v2, v1, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_555
    :goto_555
    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isConnected:Z

    .line 90
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    const-string v2, "tmts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->isShouba:Z

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a23-0000-1000-8000-00805f9b34fb"

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a24-0000-1000-8000-00805f9b34fb"

    .line 93
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a27-0000-1000-8000-00805f9b34fb"

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a29-0000-1000-8000-00805f9b34fb"

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfoUUIDsReadIndex:I

    .line 102
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isWriting:Z

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 111
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 112
    aget-object v0, v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->nodeId:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_battery:I

    .line 115
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeSt:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 116
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_90

    .line 117
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->startScan()V

    goto :goto_93

    .line 120
    :cond_90
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->connect()V

    :goto_93
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 629
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 640
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 642
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 646
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_bStabilized:Z

    .line 651
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerOver()V

    .line 652
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    const-string p3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    .line 669
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 670
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 671
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 672
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    and-int/2addr p2, v1

    if-ne p2, v0, :cond_c

    :cond_32
    const-string p1, "0000FFF4-0000-1000-8000-00805F9B34FB"

    .line 678
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x64

    .line 681
    :try_start_39
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p1

    .line 683
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 686
    :goto_41
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->updateTime()V

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isConnected:Z

    .line 688
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_4c
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

    .line 661
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d

    .line 663
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->cancelConnect()V

    :goto_d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_isConnected:Z

    if-nez v0, :cond_a

    .line 713
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 717
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 718
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    .line 719
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-object v2, p3

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 721
    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_31

    .line 722
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_f3

    .line 724
    :cond_31
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v2, "type"

    if-ne p2, v0, :cond_84

    .line 725
    check-cast p3, Ljava/util/Map;

    .line 726
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_62

    const-string p2, "mode"

    .line 728
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v0, "setting"

    .line 729
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 730
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->updateInfo(II)V

    goto :goto_7e

    :cond_62
    const-string p2, "ext"

    .line 733
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez p2, :cond_72

    .line 735
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 738
    :cond_72
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    invoke-virtual {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->updateInfo(II)V

    .line 740
    :goto_7e
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_f3

    .line 742
    :cond_84
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_9d

    .line 743
    check-cast p3, Ljava/util/Map;

    .line 744
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 745
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->stopSkip(I)V

    .line 746
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_f3

    .line 748
    :cond_9d
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeQueryNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_aa

    .line 749
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->queryNode()V

    .line 750
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_f3

    .line 752
    :cond_aa
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeStName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_c3

    .line 753
    check-cast p3, Ljava/util/Map;

    const-string p2, "name"

    .line 755
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->nodeId:I

    .line 758
    invoke-virtual {p0, p2, p3, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->changeName(Ljava/lang/String;II)V

    .line 759
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_f3

    .line 761
    :cond_c3
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_ec

    .line 762
    check-cast p3, Ljava/util/Map;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->nodeId:I

    const-string v0, "dstId"

    .line 765
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "st_no"

    .line 766
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 767
    invoke-virtual {p0, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->bindDevice(III)V

    .line 768
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_f3

    .line 771
    :cond_ec
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_f3
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 696
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 6

    const-string p4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    .line 701
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 702
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget p4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->nodeId:I

    .line 703
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "nodeId"

    invoke-virtual {p2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 705
    invoke-virtual {p4, p1, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 706
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 780
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeNext()V

    return-void
.end method

.method queryNode()V
    .registers 6

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xe1

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 248
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_2c

    :cond_42
    return-void
.end method

.method public stop()V
    .registers 4

    .line 786
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->bStop:Z

    .line 788
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->stopScan()V

    .line 789
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->postWorkerOver()V

    goto :goto_2d

    .line 791
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFF4-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 792
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x96

    .line 795
    :try_start_22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 797
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 799
    :goto_2a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_2d
    return-void
.end method

.method stopSkip(I)V
    .registers 6

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x60

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc2

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 235
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_29

    :cond_3f
    return-void
.end method

.method updateInfo(II)V
    .registers 7

    .line 303
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v0

    long-to-int v1, v0

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    .line 307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_interval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc0

    .line 311
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 315
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_4d

    :cond_63
    return-void
.end method

.method updateTime()V
    .registers 6

    .line 286
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v0

    long-to-int v1, v0

    .line 288
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->nodeId:I

    .line 291
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nodeId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xc1

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 297
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3b

    :cond_51
    return-void
.end method

.method writeResp(IIII)V
    .registers 7

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cmd"

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opcode"

    .line 214
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nodeId"

    .line 215
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    .line 216
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xa1

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 221
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string p3, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 222
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v0, p3, p4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method
