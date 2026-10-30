.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;
.super Ljava/lang/Object;
.source "ICWeightScaleMiguWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->handlePacketData([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

.field final synthetic val$weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->val$weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    .line 211
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    .line 212
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    const/4 v1, 0x0

    .line 213
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    const/4 v1, 0x1

    .line 215
    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->_isCall:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;

    .line 216
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeUploadData:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker$1;->val$weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleMiguWorker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    return-void
.end method
