.class public Lcom/icomon/logger/ICLogger;
.super Ljava/lang/Object;
.source "ICLogger.java"


# static fields
.field protected static ____gsEnableHook:Z

.field protected static ____gsHookLogDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/icomon/logger/ICLoggerHookDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static hasInit:Ljava/lang/Boolean;

.field private static load:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    sput-object v1, Lcom/icomon/logger/ICLogger;->load:Ljava/lang/Boolean;

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/icomon/logger/ICLogger;->____gsHookLogDelegates:Ljava/util/HashMap;

    sput-boolean v0, Lcom/icomon/logger/ICLogger;->____gsEnableHook:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Close()V
    .registers 2

    sget-object v0, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 51
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 53
    invoke-static {}, Lcom/icomon/logger/ICLogger;->destory()V

    const/4 v1, 0x0

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 56
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/Integer;Z)V
    .registers 14

    sget-object v0, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 92
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x1

    .line 94
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    const-string v1, "ICLogger"

    .line 95
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p3}, Lcom/icomon/logger/ICLogLevel;->ordinal()I

    move-result v5

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/icomon/logger/ICLogger;->init_native_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 98
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public static Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Z)V
    .registers 8

    sget-object v0, Lcom/icomon/logger/ICLogger;->load:Ljava/lang/Boolean;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_14

    const-string v0, "ICLogger"

    .line 70
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-object v1, Lcom/icomon/logger/ICLogger;->load:Ljava/lang/Boolean;

    :cond_14
    sget-object v0, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 74
    monitor-enter v0

    :try_start_17
    sget-object v2, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 75
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    sput-object v1, Lcom/icomon/logger/ICLogger;->hasInit:Ljava/lang/Boolean;

    .line 77
    invoke-virtual {p3}, Lcom/icomon/logger/ICLogLevel;->ordinal()I

    move-result p3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/icomon/logger/ICLogger;->init_native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 79
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public static varargs Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 20

    .line 103
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 105
    invoke-virtual {p3}, Lcom/icomon/logger/ICLogLevel;->ordinal()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v7, p2

    invoke-static/range {v1 .. v10}, Lcom/icomon/logger/ICLogger;->log_data_native(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BI)V

    return-void
.end method

.method public static addHook(Ljava/lang/String;Lcom/icomon/logger/ICLoggerHookDelegate;)V
    .registers 3

    if-eqz p0, :cond_d

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    sget-object v0, Lcom/icomon/logger/ICLogger;->____gsHookLogDelegates:Ljava/util/HashMap;

    .line 31
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private static native destory()V
.end method

.method public static enableHook(Z)V
    .registers 1

    sput-boolean p0, Lcom/icomon/logger/ICLogger;->____gsEnableHook:Z

    return-void
.end method

.method private static native init_native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method private static native init_native_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
.end method

.method private static native log_data_native(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BI)V
.end method

.method public static removeHook(Ljava/lang/String;Lcom/icomon/logger/ICLoggerHookDelegate;)V
    .registers 2

    if-eqz p0, :cond_d

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d

    sget-object p1, Lcom/icomon/logger/ICLogger;->____gsHookLogDelegates:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private static native set_show_console_log(Z)V
.end method
