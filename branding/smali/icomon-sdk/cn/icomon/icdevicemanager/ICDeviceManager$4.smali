.class Lcn/icomon/icdevicemanager/ICDeviceManager$4;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->initMgrWithConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$config:Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$4;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$4;->val$config:Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$4;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$4;->val$config:Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;

    .line 315
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$m__Init__(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    return-void
.end method
