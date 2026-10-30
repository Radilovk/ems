.class Lcn/icomon/icdevicemanager/ICDeviceManager$6;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->setSDKMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$6;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$6;->val$sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set sdk mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$6;->val$sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", old mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v1

    iget-object v1, v1, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ICDMGR"

    invoke-static {v2, v0, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$6;->val$sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    iput-object v1, v0, Lcn/icomon/icdevicemanager/common/ICConfigManager;->sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$6;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 359
    sget-object v1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;->ICGPublishEventTypeSDKModeChanged:Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$6;->val$sdkMode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSDKMode;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$mpostGlobalEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent$ICGPublishEventType;Ljava/lang/Object;)V

    return-void
.end method
