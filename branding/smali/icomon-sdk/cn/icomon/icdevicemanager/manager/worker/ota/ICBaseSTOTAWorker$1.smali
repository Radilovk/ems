.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$1;
.super Ljava/lang/Object;
.source "ICBaseSTOTAWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->initWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 160
    sget-object v1, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;->ICUpgradeStatusFailFileInvalid:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postUpgradePercent(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;

    .line 161
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;->postWorkerOver()V

    return-void
.end method
