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
    .locals 0

    .prologue
    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 733
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 734
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 735
    return-void
.end method

.method public onPlaybackEnded()V
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->advanceToNextTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackEndedNaturally()V

    .line 727
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 728
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    goto :goto_0
.end method

.method public onTone(I)V
    .locals 0

    .prologue
    .line 711
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$602(I)I

    .line 712
    return-void
.end method

.method public onWaveformLevel(I)V
    .locals 1

    .prologue
    .line 716
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000(I)V

    .line 719
    :cond_0
    return-void
.end method
