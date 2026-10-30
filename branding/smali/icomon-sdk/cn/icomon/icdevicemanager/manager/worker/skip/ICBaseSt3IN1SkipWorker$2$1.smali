.class Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;
.super Ljava/lang/Object;
.source "ICBaseSt3IN1SkipWorker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;

.field final synthetic val$model:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;)V
    .registers 3

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;->this$1:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;->val$model:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;->this$1:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;

    .line 1150
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;->ICBlePublishEventTypeWriteValue:Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker$2$1;->val$model:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/skip/ICBaseSt3IN1SkipWorker;->postBleEvent(Lcn/icomon/icdevicemanager/notify/ble/ICBlePublishEvent$ICBlePublishEventType;Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;)V

    return-void
.end method
