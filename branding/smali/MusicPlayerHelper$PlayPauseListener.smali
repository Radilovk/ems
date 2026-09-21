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

    .line 1351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 1354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1355
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1c2

    cmp-long p1, v2, v4

    if-gez p1, :cond_11

    .line 1356
    return-void

    .line 1358
    :cond_11
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->lastPlayClickMs:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(J)J

    .line 1359
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1360
    return-void

    .line 1362
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1363
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlaybackPaused()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1364
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackResumedByUser()V

    .line 1365
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    goto :goto_3a

    .line 1369
    :cond_34
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1370
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->onPlaybackPausedByUser()V

    .line 1372
    :goto_3a
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()V

    .line 1373
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startProgressUpdates()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()V

    .line 1374
    return-void

    .line 1376
    :cond_41
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()I

    move-result p1

    if-gez p1, :cond_55

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_55

    .line 1377
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(I)I

    .line 1379
    :cond_55
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600(Z)Z

    .line 1380
    return-void
.end method
