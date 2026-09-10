.class public Lcom/isaigu/gymapp/utils/TimerUtils;
.super Ljava/lang/Object;
.source "TimerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delayCallback(Ljava/lang/Runnable;J)Ljava/util/Timer;
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "timeInMill"    # J

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 16
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/isaigu/gymapp/utils/TimerUtils$1;

    invoke-direct {v1, p0, v0}, Lcom/isaigu/gymapp/utils/TimerUtils$1;-><init>(Ljava/lang/Runnable;Ljava/util/Timer;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public static scheduleTimer(Ljava/lang/Runnable;JJ)Ljava/util/Timer;
    .locals 7
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "interval"    # J

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 40
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/isaigu/gymapp/utils/TimerUtils$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/utils/TimerUtils$2;-><init>(Ljava/lang/Runnable;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public static stopTimer(Ljava/util/Timer;)V
    .locals 0
    .param p0, "timer"    # Ljava/util/Timer;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-void
.end method
