.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;
.super Ljava/lang/Object;
.source "ICWeightScaleBroadcastBM02Woker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->delayCall()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

.field final synthetic val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    .line 120
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    .line 121
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->-$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Lcn/icomon/icdevicemanager/common/ICTimer;)V

    :cond_17
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    const/4 v1, 0x1

    .line 124
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->-$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Z)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    .line 125
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;

    .line 126
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;->-$$Nest$fput_weightCenterData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastBM02Woker;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V

    return-void
.end method
