.class Lcn/icomon/icdevicemanager/ICDeviceManager$21;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->onHandleBleUploadEvent(Lcn/icomon/icdevicemanager/notify/ble/model/ICBleUploadEvent;)V
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$21;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$21;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$21;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$21;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    .line 979
    invoke-static {v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->-$$Nest$fgetbleState(Lcn/icomon/icdevicemanager/ICDeviceManager;)Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;->onBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V

    :cond_d
    return-void
.end method
