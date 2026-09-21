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

    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2028
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_5f

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_5f

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4500()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5f

    .line 2031
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2032
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4600()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 2033
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4602(J)J

    .line 2034
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4700()Z

    move-result v0

    const-wide/16 v4, 0x32

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2035
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->tickBlock(J)V

    .line 2036
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4800()V

    .line 2037
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5000()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4900()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2038
    return-void

    .line 2040
    :cond_40
    # -= operator for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5122(J)J

    .line 2041
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5100()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-gtz v6, :cond_50

    .line 2042
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5200()V

    .line 2044
    :cond_50
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4800()V

    .line 2045
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5000()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4900()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2046
    return-void

    .line 2029
    :cond_5f
    :goto_5f
    return-void
.end method
