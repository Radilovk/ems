.class public Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBaseStationWorker.java"


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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_lastTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_lastUploadTime:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->isShouba:Z

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 144
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 151
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 154
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 145
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 135
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 137
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 139
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

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

    .line 194
    div-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-double p1, p1

    .line 195
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

    .line 204
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_1b
    :goto_1b
    return-wide v2
.end method

.method private getDeviceType()I
    .registers 3

    .line 482
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 483
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x60

    return v0

    .line 488
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xe0

    return v0
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 169
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    .line 170
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 177
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method bindDevice(III)V
    .registers 7

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 269
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "srcId"

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "st_no"

    .line 272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc5

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 276
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

    .line 277
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3d

    :cond_53
    return-void
.end method

.method changeName(Ljava/lang/String;II)V
    .registers 7

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 254
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 255
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "srcId"

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc4

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 260
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

    .line 261
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method

.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 127
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 130
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 301
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_32a

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 303
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_315

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 307
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "decode data:%s"

    invoke-static {v7, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "cmd"

    .line 309
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const-string v7, "opcode"

    .line 310
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "nodeId"

    .line 311
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "nodeInfo"

    .line 312
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0xf5

    const-string v15, "freq_count"

    const-string v5, "count"

    const-string v13, "count_time"

    const-string v14, "param"

    const-string v4, "mode"

    const-string v12, "battery"

    if-ne v7, v11, :cond_143

    .line 315
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 316
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 317
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 318
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 319
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 320
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v12, :cond_c5

    .line 324
    new-instance v12, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v12}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v13, -0x1

    .line 325
    iput v13, v12, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 328
    :cond_c5
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v4, :cond_142

    const/4 v13, 0x1

    if-eq v4, v13, :cond_d9

    const/4 v13, 0x2

    if-eq v4, v13, :cond_d6

    const/4 v13, 0x3

    if-eq v4, v13, :cond_d3

    goto :goto_db

    .line 339
    :cond_d3
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_db

    .line 336
    :cond_d6
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_db

    .line 333
    :cond_d9
    sget-object v12, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_db
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 349
    iput v9, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 350
    iput v6, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 351
    iput v10, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 353
    iput-object v12, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 354
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v9

    long-to-int v6, v9

    iput v6, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 355
    iput v8, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 356
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 357
    iput v7, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 358
    iput v11, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 359
    iput v8, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v5, 0x0

    .line 360
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 361
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 362
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v5, v8

    .line 363
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->calcCalories(JD)D

    move-result-wide v7

    iput-wide v7, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 364
    iget-wide v7, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->calcFatBurned(JD)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v5, 0x0

    .line 366
    iput-boolean v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 367
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 v16, v2

    goto/16 :goto_30f

    :cond_142
    return-void

    :cond_143
    const/16 v11, 0xf6

    if-ne v7, v11, :cond_250

    .line 370
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 371
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 372
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v12, "time"

    .line 373
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 374
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v13, "avg"

    .line 375
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "fast"

    .line 376
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 377
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v11, "mac"

    .line 378
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1b6

    .line 379
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v16, v2

    const/16 v2, 0xc

    if-ne v11, v2, :cond_1b8

    .line 380
    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b8

    :cond_1b6
    move-object/from16 v16, v2

    :cond_1b8
    :goto_1b8
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v2, :cond_1c3

    .line 384
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_1c3
    if-nez v3, :cond_1c6

    move v3, v9

    :cond_1c6
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 389
    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 390
    iput v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 391
    iput-object v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeMac:Ljava/lang/String;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 392
    iput v12, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v6, 0x1

    .line 393
    iput-boolean v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_lastTime:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 395
    iput v15, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v10, 0x0

    .line 396
    iput v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v4, v6, :cond_1fd

    const/4 v2, 0x2

    if-eq v4, v2, :cond_1f6

    const/4 v2, 0x3

    if-eq v4, v2, :cond_1ef

    goto :goto_203

    :cond_1ef
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 408
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_203

    :cond_1f6
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 405
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_203

    :cond_1fd
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 402
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_203
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v4, 0x0

    .line 413
    iput-object v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 414
    iput v13, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 415
    iput v14, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 416
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 417
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 418
    iput v5, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 419
    iput v7, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v5, v8

    .line 420
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->calcCalories(JD)D

    move-result-wide v7

    iput-wide v7, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 421
    iget-wide v7, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->calcFatBurned(JD)D

    move-result-wide v5

    iput-wide v5, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 422
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/16 v2, 0xe1

    const/16 v4, 0xf6

    const/4 v5, 0x1

    .line 425
    invoke-virtual {v0, v2, v4, v9, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeResp(IIII)V

    goto/16 :goto_30f

    :cond_250
    move-object/from16 v16, v2

    const/16 v2, 0xff

    if-ne v7, v2, :cond_274

    const-string v2, "nodes"

    .line 428
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 429
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_262
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 431
    sget-object v5, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v5, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_262

    :cond_274
    const/16 v2, 0xf4

    if-ne v7, v2, :cond_28b

    .line 435
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 436
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_30f

    :cond_28b
    const/16 v2, 0xf1

    if-ne v7, v2, :cond_2a1

    .line 440
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 441
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_30f

    :cond_2a1
    const/16 v2, 0xf7

    if-ne v7, v2, :cond_30f

    .line 445
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v4, "type"

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2ed

    const-string v1, "state"

    .line 447
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 448
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 449
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v2, 0x100001

    .line 453
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 454
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void

    .line 458
    :cond_2ed
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const v6, 0xff2f

    .line 459
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_30f
    :goto_30f
    move-object/from16 v2, v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1d

    .line 469
    :cond_315
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_33d

    .line 471
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "decode failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33d

    :cond_32a
    const/4 v3, 0x0

    .line 475
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    aput-object v1, v4, v3

    const-string v1, "decode failed: status = %d"

    invoke-static {v2, v1, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33d
    :goto_33d
    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isConnected:Z

    .line 89
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    const-string v2, "tmts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->isShouba:Z

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a23-0000-1000-8000-00805f9b34fb"

    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a24-0000-1000-8000-00805f9b34fb"

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a27-0000-1000-8000-00805f9b34fb"

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a29-0000-1000-8000-00805f9b34fb"

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfoUUIDsReadIndex:I

    .line 101
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isWriting:Z

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_battery:I

    .line 112
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeSt:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 114
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_79

    .line 115
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->startScan()V

    goto :goto_7c

    .line 118
    :cond_79
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->connect()V

    :goto_7c
    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 497
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 508
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 510
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 514
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_bStabilized:Z

    .line 519
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerOver()V

    .line 520
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    .line 537
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 538
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

    .line 539
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 540
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

    .line 546
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 548
    invoke-virtual {p0, p1, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->updateInfo(II)V

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isConnected:Z

    .line 550
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_43
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

    .line 529
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d

    .line 531
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->cancelConnect()V

    :goto_d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 7

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_isConnected:Z

    if-nez v0, :cond_a

    .line 575
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 579
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 580
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    .line 581
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-object v2, p3

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 583
    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_31

    .line 584
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_e6

    .line 586
    :cond_31
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v2, "type"

    if-ne p2, v0, :cond_84

    .line 587
    check-cast p3, Ljava/util/Map;

    .line 588
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_62

    const-string p2, "mode"

    .line 590
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v0, "setting"

    .line 591
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 592
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->updateInfo(II)V

    goto :goto_7e

    :cond_62
    const-string p2, "ext"

    .line 595
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez p2, :cond_72

    .line 597
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 600
    :cond_72
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    invoke-virtual {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->updateInfo(II)V

    .line 602
    :goto_7e
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_e6

    .line 604
    :cond_84
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_9d

    .line 605
    check-cast p3, Ljava/util/Map;

    .line 606
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 607
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->stopSkip(I)V

    .line 608
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_e6

    .line 610
    :cond_9d
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeQueryNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_aa

    .line 611
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->queryNode()V

    .line 612
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_e6

    .line 614
    :cond_aa
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeStName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const v1, 0xffff

    if-ne p2, v0, :cond_c4

    .line 615
    check-cast p3, Ljava/util/Map;

    const-string p2, "name"

    .line 617
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 620
    invoke-virtual {p0, p2, v1, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->changeName(Ljava/lang/String;II)V

    .line 621
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_e6

    .line 623
    :cond_c4
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_df

    .line 624
    check-cast p3, Ljava/util/Map;

    const-string p2, "st_no"

    .line 628
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 629
    invoke-virtual {p0, v1, v1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->bindDevice(III)V

    .line 630
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_e6

    .line 633
    :cond_df
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_e6
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 558
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 6

    const-string p4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    .line 563
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 564
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const p4, 0xffff

    .line 565
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "nodeId"

    invoke-virtual {p2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 567
    invoke-virtual {p4, p1, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 568
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 642
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeNext()V

    return-void
.end method

.method queryNode()V
    .registers 6

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xe1

    .line 242
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 245
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

    .line 246
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_2c

    :cond_42
    return-void
.end method

.method public stop()V
    .registers 4

    .line 648
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 649
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->bStop:Z

    .line 650
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->stopScan()V

    .line 651
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->postWorkerOver()V

    goto :goto_2d

    .line 653
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFF4-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 654
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x96

    .line 657
    :try_start_22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 661
    :goto_2a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_2d
    return-void
.end method

.method stopSkip(I)V
    .registers 6

    .line 226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x60

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc2

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 232
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

    .line 233
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_29

    :cond_3f
    return-void
.end method

.method updateInfo(II)V
    .registers 7

    .line 283
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v0

    long-to-int v1, v0

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_interval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 290
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc0

    .line 291
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 294
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

    .line 295
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_4d

    :cond_63
    return-void
.end method

.method writeResp(IIII)V
    .registers 7

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cmd"

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opcode"

    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nodeId"

    .line 213
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    .line 214
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xa1

    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 219
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

    .line 220
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v0, p3, p4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStationWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method
