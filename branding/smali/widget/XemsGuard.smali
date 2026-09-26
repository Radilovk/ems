.class public final Lcom/isaigu/gymapp/widget/XemsGuard;
.super Ljava/lang/Object;
.source "XemsGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;,
        Lcom/isaigu/gymapp/widget/XemsGuard$LoopGuard;
    }
.end annotation


# static fields
.field private static final handler:Landroid/os/Handler;

.field private static lastToastMs:J

.field private static loopGuard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsGuard;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installLoopGuard()V
    .registers 2

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/widget/XemsGuard;->loopGuard:Z

    if-eqz v0, :cond_5

    .line 47
    return-void

    .line 49
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/widget/XemsGuard;->loopGuard:Z

    .line 50
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsGuard;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsGuard$LoopGuard;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/XemsGuard$LoopGuard;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method static place(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 10

    .line 69
    const-string v0, ""

    if-nez p0, :cond_5

    .line 70
    return-object v0

    .line 72
    :cond_5
    nop

    .line 73
    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v1, p0, :cond_17

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_6

    .line 76
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1e
    const-string v5, "."

    if-ge v4, v2, :cond_66

    aget-object v6, v1, v4

    .line 77
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.isaigu"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 78
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 76
    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 82
    :cond_66
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 83
    array-length v1, p0

    if-lez v1, :cond_8b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8b
    return-object v0
.end method

.method public static report(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xems_guard:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 28
    goto :goto_16

    .line 27
    :catchall_15
    move-exception v0

    .line 29
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    sget-wide v2, Lcom/isaigu/gymapp/widget/XemsGuard;->lastToastMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v6, v2, v4

    if-gez v6, :cond_25

    .line 31
    return-void

    .line 33
    :cond_25
    sput-wide v0, Lcom/isaigu/gymapp/widget/XemsGuard;->lastToastMs:J

    .line 35
    :try_start_27
    sget-object v0, Lcom/isaigu/gymapp/widget/XemsGuard;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_32

    .line 37
    goto :goto_33

    .line 36
    :catchall_32
    move-exception p0

    .line 38
    :goto_33
    return-void
.end method
