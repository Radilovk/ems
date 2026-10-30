.class public Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;
.source "ICBaseSTOTAWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;
    }
.end annotation


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "02F00000-0000-0000-0000-00000000FF02"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "02F00000-0000-0000-0000-00000000FF01"

.field private static final OTA_CMD_CHIP_ERASE:I = 0x4

.field private static final OTA_CMD_GET_STR_BASE:I = 0x1

.field private static final OTA_CMD_NULL:I = 0xa

.field private static final OTA_CMD_NVDS_TYPE:I = 0x0

.field private static final OTA_CMD_PAGE_ERASE:I = 0x3

.field private static final OTA_CMD_READ_DATA:I = 0x6

.field private static final OTA_CMD_READ_MEM:I = 0x8

.field private static final OTA_CMD_REBOOT:I = 0x9

.field private static final OTA_CMD_WRITE_DATA:I = 0x5

.field private static final OTA_CMD_WRITE_MEM:I = 0x7

.field private static final SERVICE_UUID:Ljava/lang/String; = "02F00000-0000-0000-0000-00000000FE00"


# instance fields
.field _already_sent_size:I

.field _baseAddr:I

.field _bin_path:Ljava/lang/String;

.field _checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _curOp:I

.field _erase_count:I

.field _erase_index:I

.field _file_size:I

.field _is_ota_success:Z

.field _is_re_upgrade:Z

.field _lastUploadTime:J

.field _otaPacketSize:I

.field _otaSentSize:I

.field _percent:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _writing:Z


# direct methods
.method static bridge synthetic -$$Nest$mreUpgrade(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V
    .registers 1

    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->reUpgrade()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_writing:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    return-void
.end method

.method private page_erase_next()V
    .registers 5

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_baseAddr:I

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_index:I

    mul-int/lit16 v1, v1, 0x1000

    add-int/2addr v0, v1

    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "filepath"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_bin_path:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "addr"

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x3

    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->write([B)V

    return-void
.end method

.method private reUpgrade()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 211
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 214
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    return-void
.end method

.method private send_firmware_next()V
    .registers 6

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_baseAddr:I

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaSentSize:I

    add-int/2addr v0, v1

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaPacketSize:I

    if-ge v2, v1, :cond_d

    goto :goto_e

    :cond_d
    move v2, v1

    .line 230
    :goto_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "filepath"

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_bin_path:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "addr"

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaSentSize:I

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "sentSize"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "size"

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x4

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->write([B)V

    return-void
.end method

.method private send_root()V
    .registers 4

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filepath"

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_bin_path:Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x2

    .line 221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->write([B)V

    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    .line 171
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->dealloc()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_d

    .line 173
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 176
    :cond_d
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->releaseResource()V

    return-void
.end method

.method public handlePacketData([BLjava/lang/String;)V
    .registers 7

    .line 260
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    move-result-object p1

    const/4 p2, 0x0

    .line 261
    invoke-virtual {p1, p2}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->SetLittleEndian(Z)V

    .line 262
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v0

    .line 263
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadByte()I

    move-result v1

    if-nez v1, :cond_23

    const-wide/16 p1, 0x3e8

    .line 268
    :try_start_14
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1c
    const/16 p1, 0x200

    .line 272
    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->requestMtu(I)V

    goto/16 :goto_126

    :cond_23
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_78

    if-ne v0, v3, :cond_3c

    .line 276
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v0, "\u83b7\u53d6\u5730\u5740\u9519\u8bef"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    return-void

    .line 280
    :cond_3c
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 281
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadShort()I

    .line 282
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->ReadInt()I

    move-result p1

    .line 284
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "base_addr="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_baseAddr:I

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    .line 289
    div-int/lit16 v0, p1, 0x1000

    .line 290
    rem-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_6d

    add-int/lit8 v0, v0, 0x1

    :cond_6d
    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_count:I

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_index:I

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_curOp:I

    .line 296
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->page_erase_next()V

    goto/16 :goto_126

    :cond_78
    if-ne v1, v2, :cond_93

    if-ne v0, v3, :cond_80

    .line 302
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->page_erase_next()V

    return-void

    :cond_80
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_index:I

    add-int/2addr p1, v3

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_index:I

    iget p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_count:I

    if-lt p1, p2, :cond_8e

    .line 309
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->send_firmware_next()V

    goto/16 :goto_126

    .line 312
    :cond_8e
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->page_erase_next()V

    goto/16 :goto_126

    :cond_93
    const/4 p1, 0x5

    if-ne v1, p1, :cond_d0

    .line 316
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    if-ne v0, v3, :cond_ae

    .line 319
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v0, "resend file data"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->send_firmware_next()V

    return-void

    :cond_ae
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaSentSize:I

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaPacketSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaSentSize:I

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_already_sent_size:I

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    if-lt p1, v0, :cond_cc

    .line 327
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v0, "send file finish"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->send_root()V

    goto :goto_126

    .line 331
    :cond_cc
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->send_firmware_next()V

    goto :goto_126

    :cond_d0
    const/16 p1, 0x9

    if-ne v1, p1, :cond_119

    const/4 p1, 0x0

    if-eqz v0, :cond_f8

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_is_ota_success:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_e2

    .line 339
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 342
    :cond_e2
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v0, "upgrade fail"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 345
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    goto :goto_126

    :cond_f8
    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_is_ota_success:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_103

    .line 350
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 353
    :cond_103
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v0, "upgrade success"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 355
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    goto :goto_126

    .line 360
    :cond_119
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v0, "unknown command"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_126
    return-void
.end method

.method public initWorker()V
    .registers 7

    const/16 v0, 0x1f4

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaPacketSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaSentSize:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_index:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_erase_count:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_lastUploadTime:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_is_re_upgrade:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_is_ota_success:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_percent:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_already_sent_size:I

    .line 119
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_bin_path:Ljava/lang/String;

    .line 121
    sget-object v1, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerBaseSTOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "filepath"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_bin_path:Ljava/lang/String;

    .line 124
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v3, 0x1

    new-array v4, v3, [B

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 128
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_98

    .line 129
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "code"

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "load file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_86

    const/4 v0, -0x1

    .line 147
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$$ExternalSyntheticLambda0;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    :cond_86
    const-string v0, "file_size"

    .line 153
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    .line 166
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->connect()V

    return-void

    .line 156
    :cond_98
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v1, v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load file fail, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$1;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method synthetic lambda$initWorker$0$cn-icomon-icdevicemanager-manager-worker-ota-ICBaseSTOTAWorker()V
    .registers 2

    .line 148
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailFileInvalid:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 149
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerOver()V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 2

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_a

    .line 373
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 377
    :cond_a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    if-eqz p2, :cond_a

    .line 382
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_a

    .line 384
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    return-void

    .line 388
    :cond_a
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_1c

    const-wide/16 p1, 0x258

    .line 391
    :try_start_10
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 395
    :goto_18
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->discoverServices()V

    goto :goto_3e

    :cond_1c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_26

    .line 400
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 403
    :cond_26
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->bStop:Z

    if-eqz p1, :cond_2e

    .line 404
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerOver()V

    return-void

    :cond_2e
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_is_ota_success:Z

    if-eqz p1, :cond_3b

    .line 408
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerOver()V

    .line 409
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_3e

    .line 412
    :cond_3b
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postReConnect()V

    :goto_3e
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

    if-eqz p3, :cond_b

    .line 448
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 449
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    return-void

    :cond_b
    const-string p2, "02F00000-0000-0000-0000-00000000FE00"

    .line 452
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    const-string p3, "02F00000-0000-0000-0000-00000000FF02"

    .line 455
    invoke-virtual {p0, p1, p2, p3}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public onDiscoverServices(Ljava/util/List;Ljava/lang/Exception;)V
    .registers 5
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

    if-eqz p2, :cond_b

    .line 421
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 422
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    return-void

    .line 426
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "02F00000-0000-0000-0000-00000000FE00"

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p2, 0x1

    goto :goto_10

    :cond_26
    if-nez p2, :cond_31

    .line 432
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 433
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->stop()V

    return-void

    :cond_31
    const-wide/16 p1, 0x3e8

    .line 437
    :try_start_33
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 442
    :goto_3b
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onMtuChanged(Ljava/lang/Integer;Ljava/lang/Exception;)V
    .registers 4

    if-eqz p2, :cond_6

    .line 465
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    return-void

    .line 468
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x9

    iput p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_otaPacketSize:I

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 470
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 471
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->write([B)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 4

    .line 525
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p2, "02F00000-0000-0000-0000-00000000FE00"

    .line 476
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    const-wide/16 p1, 0x3e8

    .line 478
    :try_start_a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 480
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_12
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_29

    .line 483
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, p1

    const-string p1, "set notify error: %s"

    invoke-static {v0, p1, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->cancelConnect()V

    return-void

    :cond_29
    const/16 p3, 0x2710

    .line 488
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;

    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V

    invoke-static {p3, v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p3

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    iget-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p2

    .line 505
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->write([B)V

    :cond_52
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 520
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string p4, "02F00000-0000-0000-0000-00000000FE00"

    .line 511
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_lastUploadTime:J

    .line 514
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->handlePacketData([BLjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 4

    return-void
.end method

.method postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V
    .registers 8

    .line 183
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_1c

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_already_sent_size:I

    int-to-double v0, v0

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_file_size:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_percent:I

    if-lt v1, v0, :cond_19

    return-void

    :cond_19
    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_percent:I

    goto :goto_24

    .line 190
    :cond_1c
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_23

    const/16 v0, 0x64

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 196
    :goto_24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x5

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    .line 198
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "percent"

    .line 199
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_5b

    .line 202
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "identifier"

    .line 203
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeClearCache:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method

.method public releaseResource()V
    .registers 4

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "filepath"

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_bin_path:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0xff

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    return-void
.end method

.method write([B)V
    .registers 8

    const-string v2, "02F00000-0000-0000-0000-00000000FE00"

    const-string v3, "02F00000-0000-0000-0000-00000000FF01"

    .line 367
    sget-object v4, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    return-void
.end method
