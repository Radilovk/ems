.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$1;
.super Ljava/lang/Object;
.source "ICSkipOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->initWorker()V
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

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 111
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailFileInvalid:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;

    .line 112
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICSkipOTAWorker;->postWorkerOver()V

    return-void
.end method
