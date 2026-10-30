.class public Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;
.source "ICSkipOTAWorker.java"


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "5833FF03-9B8B-5191-6142-22A4536EF123"

.field private static final CHARACTERISTICS_WRITE_NORESP_UUID:Ljava/lang/String; = "5833FF04-9B8B-5191-6142-22A4536EF123"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "5833FF02-9B8B-5191-6142-22A4536EF123"

.field private static final SERVICE_UUID:Ljava/lang/String; = "5833FF01-9B8B-5191-6142-22A4536EF123"


# instance fields
.field _curGroupBlockIndex:I

.field private _delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _group_index:I

.field private _isNoRespWriting:Z

.field _isWriteWithResp:Z

.field private _isWriting:Z

.field _is_in_ota:Z

.field _is_ota_success:Z

.field _last_cmd:I

.field _ota_file_info:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field _part_index:I

.field _percent:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _totalGroupBlockCount:I

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

.field private _writeNoRespDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;",
            ">;"
        }
    .end annotation
.end field

.field private _writeNoRespIndex:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic -$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;-><init>()V

    return-void
.end method

.method private addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    .line 163
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_73

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriting:Z

    const-string v2, "5833FF02-9B8B-5191-6142-22A4536EF123"

    const-string v3, "5833FF01-9B8B-5191-6142-22A4536EF123"

    if-nez p1, :cond_4e

    .line 171
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4e

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 175
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    goto :goto_72

    :cond_4e
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriteWithResp:Z

    if-nez p1, :cond_72

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 182
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-virtual {p0, p1, v3, v2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_72
    :goto_72
    return-void

    .line 165
    :cond_73
    :goto_73
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

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

    .line 153
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v1, 0x0

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 155
    iput-object p1, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 157
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->addWriteDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    return-void
.end method

.method private addWriteNoRespDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    .line 192
    iget-object v1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_79

    :cond_c
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isNoRespWriting:Z

    if-nez p1, :cond_51

    .line 200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_51

    .line 202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 204
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isNoRespWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [B

    const-string v2, "5833FF01-9B8B-5191-6142-22A4536EF123"

    const-string v3, "5833FF04-9B8B-5191-6142-22A4536EF123"

    sget-object v4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    goto :goto_78

    :cond_51
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 211
    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [B

    const-string v3, "5833FF01-9B8B-5191-6142-22A4536EF123"

    const-string v4, "5833FF04-9B8B-5191-6142-22A4536EF123"

    sget-object v5, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_78
    return-void

    .line 194
    :cond_79
    :goto_79
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "write data is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 11

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v0, 0x0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 319
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decode data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_120

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v1, "resp_type"

    .line 322
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_last_cmd:I

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_last_cmd:I

    const/16 v2, 0x81

    if-ne p2, v2, :cond_52

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    .line 328
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendPartInfoData()V

    goto :goto_2c

    :cond_52
    const/16 v3, 0x84

    const/4 v4, 0x1

    if-ne p2, v3, :cond_88

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p2, :cond_61

    .line 333
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_61
    const/16 p2, 0x3e8

    .line 336
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)V

    invoke-static {p2, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p2

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 346
    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 347
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendGroupInfoData()V

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    .line 350
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto :goto_2c

    :cond_88
    const/16 v5, 0x87

    if-ne p2, v5, :cond_9f

    .line 354
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendGroupInfoData()V

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    .line 357
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto :goto_2c

    :cond_9f
    const/16 v6, 0x85

    if-ne p2, v6, :cond_af

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    .line 363
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendPartInfoData()V

    goto/16 :goto_2c

    :cond_af
    const/16 v7, 0x83

    if-ne p2, v7, :cond_bf

    iput-boolean v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_ota_success:Z

    .line 368
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendRebootData()V

    .line 369
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto/16 :goto_2c

    :cond_bf
    if-ne v1, v2, :cond_c8

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    .line 375
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendPartInfoData()V

    goto/16 :goto_2c

    :cond_c8
    if-ne v1, v3, :cond_de

    .line 379
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendGroupInfoData()V

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    .line 382
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto/16 :goto_2c

    :cond_de
    if-ne v1, v5, :cond_f4

    .line 386
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendGroupInfoData()V

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    .line 389
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto/16 :goto_2c

    :cond_f4
    if-ne v1, v6, :cond_102

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    add-int/2addr p2, v4

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    .line 395
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendPartInfoData()V

    goto/16 :goto_2c

    :cond_102
    if-ne v1, v7, :cond_110

    iput-boolean v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_ota_success:Z

    .line 400
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendRebootData()V

    .line 401
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto/16 :goto_2c

    .line 404
    :cond_110
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p2, p2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v1, "unknown resp type, disconnect, retry ota"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v1, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->cancelConnect()V

    goto/16 :goto_2c

    :cond_120
    return-void
.end method

.method private writeNext()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    .line 260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 263
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    .line 264
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 273
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6c

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "5833FF02-9B8B-5191-6142-22A4536EF123"

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const-string v3, "5833FF01-9B8B-5191-6142-22A4536EF123"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V

    :cond_6c
    return-void
.end method

.method private writeNoRespNext()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_12

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isNoRespWriting:Z

    return-void

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isNoRespWriting:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 228
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    .line 229
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_53

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    .line 237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    .line 238
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :cond_53
    :goto_53
    if-eqz v0, :cond_6f

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isNoRespWriting:Z

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [B

    const-string v3, "5833FF01-9B8B-5191-6142-22A4536EF123"

    const-string v4, "5833FF04-9B8B-5191-6142-22A4536EF123"

    sget-object v5, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const/4 v6, 0x5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    :cond_6f
    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 144
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 147
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriteWithResp:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespDatas:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_ota_success:Z

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeDatas:Ljava/util/ArrayList;

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeIndex:Ljava/lang/Integer;

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_writeNoRespIndex:Ljava/lang/Integer;

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isNoRespWriting:Z

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_last_cmd:I

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_isWriting:Z

    .line 78
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->broadcastName:Ljava/lang/String;

    const-string v3, "PPlusOTA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_in_ota:Z

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_percent:I

    .line 82
    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerJumpRopeOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_totalGroupBlockCount:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    const-string v4, "filepath"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    new-array v4, v0, [B

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d1

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_ota_file_info:Ljava/util/HashMap;

    const-string v2, "code"

    .line 91
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_a1

    const/4 v1, -0x1

    .line 108
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$1;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    :cond_a1
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_ota_file_info:Ljava/util/HashMap;

    const-string v1, "partitions"

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "group_count"

    .line 121
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_totalGroupBlockCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_totalGroupBlockCount:I

    goto :goto_af

    .line 136
    :cond_cd
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->connect()V

    return-void

    .line 126
    :cond_d1
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load file fail, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$2;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    .line 471
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 482
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_8

    .line 485
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->discoverServices()V

    goto :goto_19

    :cond_8
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_ota_success:Z

    if-eqz p1, :cond_16

    .line 490
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerOver()V

    .line 491
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_19

    .line 494
    :cond_16
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postReConnect()V

    :goto_19
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

    const-string p3, "5833FF01-9B8B-5191-6142-22A4536EF123"

    .line 507
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 509
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

    .line 510
    iget-object v1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v2, "5833FF02-9B8B-5191-6142-22A4536EF123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 511
    iget-object p2, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->property:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->ICBleCharacteristicPropertyWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUBaseModel$ICBleCharacteristicProperty;->getValue()I

    move-result v1

    and-int/2addr p2, v1

    if-ne p2, v0, :cond_c

    :cond_32
    const-string p1, "5833FF03-9B8B-5191-6142-22A4536EF123"

    .line 518
    invoke-virtual {p0, v0, p3, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_3d
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

    const-string p1, "5833FF01-9B8B-5191-6142-22A4536EF123"

    .line 502
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 4

    .line 558
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    const-string p2, "5833FF01-9B8B-5191-6142-22A4536EF123"

    .line 527
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const-wide/16 p1, 0x3e8

    .line 529
    :try_start_a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 531
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_12
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_in_ota:Z

    if-nez p1, :cond_1a

    .line 534
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendEnterOTA()V

    goto :goto_1d

    .line 538
    :cond_1a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->sendPartCountInfoData()V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 553
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p4, "5833FF01-9B8B-5191-6142-22A4536EF123"

    .line 545
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 547
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->handlePacketData([BLjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    if-eqz p3, :cond_6

    .line 565
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->cancelConnect()V

    return-void

    .line 570
    :cond_6
    iget-object p1, p2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string p2, "5833FF04-9B8B-5191-6142-22A4536EF123"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_1a

    .line 572
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_delayTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 575
    :cond_1a
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeNoRespNext()V

    return-void

    :cond_1e
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_is_ota_success:Z

    if-eqz p1, :cond_26

    .line 579
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->cancelConnect()V

    return-void

    .line 582
    :cond_26
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->writeNext()V

    return-void
.end method

.method postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V
    .registers 8

    .line 291
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_1c

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_curGroupBlockIndex:I

    int-to-double v0, v0

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_totalGroupBlockCount:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_percent:I

    if-lt v1, v0, :cond_19

    return-void

    :cond_19
    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_percent:I

    goto :goto_24

    .line 298
    :cond_1c
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_23

    const/16 v0, 0x64

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 304
    :goto_24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x5

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    .line 306
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "percent"

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 309
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_5b

    .line 310
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "identifier"

    .line 311
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeClearCache:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method

.method sendEnterOTA()V
    .registers 4

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x5

    .line 416
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 417
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 418
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method sendGroupInfoData()V
    .registers 4

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    const-string v2, "filepath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "part_index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_group_index:I

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "block_index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x3

    .line 448
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_48

    .line 450
    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;-><init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V

    const/4 v2, 0x0

    .line 451
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->eventId:Ljava/lang/Integer;

    .line 452
    iput-object v0, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->datas:Ljava/util/List;

    .line 453
    invoke-direct {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->addWriteNoRespDatas(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;)V

    :cond_48
    return-void
.end method

.method sendPartCountInfoData()V
    .registers 4

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    const-string v2, "filepath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x1

    .line 426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 428
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_24
    return-void
.end method

.method sendPartInfoData()V
    .registers 4

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    const-string v2, "filepath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_part_index:I

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "part_index"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x2

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 437
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 438
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_2f
    return-void
.end method

.method sendRebootData()V
    .registers 4

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x6

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 463
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 464
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->addWriteDatasNoEventId(Ljava/util/List;)V

    :cond_1b
    return-void
.end method

.method public stop()V
    .registers 4

    .line 588
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->bStop:Z

    .line 590
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->stopScan()V

    .line 591
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerOver()V

    goto :goto_23

    .line 594
    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->state:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne v0, v1, :cond_20

    const-string v0, "5833FF01-9B8B-5191-6142-22A4536EF123"

    const-string v1, "5833FF03-9B8B-5191-6142-22A4536EF123"

    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_20
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->stop()V

    :goto_23
    return-void
.end method
