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

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1052
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->armed:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_41

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->countdownRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_41

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->trainingRunning:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2700()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_41

    .line 1055
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1056
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2800()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1057
    # setter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->lastTickRealtime:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2802(J)J

    .line 1058
    # -= operator for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2922(J)J

    .line 1059
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->remainingMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$2900()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_30

    .line 1060
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->onIntervalFinished()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3000()V

    .line 1062
    :cond_30
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshOverlayText()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3100()V

    .line 1063
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3300()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tickRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$3200()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    return-void

    .line 1053
    :cond_41
    :goto_41
    return-void
.end method
