.class Lcn/icomon/icdevicemanager/ICDeviceManager$56;
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

.field final synthetic val$rssi:I


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;->val$rssi:I

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 1583
    invoke-static {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetdelegate(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$56;->val$rssi:I

    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;->onReceiveRSSI(Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V

    return-void
.end method
