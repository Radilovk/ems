.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;
.super Ljava/lang/Object;
.source "ICWeightScaleNewWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->delayCall()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

.field final synthetic val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    .line 123
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    .line 124
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->-$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;Lcn/icomon/icdevicemanager/common/ICTimer;)V

    :cond_17
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    const/4 v1, 0x1

    .line 127
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_isCall:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    .line 128
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;

    .line 129
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleNewWorker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    return-void
.end method
