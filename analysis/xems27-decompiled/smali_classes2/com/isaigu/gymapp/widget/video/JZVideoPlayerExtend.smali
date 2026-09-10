.class public Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;
.super Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;
.source "JZVideoPlayerExtend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;
    }
.end annotation


# instance fields
.field private onPlayComplete:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->thumbImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$1;-><init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onClickClose()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClickClose()V

    .line 89
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayer;->releaseAllVideos()V

    .line 92
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public onStateAutoComplete()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onStateAutoComplete()V

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->onPlayComplete:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;->onComplete()V

    .line 75
    :cond_0
    return-void
.end method

.method public setPlayCompleteCallback(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;)V
    .locals 0
    .param p1, "onPlayComplete"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;

    .line 78
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend;->onPlayComplete:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerExtend$OnPlayComplete;

    .line 79
    return-void
.end method
