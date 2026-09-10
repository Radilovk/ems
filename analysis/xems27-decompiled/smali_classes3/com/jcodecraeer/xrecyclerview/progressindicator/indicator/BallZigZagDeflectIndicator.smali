.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;
.source "BallZigZagDeflectIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    .line 22
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    .line 23
    .local v2, "startY":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 24
    move v5, v3

    .line 25
    .local v5, "index":I
    const/4 v6, 0x5

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v1, v7, v8

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v10, 0x1

    aput v9, v7, v10

    aput v1, v7, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v11, 0x3

    aput v9, v7, v11

    const/4 v9, 0x4

    aput v1, v7, v9

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 26
    .local v7, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v3, v10, :cond_0

    .line 27
    new-array v12, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    aput v13, v12, v8

    aput v1, v12, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    aput v13, v12, v4

    aput v1, v12, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v1

    aput v13, v12, v9

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 29
    :cond_0
    new-array v12, v6, [F

    aput v2, v12, v8

    aput v2, v12, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v12, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v12, v11

    aput v2, v12, v9

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 30
    .local v12, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v3, v10, :cond_1

    .line 31
    new-array v6, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v6, v8

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v10

    aput v2, v6, v4

    aput v2, v6, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    aput v4, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 34
    :cond_1
    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 37
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$1;

    invoke-direct {v6, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;I)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    invoke-virtual {v12, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    invoke-virtual {v12, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    new-instance v4, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$2;

    invoke-direct {v4, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;I)V

    invoke-virtual {v12, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .end local v5    # "index":I
    .end local v7    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v12    # "translateYAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 61
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method
