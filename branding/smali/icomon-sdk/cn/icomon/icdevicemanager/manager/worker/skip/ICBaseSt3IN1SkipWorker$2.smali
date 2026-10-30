.class Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;
.super Ljava/lang/Object;
.source "ICBaseSt3IN1SkipWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->writeData([BLjava/lang/String;Ljava/lang/String;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;

.field final synthetic val$characteristic:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$service:Ljava/lang/String;

.field final synthetic val$type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;Ljava/lang/String;Ljava/lang/String;[BLcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)V
    .registers 6

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$service:Ljava/lang/String;

    iput-object p3, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$characteristic:Ljava/lang/String;

    iput-object p4, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$data:[B

    iput-object p5, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    .line 1142
    new-instance v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;-><init>()V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$service:Ljava/lang/String;

    .line 1143
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->service:Ljava/lang/String;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$characteristic:Ljava/lang/String;

    .line 1144
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->characteristic:Ljava/lang/String;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$data:[B

    .line 1145
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->data:[B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->val$type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    .line 1146
    iput-object v1, v0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    .line 1147
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v1

    new-instance v2, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;

    invoke-direct {v2, p0, v0}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;-><init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;)V

    invoke-virtual {v1, v2}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method
