.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TickRunnable;
.super Ljava/lang/Object;
.source "IntervalTimerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TickRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2115
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_5f

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4900()Z

    move-result v0

    if-eqz v0, :cond_5f

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5000()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5f

    .line 2118
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2119
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5100()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 2120
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5102(J)J

    .line 2121
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$500()Z

    move-result v0

    const-wide/16 v4, 0x32

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2122
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->tickBlock(J)V

    .line 2123
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5200()V

    .line 2124
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2125
    return-void

    .line 2127
    :cond_40
    # -= operator for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5522(J)J

    .line 2128
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5500()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_50

    .line 2129
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5600()V

    .line 2131
    :cond_50
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5200()V

    .line 2132
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_60

    .line 2135
    goto :goto_66

    .line 2116
    :cond_5f
    :goto_5f
    return-void

    .line 2133
    :catchall_60
    move-exception v0

    .line 2134
    const-string v1, "IntervalTimerHelper.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2136
    :goto_66
    return-void
.end method
