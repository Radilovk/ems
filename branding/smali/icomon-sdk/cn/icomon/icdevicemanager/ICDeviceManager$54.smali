.class Lcn/icomon/icdevicemanager/ICDeviceManager$54;
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

.field final synthetic val$model:Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;Lcn/icomon/icdevicemanager/model/device/ICDevice;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;->val$model:Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;->val$model:Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;

    .line 1558
    iget-object v0, v0, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->addCallback:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$54;->val$model:Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/notify/worker/model/upload/ICWUDeviceOperateModel;->addCode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;

    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;->onCallBack(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBackCode;)V

    return-void
.end method
