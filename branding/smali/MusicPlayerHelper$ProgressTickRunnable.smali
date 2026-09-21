.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ProgressTickRunnable;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProgressTickRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1600
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_33

    .line 1606
    :cond_d
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3900()V

    .line 1607
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1608
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 1609
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setLiveLevel(I)V

    .line 1611
    :cond_29
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1612
    return-void

    .line 1601
    :cond_33
    :goto_33
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1602
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 1604
    :cond_41
    return-void
.end method
