.class Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$1;
.super Ljava/lang/Object;
.source "ICBaseWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->initWithIdentifier(Ljava/lang/String;Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleUScanDeviceModel;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 206
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->-$$Nest$fget_isBLEConnected(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 207
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;->readRSSI()V

    :cond_d
    return-void
.end method
