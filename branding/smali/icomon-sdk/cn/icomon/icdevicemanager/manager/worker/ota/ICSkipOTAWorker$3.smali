.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;
.super Ljava/lang/Object;
.source "ICSkipOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->handlePacketData([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 339
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 340
    invoke-static {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->-$$Nest$fget_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;)Lcn/icomon/icdevicemanager/common/ICTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    const/4 v1, 0x0

    .line 341
    invoke-static {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->-$$Nest$fput_delayTimer(Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;Lcn/icomon/icdevicemanager/common/ICTimer;)V

    :cond_17
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 343
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->cancelConnect()V

    return-void
.end method
