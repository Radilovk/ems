.class public Lcom/yanzhenjie/loading/LoadingView;
.super Landroid/widget/ImageView;
.source "LoadingView.java"


# instance fields
.field private mLoadingDrawable:Lcom/yanzhenjie/loading/LoadingDrawable;

.field private mLoadingRenderer:Lcom/yanzhenjie/loading/LevelLoadingRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-direct {v0, p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->mLoadingRenderer:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    .line 40
    new-instance v0, Lcom/yanzhenjie/loading/LoadingDrawable;

    iget-object v1, p0, Lcom/yanzhenjie/loading/LoadingView;->mLoadingRenderer:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/loading/LoadingDrawable;-><init>(Lcom/yanzhenjie/loading/LoadingRenderer;)V

    iput-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->mLoadingDrawable:Lcom/yanzhenjie/loading/LoadingDrawable;

    .line 41
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/LoadingView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method private startAnimation()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->mLoadingDrawable:Lcom/yanzhenjie/loading/LoadingDrawable;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/yanzhenjie/loading/LoadingDrawable;->start()V

    .line 77
    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->mLoadingDrawable:Lcom/yanzhenjie/loading/LoadingDrawable;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/yanzhenjie/loading/LoadingDrawable;->stop()V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 54
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->startAnimation()V

    .line 55
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 60
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->stopAnimation()V

    .line 61
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 65
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 66
    if-nez p2, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->startAnimation()V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/yanzhenjie/loading/LoadingView;->stopAnimation()V

    .line 71
    :goto_0
    return-void
.end method

.method public setCircleColors(III)V
    .locals 1
    .param p1, "r1"    # I
    .param p2, "r2"    # I
    .param p3, "r3"    # I

    .line 48
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingView;->mLoadingRenderer:Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->setCircleColors(III)V

    .line 49
    return-void
.end method
