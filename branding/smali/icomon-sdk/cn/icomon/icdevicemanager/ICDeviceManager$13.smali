.class Lcn/icomon/icdevicemanager/ICDeviceManager$13;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->addDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

.field final synthetic val$temp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$temp:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 619
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetisInitFinish(Lcn/icomon/icdevicemanager/ICDeviceManager;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ICDMGR"

    if-nez v0, :cond_34

    const-string v0, "add device failed, sdk not init"

    new-array v1, v1, [Ljava/lang/Object;

    .line 621
    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$temp:Ljava/util/ArrayList;

    .line 622
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 626
    new-instance v3, Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;

    invoke-direct {v3, p0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager$13;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mrunInMainThread(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_18

    :cond_33
    return-void

    :cond_34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$temp:Ljava/util/ArrayList;

    aput-object v3, v0, v1

    const-string v1, "add devices: %s"

    .line 636
    invoke-static {v2, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$temp:Ljava/util/ArrayList;

    .line 639
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    .line 640
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 641
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeAddDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostWorkerEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)V

    return-void
.end method
