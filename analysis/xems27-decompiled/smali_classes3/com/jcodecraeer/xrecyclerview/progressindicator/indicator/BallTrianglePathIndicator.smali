.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallTrianglePathIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 17
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->translateY:[F

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

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 35
    .local v1, "startX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    .line 36
    .local v2, "startY":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 37
    move v5, v3

    .line 38
    .local v5, "index":I
    const/4 v6, 0x4

    new-array v7, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v10, 0x0

    aput v8, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v1

    const/4 v11, 0x1

    aput v8, v7, v11

    aput v1, v7, v9

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    div-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v7, v4

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 39
    .local v7, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v3, v11, :cond_0

    .line 40
    new-array v8, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v8, v10

    aput v1, v8, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    div-int/2addr v12, v9

    int-to-float v12, v12

    aput v12, v8, v9

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    goto :goto_1

    .line 41
    :cond_0
    if-ne v3, v9, :cond_1

    .line 42
    new-array v8, v6, [F

    aput v1, v8, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    div-int/2addr v12, v9

    int-to-float v12, v12

    aput v12, v8, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v1

    aput v12, v8, v9

    aput v1, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 44
    :cond_1
    :goto_1
    new-array v8, v6, [F

    aput v2, v8, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v8, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v8, v9

    aput v2, v8, v4

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 45
    .local v8, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v3, v11, :cond_2

    .line 46
    new-array v6, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v6, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    aput v10, v6, v11

    aput v2, v6, v9

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v2

    aput v9, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    goto :goto_2

    .line 47
    :cond_2
    if-ne v3, v9, :cond_3

    .line 48
    new-array v6, v6, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v2

    aput v12, v6, v10

    aput v2, v6, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v2

    aput v10, v6, v9

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v2

    aput v9, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 51
    :cond_3
    :goto_2
    const-wide/16 v9, 0x7d0

    invoke-virtual {v7, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    const/4 v4, -0x1

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$1;

    invoke-direct {v6, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;I)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    invoke-virtual {v8, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    new-instance v4, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$2;

    invoke-direct {v4, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;I)V

    invoke-virtual {v8, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v5    # "index":I
    .end local v7    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "translateYAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 78
    .end local v3    # "i":I
    :cond_4
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 21
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->translateX:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->translateY:[F

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
