.class Lcn/icomon/icdevicemanager/ICDeviceManager$38;
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

.field final synthetic val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

.field final synthetic val$unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 5

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->val$unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->val$tempDelegate:Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->val$device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$38;->val$unit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 1335
    invoke-interface {v0, v1, v2}, Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;->onReceiveWeightUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V

    return-void
.end method
