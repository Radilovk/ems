.class Lcn/icomon/icdevicemanager/common/ICTimer$1$1;
.super Ljava/lang/Object;
.source "ICTimer.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/common/ICTimer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/icomon/icdevicemanager/common/ICTimer$1;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/common/ICTimer$1;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICTimer$1$1;->this$1:Lcn/icomon/icdevicemanager/common/ICTimer$1;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer$1$1;->this$1:Lcn/icomon/icdevicemanager/common/ICTimer$1;

    .line 56
    iget-object v0, v0, Lcn/icomon/icdevicemanager/common/ICTimer$1;->this$0:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->-$$Nest$fgetcallBack(Lcn/icomon/icdevicemanager/common/ICTimer;)Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer$1$1;->this$1:Lcn/icomon/icdevicemanager/common/ICTimer$1;

    .line 57
    iget-object v0, v0, Lcn/icomon/icdevicemanager/common/ICTimer$1;->this$0:Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICTimer;->-$$Nest$fgetcallBack(Lcn/icomon/icdevicemanager/common/ICTimer;)Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;->onCallBack()V

    :cond_15
    return-void
.end method
