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

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 584
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 585
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 586
    return-void
.end method

.method public onPlaybackEnded()V
    .registers 1

    .line 578
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 579
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 580
    return-void
.end method

.method public onWaveformLevel(I)V
    .registers 3

    .line 571
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_d

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 572
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700(I)V

    .line 574
    :cond_d
    return-void
.end method
