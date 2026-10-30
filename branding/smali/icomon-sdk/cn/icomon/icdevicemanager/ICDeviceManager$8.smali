.class Lcn/icomon/icdevicemanager/ICDeviceManager$8;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->scanDevice(Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$delegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->val$delegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 492
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetbleState(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    move-result-object v0

    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    const/4 v2, 0x0

    const-string v3, "ICDMGR"

    if-eq v0, v1, :cond_15

    const-string v0, "start scan...failed,ble is disable"

    new-array v1, v2, [Ljava/lang/Object;

    .line 493
    invoke-static {v3, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_15
    const-string v0, "start scan..."

    new-array v1, v2, [Ljava/lang/Object;

    .line 496
    invoke-static {v3, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;-><init>()V

    .line 499
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePScanModel;->addServices(Ljava/util/List;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 501
    invoke-static {v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 503
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStopScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostBleEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    :cond_38
    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->val$delegate:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    .line 505
    invoke-static {v1, v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fputscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$8;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 506
    sget-object v2, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeStartScan:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    invoke-static {v1, v2, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostBleEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method
