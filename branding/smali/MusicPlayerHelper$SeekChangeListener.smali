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

    .prologue
    .line 1954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 5

    .prologue
    .line 1957
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3902(Z)Z

    .line 1958
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 1959
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4000(II)I

    move-result v1

    .line 1960
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4100(II)V

    .line 1961
    if-lez v0, :cond_14

    .line 1962
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 1964
    :cond_14
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 4

    .prologue
    .line 1968
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 1969
    if-lez v0, :cond_d

    .line 1970
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$4000(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 1972
    :cond_d
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3902(Z)Z

    .line 1973
    return-void
.end method
