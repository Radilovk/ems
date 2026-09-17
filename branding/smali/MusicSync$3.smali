.class Lcom/isaigu/gymapp/train/utils/MusicSync$3;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 2

    .line 467
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 468
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 469
    return-void
.end method

.method public onPlaybackEnded()V
    .registers 1

    .line 461
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->stop()V

    .line 462
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showIdle()V

    .line 463
    return-void
.end method

.method public onWaveformLevel(I)V
    .registers 3

    .line 454
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/MusicSync;->running:Z

    if-eqz v0, :cond_d

    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->playerMode:Z
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 455
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->pushSoundLevel(I)V
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$600(I)V

    .line 457
    :cond_d
    return-void
.end method
