.class Lcn/icomon/icdevicemanager/ICDeviceManager$3;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;


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


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$3;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$3;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 250
    check-cast p1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;

    invoke-static {v0, p1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$monHandleWorkerEvent(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V

    return-void
.end method
