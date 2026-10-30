.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;
.super Ljava/lang/Object;
.source "ICWeightScaleWoker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

.field final synthetic val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    .line 658
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    .line 659
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    const/4 v1, 0x0

    .line 660
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->-$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/common/ICTimer;)V

    :cond_17
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    const/4 v1, 0x1

    .line 662
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->-$$Nest$fput_isCall(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Z)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    .line 664
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;

    .line 665
    new-instance v1, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;-><init>()V

    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;->-$$Nest$fput_weightCenterData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleWoker;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V

    return-void
.end method
