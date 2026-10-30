.class Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$5;
.super Ljava/lang/Object;
.source "ICWorkerManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->initMgr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager$5;->this$0:Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;

    .line 261
    check-cast p1, Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;

    invoke-virtual {v0, p1}, Lcn/icomon/icdevicemanager/manager/worker/ICWorkerManager;->onHandleGlobalPublishEvent(Lcn/icomon/icdevicemanager/notify/global/ICGPublishEvent;)V

    return-void
.end method
