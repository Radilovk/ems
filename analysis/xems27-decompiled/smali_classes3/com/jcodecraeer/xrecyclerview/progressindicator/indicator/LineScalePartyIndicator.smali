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
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x4

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    .line 43
    .local v2, "durations":[J
    new-array v3, v1, [J

    fill-array-data v3, :array_1

    .line 44
    .local v3, "delays":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 45
    move v5, v4

    .line 46
    .local v5, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 47
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    aget-wide v7, v2, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    aget-wide v7, v3, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 50
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;

    invoke-direct {v7, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v5    # "index":I
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "i":I
    :cond_0
    return-object v0

    :array_0
    .array-data 8
        0x4ec
        0x1ae
        0x3f2
        0x2da
    .end array-data

    :array_1
    .array-data 8
        0x302
        0x122
        0x118
        0x2e4
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 27
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x9

    int-to-float v0, v0

    .line 28
    .local v0, "translateX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 29
    .local v1, "translateY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->scaleFloats:[F

    aget v5, v3, v2

    aget v3, v3, v2

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    new-instance v3, Landroid/graphics/RectF;

    neg-float v5, v0

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    div-float v4, v0, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScalePartyIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-direct {v3, v5, v6, v4, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .local v3, "rectF":Landroid/graphics/RectF;
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p1, v3, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    .end local v3    # "rectF":Landroid/graphics/RectF;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
