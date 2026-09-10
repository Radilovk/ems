.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "CubeTransitionIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F

.field translateX:[F

.field translateY:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 16
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 18
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateX:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateY:[F

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 12
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
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x5

    int-to-float v5, v9

    .line 40
    .local v5, "startX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x5

    int-to-float v6, v9

    .line 41
    .local v6, "startY":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v9, 0x2

    if-ge v1, v9, :cond_2

    .line 42
    move v2, v1

    .line 43
    .local v2, "index":I
    iget-object v9, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateX:[F

    aput v5, v9, v2

    .line 44
    const/4 v9, 0x5

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    aput v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    aput v11, v9, v10

    const/4 v10, 0x3

    aput v5, v9, v10

    const/4 v10, 0x4

    aput v5, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 45
    .local v7, "translationXAnim":Landroid/animation/ValueAnimator;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    .line 46
    const/4 v9, 0x5

    new-array v9, v9, [F

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    const/4 v10, 0x2

    aput v5, v9, v10

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    aput v11, v9, v10

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v5

    aput v11, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 48
    :cond_0
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    const-wide/16 v10, 0x640

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 51
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$1;

    invoke-direct {v9, p0, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;I)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    iget-object v9, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateY:[F

    aput v6, v9, v2

    .line 60
    const/4 v9, 0x5

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v6, v9, v10

    const/4 v10, 0x1

    aput v6, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    aput v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    aput v11, v9, v10

    const/4 v10, 0x4

    aput v6, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 61
    .local v8, "translationYAnim":Landroid/animation/ValueAnimator;
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    .line 62
    const/4 v9, 0x5

    new-array v9, v9, [F

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    aput v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    aput v11, v9, v10

    const/4 v10, 0x2

    aput v6, v9, v10

    const/4 v10, 0x3

    aput v6, v9, v10

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v11, v6

    aput v11, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 64
    :cond_1
    const-wide/16 v10, 0x640

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 67
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$2;

    invoke-direct {v9, p0, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 80
    .end local v2    # "index":I
    .end local v7    # "translationXAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "translationYAnim":Landroid/animation/ValueAnimator;
    :cond_2
    const/4 v9, 0x5

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 81
    .local v4, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x640

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    const/4 v9, -0x1

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 84
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$3;

    invoke-direct {v9, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$3;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    const/4 v9, 0x5

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 94
    .local v3, "rotateAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v10, 0x640

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    const/4 v9, -0x1

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 97
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$4;

    invoke-direct {v9, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$4;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;)V

    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-object v0

    .line 80
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 93
    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
        0x44070000    # 540.0f
        0x44340000    # 720.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 23
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    int-to-float v2, v4

    .line 24
    .local v2, "rWidth":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    int-to-float v1, v4

    .line 25
    .local v1, "rHeight":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateX:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateY:[F

    aget v5, v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->degrees:F

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 29
    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->scaleFloat:F

    iget v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->scaleFloat:F

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v2

    div-float/2addr v4, v8

    neg-float v5, v1

    div-float/2addr v5, v8

    div-float v6, v2, v8

    div-float v7, v1, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .local v3, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    .end local v3    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method
