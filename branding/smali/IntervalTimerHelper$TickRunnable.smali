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
    .line 1905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1909
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_12

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4500()Z

    move-result v0

    if-eqz v0, :cond_12

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4600()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1924
    :cond_12
    :goto_12
    return-void

    .line 1912
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1913
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4700()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1914
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4702(J)J

    .line 1915
    # -= operator for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4822(J)J

    .line 1916
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4800()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_30

    .line 1917
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4900()V

    .line 1919
    :cond_30
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5000()V

    .line 1920
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$5100()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_12

    .line 1921
    :catch_41
    move-exception v0

    .line 1922
    const-string v1, "IntervalTimerHelper.tick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method
