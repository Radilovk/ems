.class public Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICBaseStHWSkipWorker.java"


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


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_lastTime:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_lastUploadTime:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->isShouba:Z

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 143
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4e

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isWriting:Z

    if-nez p1, :cond_4d

    .line 150
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4d

    .line 151
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 153
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_4d
    return-void

    .line 144
    :cond_4e
    :goto_4e
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 134
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 136
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 138
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

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

    .line 193
    div-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-double p1, p1

    .line 194
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

    .line 203
    invoke-static {p3, p4}, Lcn/icomon/icdevicemanager/common/ICCommon;->ceil(D)D

    move-result-wide p1

    return-wide p1

    :cond_1b
    :goto_1b
    return-wide v2
.end method

.method private getDeviceType()I
    .registers 3

    .line 721
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 722
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x60

    return v0

    .line 727
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xe0

    return v0
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 168
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 169
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 176
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method


# virtual methods
.method bindDevice(III)V
    .registers 7

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "srcId"

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "st_no"

    .line 289
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc5

    .line 290
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 293
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

    .line 294
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_3d

    :cond_53
    return-void
.end method

.method changeName(Ljava/lang/String;II)V
    .registers 7

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    .line 271
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "dstId"

    .line 272
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "srcId"

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc4

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 277
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

    .line 278
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method

.method changeNickName(ILjava/lang/String;IIII)V
    .registers 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const p1, 0xffff

    .line 322
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeId"

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nickname"

    .line 324
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "headType"

    .line 325
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "class"

    .line 326
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "grade"

    .line 327
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "student_no"

    .line 328
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc3

    .line 330
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string p3, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 334
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string p5, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, p5, p3, p4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_4d

    :cond_63
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

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeIds"

    .line 340
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc9

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 344
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 345
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_1a

    :cond_30
    return-void
.end method

.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 126
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 129
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method exitNetwork()V
    .registers 6

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xc8

    .line 351
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const-string v2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 355
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_15

    :cond_2b
    return-void
.end method

.method handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 485
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_488

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 487
    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 490
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_471

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 491
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertDictToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "decode data:%s"

    invoke-static {v7, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, "cmd"

    .line 493
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    const-string v7, "opcode"

    .line 494
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "nodeId"

    .line 495
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "nodeInfo"

    .line 496
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v11, 0xffff

    if-eq v9, v11, :cond_72

    if-nez v9, :cond_73

    :cond_72
    const/4 v9, 0x1

    :cond_73
    const/16 v12, 0xf5

    const-string v11, "freq_count"

    const-string v4, "count"

    const-string v14, "count_time"

    const-string v15, "param"

    const-string v5, "mode"

    const-string v13, "battery"

    if-ne v7, v12, :cond_15b

    .line 504
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 505
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 506
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 507
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 508
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 509
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "speed"

    .line 510
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v13, :cond_d9

    .line 513
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v14, -0x1

    .line 514
    iput v14, v13, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    .line 517
    :cond_d9
    sget-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    if-eqz v5, :cond_15a

    const/4 v14, 0x1

    if-eq v5, v14, :cond_ed

    const/4 v14, 0x2

    if-eq v5, v14, :cond_ea

    const/4 v14, 0x3

    if-eq v5, v14, :cond_e7

    goto :goto_ef

    .line 528
    :cond_e7
    sget-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_ef

    .line 525
    :cond_ea
    sget-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_ef

    .line 522
    :cond_ed
    sget-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_ef
    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 538
    iput v9, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 539
    iput v12, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->battery:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 540
    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 542
    iput-object v13, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 543
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v9

    long-to-int v10, v9

    iput v10, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 544
    iput v8, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 545
    iput v4, v5, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 546
    iput v7, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 547
    iput v11, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 548
    iput v8, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 549
    iput v6, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v5, 0x0

    .line 550
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 551
    iput v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v5, v8

    .line 552
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v7, v7, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v7, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->calcCalories(JD)D

    move-result-wide v7

    iput-wide v7, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 553
    iget-wide v7, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v5, v6, v7, v8}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->calcFatBurned(JD)D

    move-result-wide v5

    iput-wide v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v5, 0x0

    .line 555
    iput-boolean v5, v4, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    .line 556
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 p1, v1

    move-object/from16 v19, v2

    :goto_156
    move/from16 v21, v3

    goto/16 :goto_467

    :cond_15a
    return-void

    :cond_15b
    const/16 v12, 0xf6

    if-ne v7, v12, :cond_266

    .line 559
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 560
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 561
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v12, "time"

    .line 562
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 563
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v13, "avg"

    .line 564
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "fast"

    .line 565
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 566
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v15, "mac"

    .line 567
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1ce

    .line 568
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v19, v2

    const/16 v2, 0xc

    if-ne v15, v2, :cond_1d0

    .line 569
    invoke-static {v6}, Lcn/icomon/icdevicemanager/common/ICCommon;->prettyMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1d0

    :cond_1ce
    move-object/from16 v19, v2

    :cond_1d0
    :goto_1d0
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    if-nez v2, :cond_1db

    .line 573
    new-instance v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-direct {v2}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    :cond_1db
    if-nez v3, :cond_1de

    move v3, v9

    :cond_1de
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 578
    iput v9, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeId:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 579
    iput v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeInfo:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 580
    iput-object v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->nodeMac:Ljava/lang/String;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 581
    iput v12, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v6, 0x1

    .line 582
    iput-boolean v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->isStabilized:Z

    iput v12, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_lastTime:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 584
    iput v11, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freq_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v10, 0x0

    .line 585
    iput v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->most_jump:I

    if-eq v5, v6, :cond_215

    const/4 v2, 0x2

    if-eq v5, v2, :cond_20e

    const/4 v2, 0x3

    if-eq v5, v2, :cond_207

    goto :goto_21b

    :cond_207
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 597
    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeCount:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v5, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_21b

    :cond_20e
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 594
    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeTiming:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v5, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    goto :goto_21b

    :cond_215
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 591
    sget-object v5, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ICSkipModeFreedom:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    iput-object v5, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    :goto_21b
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v5, 0x0

    .line 602
    iput-object v5, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->freqs:Ljava/util/List;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 603
    iput v13, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->avg_freq:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 604
    iput v14, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fastest_freq:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 605
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->elapsed_time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 606
    iput v8, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->actual_time:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 607
    iput v4, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->skip_count:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 608
    iput v7, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->setting:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    int-to-long v6, v8

    .line 609
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v4, v4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v10, v4, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-direct {v0, v6, v7, v10, v11}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->calcCalories(JD)D

    move-result-wide v10

    iput-wide v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    .line 610
    iget-wide v10, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->calories_burned:D

    invoke-direct {v0, v6, v7, v10, v11}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->calcFatBurned(JD)D

    move-result-wide v6

    iput-wide v6, v2, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->fat_burn_efficiency:D

    .line 611
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    invoke-virtual {v4}, Lcn/icomon/icdevicemanager/model/data/ICSkipData;->clone()Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_skipData:Lcn/icomon/icdevicemanager/model/data/ICSkipData;

    const/4 v2, 0x1

    .line 614
    invoke-virtual {v0, v9, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeResp(II)V

    move-object/from16 p1, v1

    goto/16 :goto_469

    :cond_266
    move-object/from16 v19, v2

    const/16 v2, 0xff

    if-ne v7, v2, :cond_2a7

    const-string v2, "nodes"

    .line 617
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 618
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_278
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 620
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_295

    const v5, 0xffff

    if-ne v14, v5, :cond_296

    :cond_295
    const/4 v14, 0x1

    .line 624
    :cond_296
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v5, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v5, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_278

    :cond_2a3
    :goto_2a3
    move-object/from16 p1, v1

    goto/16 :goto_156

    :cond_2a7
    const/16 v2, 0xf4

    if-ne v7, v2, :cond_2c5

    if-eqz v9, :cond_2b2

    const v2, 0xffff

    if-ne v9, v2, :cond_2b3

    :cond_2b2
    const/4 v9, 0x1

    .line 633
    :cond_2b3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 634
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v4, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v4, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_2a3

    :cond_2c5
    const/16 v2, 0xfa

    const-string v4, "nickName"

    const-string v5, "nickname"

    const-string v11, "type"

    const-string v12, "student_no"

    const-string v14, "grade"

    const-string v15, "class"

    const-string v10, "headType"

    if-ne v7, v2, :cond_370

    const-string v2, "nodeInfos"

    .line 638
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 639
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 640
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 641
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 642
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 643
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 644
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 645
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v18, v2

    .line 647
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move/from16 v21, v3

    const/16 v20, 0xf9

    .line 648
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    sget-object v3, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v3, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    move-object/from16 v2, v18

    move/from16 v3, v21

    goto/16 :goto_2e3

    :cond_36a
    move/from16 v21, v3

    move-object/from16 p1, v1

    goto/16 :goto_467

    :cond_370
    move/from16 v21, v3

    const/16 v2, 0xf9

    if-ne v7, v2, :cond_3e1

    .line 660
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 661
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 662
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 663
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 664
    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 666
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 p1, v1

    const/16 v16, 0xf9

    .line 667
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-interface {v13, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v13, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v13}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_467

    :cond_3e1
    move-object/from16 p1, v1

    const/16 v1, 0xf1

    if-ne v7, v1, :cond_3f9

    .line 678
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 679
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_467

    :cond_3f9
    const/16 v1, 0xf7

    if-ne v7, v1, :cond_467

    .line 683
    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_445

    const-string v1, "state"

    .line 685
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 687
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 688
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "state"

    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v3, 0x100001

    .line 692
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    .line 693
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void

    .line 697
    :cond_445
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const v3, 0xff2f

    .line 698
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_467
    :goto_467
    move/from16 v3, v21

    :goto_469
    move-object/from16 v1, p1

    move-object/from16 v2, v19

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_471
    move-object/from16 p1, v1

    .line 708
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_49b

    .line 710
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "decode failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_49b

    :cond_488
    const/4 v3, 0x0

    .line 714
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    aput-object v1, v4, v3

    const-string v1, "decode failed: status = %d"

    invoke-static {v2, v1, v4}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_49b
    :goto_49b
    return-void
.end method

.method handleUserInfo([B)V
    .registers 12

    .line 401
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-gt v0, v1, :cond_8

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_read_userinfo_ing:Z

    return-void

    :cond_8
    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_read_userinfo_ing:Z

    .line 408
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p1

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p1, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 411
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v1

    .line 412
    new-array v3, v1, [B

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 414
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 415
    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object v1

    .line 416
    invoke-virtual {v1, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 418
    :goto_2b
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->isEOF()Z

    move-result v3

    if-nez v3, :cond_89

    .line 419
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetSize()I

    move-result v3

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetPosition()I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v3, v0, :cond_3d

    goto :goto_89

    .line 422
    :cond_3d
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    move-result v3

    .line 423
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v4

    if-nez v4, :cond_48

    goto :goto_89

    :cond_48
    const v5, 0xffff

    if-eq v3, v5, :cond_4f

    if-nez v3, :cond_50

    :cond_4f
    const/4 v3, 0x1

    :cond_50
    add-int/lit8 v4, v4, -0x8

    if-lez v4, :cond_89

    .line 444
    new-array v5, v4, [B

    .line 445
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Read([BLjava/lang/Integer;)I

    .line 446
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v2, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 451
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v4

    .line 455
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v5

    .line 456
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v7

    .line 457
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result v8

    .line 458
    new-instance v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {v9}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    .line 459
    iput v4, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    .line 460
    iput-object v6, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    .line 461
    iput v3, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    .line 462
    iput v5, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    .line 463
    iput v7, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    .line 464
    iput v8, v9, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    .line 465
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 467
    :cond_89
    :goto_89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_eb

    .line 468
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 469
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0xf9

    .line 470
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nodeId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "nodeId"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "headType"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nickName"

    .line 473
    iget-object v4, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sclass:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "class"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget v3, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->grade:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "grade"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->studentNo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "student_no"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_eb
    return-void
.end method

.method public initWorker()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isConnected:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_read_userinfo_ing:Z

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a23-0000-1000-8000-00805f9b34fb"

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a24-0000-1000-8000-00805f9b34fb"

    .line 96
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    .line 98
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a27-0000-1000-8000-00805f9b34fb"

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    const-string v2, "00002a29-0000-1000-8000-00805f9b34fb"

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfoUUIDsReadIndex:I

    .line 105
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isCall:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isWriting:Z

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_writeIndex:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_battery:I

    .line 116
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeStHW:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 118
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 736
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 747
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 749
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->discoverServices()V

    goto :goto_1d

    :cond_8
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    .line 753
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_bStabilized:Z

    .line 758
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerOver()V

    .line 759
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

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

    .line 776
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 777
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

    .line 778
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFF1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 779
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

    .line 785
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isConnected:Z

    .line 787
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 788
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "nodeId"

    .line 789
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object p2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_52
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

    .line 768
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_d

    .line 770
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->cancelConnect()V

    :goto_d
    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 12

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_isConnected:Z

    if-nez v0, :cond_a

    .line 819
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 823
    :cond_a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1e

    .line 824
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->push_type:I

    .line 825
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    move-object v2, p3

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v2

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 827
    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v2, :cond_31

    .line 828
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 830
    :cond_31
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipMode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v2, "matchMode"

    const-string v3, "type"

    if-ne p2, v0, :cond_93

    .line 831
    check-cast p3, Ljava/util/Map;

    .line 832
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_6e

    const-string p2, "mode"

    .line 834
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    const-string v0, "setting"

    .line 835
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 836
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 837
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->updateInfo(III)V

    goto :goto_8c

    :cond_6e
    const-string p2, "ext"

    .line 840
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-nez p2, :cond_7e

    .line 842
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 845
    :cond_7e
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    iget v0, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    invoke-virtual {p0, p3, v0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->updateInfo(III)V

    .line 847
    :goto_8c
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 849
    :cond_93
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetSkipStop:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const/4 v4, 0x0

    if-ne p2, v0, :cond_ce

    .line 850
    check-cast p3, Ljava/util/Map;

    .line 851
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_aa

    .line 853
    invoke-virtual {p0, v1, v4, v4, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->stopSkip(IIII)V

    goto :goto_c7

    :cond_aa
    const-string v0, "param"

    .line 856
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;

    if-eqz p3, :cond_c7

    .line 858
    iget-object v0, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipMode;->ordinal()I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->param:I

    iget p3, p3, Lcn/icomon/icdevicemanager/model/device/ICSkipParam;->matchMode:I

    invoke-virtual {p0, p2, v0, v1, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->stopSkip(IIII)V

    .line 859
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    .line 862
    :cond_c7
    :goto_c7
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 864
    :cond_ce
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeQueryNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_dc

    .line 865
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->queryNode()V

    .line 866
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 868
    :cond_dc
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeStName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const v1, 0xffff

    if-ne p2, v0, :cond_f7

    .line 869
    check-cast p3, Ljava/util/Map;

    const-string p2, "name"

    .line 871
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 874
    invoke-virtual {p0, p2, v1, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->changeName(Ljava/lang/String;II)V

    .line 875
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 877
    :cond_f7
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeBindDevice:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_13d

    .line 878
    check-cast p3, Ljava/util/Map;

    const-string p2, "dstId"

    .line 881
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "st_no"

    .line 882
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 883
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-ne v0, v1, :cond_126

    goto :goto_130

    .line 888
    :cond_126
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    invoke-virtual {p0, v0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->bindDevice(III)V

    goto :goto_136

    .line 884
    :cond_130
    :goto_130
    invoke-virtual {p0, v4, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->bindDevice(III)V

    .line 885
    invoke-virtual {p0, v1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->bindDevice(III)V

    .line 890
    :goto_136
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 893
    :cond_13d
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeNickName:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1ab

    .line 894
    check-cast p3, Ljava/util/Map;

    const-string p2, "nodeId"

    .line 896
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string p2, "nickname"

    .line 897
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string p2, "headType"

    .line 898
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string p2, "class"

    .line 900
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string p2, "grade"

    .line 901
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string p2, "studentNo"

    .line 902
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    const/16 v0, 0xff

    if-gt v5, v0, :cond_1a5

    if-gt v4, v0, :cond_1a5

    const-wide v6, 0xffffffffL

    cmp-long v0, p2, v6

    if-lez v0, :cond_199

    goto :goto_1a5

    :cond_199
    long-to-int v6, p2

    move-object v0, p0

    .line 909
    invoke-virtual/range {v0 .. v6}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->changeNickName(ILjava/lang/String;IIII)V

    .line 911
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_224

    .line 905
    :cond_1a5
    :goto_1a5
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeInvalidParameter:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 913
    :cond_1ab
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetClientNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1bb

    .line 915
    invoke-virtual {p0, v4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setClientNodeId(I)V

    .line 916
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setClientNodeId(I)V

    .line 918
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_224

    .line 920
    :cond_1bb
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeReadUserInfo:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1c3

    .line 921
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->readUserNickAndHead()V

    goto :goto_224

    .line 923
    :cond_1c3
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeChangeNodes:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1da

    .line 924
    check-cast p3, Ljava/util/Map;

    const-string p2, "nodeIds"

    .line 926
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 927
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->changeNodeIds(Ljava/util/List;)V

    .line 928
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_224

    .line 930
    :cond_1da
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeExitNet:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1e7

    .line 933
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->exitNetwork()V

    .line 934
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_224

    .line 936
    :cond_1e7
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetRootNode:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_21d

    .line 937
    check-cast p3, Ljava/util/Map;

    .line 940
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 941
    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p3, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-eqz p3, :cond_211

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p3, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    if-eq p3, v1, :cond_211

    .line 943
    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p3, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->nodeId:I

    invoke-virtual {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setRootNodeId(II)V

    goto :goto_217

    .line 947
    :cond_211
    invoke-virtual {p0, v4, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setRootNodeId(II)V

    .line 949
    invoke-virtual {p0, v1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setRootNodeId(II)V

    .line 952
    :goto_217
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_224

    .line 955
    :cond_21d
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_224
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 798
    invoke-super {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 6

    .line 803
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p4, "0000FFF1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 805
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->handleUserInfo([B)V

    goto :goto_2a

    .line 808
    :cond_e
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const p4, 0xffff

    .line 809
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "nodeId"

    invoke-virtual {p2, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 811
    invoke-virtual {p4, p1, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([BLjava/util/Map;)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    .line 812
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    .line 964
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeNext()V

    return-void
.end method

.method queryNode()V
    .registers 6

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xe1

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 251
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

    .line 252
    sget-object v3, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v4, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v1, v4, v2, v3}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_2c

    :cond_42
    return-void
.end method

.method readUserNickAndHead()V
    .registers 3

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_read_userinfo_ing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_read_userinfo_ing:Z

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 264
    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setClientNodeId(I)V
    .registers 6

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xfe

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nodeId"

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "matchMode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xc6

    .line 389
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 393
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_33

    :cond_49
    return-void
.end method

.method setRootNodeId(II)V
    .registers 7

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nodeId"

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "matchMode"

    .line 366
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc6

    .line 367
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 371
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_32

    :cond_48
    const-wide/16 p1, 0x64

    .line 374
    :try_start_4a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x0

    const/16 v1, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 375
    invoke-virtual {p0, v3, v2, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->stopSkip(IIII)V

    .line 376
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 377
    invoke-virtual {p0, v3, v2, v1, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->stopSkip(IIII)V
    :try_end_5b
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_60
    return-void
.end method

.method public stop()V
    .registers 4

    .line 970
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->bStop:Z

    .line 972
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->stopScan()V

    .line 973
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->postWorkerOver()V

    goto :goto_2d

    .line 975
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    const-string v1, "0000FFF4-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x0

    .line 976
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-wide/16 v0, 0x96

    .line 979
    :try_start_22
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v0

    .line 981
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 983
    :goto_2a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_2d
    return-void
.end method

.method stopSkip(IIII)V
    .registers 7

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "mode"

    .line 231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 232
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "matchMode"

    .line 233
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc2

    .line 235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 238
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

    .line 239
    sget-object p4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v0, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v0, p3, p4}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_39

    :cond_4f
    return-void
.end method

.method updateInfo(III)V
    .registers 8

    .line 300
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v0

    long-to-int v1, v0

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "time"

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "send_interval"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mode"

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "param"

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "matchMode"

    .line 308
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xc0

    .line 309
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_56
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string p3, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 313
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p3, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_56

    :cond_6c
    return-void
.end method

.method writeResp(II)V
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const p1, 0xffff

    .line 213
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "nodeId"

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "success"

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xa1

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    const-string v0, "0000FFF1-0000-1000-8000-00805F9B34FB"

    .line 223
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFC0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseStHWSkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_2d

    :cond_43
    return-void
.end method
