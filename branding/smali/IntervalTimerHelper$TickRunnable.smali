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

    .prologue
    .line 1925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x32

    .line 1928
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_14

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4900()Z

    move-result v0

    if-eqz v0, :cond_14

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5000()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1946
    :cond_14
    :goto_14
    return-void

    .line 1931
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1932
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5100()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1933
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5102(J)J

    .line 1934
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->blockProgramMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$400()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->isArmed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1935
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->tickBlock(J)V

    .line 1936
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5200()V

    .line 1937
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    .line 1940
    :cond_40
    # -= operator for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5522(J)J

    .line 1941
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5500()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_50

    .line 1942
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5600()V

    .line 1944
    :cond_50
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5200()V

    .line 1945
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5400()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5300()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14
.end method
