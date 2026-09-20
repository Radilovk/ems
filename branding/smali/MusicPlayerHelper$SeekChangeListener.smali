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

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 7

    .line 838
    const/4 p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(Z)Z

    .line 839
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    .line 840
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

    .line 841
    :goto_14
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V
    invoke-static {p2, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200(II)V

    .line 842
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 5

    .line 846
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    .line 847
    if-lez p1, :cond_11

    .line 848
    int-to-long v0, p2

    int-to-long p1, p1

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 849
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 851
    :cond_11
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1102(Z)Z

    .line 852
    return-void
.end method
