.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;
.super Ljava/lang/Object;
.source "ICWeightScaleA4Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->handlePacketData(Lcn/icomon/icbleprotocol/ICBleProtocolPacketData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 7

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 307
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 308
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    const/4 v1, 0x0

    .line 309
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 311
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const/4 v1, 0x0

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_g:I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 312
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 313
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_lb:D

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 314
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st:I

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 315
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_st_lb:D

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 316
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 317
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    iput-boolean v1, v0, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    .line 318
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;->ICMeasureStepMeasureWeightData:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;

    iget-object v2, v2, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->_weightData:Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-virtual {v2}, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->clone()Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;->-$$Nest$mpostUploadData(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleA4Worker;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V

    return-void
.end method
