.class public Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.source "ICWeightScaleV3Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;
    }
.end annotation


# static fields
.field private static final CHARACTERISTICS_FIRMWAREVER_UUID:Ljava/lang/String; = "00002A26-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_HARDWAREVER_UUID:Ljava/lang/String; = "00002A27-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_INDICATE_UUID:Ljava/lang/String; = "0000FFB3-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_MAC_UUID:Ljava/lang/String; = "00002A23-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_MANFNAME_UUID:Ljava/lang/String; = "00002A29-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_MODEL_UUID:Ljava/lang/String; = "00002A24-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "0000FFB2-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SN_UUID:Ljava/lang/String; = "00002A25-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_SOFTWAREVER_UUID:Ljava/lang/String; = "00002A28-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "0000FFB1-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_WITHOUTRESP_UUID:Ljava/lang/String; = "0000FFB4-0000-1000-8000-00805F9B34FB"

.field private static final CHARACTERISTICS_WRITE_WITHUSER_UUID:Ljava/lang/String; = "0000FFB5-0000-1000-8000-00805F9B34FB"

.field private static final DEVINFO_SERVICE_UUID:Ljava/lang/String; = "0000180A-0000-1000-8000-00805F9B34FB"

.field private static final SERVICE_UUID:Ljava/lang/String; = "0000FFB0-0000-1000-8000-00805F9B34FB"


# instance fields
.field _bStabilized:Z

.field _bWriteUser:Z

.field _cancelSendingEventId:I

.field _curSendingFrameDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field _curSendingFrameIndex:I

.field private _deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

.field private _deviceInfoDict:Ljava/util/Map;

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

.field _isAllNotify:Z

.field _isCall:Z

.field _isFirstCallDevInfo:Z

.field _isFirstRev:Z

.field _isHasWriteCharacteristicUser:Z

.field _isNewConfigWifi:Z

.field _isReady:Z

.field _isSupportNickName:Z

.field _isSupportNickNameImg:Z

.field _isSupportUploadBodyfat:Z

.field _isWriteWithResp:Z

.field private _isWriting:Z

.field _lastUploadWeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

.field _nHistoryTime:I

.field _nLastPackageIndex:I

.field private _nLastState:I

.field _noDeviceInfo:Z

.field private _package_index:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field private _protocolHandlerIndicate:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _protocol_ver2:I

.field _sendingFile:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

.field _settings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field _temperature:D

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

.field private _writeDatasUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private _writeIndex:Ljava/lang/Integer;

.field private _writeIndexUser:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocol_ver2:I

    return-void
.end method

.method private addWriteDatas2(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 9

    const/4 v0, 0x0

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_63

    .line 259
    iget-object v2, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_63

    :cond_10
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatasUser:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    const-string v5, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 268
    iget-object v6, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_37
    const-string v5, "0000FFB5-0000-1000-8000-00805F9B34FB"

    .line 273
    iget-object v6, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatasUser:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_46
    if-eqz v2, :cond_4a

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndex:Ljava/lang/Integer;

    :cond_4a
    if-eqz v4, :cond_4e

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndexUser:Ljava/lang/Integer;

    :cond_4e
    if-nez v2, :cond_52

    if-eqz v4, :cond_53

    :cond_52
    const/4 v0, 0x1

    .line 295
    :cond_53
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->startWriteDatas(Z)V

    return-void

    .line 281
    :cond_57
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "write data is not right character"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 260
    :cond_63
    :goto_63
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "write data is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 250
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 252
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 253
    iput-object p2, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    .line 255
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatas2(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private calcCheckSum([B)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1853
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_d

    .line 1854
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    const p1, 0xffff

    and-int/2addr p1, v1

    return p1
.end method

.method private calcNickNameCheckSum(Ljava/lang/String;)I
    .registers 3

    if-eqz p1, :cond_12

    .line 1845
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 1848
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCrc;->crc_modbus([B)I

    move-result p1

    return p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method private checkAndWriteUser()V
    .registers 4

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isAllNotify:Z

    if-nez v0, :cond_11

    .line 563
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "wait notify enable"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 566
    :cond_11
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lang:I

    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->updateInfo(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;I)I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 567
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUserInfo:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfoList:Ljava/util/List;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 568
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->updateUserList()V

    :cond_35
    return-void
.end method

.method private checkFile()V
    .registers 11

    .line 1881
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getCurrentFileInfo()Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1885
    :cond_7
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->isStart:Z

    if-eqz v1, :cond_c

    return-void

    .line 1890
    :cond_c
    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->type:I

    const/4 v4, 0x0

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->fileData:[B

    array-length v5, v1

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->fileData:[B

    array-length v6, v1

    iget v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->cs:I

    iget v8, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->userId:I

    iget v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->nickNameCS:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->sendFileInfo(IIIIIII)I

    const/4 v1, 0x1

    .line 1891
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->isStart:Z

    return-void
.end method

.method private configWifi(Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;)V
    .registers 7

    .line 1676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1677
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ssid"

    .line 1678
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 1679
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    invoke-virtual {p3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "mode"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1681
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "package_index"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "unit"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 p2, 0xff

    if-le p1, p2, :cond_54

    const/4 p1, 0x0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_54
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isNewConfigWifi:Z

    if-eqz p1, :cond_5b

    const/16 p1, 0xb9

    goto :goto_62

    .line 1690
    :cond_5b
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;->ICConfigWifiModeDefault:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    if-eq p3, p1, :cond_60

    return-void

    :cond_60
    const/16 p1, 0xb5

    :goto_62
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1693
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 1694
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_79

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1695
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_79
    return-void
.end method

.method private getCurrentFileInfo()Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_sendingFile:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    return-object v0
.end method

.method private getDeviceType()I
    .registers 3

    .line 1621
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeConnect:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_13

    .line 1622
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit8 v0, v0, 0x20

    return v0

    .line 1626
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    or-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method private handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
    .registers 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    const/4 v4, 0x0

    .line 583
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v2, v3, :cond_1e

    .line 575
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packet data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1401

    .line 577
    :cond_1e
    iget-object v2, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v2, v3, :cond_13d7

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    if-nez v2, :cond_2f

    .line 579
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    .line 582
    :cond_2f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 583
    iget-object v6, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    invoke-virtual {v3, v6, v5, v7}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 584
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_49

    .line 585
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_49
    const-string v3, "0000FFB3-0000-1000-8000-00805F9B34FB"

    move-object/from16 v6, p2

    .line 587
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandlerIndicate:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 588
    iget-object v6, v1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    invoke-virtual {v3, v6, v5, v7}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6b

    .line 590
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6b

    .line 591
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 592
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_6b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_13b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "package_index"

    .line 599
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "unit"

    .line 600
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v9, "cmd"

    .line 601
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 603
    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v10}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    const-string v12, "decode data:%s"

    invoke-static {v10, v12, v11}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    move-result-object v10

    const-string v11, "type"

    if-eqz v10, :cond_cf

    iget-object v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_lastUploadWeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    if-eq v10, v12, :cond_cf

    iput-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_lastUploadWeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 609
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v12, "unit"

    .line 610
    invoke-virtual {v10, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v8, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v8, v10}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 615
    :cond_cf
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xa0

    const-string v12, "state"

    if-ne v8, v10, :cond_12e

    iput-boolean v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    .line 618
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "reply_package_index"

    .line 619
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EVE_ID:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 621
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_128

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 622
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v6, :cond_11f

    .line 624
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_128

    .line 626
    :cond_11f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {v0, v5, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :cond_128
    :goto_128
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    goto/16 :goto_13ac

    .line 629
    :cond_12e
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xa1

    const-string v13, "lb_division"

    const-string v14, "kg_division"

    if-eq v8, v10, :cond_f6c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xaa

    if-ne v8, v10, :cond_144

    goto/16 :goto_f6c

    .line 807
    :cond_144
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0xa2

    const-string v6, "weight_kg"

    const-string v4, "weight_g"

    const-string v15, "precision_lb"

    move-object/from16 v19, v3

    const-string v3, "precision_kg"

    if-ne v8, v10, :cond_2df

    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    if-nez v7, :cond_161

    .line 809
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    :cond_161
    const/4 v7, -0x1

    iput v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastPackageIndex:I

    iget-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    if-eqz v7, :cond_16b

    const/4 v7, 0x0

    iput-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    :cond_16b
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    .line 818
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 819
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 821
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 822
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v6, "weight_lb"

    .line 823
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v6, "weight_st_lb"

    .line 824
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-object/from16 v20, v2

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string v6, "weight_st"

    .line 825
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 826
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v15, "hr"

    .line 827
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 829
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 830
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v13, :cond_20d

    .line 833
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 835
    iget-object v13, v13, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-wide/from16 v22, v1

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-ne v13, v1, :cond_204

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 836
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_20f

    :cond_204
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 838
    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_20f

    :cond_20d
    move-wide/from16 v22, v1

    :goto_20f
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 844
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_21d

    :goto_21b
    const/4 v1, 0x1

    goto :goto_22c

    :cond_21d
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 846
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    if-eq v12, v1, :cond_224

    goto :goto_21b

    :cond_224
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 848
    iget v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    if-eq v15, v1, :cond_22b

    goto :goto_21b

    :cond_22b
    const/4 v1, 0x0

    :goto_22c
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 851
    iget-boolean v13, v13, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportHr:Z

    iput-boolean v13, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isSupportHR:Z

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 852
    iput v12, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 853
    iput v15, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    if-eqz v1, :cond_13ac

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 856
    iput v14, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 857
    iput v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 860
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 861
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 862
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 863
    iput v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 864
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 865
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 866
    iput-wide v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 867
    iput v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v22

    .line 868
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x0

    .line 870
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 871
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceProperty:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceProperty:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 872
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceType:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceType:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 873
    iput v12, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    const/4 v1, 0x1

    if-eq v12, v1, :cond_2d2

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastState:I

    if-ne v2, v12, :cond_29c

    return-void

    :cond_29c
    iput v12, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastState:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 881
    iput-boolean v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    const/4 v1, 0x2

    if-ne v12, v1, :cond_2b2

    .line 883
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    :cond_2b2
    const/4 v1, 0x3

    if-ne v12, v1, :cond_2c2

    .line 885
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    :cond_2c2
    const/4 v1, 0x4

    if-ne v12, v1, :cond_13ac

    .line 887
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepHrStart:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    .line 890
    :cond_2d2
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    :cond_2df
    move-object/from16 v20, v2

    .line 894
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa3

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    const/16 v8, 0xa

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    const-wide/16 v27, 0x0

    const-wide/high16 v29, 0x4024000000000000L    # 10.0

    if-eq v1, v2, :cond_a2f

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_2fd

    goto/16 :goto_a2f

    .line 1127
    :cond_2fd
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_57c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_30f

    goto/16 :goto_57c

    .line 1341
    :cond_30f
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa6

    if-ne v1, v2, :cond_37c

    const-string v1, "data_type"

    .line 1342
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34a

    .line 1344
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1345
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    :cond_34a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_13ac

    .line 1351
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1353
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    if-eqz v1, :cond_35d

    .line 1355
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    :cond_35d
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    const-string v3, "EVE_ID:CFGSERVERURL"

    .line 1357
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13ac

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 1358
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_13ac

    .line 1363
    :cond_37c
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xad

    if-ne v1, v2, :cond_4ef

    const-string v1, "status"

    .line 1364
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "fileType"

    .line 1365
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "data"

    .line 1366
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getCurrentFileInfo()Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    move-result-object v4

    const/16 v5, 0xff

    if-eq v2, v5, :cond_4aa

    if-nez v1, :cond_3f1

    const-string v1, "totalFrame"

    .line 1376
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "maxFrameLength"

    .line 1377
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1378
    iput v2, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->maxFrameLength:I

    .line 1379
    iput v1, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->packageFrameCount:I

    .line 1380
    iget-object v1, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->fileData:[B

    .line 1381
    array-length v3, v1

    .line 1382
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3d3
    if-ge v6, v3, :cond_3ea

    .line 1385
    iget v7, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->maxFrameLength:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    add-int v8, v6, v2

    if-le v8, v3, :cond_3df

    sub-int v7, v3, v6

    .line 1389
    :cond_3df
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 1390
    invoke-static {v1, v6, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v7

    .line 1392
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d3

    .line 1394
    :cond_3ea
    iput-object v5, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->frameDatas:Ljava/util/List;

    .line 1396
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->handleSendFile()V

    goto/16 :goto_13ac

    :cond_3f1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_419

    const-string v1, "sendStatus"

    .line 1399
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "percent"

    .line 1400
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    if-eqz v1, :cond_414

    .line 1404
    iget v1, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    iget v2, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendFrameCount:I

    sub-int/2addr v1, v2

    iput v1, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    .line 1407
    :cond_414
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->handleSendFile()V

    goto/16 :goto_13ac

    :cond_419
    const/4 v2, 0x2

    if-ne v1, v2, :cond_41e

    goto/16 :goto_13ac

    :cond_41e
    const/4 v2, 0x4

    if-ne v1, v2, :cond_13ac

    const-string v1, "sendStatus"

    .line 1417
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v4, :cond_44a

    .line 1419
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Repeat upload Send Result "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_44a
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    .line 1422
    iget v2, v4, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->eventId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v3

    const-string v2, "EVE_ID:%d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Send Result "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    const/4 v4, 0x0

    iput-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_sendingFile:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    iput v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_cancelSendingEventId:I

    if-eqz v1, :cond_489

    .line 1428
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    :cond_489
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 1430
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a4

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 1431
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1432
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :cond_4a4
    const/4 v1, 0x1

    .line 1434
    invoke-direct {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->startWriteDatas(Z)V

    goto/16 :goto_13ac

    :cond_4aa
    if-nez v4, :cond_4ad

    return-void

    .line 1441
    :cond_4ad
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EVE_ID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_cancelSendingEventId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    .line 1443
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v4, "cancel file send success"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_sendingFile:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    iput v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_cancelSendingEventId:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 1446
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13ac

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 1447
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_13ac

    .line 1453
    :cond_4ef
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_13ac

    .line 1454
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_13ac

    const-string v1, "userlist"

    .line 1456
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_514
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_562

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "userId"

    .line 1460
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "headSeq"

    .line 1461
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "headIndex"

    .line 1462
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "nickNameCS"

    .line 1463
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1464
    new-instance v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {v7}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    int-to-long v8, v4

    .line 1465
    iput-wide v8, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    .line 1466
    iput v5, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    .line 1467
    iput v6, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    .line 1468
    iput v3, v7, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickNameCS:I

    .line 1469
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_514

    .line 1471
    :cond_562
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0xfa

    .line 1472
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "users"

    .line 1473
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    :cond_57c
    :goto_57c
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    if-nez v1, :cond_587

    .line 1129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    :cond_587
    const-string v1, "time"

    .line 1133
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1134
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1135
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1137
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1138
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-string v6, "weight_lb"

    .line 1139
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-wide/from16 v31, v11

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v6, "weight_st_lb"

    .line 1140
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    move-object/from16 v33, v9

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v6, "weight_st"

    .line 1141
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v15, "bfaType"

    .line 1142
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v12, "hr"

    .line 1143
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-wide/from16 v35, v8

    const-string v8, "imps"

    .line 1144
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1146
    iget v9, v9, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->kg_scale_division:I

    move/from16 v37, v9

    iget-object v9, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1147
    iget v9, v9, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->lb_scale_division:I

    move/from16 v38, v9

    .line 1149
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v39, v8

    const/16 v8, 0xa5

    if-ne v9, v8, :cond_63c

    const-string v8, "userId"

    .line 1150
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1151
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1152
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_641

    :cond_63c
    move/from16 v9, v37

    move/from16 v5, v38

    const/4 v8, 0x0

    :goto_641
    iget v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nHistoryTime:I

    if-ne v13, v1, :cond_64e

    .line 1156
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->replyDevice(IZ)V

    return-void

    :cond_64e
    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nHistoryTime:I

    .line 1161
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;-><init>()V

    if-nez v15, :cond_66f

    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1164
    iget-object v14, v14, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    sget-object v15, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-ne v14, v15, :cond_668

    .line 1165
    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v14, v14, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v14, v14, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v14, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_675

    :cond_668
    iget-object v14, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1167
    iget-object v14, v14, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v14, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_675

    .line 1170
    :cond_66f
    invoke-static {v15}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v14

    iput-object v14, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :goto_675
    int-to-long v14, v8

    .line 1172
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->userId:Ljava/lang/Long;

    .line 1173
    iput v9, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->kg_scale_division:I

    .line 1174
    iput v5, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->lb_scale_division:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1175
    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    iput v5, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1176
    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceProperty:I

    iput v5, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceProperty:I

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1177
    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceType:I

    iput v5, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendenceType:I

    .line 1179
    iput v12, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->hr:I

    .line 1180
    iput v2, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_kg:I

    .line 1181
    iput v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_st_lb:I

    .line 1182
    iput v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->precision_lb:I

    .line 1183
    iput v4, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_g:I

    move-wide/from16 v2, v31

    .line 1184
    iput-wide v2, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_kg:D

    .line 1185
    iput-wide v10, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_lb:D

    .line 1186
    iput v6, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st:I

    move-wide/from16 v2, v35

    .line 1187
    iput-wide v2, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->weight_st_lb:D

    .line 1189
    iput v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->time:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1190
    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    iput v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 1192
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v8, v39

    if-lez v1, :cond_6c5

    const/4 v1, 0x0

    .line 1193
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    .line 1195
    :cond_6c5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6d8

    .line 1196
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    .line 1198
    :cond_6d8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_6eb

    .line 1199
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    .line 1201
    :cond_6eb
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_6fe

    .line 1202
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    .line 1204
    :cond_6fe
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_711

    .line 1205
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    .line 1207
    :cond_711
    iput-object v8, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 1209
    iget-object v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_827

    .line 1210
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_824

    const/4 v1, 0x0

    .line 1212
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 1213
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 1214
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v9, 0x3

    .line 1215
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x4

    .line 1216
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const/4 v14, 0x5

    .line 1217
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v17, v1, v29

    if-lez v17, :cond_7e7

    cmpl-double v17, v3, v29

    if-lez v17, :cond_7e7

    cmpl-double v17, v5, v29

    if-lez v17, :cond_7e7

    cmpl-double v17, v9, v29

    if-lez v17, :cond_7e7

    cmpl-double v17, v11, v29

    if-lez v17, :cond_7e7

    cmpl-double v17, v14, v29

    if-lez v17, :cond_7e7

    add-double v17, v1, v5

    sub-double v17, v17, v11

    move-object/from16 v31, v7

    div-double v7, v17, v25

    add-double v17, v1, v11

    sub-double v17, v17, v5

    move-wide/from16 v27, v7

    div-double v7, v17, v25

    add-double v17, v14, v9

    sub-double v17, v17, v11

    move-wide/from16 v29, v7

    div-double v7, v17, v25

    add-double v17, v14, v11

    sub-double v17, v17, v9

    move-wide/from16 v32, v7

    div-double v7, v17, v25

    add-double/2addr v3, v5

    add-double/2addr v3, v9

    add-double/2addr v3, v11

    mul-double v1, v1, v25

    sub-double/2addr v3, v1

    mul-double v14, v14, v25

    sub-double/2addr v3, v14

    div-double v3, v3, v22

    .line 1227
    iput-wide v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    move-wide/from16 v1, v27

    .line 1228
    iput-wide v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    move-wide/from16 v5, v29

    .line 1229
    iput-wide v5, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    move-wide/from16 v9, v32

    .line 1230
    iput-wide v9, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    .line 1231
    iput-wide v7, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    const/16 v11, 0x8

    .line 1232
    iput v11, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 1233
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v11

    goto :goto_821

    :cond_7e7
    move-object/from16 v31, v7

    cmpl-double v1, v14, v29

    if-lez v1, :cond_821

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1242
    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    if-eqz v1, :cond_821

    .line 1243
    iput-wide v14, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v1, 0x4

    .line 1247
    iput v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 1248
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v8, v1

    :cond_821
    :goto_821
    move-object v11, v13

    goto/16 :goto_a1a

    :cond_824
    move-object/from16 v31, v7

    goto :goto_821

    :cond_827
    move-object/from16 v31, v7

    .line 1258
    iget-object v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_821

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1259
    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_821

    .line 1260
    iget-object v1, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_8c3

    .line 1261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1262
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x1

    .line 1263
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x2

    .line 1264
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v9, 0x3

    .line 1265
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x4

    .line 1266
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v11, 0x5

    .line 1267
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    move-object v11, v13

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpl-double v8, v2, v29

    if-lez v8, :cond_8b0

    cmpl-double v2, v4, v29

    if-lez v2, :cond_8b0

    cmpl-double v2, v6, v29

    if-lez v2, :cond_8b0

    cmpl-double v2, v9, v29

    if-lez v2, :cond_8b0

    cmpl-double v2, v14, v29

    if-lez v2, :cond_8b0

    cmpl-double v2, v12, v29

    if-lez v2, :cond_8b0

    const/16 v2, 0x8

    .line 1271
    iput v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    const/16 v2, 0xa

    .line 1272
    invoke-static {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v2

    iput-object v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_8c0

    :cond_8b0
    cmpl-double v2, v12, v29

    if-lez v2, :cond_8c0

    .line 1275
    iput-wide v12, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v2, 0x4

    .line 1276
    iput v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->electrode:I

    .line 1277
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8c0
    :goto_8c0
    move-object v8, v1

    goto/16 :goto_a1a

    :cond_8c3
    move-object v11, v13

    .line 1281
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    rem-int/2addr v1, v2

    if-nez v1, :cond_a1a

    .line 1282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1284
    :goto_8d2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    if-ge v3, v4, :cond_9d5

    mul-int/lit8 v2, v3, 0x6

    .line 1286
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-int/lit8 v6, v2, 0x1

    .line 1287
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-int/lit8 v9, v2, 0x2

    .line 1288
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    add-int/lit8 v12, v2, 0x3

    .line 1289
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-int/lit8 v14, v2, 0x4

    .line 1290
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/16 v16, 0x5

    add-int/lit8 v2, v2, 0x5

    .line 1291
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    cmpl-double v2, v4, v29

    if-lez v2, :cond_983

    cmpl-double v2, v6, v29

    if-lez v2, :cond_983

    cmpl-double v2, v9, v29

    if-lez v2, :cond_983

    cmpl-double v2, v12, v29

    if-lez v2, :cond_983

    cmpl-double v2, v14, v29

    if-lez v2, :cond_983

    cmpl-double v2, v32, v29

    if-lez v2, :cond_983

    add-double v34, v4, v9

    sub-double v34, v34, v14

    div-double v34, v34, v25

    add-double v36, v4, v14

    sub-double v36, v36, v9

    div-double v36, v36, v25

    add-double v38, v32, v12

    sub-double v38, v38, v14

    div-double v38, v38, v25

    add-double v40, v32, v14

    sub-double v40, v40, v12

    div-double v40, v40, v25

    add-double/2addr v6, v9

    add-double/2addr v6, v12

    add-double/2addr v6, v14

    mul-double v4, v4, v25

    sub-double/2addr v6, v4

    mul-double v32, v32, v25

    sub-double v6, v6, v32

    div-double v6, v6, v22

    .line 1300
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1304
    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9d0

    :cond_983
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1306
    iget-boolean v2, v2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    if-eqz v2, :cond_9ad

    .line 1307
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9d5

    .line 1314
    :cond_9ad
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9d0
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x6

    goto/16 :goto_8d2

    :cond_9d5
    :goto_9d5
    const/4 v2, 0x0

    .line 1323
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp:D

    const/4 v2, 0x1

    .line 1324
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp2:D

    const/4 v2, 0x2

    .line 1325
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp3:D

    const/4 v2, 0x3

    .line 1326
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp4:D

    const/4 v2, 0x4

    .line 1327
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->imp5:D

    .line 1328
    iput-object v1, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    goto/16 :goto_8c0

    .line 1334
    :cond_a1a
    :goto_a1a
    iput-object v8, v11, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->impendences:Ljava/util/List;

    .line 1336
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->replyDevice(IZ)V

    .line 1338
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadHistoryData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v11}, Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto/16 :goto_13ac

    :cond_a2f
    :goto_a2f
    move-object/from16 v31, v7

    move-object/from16 v33, v9

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    if-nez v1, :cond_a3e

    .line 900
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    .line 904
    :cond_a3e
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 905
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bfaType"

    .line 906
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 908
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 909
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v8, "weight_lb"

    .line 910
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-string v10, "weight_st_lb"

    .line 911
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v15, "weight_st"

    .line 912
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v12, "hr"

    .line 913
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-wide/from16 v35, v10

    const-string v10, "imps"

    .line 914
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    const-wide/16 v39, 0x3e8

    move-object/from16 v32, v10

    div-long v10, v37, v39

    long-to-int v11, v10

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 917
    iget v10, v10, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->kg_scale_division:I

    move/from16 v37, v10

    iget-object v10, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 918
    iget v10, v10, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->lb_scale_division:I

    move/from16 v38, v10

    .line 920
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v33, v11

    const/16 v11, 0xa7

    if-ne v10, v11, :cond_af3

    const-string v10, "userId"

    .line 921
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 922
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 923
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v44, v11

    move v11, v10

    move/from16 v10, v44

    goto :goto_af8

    :cond_af3
    move/from16 v10, v37

    move/from16 v5, v38

    const/4 v11, 0x0

    :goto_af8
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-nez v13, :cond_b04

    .line 929
    new-instance v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-direct {v13}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;-><init>()V

    iput-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    goto :goto_b17

    .line 931
    :cond_b04
    iget-boolean v13, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-eqz v13, :cond_b17

    iget v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastPackageIndex:I

    .line 932
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_b11

    return-void

    .line 935
    :cond_b11
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastPackageIndex:I

    :cond_b17
    :goto_b17
    if-nez v3, :cond_b35

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 940
    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    sget-object v13, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    if-ne v3, v13, :cond_b2c

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 941
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v13, v13, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v13, v13, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v13, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_b3d

    :cond_b2c
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 943
    iget-object v13, v13, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iput-object v13, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_b3d

    :cond_b35
    iget-object v13, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 946
    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    iput-object v3, v13, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    :goto_b3d
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    int-to-long v13, v11

    .line 948
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->userId:Ljava/lang/Long;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 949
    iput v10, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->kg_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 950
    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->lb_scale_division:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 951
    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 952
    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceProperty:I

    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceProperty:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 953
    iget v5, v5, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceType:I

    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendenceType:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v5, 0x0

    .line 955
    iput v5, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 956
    iput v12, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 957
    iput v1, v3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_kg:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 958
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_st_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 959
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->precision_lb:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 960
    iput v4, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 961
    iput-wide v6, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 962
    iput-wide v8, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 963
    iput v15, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v2, v35

    .line 964
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x1

    .line 966
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move/from16 v2, v33

    int-to-long v2, v2

    .line 967
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-wide v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_temperature:D

    .line 968
    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->temperature:D

    .line 970
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_bbb

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-object/from16 v10, v32

    const/4 v2, 0x0

    .line 971
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    goto :goto_bbd

    :cond_bbb
    move-object/from16 v10, v32

    .line 973
    :goto_bbd
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_bd2

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 974
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    .line 976
    :cond_bd2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_be7

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 977
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    .line 979
    :cond_be7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_bfc

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 980
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    .line 982
    :cond_bfc
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_c11

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 983
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    :cond_c11
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 986
    iput-object v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 987
    iget v2, v2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    .line 989
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 990
    iget-wide v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 992
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_d43

    .line 993
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_f47

    const/4 v1, 0x0

    .line 995
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x1

    .line 996
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x2

    .line 997
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x3

    .line 998
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x4

    .line 999
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const/4 v9, 0x5

    .line 1000
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v9, v1, v29

    if-lez v9, :cond_d06

    cmpl-double v9, v3, v29

    if-lez v9, :cond_d06

    cmpl-double v9, v5, v29

    if-lez v9, :cond_d06

    cmpl-double v9, v7, v29

    if-lez v9, :cond_d06

    cmpl-double v9, v11, v29

    if-lez v9, :cond_d06

    cmpl-double v9, v13, v29

    if-lez v9, :cond_d06

    add-double v9, v1, v5

    sub-double/2addr v9, v11

    div-double v9, v9, v25

    add-double v17, v1, v11

    sub-double v17, v17, v5

    move-wide/from16 v27, v9

    div-double v9, v17, v25

    add-double v17, v13, v7

    sub-double v17, v17, v11

    move-wide/from16 v29, v9

    div-double v9, v17, v25

    add-double v17, v13, v11

    sub-double v17, v17, v7

    move-wide/from16 v32, v9

    div-double v9, v17, v25

    add-double/2addr v3, v5

    add-double/2addr v3, v7

    add-double/2addr v3, v11

    mul-double v1, v1, v25

    sub-double/2addr v3, v1

    mul-double v13, v13, v25

    sub-double/2addr v3, v13

    div-double v3, v3, v22

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1010
    iput-wide v3, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v5, v27

    .line 1011
    iput-wide v5, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v7, v29

    .line 1012
    iput-wide v7, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-wide/from16 v11, v32

    .line 1013
    iput-wide v11, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1014
    iput-wide v9, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/16 v2, 0x8

    .line 1015
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    .line 1016
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1020
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_de5

    :cond_d06
    cmpl-double v1, v13, v29

    if-lez v1, :cond_f47

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1025
    iget-boolean v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    if-eqz v1, :cond_f47

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1026
    iput-wide v13, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v2, 0x4

    .line 1030
    iput v2, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    .line 1031
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_de5

    :cond_d43
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1041
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_f47

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1042
    iget v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_f47

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1043
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_de8

    .line 1044
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1047
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, 0x1

    .line 1048
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v6, 0x2

    .line 1049
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x3

    .line 1050
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v11, 0x4

    .line 1051
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    const/4 v11, 0x5

    .line 1052
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v15, v2, v29

    if-lez v15, :cond_dd1

    cmpl-double v2, v4, v29

    if-lez v2, :cond_dd1

    cmpl-double v2, v6, v29

    if-lez v2, :cond_dd1

    cmpl-double v2, v8, v29

    if-lez v2, :cond_dd1

    cmpl-double v2, v13, v29

    if-lez v2, :cond_dd1

    cmpl-double v2, v10, v29

    if-lez v2, :cond_dd1

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/16 v3, 0x8

    .line 1056
    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/16 v3, 0xa

    .line 1057
    invoke-static {v3}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    iput-object v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bfa_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_de5

    :cond_dd1
    cmpl-double v2, v10, v29

    if-lez v2, :cond_de5

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1060
    iput-wide v10, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x4

    .line 1061
    iput v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    .line 1062
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_de5
    :goto_de5
    move-object v10, v1

    goto/16 :goto_f47

    .line 1066
    :cond_de8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    rem-int/2addr v1, v2

    if-nez v1, :cond_f47

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1069
    :goto_df6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    if-ge v3, v4, :cond_ef6

    mul-int/lit8 v4, v3, 0x6

    .line 1071
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-int/lit8 v7, v4, 0x1

    .line 1072
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-int/lit8 v9, v4, 0x2

    .line 1073
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-int/lit8 v9, v4, 0x3

    .line 1074
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    add-int/lit8 v9, v4, 0x4

    .line 1075
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const/4 v9, 0x5

    add-int/2addr v4, v9

    .line 1076
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v32

    cmpl-double v4, v5, v29

    if-lez v4, :cond_ea5

    cmpl-double v4, v7, v29

    if-lez v4, :cond_ea5

    cmpl-double v4, v11, v29

    if-lez v4, :cond_ea5

    cmpl-double v4, v13, v29

    if-lez v4, :cond_ea5

    cmpl-double v4, v15, v29

    if-lez v4, :cond_ea5

    cmpl-double v4, v32, v29

    if-lez v4, :cond_ea5

    add-double v34, v5, v11

    sub-double v34, v34, v15

    div-double v34, v34, v25

    add-double v36, v5, v15

    sub-double v36, v36, v11

    div-double v36, v36, v25

    add-double v38, v32, v13

    sub-double v38, v38, v15

    div-double v38, v38, v25

    add-double v40, v32, v15

    sub-double v40, v40, v13

    div-double v40, v40, v25

    add-double/2addr v7, v11

    add-double/2addr v7, v13

    add-double/2addr v7, v15

    mul-double v5, v5, v25

    sub-double/2addr v7, v5

    mul-double v32, v32, v25

    sub-double v7, v7, v32

    div-double v7, v7, v22

    .line 1085
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1089
    invoke-static/range {v40 .. v41}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ef2

    :cond_ea5
    iget-object v4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1091
    iget-boolean v4, v4, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    if-eqz v4, :cond_ecf

    .line 1092
    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ef6

    .line 1099
    :cond_ecf
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    invoke-static/range {v27 .. v28}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ef2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_df6

    :cond_ef6
    :goto_ef6
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x0

    .line 1108
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x1

    .line 1109
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp2:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x2

    .line 1110
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp3:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v3, 0x3

    .line 1111
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp4:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v4, 0x4

    .line 1112
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iput-wide v3, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->imp5:D

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1113
    iput-object v1, v2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    goto/16 :goto_de5

    :cond_f47
    :goto_f47
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1120
    iput-object v10, v1, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    .line 1121
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/common/ICAlgorithmManager;->calc(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 1122
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->replyDevice(IZ)V

    .line 1123
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    const/4 v1, 0x0

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastState:I

    goto/16 :goto_13ac

    :cond_f6c
    :goto_f6c
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v31, v7

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x4

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    iput-object v5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v1, :cond_f84

    .line 645
    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 649
    :cond_f84
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 650
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v6, "supportHr"

    .line 651
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "supportGravity"

    .line 652
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "supportBanlance"

    .line 653
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "supportOTA"

    .line 654
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "supportOffline"

    .line 655
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v12, "calc_type"

    .line 656
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v13, "supportUserInfo"

    .line 657
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "userCount_max"

    .line 658
    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "unit_support_kg"

    .line 659
    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v3, "unit_support_lb"

    .line 660
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "unit_support_st"

    .line 661
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v21, v11

    const-string v11, "unit_support_jin"

    .line 662
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v22, v11

    const-string v11, "pole"

    .line 663
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v23, v11

    const-string v11, "freq_count"

    .line 664
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v24, v11

    const-string v11, "fun_open_imp"

    .line 665
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v25, v11

    const-string v11, "fun_open_banlance"

    .line 666
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v26, v11

    const-string v11, "fun_open_hr"

    .line 667
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v27, v11

    const-string v11, "fun_open_gravity"

    .line 668
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v28, v11

    const-string v11, "batter_type"

    .line 669
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v29, v11

    const-string v11, "alg_type"

    .line 670
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v30, v11

    const-string v11, "imp_property"

    .line 671
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v32, v11

    const-string v11, "imp_precision"

    .line 672
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v33, v11

    const-string v11, "imp_count"

    .line 673
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v34, v11

    const-string v11, "alg_type2"

    .line 674
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v35, v11

    const-string v11, "pole_support"

    .line 675
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v36, v11

    const-string v11, "battery"

    .line 676
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v37, v11

    const-string v11, "protocol_ver2"

    .line 677
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocol_ver2:I

    const-string v11, "wifi_test_state"

    .line 679
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    const-string v11, "sound_language_code"

    .line 682
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v38, v11

    const-string v11, "sound_volume"

    .line 683
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v39, v11

    const-string v11, "sound_broadcast_enable"

    .line 684
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v40, v11

    const-string v11, "sound_effects_enable"

    .line 685
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v41, v11

    const-string v11, "sound_support_sound_language_list"

    .line 686
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    move-object/from16 v42, v11

    const-string v11, "support_funs"

    .line 687
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    move-object/from16 v43, v11

    const-string v11, "support_ui_item_list"

    .line 688
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v11, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 690
    iput v1, v11, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->kg_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 691
    iput v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->lb_scale_division:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v6, :cond_116b

    const/4 v2, 0x1

    goto :goto_116c

    :cond_116b
    const/4 v2, 0x0

    .line 692
    :goto_116c
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportHr:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v8, :cond_1174

    const/4 v2, 0x1

    goto :goto_1175

    :cond_1174
    const/4 v2, 0x0

    .line 693
    :goto_1175
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportBalance:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v7, :cond_117d

    const/4 v2, 0x1

    goto :goto_117e

    :cond_117d
    const/4 v2, 0x0

    .line 694
    :goto_117e
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportGravity:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v9, :cond_1186

    const/4 v2, 0x1

    goto :goto_1187

    :cond_1186
    const/4 v2, 0x0

    .line 695
    :goto_1187
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportOTA:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v10, :cond_118f

    const/4 v2, 0x1

    goto :goto_1190

    :cond_118f
    const/4 v2, 0x0

    .line 696
    :goto_1190
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportOffline:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 697
    iput v12, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfDataCalcType:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v13, :cond_119c

    const/4 v2, 0x1

    goto :goto_119d

    :cond_119c
    const/4 v2, 0x0

    .line 698
    :goto_119d
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUserInfo:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 699
    iput v14, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->maxUserCount:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v15, :cond_11a9

    const/4 v2, 0x1

    goto :goto_11aa

    :cond_11a9
    const/4 v2, 0x0

    .line 701
    :goto_11aa
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitKg:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v3, :cond_11b2

    const/4 v2, 0x1

    goto :goto_11b3

    :cond_11b2
    const/4 v2, 0x0

    .line 702
    :goto_11b3
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitLb:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v4, :cond_11bb

    const/4 v2, 0x1

    goto :goto_11bc

    :cond_11bb
    const/4 v2, 0x0

    .line 703
    :goto_11bc
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitStLb:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v22, :cond_11c4

    const/4 v2, 0x1

    goto :goto_11c5

    :cond_11c4
    const/4 v2, 0x0

    .line 704
    :goto_11c5
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUnitJin:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move/from16 v2, v23

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11d1

    const/16 v6, 0x8

    goto :goto_11d2

    :cond_11d1
    const/4 v6, 0x4

    .line 706
    :goto_11d2
    iput v6, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->pole:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move/from16 v2, v24

    .line 707
    iput v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceType:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move/from16 v2, v34

    .line 708
    iput v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceCount:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move/from16 v2, v33

    .line 709
    iput v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendencePrecision:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v36, :cond_11ec

    const/4 v2, 0x1

    goto :goto_11ed

    :cond_11ec
    const/4 v2, 0x0

    .line 710
    :goto_11ed
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportChangePole:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v26, :cond_11f5

    const/4 v2, 0x1

    goto :goto_11f6

    :cond_11f5
    const/4 v2, 0x0

    .line 712
    :goto_11f6
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureBalance:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v25, :cond_11fe

    const/4 v2, 0x1

    goto :goto_11ff

    :cond_11fe
    const/4 v2, 0x0

    .line 713
    :goto_11ff
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureImpendence:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v28, :cond_1207

    const/4 v2, 0x1

    goto :goto_1208

    :cond_1207
    const/4 v2, 0x0

    .line 714
    :goto_1208
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureGravity:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-lez v27, :cond_1210

    const/4 v2, 0x1

    goto :goto_1211

    :cond_1210
    const/4 v2, 0x0

    .line 715
    :goto_1211
    iput-boolean v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->enableMeasureHr:Z

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move/from16 v2, v29

    .line 717
    iput v2, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->batteryType:I

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-nez v30, :cond_1220

    .line 719
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_1224

    :cond_1220
    invoke-static/range {v30 .. v30}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    :goto_1224
    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    if-nez v35, :cond_122d

    .line 720
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;->ICBFATypeUnknown:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    goto :goto_1231

    :cond_122d
    invoke-static/range {v30 .. v30}, Lcn/icomon/icdevicemanager/common/ICCommon;->getBFAType(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    move-result-object v3

    :goto_1231
    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->bfaType2:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBFAType;

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move/from16 v3, v32

    .line 721
    iput v3, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->impendenceProperty:I

    if-nez v43, :cond_1241

    .line 725
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1243

    :cond_1241
    move-object/from16 v11, v43

    :goto_1243
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 728
    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    if-eqz v1, :cond_1287

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    const-string v3, "FI2019LB-G"

    .line 729
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_126d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    const-string v3, "FG2305ULB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_126d

    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    const-string v3, "FI1914LB-D"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1287

    .line 731
    :cond_126d
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionSupportNickName:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionSupportNickNameImg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    :cond_1287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1290
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 738
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1290

    :cond_12a8
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 741
    iput-object v1, v3, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->supportFuns:Ljava/util/List;

    .line 743
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;-><init>()V

    move/from16 v3, v38

    .line 744
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundLanguageCode:I

    move/from16 v3, v39

    .line 745
    iput v3, v1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundVolume:I

    move/from16 v4, v40

    const/4 v3, 0x1

    if-ne v4, v3, :cond_12c0

    const/4 v4, 0x1

    goto :goto_12c1

    :cond_12c0
    const/4 v4, 0x0

    .line 746
    :goto_12c1
    iput-boolean v4, v1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundBroadcastOn:Z

    move/from16 v4, v41

    if-ne v4, v3, :cond_12c9

    const/4 v3, 0x1

    goto :goto_12ca

    :cond_12c9
    const/4 v3, 0x0

    .line 747
    :goto_12ca
    iput-boolean v3, v1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundEffectsOn:Z

    if-nez v42, :cond_12d4

    .line 750
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_12d6

    :cond_12d4
    move-object/from16 v3, v42

    .line 752
    :goto_12d6
    iput-object v3, v1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->listSoundSupportLanguage:Ljava/util/ArrayList;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 753
    iput-object v1, v3, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->icScaleSoundSettingData:Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

    if-eqz v5, :cond_1303

    .line 757
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 759
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12ff

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 760
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICScaleUIItem;->valueOf(I)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICScaleUIItem;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12e7

    :cond_12ff
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 763
    iput-object v1, v3, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->listSupportUIItem:Ljava/util/List;

    .line 766
    :cond_1303
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->replyDevice(IZ)V

    if-eqz v11, :cond_1355

    .line 768
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionSupportUploadBodyfat:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131f

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportUploadBodyfat:Z

    .line 771
    :cond_131f
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionWiFi:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1331

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isNewConfigWifi:Z

    .line 774
    :cond_1331
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionSupportNickName:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1343

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickName:Z

    .line 777
    :cond_1343
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionSupportNickNameImg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1355

    iput-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickNameImg:Z

    :cond_1355
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoDict:Ljava/util/Map;

    iget-boolean v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportUploadBodyfat:Z

    .line 781
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "support_upload_bodyfat"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    invoke-direct/range {p0 .. p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->checkAndWriteUser()V

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isFirstRev:Z

    if-nez v1, :cond_1372

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isFirstRev:Z

    .line 789
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_1372
    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_noDeviceInfo:Z

    if-nez v1, :cond_1388

    iget-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isFirstCallDevInfo:Z

    if-eqz v1, :cond_1388

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isFirstCallDevInfo:Z

    .line 795
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDeviceInfo:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    invoke-virtual {v3}, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->clone()Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_1388
    const/4 v1, 0x1

    if-eq v2, v1, :cond_138e

    const/4 v1, 0x2

    if-ne v2, v1, :cond_13ac

    .line 801
    :cond_138e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "battery"

    .line 802
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb

    .line 803
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_13ac
    :goto_13ac
    move-object/from16 v1, p1

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    const/4 v4, 0x0

    goto/16 :goto_6f

    :cond_13b5
    move-object/from16 v20, v2

    .line 1481
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1401

    .line 1482
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v3, p1

    iget-object v3, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->data:[B

    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "decode failed:%s"

    invoke-static {v1, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1401

    :cond_13d7
    move-object v3, v1

    .line 1485
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusImperfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_13ed

    .line 1486
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data imperfect"

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1401

    :cond_13ed
    const/4 v4, 0x0

    .line 1490
    iget-object v1, v3, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusVerifyError:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne v1, v2, :cond_1401

    .line 1491
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify data error"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1401
    :goto_1401
    return-void
.end method

.method private handleSendFile()V
    .registers 6

    .line 1895
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getCurrentFileInfo()Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    move-result-object v0

    .line 1896
    iget v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->packageFrameCount:I

    add-int/2addr v1, v2

    .line 1897
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->frameDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_17

    .line 1898
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->frameDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_17
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameDatas:Ljava/util/List;

    .line 1901
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1903
    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    :goto_1e
    if-ge v2, v1, :cond_30

    .line 1904
    iget-object v3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->frameDatas:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameDatas:Ljava/util/List;

    .line 1905
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1908
    :cond_30
    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendFrameCount:I

    .line 1909
    iget v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendFrameCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameIndex:I

    .line 1911
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeNextFrameData()V

    return-void
.end method

.method private postUploadData(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 4

    .line 554
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;-><init>()V

    .line 555
    iput-object p1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->step:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    .line 556
    iput-object p2, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUUploadDataExModel;->model:Ljava/lang/Object;

    .line 557
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadDataEx:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method

.method private replyDevice(IZ)V
    .registers 5

    .line 1496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "reply_package_index"

    .line 1498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p1, p2, 0x1

    .line 1499
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "state"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1500
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "package_index"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "unit"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 p2, 0xff

    if-le p1, p2, :cond_44

    const/4 p1, 0x0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_44
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xb0

    .line 1507
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 1508
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5d

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1509
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_5d
    return-void
.end method

.method private sendCMD(ILjava/lang/Object;)I
    .registers 7

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1719
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1720
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "device_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cmd"

    .line 1721
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne p1, v2, :cond_2b

    const-string p1, "len"

    .line 1723
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    if-nez p2, :cond_2f

    const-string p2, ""

    :cond_2f
    const-string p1, "param"

    .line 1725
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "package_index"

    .line 1726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "unit"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 p2, 0xff

    if-le p1, p2, :cond_5c

    const/4 p1, 0x0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_5c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xbd

    .line 1732
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1734
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    return v0
.end method

.method private sendFileInfo(IIIIIII)I
    .registers 12

    .line 1818
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v0

    .line 1819
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1821
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "package_index"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "unit"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "device_type"

    .line 1823
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fileType"

    .line 1824
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fileDataType"

    .line 1825
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fileSize"

    .line 1826
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "originFileSize"

    .line 1827
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cs"

    .line 1828
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "userId"

    .line 1829
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "nickNameCS"

    .line 1830
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 p2, 0xff

    if-le p1, p2, :cond_7c

    const/4 p1, 0x0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_7c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 p2, 0xbc

    .line 1836
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 1837
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_95

    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1838
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_95
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    return p1
.end method

.method private setScaleHeightUnit()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 1596
    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->supportFuns:Ljava/util/List;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->supportFuns:Ljava/util/List;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;->ICDeviceFunctionSupportHeightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceFunction;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_85

    .line 1600
    :cond_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 1602
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->rulerUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "unit_height"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "device_type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "package_index"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1607
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "unit"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_6c

    const/4 v1, 0x0

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_6c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xb6

    .line 1613
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 1614
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_85

    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1615
    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_85
    :goto_85
    return-void
.end method

.method private setServerUrl(Ljava/lang/String;)V
    .registers 6

    .line 1633
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v0

    .line 1634
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "device_type"

    .line 1635
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    .line 1636
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x2b

    if-ne v0, p1, :cond_49

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1639
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "package_index"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "unit"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 v0, 0xff

    if-le p1, v0, :cond_46

    const/4 p1, 0x0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_46
    const/16 p1, 0xb7

    goto :goto_4b

    :cond_49
    const/16 p1, 0xb5

    :goto_4b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 1649
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1650
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_62
    return-void
.end method

.method private setUIItems(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1656
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v1, v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v1, v2, :cond_24

    const-string v1, "type"

    .line 1659
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    const-string v1, "items"

    .line 1661
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1662
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package_index"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 v1, 0xff

    if-le p1, v1, :cond_53

    iput v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_53
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xb6

    .line 1669
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 1670
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6c

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1671
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_6c
    return-void
.end method

.method private startWriteDatas(Z)V
    .registers 9

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_sendingFile:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    if-eqz v0, :cond_9

    .line 301
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->isStart:Z

    if-eqz v0, :cond_9

    return-void

    .line 306
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatas:Ljava/util/ArrayList;

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatasUser:Ljava/util/ArrayList;

    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndex:Ljava/lang/Integer;

    .line 311
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndexUser:Ljava/lang/Integer;

    .line 312
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    .line 316
    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 318
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_49

    .line 320
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 321
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    :cond_49
    if-eqz v2, :cond_4c

    goto :goto_4f

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_4f
    :goto_4f
    if-eqz v2, :cond_95

    if-nez v4, :cond_54

    goto :goto_95

    :cond_54
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriteWithResp:Z

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    if-eqz v0, :cond_7d

    iget-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    if-nez v5, :cond_7d

    if-eqz p1, :cond_7d

    .line 337
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 338
    iget-object v0, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    .line 340
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_94

    :cond_7d
    if-nez v0, :cond_94

    .line 342
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 343
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 344
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_94
    :goto_94
    return-void

    .line 331
    :cond_95
    :goto_95
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->checkFile()V

    return-void
.end method

.method private updateInfo(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;I)I
    .registers 10

    .line 1514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 1515
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 1517
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const-string v4, "package_index"

    .line 1519
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "unit"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/4 v4, 0x1

    add-int/2addr p1, v4

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 v5, 0xff

    const/4 v6, 0x0

    if-le p1, v5, :cond_3c

    iput v6, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_3c
    const-string p1, "time"

    .line 1527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "utc_offset"

    .line 1528
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "user_index"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "weight"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    const-string v0, "nickName"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->calcNickNameCheckSum(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "nickNameCS"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "headIndex"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "headSeq"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "peopleType"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "target_weight"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "start_weight"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result p1

    if-ne p1, v4, :cond_fe

    const/4 v6, 0x1

    :cond_fe
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sex"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "age"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-wide v0, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fun_open_imp"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fun_open_banlance"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fun_open_hr"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fun_open_gravity"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "fun_open_baby_mode"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lang"

    .line 1548
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result p1

    const/16 p2, 0x2b

    if-ne p1, p2, :cond_184

    const/16 p2, 0xb8

    goto :goto_186

    :cond_184
    const/16 p2, 0xb1

    :goto_186
    const/16 v0, 0x28

    if-ne p1, v0, :cond_19f

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocol_ver2:I

    const/4 v0, -0x1

    const/16 v1, 0xba

    if-eq p1, v0, :cond_194

    if-ne p1, v4, :cond_1b0

    goto :goto_19c

    .line 1563
    :cond_194
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    if-ne p1, v4, :cond_1b0

    :goto_19c
    const/16 p2, 0xba

    goto :goto_1b0

    :cond_19f
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1b0

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickName:Z

    if-eqz p1, :cond_1ae

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickNameImg:Z

    if-nez p1, :cond_1ae

    const/16 p2, 0xc0

    goto :goto_1b0

    :cond_1ae
    const/16 p2, 0xbe

    :cond_1b0
    :goto_1b0
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1579
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1d1

    .line 1580
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1d1

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isHasWriteCharacteristicUser:Z

    if-eqz p2, :cond_1cc

    const-string p2, "0000FFB5-0000-1000-8000-00805F9B34FB"

    .line 1582
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1d1

    :cond_1cc
    const-string p2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1585
    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    .line 1590
    :cond_1d1
    :goto_1d1
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setScaleHeightUnit()V

    return v3
.end method

.method private updateSoundSetting(Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;)V
    .registers 5

    .line 1700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1701
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundLanguageCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "language_code"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    iget v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iget-boolean v1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundBroadcastOn:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "broadcast_enable"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;->soundEffectsOn:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "effects_enable"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1706
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "package_index"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 v1, 0xff

    if-le p1, v1, :cond_69

    const/4 p1, 0x0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_69
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v1, 0xb7

    .line 1712
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1714
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private updateUserList()V
    .registers 9

    .line 1739
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfoList:Ljava/util/List;

    .line 1740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1743
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 1744
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1745
    iget v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "user_index"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "userId"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "height"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "weight"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "nickname"

    .line 1749
    iget-object v7, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "nickName"

    .line 1750
    iget-object v7, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "peopleType"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->targetWeight:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "target_weight"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    iget-wide v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->startWeight:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "start_weight"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->calcNickNameCheckSum(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "nickNameCS"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iget v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "headIndex"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    iget v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->headTypeSequence:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "headSeq"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    iget-object v6, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    invoke-virtual {v6}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ordinal()I

    move-result v6

    if-ne v6, v4, :cond_ab

    const/4 v3, 0x1

    :cond_ab
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "sex"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget v3, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "age"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-boolean v3, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fun_open_imp"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    iget-boolean v3, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureBalance:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fun_open_banlance"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-boolean v3, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureHr:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fun_open_hr"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    iget-boolean v3, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureGravity:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "fun_open_gravity"

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget-boolean v2, v2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableBabyMode:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "fun_open_baby_mode"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 1768
    :cond_fb
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getDeviceType()I

    move-result v0

    .line 1770
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "users"

    .line 1771
    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "protocol_ver"

    .line 1772
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    .line 1773
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "package_index"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "unit"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/2addr v1, v4

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    const/16 v5, 0xff

    if-le v1, v5, :cond_13b

    iput v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    :cond_13b
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_142

    const/16 v1, 0xb4

    goto :goto_144

    :cond_142
    const/16 v1, 0xb2

    :goto_144
    const/16 v3, 0x28

    if-ne v0, v3, :cond_15d

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocol_ver2:I

    const/4 v3, -0x1

    const/16 v5, 0xbb

    if-eq v0, v3, :cond_152

    if-ne v0, v4, :cond_16e

    goto :goto_15a

    .line 1789
    :cond_152
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->protocol_ver:I

    if-ne v0, v4, :cond_16e

    :goto_15a
    const/16 v1, 0xbb

    goto :goto_16e

    :cond_15d
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_16e

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickName:Z

    if-eqz v0, :cond_16c

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickNameImg:Z

    if-nez v0, :cond_16c

    const/16 v1, 0xc1

    goto :goto_16e

    :cond_16c
    const/16 v1, 0xbf

    :cond_16e
    :goto_16e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1805
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18f

    .line 1806
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_18f

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isHasWriteCharacteristicUser:Z

    if-eqz v1, :cond_18a

    const-string v1, "0000FFB5-0000-1000-8000-00805F9B34FB"

    .line 1808
    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_18f

    :cond_18a
    const-string v1, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 1811
    invoke-direct {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addWriteDatasNoEventID2(Ljava/util/List;Ljava/lang/String;)V

    :cond_18f
    :goto_18f
    return-void
.end method

.method private writeNext2(ZLjava/lang/String;)V
    .registers 10

    const-string v0, "0000FFB1-0000-1000-8000-00805F9B34FB"

    .line 352
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "0000FFB5-0000-1000-8000-00805F9B34FB"

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatas:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndex:Ljava/lang/Integer;

    goto :goto_1c

    .line 357
    :cond_f
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatasUser:Ljava/util/ArrayList;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndexUser:Ljava/lang/Integer;

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    move-object v3, v1

    :goto_1c
    if-nez v1, :cond_1f

    return-void

    :cond_1f
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_43

    iput-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    .line 369
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 370
    iget-object p2, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 371
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->character:Ljava/lang/String;

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p2, v1, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    iput-boolean v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    return-void

    .line 376
    :cond_43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    .line 378
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 379
    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 380
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v6, v3, :cond_67

    .line 381
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 382
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 385
    :cond_67
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndex:Ljava/lang/Integer;

    goto :goto_78

    .line 389
    :cond_70
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_78

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndexUser:Ljava/lang/Integer;

    .line 394
    :cond_78
    :goto_78
    invoke-direct {p0, v4}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->startWriteDatas(Z)V

    return-void
.end method

.method private writeNextFrameData()V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameDatas:Ljava/util/List;

    if-eqz v0, :cond_56

    .line 1916
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    :cond_b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameDatas:Ljava/util/List;

    const/4 v1, 0x0

    .line 1920
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameDatas:Ljava/util/List;

    .line 1921
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1922
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1923
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameIndex:I

    .line 1924
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "frame_index"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameIndex:I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const v3, 0xffa0

    .line 1926
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 1929
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeFrameData([B)V

    :cond_56
    :goto_56
    return-void
.end method


# virtual methods
.method public addFile([BIIII)V
    .registers 8

    .line 1861
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;)V

    .line 1862
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->fileData:[B

    const/4 v1, 0x0

    .line 1863
    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->curSendIndex:I

    .line 1864
    iput p3, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->eventId:I

    .line 1865
    iput p2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->type:I

    .line 1866
    iput p4, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->userId:I

    .line 1867
    iput p5, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->nickNameCS:I

    .line 1868
    invoke-direct {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->calcCheckSum([B)I

    move-result p1

    iput p1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->cs:I

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_sendingFile:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    if-eqz p1, :cond_1f

    return-void

    .line 1877
    :cond_1f
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->checkFile()V

    return-void
.end method

.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 242
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 245
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 6

    const/4 v0, 0x0

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickName:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportNickNameImg:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_cancelSendingEventId:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isNewConfigWifi:Z

    const/4 v2, -0x1

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocol_ver2:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isAllNotify:Z

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nHistoryTime:I

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastPackageIndex:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bWriteUser:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isFirstRev:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isSupportUploadBodyfat:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isCall:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_temperature:D

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriteWithResp:Z

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_noDeviceInfo:Z

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isFirstCallDevInfo:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriting:Z

    .line 192
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatas:Ljava/util/ArrayList;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndex:Ljava/lang/Integer;

    .line 195
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeDatasUser:Ljava/util/ArrayList;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_writeIndexUser:Ljava/lang/Integer;

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_nLastState:I

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameDatas:Ljava/util/List;

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_curSendingFrameIndex:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isHasWriteCharacteristicUser:Z

    .line 205
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_lastUploadWeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    .line 219
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 221
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7b

    .line 223
    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->isNotUpdateUserByGlobal:Z

    .line 226
    :cond_7b
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    if-ne v0, v1, :cond_94

    .line 227
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightGeneralV2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 228
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightGeneralV2:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandlerIndicate:Lcn/icomon/icbleprotocol/ICBleProtocol;

    goto :goto_a4

    .line 230
    :cond_94
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 231
    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightGeneral:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandlerIndicate:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 234
    :goto_a4
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->connect()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 1942
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 1947
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 1949
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->discoverServices()V

    goto :goto_14

    :cond_8
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_bStabilized:Z

    .line 1952
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerOver()V

    .line 1953
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :goto_14
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

    if-eqz p3, :cond_6

    .line 1987
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->cancelConnect()V

    return-void

    :cond_6
    const-string p3, "0000180A-0000-1000-8000-00805F9B34FB"

    .line 1991
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    .line 1992
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 1993
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    .line 1995
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_80

    :cond_3a
    const-string p3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1997
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 1998
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;

    .line 1999
    iget-object v0, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "0000FFB1-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2000
    iget-object v0, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v2

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_6e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isWriteWithResp:Z

    .line 2005
    :cond_6e
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "0000FFB5-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_46

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isHasWriteCharacteristicUser:Z

    goto :goto_46

    :cond_7b
    const-string p1, "0000FFB3-0000-1000-8000-00805F9B34FB"

    .line 2010
    invoke-virtual {p0, v1, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_80
    :goto_80
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

    if-eqz p2, :cond_6

    .line 1968
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->cancelConnect()V

    return-void

    :cond_6
    const-string p2, "0000180A-0000-1000-8000-00805F9B34FB"

    .line 1972
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_2d

    .line 1976
    :cond_19
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_27

    const/16 p1, 0x200

    .line 1977
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->requestMtu(I)V

    goto :goto_33

    :cond_27
    const-string p1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1979
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_33

    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_noDeviceInfo:Z

    .line 1974
    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->discoverCharacteristics(Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public onMtuChanged(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .registers 4

    .line 1959
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onMtuChanged(Ljava/lang/Integer;Ljava/lang/Exception;)V

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1960
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p2, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandlerIndicate:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 1961
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p2, Lcn/icomon/icbleprotocol/ICBleProtocol;->mtu:I

    const-string p1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 1962
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 14

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    if-nez v0, :cond_c

    .line 2089
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2094
    :cond_c
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_1f

    .line 2095
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_270

    .line 2097
    :cond_1f
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUnit:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    const-string v1, "EVE_ID:"

    if-ne p2, v0, :cond_4a

    .line 2098
    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 2099
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iput-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_lastUploadWeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 2101
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->userInfo:Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    iget p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lang:I

    invoke-direct {p0, p3, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->updateInfo(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;I)I

    move-result p2

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_270

    .line 2103
    :cond_4a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleConfigWifi:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_8a

    .line 2104
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 v0, 0xb

    if-eq p2, v0, :cond_60

    .line 2105
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2108
    :cond_60
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "ssid"

    .line 2110
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    .line 2111
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    .line 2112
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;

    .line 2113
    invoke-direct {p0, p2, v0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->configWifi(Ljava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiMode;)V

    .line 2114
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_270

    .line 2115
    :cond_8a
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleServerUrl:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_a6

    .line 2120
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "server"

    .line 2122
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2124
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setServerUrl(Ljava/lang/String;)V

    .line 2125
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_270

    .line 2126
    :cond_a6
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleSoundSetting:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_b8

    .line 2127
    check-cast p3, Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;

    .line 2128
    invoke-direct {p0, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->updateSoundSetting(Lcn/icomon/icdevicemanager/model/data/ICScaleSoundSettingData;)V

    .line 2129
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_270

    .line 2130
    :cond_b8
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSetScaleUIItem:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_d2

    .line 2131
    check-cast p3, Ljava/util/HashMap;

    const-string p2, "items"

    .line 2133
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2135
    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setUIItems(Ljava/util/List;)V

    .line 2136
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto/16 :goto_270

    .line 2137
    :cond_d2
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeSendData:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_1fc

    .line 2138
    check-cast p3, Ljava/util/Map;

    const-string p2, "type"

    .line 2139
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;

    const-string v0, "userId"

    .line 2140
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2142
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getCurrentFileInfo()Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    move-result-object v0

    if-eqz v0, :cond_fa

    .line 2144
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeWaitLastTaskOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2148
    :cond_fa
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send Key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2153
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;->ICSendDataTypeNickName:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;

    const/4 v9, 0x1

    const-string v2, "obj"

    if-ne p2, v1, :cond_170

    .line 2154
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2155
    instance-of p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    if-eqz p3, :cond_151

    .line 2156
    check-cast p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    .line 2158
    iget-object p3, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    .line 2159
    invoke-static {p3}, Lcn/icomon/icdevicemanager/common/ICTextTool;->text2Image(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 2160
    invoke-static {p3}, Lcn/icomon/icdevicemanager/common/ICTextTool;->image2BitmapFont(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 2161
    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->nickName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->calcNickNameCheckSum(Ljava/lang/String;)I

    move-result v7

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2163
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    move-object v2, p0

    .line 2164
    invoke-virtual/range {v2 .. v7}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addFile([BIIII)V

    goto/16 :goto_1f5

    .line 2165
    :cond_151
    instance-of p3, p2, [B

    if-eqz p3, :cond_168

    .line 2166
    move-object v3, p2

    check-cast v3, [B

    .line 2168
    invoke-direct {p0, v3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->calcCheckSum([B)I

    move-result v7

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2170
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    move-object v2, p0

    .line 2171
    invoke-virtual/range {v2 .. v7}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addFile([BIIII)V

    goto/16 :goto_1f5

    .line 2173
    :cond_168
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2176
    :cond_170
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;->ICSendDataTypePowerOnImg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSendDataType;

    if-ne p2, v1, :cond_1ee

    .line 2177
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2178
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1d3

    .line 2179
    check-cast p2, Ljava/lang/String;

    .line 2181
    :try_start_17e
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2182
    new-instance p3, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;

    invoke-direct {p3}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;-><init>()V

    .line 2183
    invoke-virtual {p3, p2}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->initWithImage(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-nez p2, :cond_195

    .line 2184
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2187
    :cond_195
    invoke-virtual {p3, v9, v8}, Lcn/icomon/icdevicemanager/common/ICLVGLImageConv;->convert(IZ)[B

    move-result-object v3

    if-nez v3, :cond_1a3

    .line 2189
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    :cond_1a3
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2192
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    .line 2193
    invoke-virtual/range {v2 .. v7}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addFile([BIIII)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_1ae} :catch_1af

    goto :goto_1f5

    :catch_1af
    move-exception p2

    .line 2196
    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p3, p3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "convert bmp error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p3, p2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2197
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_1f5

    .line 2201
    :cond_1d3
    instance-of p3, p2, [B

    if-eqz p3, :cond_1e6

    .line 2202
    move-object v3, p2

    check-cast v3, [B

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2204
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    .line 2205
    invoke-virtual/range {v2 .. v7}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->addFile([BIIII)V

    goto :goto_1f5

    .line 2207
    :cond_1e6
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2211
    :cond_1ee
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_1f5
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    add-int/2addr p1, v9

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_package_index:I

    goto/16 :goto_270

    .line 2215
    :cond_1fc
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeCancelSendData:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_232

    .line 2216
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->getCurrentFileInfo()Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;

    move-result-object p2

    if-nez p2, :cond_20c

    .line 2218
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFailed:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void

    .line 2222
    :cond_20c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_cancelSendingEventId:I

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 2223
    invoke-direct/range {v2 .. v9}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->sendFileInfo(IIIIIII)I

    .line 2224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_cancelSendingEventId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2225
    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_270

    .line 2227
    :cond_232
    sget-object v0, Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;->ICSettingPublishCodeCommand:Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;

    if-ne p2, v0, :cond_269

    .line 2228
    check-cast p3, Ljava/util/Map;

    const-string p2, "cmd"

    .line 2229
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "param"

    .line 2230
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 2232
    invoke-direct {p0, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->sendCMD(ILjava/lang/Object;)I

    move-result p3

    const/4 v0, 0x7

    if-eq p2, v0, :cond_257

    .line 2234
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    goto :goto_270

    .line 2237
    :cond_257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_settings:Ljava/util/HashMap;

    .line 2238
    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_270

    .line 2250
    :cond_269
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    :goto_270
    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string v0, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 2258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 2259
    iget-object p1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v1, "0000FFB3-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    const/4 v2, 0x1

    if-eqz p1, :cond_32

    if-eqz p3, :cond_1b

    .line 2261
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->cancelConnect()V

    return-void

    :cond_1b
    const/16 p1, 0xbb8

    .line 2265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;

    invoke-direct {p2, p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;)V

    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    .line 2276
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 2278
    :cond_32
    iget-object p1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 2280
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "notify enabled"

    invoke-static {p1, p3, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isAllNotify:Z

    .line 2284
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->checkAndWriteUser()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 2064
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 2065
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_lastUploadWeight:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget-boolean p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    if-nez p2, :cond_c

    return-void

    .line 2070
    :cond_c
    iget-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iget p1, p1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->lang:I

    invoke-direct {p0, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->updateInfo(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;I)I

    return-void
.end method

.method public onUpdateUserInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2080
    iget-boolean p1, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->isSupportUserInfo:Z

    if-eqz p1, :cond_e

    .line 2081
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->updateUserList()V

    :cond_e
    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    if-eqz p4, :cond_22

    .line 2018
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "upload data error,"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2019
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->cancelConnect()V

    return-void

    :cond_22
    const-string p4, "0000180A-0000-1000-8000-00805F9B34FB"

    .line 2022
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0000FFB0-0000-1000-8000-00805F9B34FB"

    if-eqz v0, :cond_e1

    .line 2023
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A23-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2024
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    iput-object p2, p1, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->mac:Ljava/lang/String;

    goto/16 :goto_b1

    .line 2025
    :cond_40
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A24-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2026
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->model:Ljava/lang/String;

    goto :goto_b1

    .line 2027
    :cond_53
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A25-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_66

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2028
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->sn:Ljava/lang/String;

    goto :goto_b1

    .line 2029
    :cond_66
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A26-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_79

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2030
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->firmwareVer:Ljava/lang/String;

    goto :goto_b1

    .line 2031
    :cond_79
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A27-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8c

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2032
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->hardwareVer:Ljava/lang/String;

    goto :goto_b1

    .line 2033
    :cond_8c
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "00002A28-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9f

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2034
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->softwareVer:Ljava/lang/String;

    goto :goto_b1

    .line 2035
    :cond_9f
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p3, "00002A29-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b1

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfo:Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;

    .line 2036
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byteToString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/icomon/icdevicemanager/model/device/ICScaleDeviceInfo;->manufactureName:Ljava/lang/String;

    :cond_b1
    :goto_b1
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    .line 2038
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_cd

    .line 2039
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget p1, p1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->deviceSubType:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_c9

    const/16 p1, 0x200

    .line 2040
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->requestMtu(I)V

    goto :goto_11a

    .line 2042
    :cond_c9
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->discoverCharacteristics(Ljava/lang/String;)V

    goto :goto_11a

    :cond_cd
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDs:Ljava/util/ArrayList;

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    .line 2045
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p4, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_deviceInfoUUIDsReadIndex:I

    goto :goto_11a

    .line 2048
    :cond_e1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_11a

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 2049
    invoke-virtual {p2, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p2

    .line 2051
    iget-object p4, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "0000FFB3-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_fe

    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_protocolHandlerIndicate:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 2052
    invoke-virtual {p4, p1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->addData([B)Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;

    move-result-object p1

    goto :goto_ff

    :cond_fe
    const/4 p1, 0x0

    :goto_ff
    if-eqz p1, :cond_10d

    .line 2054
    iget-object p4, p1, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object v0, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne p4, v0, :cond_10d

    .line 2055
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    goto :goto_11a

    :cond_10d
    if-eqz p2, :cond_11a

    .line 2056
    iget-object p1, p2, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;->status:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    sget-object p4, Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;->ICBlePacketStatusPerfect:Lcn/icomon/icbleprotocol/ICBleProtocolPacketData$ICBlePacketStatus;

    if-ne p1, p4, :cond_11a

    .line 2057
    iget-object p1, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V

    :cond_11a
    :goto_11a
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    if-nez p1, :cond_5

    return-void

    .line 2308
    :cond_5
    iget-object p1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v0, "0000FFB4-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 2309
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeNextFrameData()V

    goto :goto_1d

    :cond_13
    if-nez p3, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 2313
    :goto_18
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeNext2(ZLjava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public stop()V
    .registers 6

    .line 2320
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 2321
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->bStop:Z

    .line 2322
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->stopScan()V

    .line 2323
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->postWorkerOver()V

    goto :goto_3c

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_isReady:Z

    .line 2326
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v1, v2, :cond_39

    const-string v1, "0000FFB2-0000-1000-8000-00805F9B34FB"

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    .line 2327
    invoke-virtual {p0, v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    .line 2329
    :try_start_24
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception v1

    .line 2331
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2c
    const-string v1, "0000FFB3-0000-1000-8000-00805F9B34FB"

    .line 2333
    invoke-virtual {p0, v0, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2335
    :try_start_31
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception v0

    .line 2337
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2340
    :cond_39
    :goto_39
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->stop()V

    :goto_3c
    return-void
.end method

.method public writeFrameData([B)V
    .registers 5

    const-string v0, "0000FFB4-0000-1000-8000-00805F9B34FB"

    .line 544
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v2, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, p1, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    return-void
.end method

.method public writeFrameDatas(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 548
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "0000FFB4-0000-1000-8000-00805F9B34FB"

    .line 549
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "0000FFB0-0000-1000-8000-00805F9B34FB"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_4

    :cond_1a
    return-void
.end method
