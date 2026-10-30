.class Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;
.super Ljava/lang/Object;
.source "ICDeviceManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/ICDeviceManager$13;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/ICDeviceManager$13;

.field final synthetic val$d:Lcn/icomon/icdevicemanager/model/device/ICDevice;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager$13;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;->this$1:Lcn/icomon/icdevicemanager/ICDeviceManager$13;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;->val$d:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;->this$1:Lcn/icomon/icdevicemanager/ICDeviceManager$13;

    .line 629
    iget-object v0, v0, Lcn/icomon/icdevicemanager/ICDeviceManager$13;->val$callback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$13$1;->val$d:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    sget-object v2, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;->ICAddDeviceCallBackCodeFailedAndSDKNotInit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;->onCallBack(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;)V

    return-void
.end method
