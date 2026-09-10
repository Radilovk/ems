.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallZigZagIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->translateY:[F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    .line 34
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    .line 35
    .local v2, "startY":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 36
    move v5, v3

    .line 37
    .local v5, "index":I
    const/4 v6, 0x4

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v1, v7, v8

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v1

    const/4 v10, 0x1

    aput v9, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v9

    div-int/2addr v9, v4

    int-to-float v9, v9

    aput v9, v7, v4

    const/4 v9, 0x3

    aput v1, v7, v9

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 38
    .local v7, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v3, v10, :cond_0

    .line 39
    new-array v11, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v11, v8

    aput v1, v11, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v12

    div-int/2addr v12, v4

    int-to-float v12, v12

    aput v12, v11, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v11, v9

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 41
    :cond_0
    new-array v11, v6, [F

    aput v2, v11, v8

    aput v2, v11, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getHeight()I

    move-result v12

    div-int/2addr v12, v4

    int-to-float v12, v12

    aput v12, v11, v4

    aput v2, v11, v9

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 42
    .local v11, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v3, v10, :cond_1

    .line 43
    new-array v6, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v6, v8

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    aput v8, v6, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getHeight()I

    move-result v8

    div-int/2addr v8, v4

    int-to-float v8, v8

    aput v8, v6, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    aput v4, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 46
    :cond_1
    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator$1;

    invoke-direct {v6, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;I)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    invoke-virtual {v11, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 61
    new-instance v4, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator$2;

    invoke-direct {v4, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;I)V

    invoke-virtual {v11, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v5    # "index":I
    .end local v7    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v11    # "translateYAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 72
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->translateX:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->translateY:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
