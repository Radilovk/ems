.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;
.super Ljava/lang/Object;
.source "ICWeightScaleV3Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->onUpdateNotificationState(Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/upload/ICBleCharacteristicModel;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    .line 2268
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    .line 2269
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    const/4 v1, 0x0

    .line 2270
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    .line 2272
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;->cancelConnect()V

    return-void
.end method
