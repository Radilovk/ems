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

    .line 1840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1843
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4300()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1845
    :try_start_6
    # getter for: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->allStopButton:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4300()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_e

    .line 1846
    return-void

    .line 1847
    :catchall_e
    move-exception v0

    .line 1850
    :cond_f
    # invokes: Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->resetAll()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->access$4400()V

    .line 1851
    return-void
.end method
