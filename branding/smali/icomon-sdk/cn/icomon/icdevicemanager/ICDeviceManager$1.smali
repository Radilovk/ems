.class Lcn/icomon/icdevicemanager/ICDeviceManager$1;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->__Init__(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$1;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$1;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$1;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    const/4 v1, 0x0

    .line 209
    invoke-interface {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;->onInitFinish(Z)V

    return-void
.end method
