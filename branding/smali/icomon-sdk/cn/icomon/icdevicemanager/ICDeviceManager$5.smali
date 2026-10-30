.class Lcn/icomon/icdevicemanager/ICDeviceManager$5;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->deInit()V
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$5;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ICDMGR"

    const-string v3, "deinit sdk"

    .line 327
    invoke-static {v2, v3, v1}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$5;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 328
    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fput_isCallInit(Lcn/icomon/icdevicemanager/ICDeviceManager;Z)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$5;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 329
    invoke-static {v1, v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fputisInitFinish(Lcn/icomon/icdevicemanager/ICDeviceManager;Z)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$5;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    const/4 v1, 0x0

    .line 330
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fputdelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$5;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 331
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fputscanDelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V

    .line 333
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->shared()Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/ble/ICBleHandler;->deInit()V

    .line 334
    invoke-static {}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->deInit()V

    .line 335
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->shared()Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->deInit()V

    .line 336
    invoke-static {}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->shared()Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/setting/ICSettingManagerImpl;->deInit()V

    .line 337
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->deInit()V

    .line 338
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->deInit()V

    .line 339
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->deInit()V

    .line 340
    invoke-static {v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$sfput____gsMgr(Lcn/icomon/icdevicemanager/ICDeviceManager;)V

    .line 341
    invoke-static {}, Lcom/icomon/logger/ICLogger;->Close()V

    return-void
.end method
