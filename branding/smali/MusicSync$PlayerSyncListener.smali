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

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 1323
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1324
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 1325
    return-void
.end method

.method public onPlaybackEnded()V
    .registers 2

    .line 1313
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->advanceToNextTrack()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1314
    return-void

    .line 1316
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackEndedNaturally()V

    .line 1317
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 1318
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 1319
    return-void
.end method

.method public onTone(I)V
    .registers 2

    .line 1301
    # setter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->latestTone:I
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1902(I)I

    .line 1302
    return-void
.end method

.method public onWaveformLevel(I)V
    .registers 3

    .line 1306
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->trainingGateOpen:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$2100()Z

    move-result v0

    if-eqz v0, :cond_19

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->pausedByTraining:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$2200()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1307
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$2300(I)V

    .line 1309
    :cond_19
    return-void
.end method
