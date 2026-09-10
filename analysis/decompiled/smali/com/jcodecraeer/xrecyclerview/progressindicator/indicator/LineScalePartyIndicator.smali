.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "LineScalePartyIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->scaleFloats:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x4

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-array v2, v8, [J

    fill-array-data v2, :array_0

    .line 43
    .local v2, "durations":[J
    new-array v1, v8, [J

    fill-array-data v1, :array_1

    .line 44
    .local v1, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 45
    move v4, v3

    .line 46
    .local v4, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 47
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    aget-wide v6, v2, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    aget-wide v6, v1, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 50
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    :cond_0
    return-object v0

    .line 42
    :array_0
    .array-data 8
        0x4ec
        0x1ae
        0x3f2
        0x2da
    .end array-data

    .line 43
    :array_1
    .array-data 8
        0x302
        0x122
        0x118
        0x2e4
    .end array-data

    .line 46
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x40200000    # 2.5f

    const/high16 v8, 0x40000000    # 2.0f

    .line 27
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x9

    int-to-float v2, v4

    .line 28
    .local v2, "translateX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v3, v4

    .line 29
    .local v3, "translateY":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float v5, v2, v8

    sub-float/2addr v4, v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->scaleFloats:[F

    aget v4, v4, v0

    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->scaleFloats:[F

    aget v5, v5, v0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    new-instance v1, Landroid/graphics/RectF;

    neg-float v4, v2

    div-float/2addr v4, v8

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    div-float v6, v2, v8

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .local v1, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p1, v1, v10, v10, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-void
.end method
