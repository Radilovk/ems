.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;
.super Ljava/lang/Object;
.source "ICWeightScale27Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

.field final synthetic val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 485
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 486
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 487
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->-$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/common/ICTimer;)V

    :cond_17
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    const/4 v2, 0x1

    .line 489
    iput-boolean v2, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isCall:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 490
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightDataCopy:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 491
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightCenterData:Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 492
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 493
    iget-boolean v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->_isSupportPH:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 494
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepAdcResult:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->-$$Nest$mpostUploadData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    :cond_37
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;

    .line 497
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureOver:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker$1;->val$tempData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;->-$$Nest$mpostUploadData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScale27Worker;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    return-void
.end method
