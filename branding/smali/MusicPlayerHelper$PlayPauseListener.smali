.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayPauseListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1690
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1c2

    cmp-long v2, v2, v4

    if-gez v2, :cond_11

    .line 1715
    :cond_10
    :goto_10
    return-void

    .line 1693
    :cond_11
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(J)J

    .line 1694
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1697
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1698
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1699
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    .line 1700
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1707
    :goto_32
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()V

    .line 1708
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()V

    goto :goto_10

    .line 1704
    :cond_39
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1705
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackPausedByUser()V

    goto :goto_32

    .line 1711
    :cond_40
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()I

    move-result v0

    if-gez v0, :cond_54

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1712
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(I)I

    .line 1714
    :cond_54
    const/4 v0, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600(Z)Z

    goto :goto_10
.end method
