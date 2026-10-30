.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;
.super Ljava/lang/Object;
.source "ICBaseSTOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 6

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 493
    iget-wide v2, v2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_lastUploadTime:J

    sub-long/2addr v0, v2

    const/16 v2, 0x1770

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2f

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 494
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "upload timeout, re-upgrade"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 495
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    const/4 v1, 0x0

    .line 496
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 497
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->-$$Nest$mreUpgrade(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V

    :cond_2f
    return-void
.end method
