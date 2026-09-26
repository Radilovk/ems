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

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 922
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 923
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 924
    return-void
.end method

.method public onPlaybackEnded()V
    .registers 2

    .line 912
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->advanceToNextTrack()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 913
    return-void

    .line 915
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackEndedNaturally()V

    .line 916
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 917
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 918
    return-void
.end method

.method public onTone(I)V
    .registers 2

    .line 900
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$602(I)I

    .line 901
    return-void
.end method

.method public onWaveformLevel(I)V
    .registers 3

    .line 905
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$900()Z

    move-result v0

    if-nez v0, :cond_19

    .line 906
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000(I)V

    .line 908
    :cond_19
    return-void
.end method
