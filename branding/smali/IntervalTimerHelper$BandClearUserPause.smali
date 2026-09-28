.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BandClearUserPause;
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
    name = "BandClearUserPause"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 248
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->timerPausedByUser:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleTimerPause()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$100()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 254
    :cond_9
    :goto_9
    return-void

    .line 251
    :catch_a
    move-exception v0

    .line 252
    const-string v1, "IntervalTimer.bandResume"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method
