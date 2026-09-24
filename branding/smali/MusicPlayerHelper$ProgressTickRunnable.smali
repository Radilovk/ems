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

    .prologue
    .line 1976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1980
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1981
    :cond_c
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1982
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 1995
    :cond_1a
    :goto_1a
    return-void

    .line 1986
    :cond_1b
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshSeekFromPlayer()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4300()V

    .line 1987
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1988
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 1989
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->visualizerView:Lcom/isaigu/gymapp/widget/MusicVisualizerView;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4200()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setLiveLevel(I)V

    .line 1991
    :cond_37
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$2200()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_1a

    .line 1992
    :catch_41
    move-exception v0

    .line 1993
    const-string v1, "MusicPlayerHelper.progress"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method
