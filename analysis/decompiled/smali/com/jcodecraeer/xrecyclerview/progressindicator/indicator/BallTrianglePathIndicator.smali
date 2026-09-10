.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallTrianglePathIndicator.java"


# instance fields
.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 17
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->translateX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->translateY:[F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    int-to-float v3, v7

    .line 35
    .local v3, "startX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x5

    int-to-float v4, v7

    .line 36
    .local v4, "startY":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_4

    .line 37
    move v2, v1

    .line 38
    .local v2, "index":I
    new-array v7, v14, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v7, v13

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v10

    aput v3, v7, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v7, v12

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 39
    .local v5, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v1, v10, :cond_2

    .line 40
    new-array v7, v14, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v13

    aput v3, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v12

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 44
    :cond_0
    :goto_1
    new-array v7, v14, [F

    aput v4, v7, v13

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v11

    aput v4, v7, v12

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 45
    .local v6, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v1, v10, :cond_3

    .line 46
    new-array v7, v14, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v13

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v10

    aput v4, v7, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v12

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 51
    :cond_1
    :goto_2
    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 53
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$1;

    invoke-direct {v7, p0, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;I)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 61
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$2;

    invoke-direct {v7, p0, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 41
    .end local v6    # "translateYAnim":Landroid/animation/ValueAnimator;
    :cond_2
    if-ne v1, v11, :cond_0

    .line 42
    new-array v7, v14, [F

    aput v3, v7, v13

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v11

    aput v3, v7, v12

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto/16 :goto_1

    .line 47
    .restart local v6    # "translateYAnim":Landroid/animation/ValueAnimator;
    :cond_3
    if-ne v1, v11, :cond_1

    .line 48
    new-array v7, v14, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v13

    aput v4, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallTrianglePathIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v12

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    goto/16 :goto_2

    .line 78
    .end local v2    # "index":I
    .end local v5    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "translateYAnim":Landroid/animation/ValueAnimator;
    :cond_4
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 21
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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

    invoke-virtual {p1, v3, v3, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
