.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$3;
.super Ljava/lang/Object;
.source "ICNrfOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->initWorker()V
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 234
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailFileInvalid:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker$3;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;

    .line 235
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICNrfOTAWorker;->postWorkerOver()V

    return-void
.end method
