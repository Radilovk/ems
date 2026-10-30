.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;
.super Ljava/lang/Object;
.source "ICNrfOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 6

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 815
    iget-boolean v2, v2, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_isOldNrfType:Z

    if-eqz v2, :cond_e

    const v2, 0xea60

    goto :goto_10

    :cond_e
    const/16 v2, 0x1770

    :goto_10
    iget-object v3, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 818
    iget-wide v3, v3, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_lastUploadTime:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3f

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 819
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v0, v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;->macAddr:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "upload timeout, re-upgrade"

    invoke-static {v0, v2, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 820
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 821
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    const/4 v1, 0x0

    .line 822
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_3a
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$6;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 824
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->-$$Nest$mreUpgrade(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V

    :cond_3f
    return-void
.end method
