.class Lcn/icomon/icdevicemanager/ICDeviceManager$47;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->onHandleWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field final synthetic val$hr:I

.field final synthetic val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput p4, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->val$hr:I

    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$47;->val$hr:I

    .line 1453
    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;->onReceiveHR(Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    return-void
.end method
