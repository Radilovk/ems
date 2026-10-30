.class Lcn/icomon/icdevicemanager/ICDeviceManager$26;
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

.field final synthetic val$nodeId:I

.field final synthetic val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput p4, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->val$nodeId:I

    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$26;->val$nodeId:I

    .line 1152
    sget-object v3, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateDisconnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    invoke-interface {v0, v1, v2, v3}, Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;->onNodeConnectionChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;)V

    return-void
.end method
