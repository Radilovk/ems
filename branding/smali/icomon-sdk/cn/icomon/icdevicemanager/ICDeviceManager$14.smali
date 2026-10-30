.class Lcn/icomon/icdevicemanager/ICDeviceManager$14;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager;->removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

.field final synthetic val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

.field final synthetic val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$14;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$14;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$14;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$14;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$14;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 664
    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;->ICRemoveDeviceCallBackCodeFailedAndDeviceParamError:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;

    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;->onCallBack(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBackCode;)V

    :cond_b
    return-void
.end method
