.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallClipRotateMultipleIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 8
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
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 58
    .local v2, "scaleAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    new-instance v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator$1;

    invoke-direct {v3, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 70
    .local v1, "rotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 71
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

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

    .line 57
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 22
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    const/high16 v7, 0x41400000    # 12.0f

    .line 26
    .local v7, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v10, v0

    .line 27
    .local v10, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v11, v0

    .line 29
    .local v11, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->degrees:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 36
    const/4 v0, 0x2

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    .line 37
    .local v6, "bStartAngles":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_0

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v10

    add-float/2addr v0, v7

    neg-float v2, v11

    add-float/2addr v2, v7

    sub-float v3, v10, v7

    sub-float v4, v11, v7

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    .local v1, "rectF":Landroid/graphics/RectF;
    aget v2, v6, v8

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 37
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    iget v2, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->scaleFloat:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 45
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallClipRotateMultipleIndicator;->degrees:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 47
    const/4 v0, 0x2

    new-array v9, v0, [F

    fill-array-data v9, :array_1

    .line 48
    .local v9, "sStartAngles":[F
    const/4 v8, 0x0

    :goto_1
    const/4 v0, 0x2

    if-ge v8, v0, :cond_1

    .line 49
    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v10

    const v2, 0x3fe66666    # 1.8f

    div-float/2addr v0, v2

    add-float/2addr v0, v7

    neg-float v2, v11

    const v3, 0x3fe66666    # 1.8f

    div-float/2addr v2, v3

    add-float/2addr v2, v7

    const v3, 0x3fe66666    # 1.8f

    div-float v3, v10, v3

    sub-float/2addr v3, v7

    const v4, 0x3fe66666    # 1.8f

    div-float v4, v11, v4

    sub-float/2addr v4, v7

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 50
    .restart local v1    # "rectF":Landroid/graphics/RectF;
    aget v2, v9, v8

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 52
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_1
    return-void

    .line 36
    :array_0
    .array-data 4
        0x43070000    # 135.0f
        -0x3dcc0000    # -45.0f
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x43610000    # 225.0f
        0x42340000    # 45.0f
    .end array-data
.end method
