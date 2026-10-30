.class public Lcn/icomon/icdevicemanager/common/ICLoggerHandler;
.super Ljava/lang/Object;
.source "ICLoggerHandler.java"


# static fields
.field private static BASE_PATH:Ljava/lang/String;

.field private static CATEGORY_NAME:Ljava/lang/String;

.field private static DISK_CACHE_PATH:Ljava/lang/String;

.field private static LOG_PATH:Ljava/lang/String;

.field private static m_delegate:Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "icomon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->BASE_PATH:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dmlogs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->DISK_CACHE_PATH:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->LOG_PATH:Ljava/lang/String;

    const-string v0, "ICDeviceManager"

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->CATEGORY_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->m_delegate:Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .registers 8

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "icblesdklogcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v1

    const-string v2, "log_path"

    invoke-virtual {v1, v2, p0}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->BASE_PATH:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->DISK_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->mkdirs(Ljava/lang/String;)Z

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->mkdirs(Ljava/lang/String;)Z

    const/4 v6, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->DISK_CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ICLog"

    sget-object v4, Lcom/icomon/logger/ICLogLevel;->kLogLevelInfo:Lcom/icomon/logger/ICLogLevel;

    const p0, 0x9e3000

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v1 .. v6}, Lcom/icomon/logger/ICLogger;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static getHook()Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->m_delegate:Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;

    return-object v0
.end method

.method public static getLogPath()Ljava/lang/String;
    .registers 2

    .line 143
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    return-object v0

    .line 145
    :cond_d
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;

    move-result-object v0

    const-string v1, "log_path"

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 21

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->m_delegate:Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;

    if-eqz v0, :cond_1b

    .line 73
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->m_delegate:Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;

    const-string v2, "HOOK"

    .line 74
    invoke-virtual {p2}, Lcom/icomon/logger/ICLogLevel;->ordinal()I

    move-result v5

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v1 .. v9}, Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;->onReceiveHookLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 76
    :cond_1b
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_26

    return-void

    .line 79
    :cond_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 80
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_56

    const/4 v1, 0x4

    .line 81
    aget-object v0, v0, v1

    .line 82
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_40

    move-object v1, v2

    .line 86
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 87
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".java"

    .line 88
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v0

    move-object v8, v1

    move-object v10, v3

    goto :goto_5c

    :cond_56
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    :goto_5c
    sget-object v4, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->CATEGORY_NAME:Ljava/lang/String;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 90
    invoke-static/range {v4 .. v12}, Lcom/icomon/logger/ICLogger;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logDebug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 39
    sget-object v3, Lcom/icomon/logger/ICLogLevel;->kLogLevelDebug:Lcom/icomon/logger/ICLogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 60
    sget-object v3, Lcom/icomon/logger/ICLogLevel;->kLogLevelError:Lcom/icomon/logger/ICLogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logFatal(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    sget-object v3, Lcom/icomon/logger/ICLogLevel;->kLogLevelFatal:Lcom/icomon/logger/ICLogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logInfo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    sget-object v3, Lcom/icomon/logger/ICLogLevel;->kLogLevelInfo:Lcom/icomon/logger/ICLogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logVerbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object v3, Lcom/icomon/logger/ICLogLevel;->kLogLevelVerbose:Lcom/icomon/logger/ICLogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs logWarn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 12

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 53
    sget-object v3, Lcom/icomon/logger/ICLogLevel;->kLogLevelWarn:Lcom/icomon/logger/ICLogLevel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->log(Ljava/lang/String;Ljava/lang/String;Lcom/icomon/logger/ICLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setHook(Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;)V
    .registers 1

    sput-object p0, Lcn/icomon/icdevicemanager/common/ICLoggerHandler;->m_delegate:Lcn/icomon/icdevicemanager/common/ICLoggerHookDelegate;

    return-void
.end method
