.class Lcn/icomon/icdevicemanager/ICDeviceManager$10;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->addDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

.field final synthetic val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$10;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$10;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$10;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$10;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$10;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 553
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;->ICAddDeviceCallBackCodeFailedAndDeviceParamError:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;->onCallBack(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;)V

    :cond_b
    return-void
.end method
