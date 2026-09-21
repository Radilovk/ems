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

    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 3

    .line 1578
    const/4 p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3502(Z)Z

    .line 1579
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    .line 1580
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600(II)I

    move-result p2

    .line 1581
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3700(II)V

    .line 1582
    if-lez p1, :cond_14

    .line 1583
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 1585
    :cond_14
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 3

    .line 1589
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    .line 1590
    if-lez p1, :cond_d

    .line 1591
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600(II)I

    move-result p1

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 1593
    :cond_d
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3502(Z)Z

    .line 1594
    return-void
.end method
