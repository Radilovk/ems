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
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private releaseAnimations()V
    .locals 4

    .prologue
    .line 72
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    if-nez v3, :cond_0

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 76
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 77
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 78
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 79
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_1
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 82
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public abstract createAnimation()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
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

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public initAnimation()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->createAnimation()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    .line 68
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 52
    :cond_0
    return-void
.end method

.method public setAnimationStatus(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;)V
    .locals 6
    .param p1, "animStatus"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;

    .prologue
    .line 93
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    if-nez v4, :cond_1

    .line 118
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 98
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mAnimators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 99
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    .line 100
    .local v3, "isRunning":Z
    sget-object v4, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$1;->$SwitchMap$com$jcodecraeer$xrecyclerview$progressindicator$indicator$BaseIndicatorController$AnimStatus:[I

    invoke-virtual {p1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController$AnimStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 97
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :pswitch_0
    if-nez v3, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 107
    :pswitch_1
    if-eqz v3, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_1

    .line 112
    :pswitch_2
    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;->mTarget:Landroid/view/View;

    .line 27
    return-void
.end method
