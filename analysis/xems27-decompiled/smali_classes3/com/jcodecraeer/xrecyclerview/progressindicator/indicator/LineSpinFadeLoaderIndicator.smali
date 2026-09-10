.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;
.source "LineSpinFadeLoaderIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 16
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 17
    .local v0, "radius":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    sub-float v6, v2, v0

    int-to-double v2, v1

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double v7, v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->circleAt(IIFD)Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;

    move-result-object v2

    .line 20
    .local v2, "point":Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    iget v3, v2, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;->x:F

    iget v4, v2, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v4, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 22
    mul-int/lit8 v3, v1, 0x2d

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 23
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->alphas:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    new-instance v3, Landroid/graphics/RectF;

    neg-float v4, v0

    neg-float v5, v0

    const/high16 v6, 0x3fc00000    # 1.5f

    div-float/2addr v5, v6

    mul-float v7, v0, v6

    div-float v6, v0, v6

    invoke-direct {v3, v4, v5, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 25
    .local v3, "rectF":Landroid/graphics/RectF;
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p1, v3, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    .end local v2    # "point":Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    .end local v3    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
