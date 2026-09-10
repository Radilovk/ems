.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;
.source "LineSpinFadeLoaderIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v8, v0

    .line 17
    .local v8, "radius":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v0, v3

    sub-float v3, v0, v8

    int-to-double v4, v6

    const-wide v10, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double/2addr v4, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->circleAt(IIFD)Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;

    move-result-object v7

    .line 20
    .local v7, "point":Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    iget v0, v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;->x:F

    iget v1, v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v1, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 22
    mul-int/lit8 v0, v6, 0x2d

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 23
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineSpinFadeLoaderIndicator;->alphas:[I

    aget v0, v0, v6

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    new-instance v9, Landroid/graphics/RectF;

    neg-float v0, v8

    neg-float v1, v8

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v8

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v3, v8, v3

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 25
    .local v9, "rectF":Landroid/graphics/RectF;
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v9, v0, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 28
    .end local v7    # "point":Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    .end local v9    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method
