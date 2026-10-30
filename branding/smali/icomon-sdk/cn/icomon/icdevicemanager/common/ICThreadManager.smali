.class public Lcn/icomon/icdevicemanager/common/ICThreadManager;
.super Ljava/lang/Object;
.source "ICThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;
    }
.end annotation


# static fields
.field private static ____gsMgr:Lcn/icomon/icdevicemanager/common/ICThreadManager;

.field private static final ___lock:Ljava/lang/Integer;

.field private static final ___lock2:Ljava/lang/Integer;


# instance fields
.field private mainHandler:Landroid/os/Handler;

.field private workHandler:Landroid/os/Handler;

.field public workHandlerThread:Landroid/os/HandlerThread;

.field private workHandlerThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private workHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->___lock:Ljava/lang/Integer;

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->___lock2:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlers:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThreads:Ljava/util/HashMap;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "workThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThread:Landroid/os/HandlerThread;

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->mainHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandler:Landroid/os/Handler;

    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/common/ICThreadManager;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->___lock:Ljava/lang/Integer;

    .line 34
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/common/ICThreadManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICThreadManager;

    if-nez v1, :cond_11

    .line 36
    new-instance v1, Lcn/icomon/icdevicemanager/common/ICThreadManager;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/common/ICThreadManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICThreadManager;

    .line 37
    invoke-direct {v1}, Lcn/icomon/icdevicemanager/common/ICThreadManager;->init()V

    .line 39
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICThreadManager;

    return-object v0

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public addWorkThread(Ljava/lang/String;)Landroid/os/Handler;
    .registers 6

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->___lock2:Ljava/lang/Integer;

    .line 69
    monitor-enter v0

    .line 70
    :try_start_3
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 72
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThreads:Ljava/util/HashMap;

    .line 74
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlers:Ljava/util/HashMap;

    .line 75
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0

    return-object v2

    :catchall_20
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public deInit()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThread:Landroid/os/HandlerThread;

    .line 48
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICThreadManager;

    return-void
.end method

.method public removeWorkThread(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->___lock2:Ljava/lang/Integer;

    .line 82
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThreads:Ljava/util/HashMap;

    .line 83
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    if-eqz v1, :cond_10

    .line 85
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_10
    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlerThreads:Ljava/util/HashMap;

    .line 87
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandlers:Ljava/util/HashMap;

    .line 88
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public runOnMainThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->mainHandler:Landroid/os/Handler;

    .line 105
    new-instance v1, Lcn/icomon/icdevicemanager/common/ICThreadManager$2;

    invoke-direct {v1, p0, p1}, Lcn/icomon/icdevicemanager/common/ICThreadManager$2;-><init>(Lcn/icomon/icdevicemanager/common/ICThreadManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnWorkThread(Landroid/os/Handler;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 4

    .line 94
    new-instance v0, Lcn/icomon/icdevicemanager/common/ICThreadManager$1;

    invoke-direct {v0, p0, p2}, Lcn/icomon/icdevicemanager/common/ICThreadManager$1;-><init>(Lcn/icomon/icdevicemanager/common/ICThreadManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnWorkThread(Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICThreadManager;->workHandler:Landroid/os/Handler;

    .line 118
    new-instance v1, Lcn/icomon/icdevicemanager/common/ICThreadManager$3;

    invoke-direct {v1, p0, p1}, Lcn/icomon/icdevicemanager/common/ICThreadManager$3;-><init>(Lcn/icomon/icdevicemanager/common/ICThreadManager;Lcn/icomon/icdevicemanager/common/ICThreadManager$ICThreadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
