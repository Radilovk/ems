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
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .prologue
    .line 576
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 577
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 578
    return-void
.end method

.method public onPlaybackEnded()V
    .registers 2

    .prologue
    .line 566
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->advanceToNextTrack()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 572
    :goto_6
    return-void

    .line 569
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackEndedNaturally()V

    .line 570
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 571
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_6
.end method

.method public onWaveformLevel(I)V
    .registers 3

    .prologue
    .line 559
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$600()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()Z

    move-result v0

    if-nez v0, :cond_19

    .line 560
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$900(I)V

    .line 562
    :cond_19
    return-void
.end method
