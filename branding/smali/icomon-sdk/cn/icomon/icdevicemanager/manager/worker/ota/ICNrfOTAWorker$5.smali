.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;
.super Ljava/lang/Object;
.source "ICNrfOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->handleFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 671
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 672
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    const/4 v1, 0x0

    .line 673
    iput-object v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->_checkUploadTimer:Lcn/icomon/icdevicemanager/common/ICTimer;

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 675
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->cancelConnect()V

    return-void
.end method
