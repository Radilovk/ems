.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker$1;
.super Ljava/lang/Object;
.source "ICInbodyH20Worker.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->handlePacketData([BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;

    .line 283
    iget-object v0, v0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->_timer:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->stop()V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker$1;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;

    .line 284
    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/manager/worker/scale/ICInbodyH20Worker;->cancelConnect()V

    return-void
.end method
