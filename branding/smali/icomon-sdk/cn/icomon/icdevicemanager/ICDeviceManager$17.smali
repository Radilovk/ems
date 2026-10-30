.class Lcn/icomon/icdevicemanager/ICDeviceManager$17;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->removeDevices(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

.field final synthetic val$devices:Ljava/util/List;

.field final synthetic val$temp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$temp:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$devices:Ljava/util/List;

    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 730
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetisInitFinish(Lcn/icomon/icdevicemanager/ICDeviceManager;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ICDMGR"

    if-nez v0, :cond_34

    const-string v0, "remove device failed, sdk not init"

    new-array v1, v1, [Ljava/lang/Object;

    .line 732
    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$temp:Ljava/util/ArrayList;

    .line 733
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

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 737
    new-instance v3, Lcn/icomon/icdevicemanager/ICDeviceManager$17$1;

    invoke-direct {v3, p0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager$17$1;-><init>(Lcn/icomon/icdevicemanager/ICDeviceManager$17;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V

    invoke-static {v2, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mrunInMainThread(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    goto :goto_18

    :cond_33
    return-void

    :cond_34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$devices:Ljava/util/List;

    aput-object v3, v0, v1

    const-string v1, "remove devices: %s"

    .line 747
    invoke-static {v2, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$temp:Ljava/util/ArrayList;

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 750
    invoke-static {v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetconnectedList(Lcn/icomon/icdevicemanager/ICDeviceManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_46

    .line 752
    :cond_60
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$temp:Ljava/util/ArrayList;

    .line 753
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    .line 754
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->removeCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$17;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 755
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeDeleteDevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostWorkerEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)V

    return-void
.end method
