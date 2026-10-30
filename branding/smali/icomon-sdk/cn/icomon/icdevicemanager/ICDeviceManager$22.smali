.class Lcn/icomon/icdevicemanager/ICDeviceManager$22;
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

.field final synthetic val$scanModel:Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;

.field final synthetic val$tempDelegate2:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/ICDeviceManager;Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;)V
    .registers 4

    iput-object p1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$22;->this$0:Lcn/icomon/icdevicemanager/ICDeviceManager;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$22;->val$tempDelegate2:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$22;->val$scanModel:Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$22;->val$tempDelegate2:Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcn/icomon/icdevicemanager/ICDeviceManager$22;->val$scanModel:Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;

    .line 1072
    invoke-interface {v0, v1}, Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;->onScanResult(Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;)V

    :cond_9
    return-void
.end method
