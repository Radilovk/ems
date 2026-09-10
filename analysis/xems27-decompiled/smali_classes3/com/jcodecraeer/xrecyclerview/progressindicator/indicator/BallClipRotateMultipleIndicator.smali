.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallClipRotateMultipleIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 58
    .local v2, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator$1;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 70
    .local v1, "rotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 72
    new-instance v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator$2;

    invoke-direct {v3, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 79
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 22
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    const/high16 v0, 0x41400000    # 12.0f

    .line 26
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    .line 27
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    .line 29
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->degrees:F

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 36
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    .line 37
    .local v4, "bStartAngles":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 38
    new-instance v7, Landroid/graphics/RectF;

    neg-float v6, v1

    add-float/2addr v6, v0

    neg-float v8, v3

    add-float/2addr v8, v0

    sub-float v9, v1, v0

    sub-float v10, v3, v0

    invoke-direct {v7, v6, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    .local v7, "rectF":Landroid/graphics/RectF;
    aget v8, v4, v5

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x0

    move-object v6, p1

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    .end local v7    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 42
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    iget v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 45
    iget v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->degrees:F

    neg-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 47
    new-array v5, v2, [F

    fill-array-data v5, :array_1

    .line 48
    .local v5, "sStartAngles":[F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 49
    new-instance v8, Landroid/graphics/RectF;

    neg-float v7, v1

    const v9, 0x3fe66666    # 1.8f

    div-float/2addr v7, v9

    add-float/2addr v7, v0

    neg-float v10, v3

    div-float/2addr v10, v9

    add-float/2addr v10, v0

    div-float v11, v1, v9

    sub-float/2addr v11, v0

    div-float v9, v3, v9

    sub-float/2addr v9, v0

    invoke-direct {v8, v7, v10, v11, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 50
    .local v8, "rectF":Landroid/graphics/RectF;
    aget v9, v5, v6

    const/high16 v10, 0x42b40000    # 90.0f

    const/4 v11, 0x0

    move-object v7, p1

    move-object v12, p2

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    .end local v8    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    .end local v6    # "i":I
    :cond_1
    return-void

    :array_0
    .array-data 4
        0x43070000    # 135.0f
        -0x3dcc0000    # -45.0f
    .end array-data

    :array_1
    .array-data 4
        0x43610000    # 225.0f
        0x42340000    # 45.0f
    .end array-data
.end method
