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
    .locals 0

    .prologue
    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2128
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2129
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2130
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 2143
    :cond_1
    :goto_0
    return-void

    .line 2134
    :cond_2
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3900()V

    .line 2135
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2136
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setPlaying(Z)V

    .line 2137
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3800()Lcom/isaigu/gymapp/widget/MusicVisualizerView;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getLiveStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/MusicVisualizerView;->setLiveLevel(I)V

    .line 2139
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    const-string v1, "MusicPlayerHelper.progress"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
