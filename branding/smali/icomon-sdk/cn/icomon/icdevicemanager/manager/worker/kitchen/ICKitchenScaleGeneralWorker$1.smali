.class Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;
.super Ljava/lang/Object;
.source "ICKitchenScaleGeneralWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->onDiscoverCharacteristics(Ljava/lang/String;Ljava/util/List;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    .line 372
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    .line 373
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    const/4 v1, 0x0

    .line 374
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    .line 376
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->-$$Nest$msetUserInfo(Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;

    const/4 v1, 0x1

    .line 377
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;->-$$Nest$fput_isAlreadySendUser(Lcn/icomon/icdevicemanager/manager/worker/kitchen/ICKitchenScaleGeneralWorker;Z)V

    return-void
.end method
