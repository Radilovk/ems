.class Lcn/icomon/icdevicemanager/ICDeviceManager$18;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->upgradeDevices(Ljava/util/List;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

.field final synthetic val$temp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Ljava/util/ArrayList;Ljava/lang/String;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$temp:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 798
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetisInitFinish(Lcn/icomon/icdevicemanager/ICDeviceManager;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ICDMGR"

    if-nez v0, :cond_13

    const-string v0, "upgrade device failed, sdk not init"

    new-array v1, v1, [Ljava/lang/Object;

    .line 800
    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_13
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$temp:Ljava/util/ArrayList;

    .line 804
    invoke-static {v3}, Lcn/icomon/icdevicemanager/common/ICCommon;->convertArrayToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "add upgarde devices: "

    invoke-static {v2, v1, v0}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 805
    new-instance v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$temp:Ljava/util/ArrayList;

    .line 806
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->devices:Ljava/util/List;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$filePath:Ljava/lang/String;

    .line 807
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->filepath:Ljava/lang/String;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->val$mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    .line 808
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPManagerDevicesModel;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICOTAMode;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$18;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 809
    sget-object v2, Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;->ICWPublishEventTypeAddOTADevices:Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostWorkerEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/ICWPublishEvent$ICWPublishEventType;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/worker/model/publish/ICWPBaseModel;)V

    return-void
.end method
