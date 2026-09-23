.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerSyncListener;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerSyncListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .prologue
    .line 863
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 864
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 865
    return-void
.end method

.method public onPlaybackEnded()V
    .registers 2

    .prologue
    .line 853
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->advanceToNextTrack()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 859
    :goto_6
    return-void

    .line 856
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackEndedNaturally()V

    .line 857
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 858
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_6
.end method

.method public onWaveformLevel(I)V
    .registers 3

    .prologue
    .line 846
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$900()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1100()Z

    move-result v0

    if-nez v0, :cond_19

    .line 847
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400(I)V

    .line 849
    :cond_19
    return-void
.end method
