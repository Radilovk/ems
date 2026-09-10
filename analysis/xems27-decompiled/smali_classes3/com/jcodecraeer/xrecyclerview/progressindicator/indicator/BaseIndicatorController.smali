.class public abstract Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.super Ljava/lang/Object;
.source "BaseIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;
    }
.end annotation


# instance fields
.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private releaseAnimations()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 76
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 77
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 78
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 79
    invoke-virtual {v2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 76
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    .line 83
    return-void
.end method


# virtual methods
.method public abstract createAnimation()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    .line 21
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->releaseAnimations()V

    .line 22
    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    .line 23
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getHeight()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public initAnimation()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->createAnimation()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    .line 68
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 52
    :cond_0
    return-void
.end method

.method public setAnimationStatus(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;)V
    .locals 6
    .param p1, "animStatus"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;

    .line 93
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 97
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 98
    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 99
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    .line 100
    .local v3, "isRunning":Z
    sget-object v4, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$1;->$SwitchMap$com$jcodecraeer$xrecyclerview$progressindicator$indicator$BaseIndicatorController$AnimStatus:[I

    invoke-virtual {p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    if-eqz v3, :cond_4

    .line 113
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 107
    :cond_2
    if-eqz v3, :cond_4

    .line 108
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 102
    :cond_3
    if-nez v3, :cond_4

    .line 103
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 97
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v3    # "isRunning":Z
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .line 26
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    .line 27
    return-void
.end method
