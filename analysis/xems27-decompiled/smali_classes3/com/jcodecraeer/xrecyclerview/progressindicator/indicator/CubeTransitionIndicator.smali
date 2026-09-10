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

    .line 16
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 18
    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateX:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateY:[F

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 38
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v2

    const/4 v3, 0x5

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 40
    .local v2, "startX":F
    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    int-to-float v4, v4

    .line 41
    .local v4, "startY":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const-wide/16 v7, 0x640

    const/4 v9, 0x2

    if-ge v5, v9, :cond_2

    .line 42
    move v10, v5

    .line 43
    .local v10, "index":I
    iget-object v11, v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateX:[F

    aput v2, v11, v10

    .line 44
    new-array v11, v3, [F

    const/4 v12, 0x0

    aput v2, v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    const/4 v14, 0x1

    aput v13, v11, v14

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v2

    aput v13, v11, v9

    const/4 v13, 0x3

    aput v2, v11, v13

    const/4 v15, 0x4

    aput v2, v11, v15

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 45
    .local v11, "translationXAnim":Landroid/animation/ValueAnimator;
    if-ne v5, v14, :cond_0

    .line 46
    new-array v6, v3, [F

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    aput v3, v6, v12

    aput v2, v6, v14

    aput v2, v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    aput v3, v6, v13

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    aput v3, v6, v15

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 48
    :cond_0
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    invoke-virtual {v11, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    const/4 v3, -0x1

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 51
    new-instance v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$1;

    invoke-direct {v3, v0, v10}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;I)V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    iget-object v3, v0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateY:[F

    aput v4, v3, v10

    .line 60
    const/4 v3, 0x5

    new-array v6, v3, [F

    aput v4, v6, v12

    aput v4, v6, v14

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    aput v3, v6, v9

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    aput v3, v6, v13

    aput v4, v6, v15

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 61
    .local v3, "translationYAnim":Landroid/animation/ValueAnimator;
    if-ne v5, v14, :cond_1

    .line 62
    const/4 v6, 0x5

    new-array v7, v6, [F

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    aput v6, v7, v12

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    aput v6, v7, v14

    aput v4, v7, v9

    aput v4, v7, v13

    invoke-virtual/range {p0 .. p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    aput v6, v7, v15

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 64
    :cond_1
    const-wide/16 v6, 0x640

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 65
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 66
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 67
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$2;

    invoke-direct {v6, v0, v10}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;I)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .end local v3    # "translationYAnim":Landroid/animation/ValueAnimator;
    .end local v10    # "index":I
    .end local v11    # "translationXAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x5

    goto/16 :goto_0

    .line 80
    .end local v5    # "i":I
    :cond_2
    const/4 v3, 0x5

    new-array v5, v3, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 81
    .local v3, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v5, 0x640

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 84
    new-instance v5, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$3;

    invoke-direct {v5, v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$3;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 91
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 93
    const/4 v5, 0x5

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 94
    .local v5, "rotateAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x640

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 95
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 97
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$4;

    invoke-direct {v6, v0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator$4;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 106
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-object v1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

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
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    .line 24
    .local v0, "rWidth":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    .line 25
    .local v1, "rHeight":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateX:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->translateY:[F

    aget v4, v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->degrees:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 29
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/CubeTransitionIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    neg-float v6, v1

    div-float/2addr v6, v5

    div-float v7, v0, v5

    div-float v5, v1, v5

    invoke-direct {v3, v4, v6, v7, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    .local v3, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 25
    .end local v3    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
