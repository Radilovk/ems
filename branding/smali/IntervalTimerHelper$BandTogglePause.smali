.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$BandTogglePause;
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
    name = "BandTogglePause"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 233
    :try_start_0
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->toggleTimerPause()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$000()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 236
    goto :goto_a

    .line 234
    :catchall_4
    move-exception v0

    .line 235
    const-string v1, "IntervalTimer.band"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    :goto_a
    return-void
.end method
