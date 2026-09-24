.class final Lcom/isaigu/gymapp/dialog/IntervalTimerHelper$TriggerStopRunnable;
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
    name = "TriggerStopRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1932
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4500()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1934
    :try_start_6
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4500()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_e

    .line 1940
    :goto_d
    return-void

    .line 1936
    :catch_e
    move-exception v0

    .line 1939
    :cond_f
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4600()V

    goto :goto_d
.end method
