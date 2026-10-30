.class public Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;
.super Ljava/lang/Object;
.source "ICErrorManager.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/manager/err/ICUncaughtExceptionHandler;


# static fields
.field private static ____ErrorMgr:Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;

.field private static final ___lock:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustomError(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 2

    .line 18
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-object p0
.end method

.method public static createError(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/Exception;
    .registers 1

    .line 10
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-object p0
.end method

.method public static createSystemError(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 2

    .line 14
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-object p0
.end method

.method public static getErrorStringByCode(Lcn/icomon/icdevicemanager/manager/err/ICErrorCode;)Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public static shared()Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->___lock:Ljava/lang/Integer;

    .line 28
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->____ErrorMgr:Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;

    if-nez v1, :cond_11

    .line 30
    new-instance v1, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->____ErrorMgr:Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;

    .line 31
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 33
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    sget-object v0, Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;->____ErrorMgr:Lcn/icomon/icdevicemanager/manager/err/ICErrorManager;

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
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fatal Error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ICDMGR"

    invoke-static {v0, p1, p2}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->logFatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
