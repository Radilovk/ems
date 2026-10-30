.class public Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;
.super Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;
.source "ICNrfOTAWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;
    }
.end annotation


# static fields
.field private static final CHARACTERISTICS_NOTIFY_UUID:Ljava/lang/String; = "00001531-1212-EFDE-1523-785FEABCD123"

.field private static final CHARACTERISTICS_READ_UUID:Ljava/lang/String; = "00001534-1212-EFDE-1523-785FEABCD123"

.field private static final CHARACTERISTICS_WRITE_NORESP_UUID:Ljava/lang/String; = "00001532-1212-EFDE-1523-785FEABCD123"

.field private static final CHARACTERISTICS_WRITE_UUID:Ljava/lang/String; = "00001531-1212-EFDE-1523-785FEABCD123"

.field private static final SERVICE_UUID:Ljava/lang/String; = "00001530-1212-EFDE-1523-785FEABCD123"

.field private static final activateAndReset:I = 0x5

.field private static final crcError:I = 0x5

.field private static final dataSizeExceedsLimit:I = 0x4

.field private static final initDfuParameters:I = 0x2

.field private static final invalidState:I = 0x2

.field private static final notSupported:I = 0x3

.field private static final operationFailed:I = 0x6

.field private static final packetReceiptNotification:I = 0x11

.field private static final packetReceiptNotificationRequest:I = 0x8

.field private static final receiveFirmwareImage:I = 0x3

.field private static final reportReceivedImageSize:I = 0x7

.field private static final reset:I = 0x6

.field private static final responseCode:I = 0x10

.field private static final startDfu:I = 0x1

.field private static final success:I = 0x1

.field private static final validateFirmware:I = 0x4


# instance fields
.field _already_sent_size:I

.field _bin_path:Ljava/lang/String;

.field _checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

.field _cur_op:I

.field _cur_sub_op:I

.field _dat_path:Ljava/lang/String;

.field _file_size:I

.field _isOldNrfType:Z

.field _isReceiveUploadingSuccess:Z

.field _isSentOver:Z

.field _is_ota_success:Z

.field _is_re_upgrade:Z

.field _lastUploadTime:J

.field _otaType:I

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

.field _percent:I

.field _prn:I

.field private _protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

.field _readSize:I

.field _writedatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;",
            ">;"
        }
    .end annotation
.end field

.field _writing:Z

.field _zip_exact_path:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mreUpgrade(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V
    .registers 1

    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->reUpgrade()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writing:Z

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_is_re_upgrade:Z

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_readSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_lastUploadTime:J

    return-void
.end method

.method private checkNext()V
    .registers 10

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 380
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "writing"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_29

    .line 384
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "write size = 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_29
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 387
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;

    .line 388
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->writeIndex:I

    if-ne v2, v3, :cond_51

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_49

    return-void

    :cond_49
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;

    .line 395
    :cond_51
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->datas:Ljava/util/List;

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->writeIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [B

    .line 396
    iget v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->writeIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->writeIndex:I

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writing:Z

    .line 398
    iget-object v2, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->writeIndex:I

    if-ne v2, v3, :cond_73

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 399
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 402
    :cond_73
    iget-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    if-ne v1, v2, :cond_86

    const-string v5, "00001530-1212-EFDE-1523-785FEABCD123"

    const-string v6, "00001532-1212-EFDE-1523-785FEABCD123"

    .line 403
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    iget v8, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->delay:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    goto :goto_92

    :cond_86
    const-string v5, "00001530-1212-EFDE-1523-785FEABCD123"

    const-string v6, "00001531-1212-EFDE-1523-785FEABCD123"

    .line 406
    iget-object v7, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    iget v8, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->delay:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;I)V

    :goto_92
    return-void
.end method

.method private handleFlow()V
    .registers 14

    .line 446
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "cur_op=%d, sub_op=%d"

    invoke-static {v0, v3, v2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    const-string v2, "type"

    const-string v3, "datpath"

    const-string v6, "filepath"

    if-eq v0, v5, :cond_351

    const/16 v7, 0xa

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v0, v1, :cond_28f

    if-eq v0, v10, :cond_101

    const/16 v10, 0x64

    if-eq v0, v9, :cond_a5

    if-eq v0, v8, :cond_3b

    goto/16 :goto_3b6

    :cond_3b
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    if-nez v0, :cond_9f

    iput v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 650
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 651
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 652
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 653
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 654
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6e

    .line 655
    invoke-direct {p0, v0, v10}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;I)V

    :cond_6e
    const-wide/16 v0, 0x1f4

    .line 658
    :try_start_70
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_78

    :catch_74
    move-exception v0

    .line 660
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_78
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_82

    .line 663
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_82
    iput-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_is_ota_success:Z

    .line 667
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    const/16 v0, 0x7d0

    .line 668
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 678
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    goto/16 :goto_3b6

    :cond_9f
    if-ne v0, v5, :cond_3b6

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    goto/16 :goto_3b6

    .line 633
    :cond_a5
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "sent size="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_readSize:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\uff0cremain="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 636
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 637
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/16 v2, 0x9

    .line 639
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 640
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 641
    invoke-direct {p0, v0, v10}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;I)V

    goto/16 :goto_3b6

    :cond_101
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isOldNrfType:Z

    const/16 v7, 0x8

    const-string v8, "sent_size"

    const/4 v11, 0x7

    const-string v12, "prn"

    if-eqz v0, :cond_1bb

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    if-nez v0, :cond_141

    iput v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 531
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 532
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 534
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 535
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 536
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;)V

    goto/16 :goto_3b6

    :cond_141
    if-ne v0, v5, :cond_3b6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_14f

    .line 541
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->checkNext()V

    return-void

    :cond_14f
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_file_size:I

    if-ge v0, v1, :cond_1b4

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 547
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 548
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    .line 550
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_prn:I

    .line 551
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 553
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1ab

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 554
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 555
    invoke-direct {p0, v0, v4}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeNoResp(Ljava/util/List;I)V

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_198
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1ab

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    .line 558
    array-length v1, v1

    add-int/2addr v2, v1

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    goto :goto_198

    :cond_1ab
    iput v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 562
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    goto/16 :goto_3b6

    :cond_1b4
    iput-boolean v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isSentOver:Z

    .line 566
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->sendValidFirmware()V

    goto/16 :goto_3b6

    :cond_1bb
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    if-nez v0, :cond_1fa

    iput v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 574
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 575
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 576
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_prn:I

    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v2, 0x6

    .line 578
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 579
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 580
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;)V

    goto/16 :goto_3b6

    :cond_1fa
    if-ne v0, v5, :cond_22d

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 586
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 587
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 588
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 589
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 590
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 591
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;)V

    goto/16 :goto_3b6

    :cond_22d
    if-ne v0, v1, :cond_288

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 595
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_23b

    .line 596
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->checkNext()V

    return-void

    :cond_23b
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_file_size:I

    if-ge v0, v1, :cond_284

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 601
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 602
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 603
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    .line 604
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_prn:I

    .line 605
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 607
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_280

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 608
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 613
    invoke-direct {p0, v0, v4}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeNoResp(Ljava/util/List;I)V

    :cond_280
    iput v10, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    goto/16 :goto_3b6

    :cond_284
    iput v9, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    goto/16 :goto_3b6

    :cond_288
    if-ne v0, v10, :cond_3b6

    .line 622
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->checkNext()V

    goto/16 :goto_3b6

    :cond_28f
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    const/16 v11, 0x32

    if-nez v0, :cond_2c6

    iput v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 481
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 482
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 483
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 485
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 486
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 487
    invoke-direct {p0, v0, v11}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;I)V

    goto/16 :goto_3b6

    :cond_2c6
    if-ne v0, v5, :cond_2f9

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 492
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 493
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 494
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 497
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 498
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 499
    invoke-direct {p0, v0, v7}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeNoResp(Ljava/util/List;I)V

    goto/16 :goto_3b6

    :cond_2f9
    if-ne v0, v1, :cond_3b6

    iput v10, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 506
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 507
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 508
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 510
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    .line 511
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 512
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3b6

    .line 514
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 515
    aget-byte v2, v0, v4

    aput-byte v2, v1, v4

    .line 516
    aget-byte v0, v0, v5

    aput-byte v0, v1, v5

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-direct {p0, v0, v11}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;I)V

    goto :goto_3b6

    :cond_351
    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    if-nez v0, :cond_385

    iput v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 453
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 454
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 457
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 458
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 459
    invoke-direct {p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeResp(Ljava/util/List;)V

    goto :goto_3b6

    :cond_385
    if-ne v0, v5, :cond_3b6

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 465
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 466
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 467
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    .line 469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->encodeData(Ljava/util/Map;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3b6

    .line 470
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3b6

    .line 471
    invoke-direct {p0, v0, v5}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeNoResp(Ljava/util/List;I)V

    :cond_3b6
    :goto_3b6
    return-void
.end method

.method private handlePacketData([BLjava/lang/String;)V
    .registers 8

    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const/4 v0, 0x2

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    .line 312
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

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

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2, v1, v3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string v1, "opCode"

    .line 315
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x10

    const/4 v4, 0x3

    if-ne v1, v3, :cond_a7

    const-string v1, "requestOpCode"

    .line 317
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "status"

    .line 318
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_73

    if-ne p2, v3, :cond_6f

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 323
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    goto :goto_2d

    .line 326
    :cond_6f
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->reUpgrade()V

    goto :goto_2d

    :cond_73
    if-ne v1, v0, :cond_83

    if-ne p2, v3, :cond_7f

    iput v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    .line 333
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    goto :goto_2d

    .line 336
    :cond_7f
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->reUpgrade()V

    goto :goto_2d

    :cond_83
    if-ne v1, v4, :cond_93

    if-ne p2, v3, :cond_8f

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isReceiveUploadingSuccess:Z

    iput-boolean v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isSentOver:Z

    .line 344
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->sendValidFirmware()V

    goto :goto_2d

    .line 347
    :cond_8f
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->reUpgrade()V

    goto :goto_2d

    :cond_93
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2d

    if-ne p2, v3, :cond_a3

    const/4 p2, 0x5

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    iput-boolean v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writing:Z

    .line 355
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    goto :goto_2d

    .line 358
    :cond_a3
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->reUpgrade()V

    goto :goto_2d

    :cond_a7
    const/16 v3, 0x11

    if-ne v1, v3, :cond_2d

    const-string v1, "receivedSize"

    .line 364
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    iput v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    .line 369
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 371
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    goto/16 :goto_2d

    :cond_c7
    return-void
.end method

.method private reUpgrade()V
    .registers 1

    .line 305
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void
.end method

.method private sendValidFirmware()V
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isSentOver:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isReceiveUploadingSuccess:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writing:Z

    .line 440
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    :cond_13
    return-void
.end method

.method private writeNoResp(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/16 v0, 0x32

    .line 425
    invoke-direct {p0, p1, v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->writeNoResp(Ljava/util/List;I)V

    return-void
.end method

.method private writeNoResp(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 430
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithoutResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-static {p1, p2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->create(Ljava/util/List;ILcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->checkNext()V

    return-void
.end method

.method private writeResp(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    const/16 v1, 0x64

    .line 413
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-static {p1, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->create(Ljava/util/List;ILcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->checkNext()V

    return-void
.end method

.method private writeResp(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 419
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;->ICBlePWriteDataTypeWriteWithResponse:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    invoke-static {p1, p2, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;->create(Ljava/util/List;ILcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$ICWriteDataObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->checkNext()V

    return-void
.end method


# virtual methods
.method public dealloc()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_a

    .line 259
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 262
    :cond_a
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->dealloc()V

    return-void
.end method

.method public initWorker()V
    .registers 9

    const-string v0, "/manifest.json"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isReceiveUploadingSuccess:Z

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isSentOver:Z

    .line 133
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeSkip:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_15

    iput-boolean v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isOldNrfType:Z

    goto :goto_17

    :cond_15
    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isOldNrfType:Z

    :goto_17
    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_readSize:I

    iput-boolean v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_is_re_upgrade:Z

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_percent:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_file_size:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    iput v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    const/16 v2, 0xa

    iput v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_prn:I

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writedatas:Ljava/util/ArrayList;

    .line 148
    sget-object v2, Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;->ICBleProtocolVerWeightScaleOTA:Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;

    invoke-static {v2}, Lcn/icomon/icbleprotocol/ICBleProtocol;->create(Lcn/icomon/icbleprotocol/ICBleProtocol$ICBleProtocolVer;)Lcn/icomon/icbleprotocol/ICBleProtocol;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    const-string v2, ""

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    iput v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 152
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->otaFilePath:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->otaFilePath:Ljava/lang/String;

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 155
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 156
    array-length v5, v2

    sub-int/2addr v5, v4

    aget-object v2, v2, v5

    const-string v5, "\\."

    .line 157
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 158
    aget-object v2, v2, v1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/icomon_otafiles/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCommon;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    .line 160
    invoke-static {v2}, Lcn/icomon/icdevicemanager/common/ICCommon;->mkdirs(Ljava/lang/String;)Z

    .line 162
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    invoke-static {v2, v5}, Lcn/icomon/icdevicemanager/common/ICCommon;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 164
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "upgrade device failed, unzip file fail"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$1;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    .line 175
    :cond_af
    :try_start_af
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v2, v5

    new-array v2, v2, [B

    .line 177
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 179
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 180
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "manifest"

    .line 181
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "application"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bin_file"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dat_file"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_133} :catch_136

    iput v4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    goto :goto_15a

    :catch_136
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const-string v2, "read manifest file failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$2;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$2;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    .line 202
    :cond_154
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 205
    :goto_15a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "filepath"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_bin_path:Ljava/lang/String;

    .line 206
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "datpath"

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_dat_path:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_otaType:I

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_protocolHandler:Lcn/icomon/icbleprotocol/ICBleProtocol;

    new-array v3, v4, [B

    .line 211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcn/icomon/icbleprotocol/ICBleProtocol;->decodeData([BLjava/lang/Integer;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1dc

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1dc

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_ota_file_info:Ljava/util/HashMap;

    const-string v2, "code"

    .line 214
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

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

    if-eqz v0, :cond_1c8

    .line 231
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$3;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$3;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void

    :cond_1c8
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_ota_file_info:Ljava/util/HashMap;

    const-string v1, "file_size"

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_file_size:I

    .line 253
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->connect()V

    return-void

    .line 243
    :cond_1dc
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load file fail, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object v3, v3, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->otaFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$4;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$4;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method

.method public onBleStateChange(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 3

    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 696
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->delete(Ljava/lang/String;)Z

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    :cond_a
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz p1, :cond_13

    .line 700
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 704
    :cond_13
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerOver()V

    return-void
.end method

.method public onConnectState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;Ljava/lang/Exception;)V
    .registers 3

    .line 715
    sget-object p2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p1, p2, :cond_12

    const-wide/16 p1, 0x258

    .line 718
    :try_start_6
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception p1

    .line 720
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 723
    :goto_e
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->discoverServices()V

    goto :goto_3d

    :cond_12
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    const/4 p2, 0x0

    if-eqz p1, :cond_1c

    .line 728
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_1c
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    if-eqz p1, :cond_25

    .line 732
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->delete(Ljava/lang/String;)Z

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    .line 735
    :cond_25
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->bStop:Z

    if-eqz p1, :cond_2d

    .line 736
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerOver()V

    return-void

    :cond_2d
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_is_ota_success:Z

    if-eqz p1, :cond_3a

    .line 740
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerOver()V

    .line 741
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    goto :goto_3d

    .line 744
    :cond_3a
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postReConnect()V

    :goto_3d
    return-void
.end method

.method public onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
    .registers 5
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

    .line 780
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 781
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void

    :cond_b
    const-string p2, "00001530-1212-EFDE-1523-785FEABCD123"

    .line 785
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 787
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Reading DFU Version number..."

    invoke-static {p1, v0, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "00001534-1212-EFDE-1523-785FEABCD123"

    .line 788
    invoke-virtual {p0, p2, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->readData(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    sget-object p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    :cond_2c
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

    .line 753
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFail:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 754
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void

    .line 758
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "00001530-1212-EFDE-1523-785FEABCD123"

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p2, 0x1

    goto :goto_10

    :cond_26
    if-nez p2, :cond_31

    .line 764
    sget-object p1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {p0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    .line 765
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->stop()V

    return-void

    :cond_31
    const-wide/16 p1, 0x3e8

    .line 769
    :try_start_33
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    .line 771
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 774
    :goto_3b
    invoke-virtual {p0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->discoverCharacteristics(Ljava/lang/String;)V

    return-void
.end method

.method public onSettingCmdEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/notify/setting/ICSettingPublishEvent$ICSettingPublishCode;Ljava/lang/Object;)V
    .registers 4

    .line 876
    iget-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    sget-object p3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;->ICSettingCallBackCodeFunctionIsNotSupport:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;

    invoke-virtual {p2, p1, p3}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->postFeedBackSettingEvent(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSettingCallBackCode;)V

    return-void
.end method

.method public onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p2, "00001530-1212-EFDE-1523-785FEABCD123"

    .line 798
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    const-wide/16 p1, 0x3e8

    .line 800
    :try_start_a
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p1

    .line 802
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_12
    if-eqz p3, :cond_29

    .line 805
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "set notify error: %s"

    invoke-static {p1, p3, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void

    :cond_29
    const/16 p1, 0x2710

    .line 810
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;

    invoke-direct {p2, p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;-><init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    invoke-static {p1, p2}, Lcn/icomon/icdevicemanager/common/ICTimer;->create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 829
    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICTimer;->start()V

    .line 832
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    :cond_40
    return-void
.end method

.method public onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .line 871
    invoke-super {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->onUpdateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    return-void
.end method

.method public onUploadData([BLjava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 7

    const-string v0, "00001530-1212-EFDE-1523-785FEABCD123"

    .line 838
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_87

    .line 840
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    const-string v1, "00001534-1212-EFDE-1523-785FEABCD123"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7c

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_29

    .line 842
    iget-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p1, p1, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p4, p3, p2

    const-string p2, "Reading DFU Version number Error: %s"

    invoke-static {p1, p2, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    goto :goto_87

    .line 846
    :cond_29
    array-length p4, p1

    const/4 v1, 0x2

    if-eq p4, v1, :cond_44

    .line 847
    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p4, p4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p4, p4, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->byte2hex([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, p2

    const-string p1, "Reading DFU Version number Exceprtion Data: %s"

    invoke-static {p4, p1, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void

    .line 851
    :cond_44
    aget-byte p4, p1, p2

    if-nez p4, :cond_63

    .line 852
    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p4, p4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p4, p4, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array v1, p3, [Ljava/lang/Object;

    aget-byte p1, p1, p3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "DFU Version number=%d"

    invoke-static {p4, p1, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "00001531-1212-EFDE-1523-785FEABCD123"

    .line 853
    invoke-virtual {p0, p3, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 856
    :cond_63
    iget-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->self:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    iget-object p4, p4, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object p4, p4, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    aget-byte p1, p1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, p3, p2

    const-string p1, "Reading DFU Version number First Byte=%d"

    invoke-static {p4, p1, p3}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 857
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void

    .line 863
    :cond_7c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_lastUploadTime:J

    .line 864
    iget-object p2, p3, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;->characteristic:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handlePacketData([BLjava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public onWriteResult(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
    .registers 5

    const-string p2, "00001530-1212-EFDE-1523-785FEABCD123"

    .line 882
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_writing:Z

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-ne p1, p2, :cond_18

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    if-eq p1, p3, :cond_18

    .line 886
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    :cond_18
    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    const/4 p2, 0x3

    if-ne p1, p3, :cond_24

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    if-eq p1, p2, :cond_24

    .line 889
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    :cond_24
    iget-boolean p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isOldNrfType:Z

    if-nez p1, :cond_35

    iget p3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    if-ne p3, p2, :cond_35

    iget p3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_sub_op:I

    const/4 v0, 0x4

    if-eq p3, v0, :cond_35

    .line 892
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    goto :goto_3e

    :cond_35
    if-eqz p1, :cond_3e

    iget p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_cur_op:I

    if-ne p1, p2, :cond_3e

    .line 895
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V

    :cond_3e
    :goto_3e
    return-void
.end method

.method postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V
    .registers 8

    .line 269
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusUpgrading:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_1c

    iget v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_already_sent_size:I

    int-to-double v0, v0

    iget v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_file_size:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_percent:I

    if-lt v1, v0, :cond_19

    return-void

    :cond_19
    iput v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_percent:I

    goto :goto_24

    .line 276
    :cond_1c
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_23

    const/16 v0, 0x64

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    .line 282
    :goto_24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x5

    .line 283
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    .line 284
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "percent"

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    invoke-virtual {p0, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    .line 287
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusSuccess:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    if-ne p1, v0, :cond_5b

    .line 288
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "identifier"

    .line 289
    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeClearCache:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    invoke-virtual {p0, v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postGlobalEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method

.method public stop()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 909
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->delete(Ljava/lang/String;)Z

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_zip_exact_path:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_13

    .line 913
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 917
    :cond_13
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->scanInfo:Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;->communication_type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;->ICDeviceCommunicationTypeBroadcast:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    .line 918
    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->bStop:Z

    .line 919
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->stopScan()V

    .line 920
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerOver()V

    goto :goto_3a

    :cond_25
    const-string v0, "00001530-1212-EFDE-1523-785FEABCD123"

    const-string v1, "00001531-1212-EFDE-1523-785FEABCD123"

    const/4 v2, 0x0

    .line 923
    invoke-virtual {p0, v2, v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->setNotify(ZLjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 925
    :try_start_2f
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    .line 927
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 930
    :goto_37
    invoke-super {p0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseOTAWorker;->stop()V

    :goto_3a
    return-void
.end method
