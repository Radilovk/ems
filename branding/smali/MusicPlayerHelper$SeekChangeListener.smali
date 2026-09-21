.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SeekChangeListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/CircleSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SeekChangeListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 7

    .line 1517
    const/4 p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3402(Z)Z

    .line 1518
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    .line 1519
    if-lez p1, :cond_13

    int-to-long v0, p2

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p2, v0

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    .line 1520
    :goto_14
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3500(II)V

    .line 1521
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 6

    .line 1525
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    .line 1526
    const/4 v0, 0x0

    if-lez p1, :cond_20

    .line 1527
    nop

    .line 1528
    const/16 v1, 0x3e8

    if-gez p2, :cond_e

    .line 1529
    const/4 p2, 0x0

    goto :goto_12

    .line 1530
    :cond_e
    if-le p2, v1, :cond_12

    .line 1531
    const/16 p2, 0x3e8

    .line 1533
    :cond_12
    :goto_12
    if-lt p2, v1, :cond_15

    .line 1534
    goto :goto_1d

    .line 1535
    :cond_15
    int-to-long v1, p2

    int-to-long p1, p1

    mul-long v1, v1, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v1, p1

    long-to-int p1, v1

    .line 1536
    :goto_1d
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 1538
    :cond_20
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3402(Z)Z

    .line 1539
    return-void
.end method
