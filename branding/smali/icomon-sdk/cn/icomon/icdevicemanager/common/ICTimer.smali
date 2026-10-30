.class public Lcn/icomon/icdevicemanager/common/ICTimer;
.super Ljava/lang/Object;
.source "ICTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;
    }
.end annotation


# instance fields
.field private callBack:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

.field private delayTime:Ljava/lang/Integer;

.field private timer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallBack(Lcn/icomon/icdevicemanager/common/ICTimer;)Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;
    .registers 1

    iget-object p0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->callBack:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->callBack:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->timer:Ljava/util/Timer;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->delayTime:Ljava/lang/Integer;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->callBack:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    return-void
.end method

.method public static create(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)Lcn/icomon/icdevicemanager/common/ICTimer;
    .registers 3

    .line 32
    new-instance v0, Lcn/icomon/icdevicemanager/common/ICTimer;

    invoke-direct {v0, p0, p1}, Lcn/icomon/icdevicemanager/common/ICTimer;-><init>(Ljava/lang/Integer;Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;)V

    return-object v0
.end method


# virtual methods
.method public start()V
    .registers 8

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->timer:Ljava/util/Timer;

    .line 49
    :cond_a
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->timer:Ljava/util/Timer;

    .line 50
    new-instance v2, Lcn/icomon/icdevicemanager/common/ICTimer$1;

    invoke-direct {v2, p0}, Lcn/icomon/icdevicemanager/common/ICTimer$1;-><init>(Lcn/icomon/icdevicemanager/common/ICTimer;)V

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->delayTime:Ljava/lang/Integer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->delayTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    .line 50
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->callBack:Lcn/icomon/icdevicemanager/common/ICTimer$ICTimerCallBack;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_c

    .line 68
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICTimer;->timer:Ljava/util/Timer;

    :cond_c
    return-void
.end method
