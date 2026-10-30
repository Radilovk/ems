.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;
.super Ljava/lang/Object;
.source "ICWeightScaleBroadcastWoker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->delayCall()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

.field final synthetic val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 122
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 123
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    const/4 v1, 0x0

    .line 124
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->-$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Lcn/icomon/icdevicemanager/common/ICTimer;)V

    :cond_17
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    const/4 v1, 0x1

    .line 126
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->-$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Z)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 127
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    invoke-virtual {v1}, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ordinal()I

    move-result v1

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->state:I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 128
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 129
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->-$$Nest$fput_weightCenterData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V

    return-void
.end method
