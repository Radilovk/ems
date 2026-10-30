.class Lcn/icomon/icdevicemanager/ICDeviceManager$9;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->stopScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$9;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$9;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 520
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ICDMGR"

    if-eqz v0, :cond_2d

    const-string v0, "stop scan"

    new-array v1, v1, [Ljava/lang/Object;

    .line 522
    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$9;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    const/4 v1, 0x0

    .line 523
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fputscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V

    .line 524
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 526
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->addServices(Ljava/util/List;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$9;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 527
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostBleEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    goto :goto_34

    :cond_2d
    const-string v0, "no start scan, so don\'t stop scan"

    new-array v1, v1, [Ljava/lang/Object;

    .line 530
    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_34
    return-void
.end method
