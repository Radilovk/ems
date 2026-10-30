.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;
.super Ljava/lang/Object;
.source "ICWeightScaleBroadcastWoker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->startDelayDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 172
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stopDelayDisconnected()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 173
    sget-object v1, Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;->ICWUploadEventTypeDisConnected:Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->postWorkerEvent(Lcn/icomon/icdevicemanager/notify/worker/ICWUploadEvent$ICWUploadEventType;Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker$2;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;

    .line 174
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleBroadcastWoker;->stop()V

    return-void
.end method
