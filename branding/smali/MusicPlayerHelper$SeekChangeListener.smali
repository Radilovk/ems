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
    .line 2093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 5

    .prologue
    .line 2096
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3502(Z)Z

    .line 2097
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 2098
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600(II)I

    move-result v1

    .line 2099
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updateTimeLabel(II)V
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3700(II)V

    .line 2100
    if-lez v0, :cond_14

    .line 2101
    invoke-static {v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 2103
    :cond_14
    return-void
.end method

.method public onChangedEnd(Lcom/isaigu/gymapp/widget/CircleSeekBar;I)V
    .registers 4

    .prologue
    .line 2107
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 2108
    if-lez v0, :cond_d

    .line 2109
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->mapSeekProgressToMs(II)I
    invoke-static {p2, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3600(II)I

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 2111
    :cond_d
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->userSeeking:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$3502(Z)Z

    .line 2112
    return-void
.end method
