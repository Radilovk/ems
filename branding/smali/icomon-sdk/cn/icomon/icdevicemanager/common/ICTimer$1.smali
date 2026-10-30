.class Lcn/icomon/icdevicemanager/common/ICTimer$1;
.super Ljava/util/TimerTask;
.source "ICTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/icomon/icdevicemanager/common/ICTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/icomon/icdevicemanager/common/ICTimer;


# direct methods
.method constructor <init>(Lcn/icomon/icdevicemanager/common/ICTimer;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICTimer$1;->this$0:Lcn/icomon/icdevicemanager/common/ICTimer;

    .line 50
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 53
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;

    move-result-object v0

    new-instance v1, Lcn/icomon/icdevicemanager/common/ICTimer$1$1;

    invoke-direct {v1, p0}, Lcn/icomon/icdevicemanager/common/ICTimer$1$1;-><init>(Lcn/icomon/icdevicemanager/common/ICTimer$1;)V

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    return-void
.end method
