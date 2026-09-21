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

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1546
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3a

    .line 1552
    :cond_d
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3700()V

    .line 1553
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1554
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    .line 1555
    xor-int/lit8 v0, v0, 0x1

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 1556
    if-eqz v0, :cond_30

    .line 1557
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setLiveLevel(I)V

    .line 1560
    :cond_30
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1700()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1561
    return-void

    .line 1547
    :cond_3a
    :goto_3a
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1548
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 1550
    :cond_48
    return-void
.end method
