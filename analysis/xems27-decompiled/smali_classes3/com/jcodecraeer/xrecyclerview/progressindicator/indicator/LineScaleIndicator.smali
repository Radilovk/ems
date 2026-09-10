.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "LineScaleIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field scaleYFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;->scaleYFloats:[F

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
    .locals 8
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
    const/4 v1, 0x5

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    .line 43
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 44
    move v4, v3

    .line 45
    .local v4, "index":I
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 46
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    aget-wide v6, v2, v3

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 49
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 57
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "i":I
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
    .end array-data

    :array_1
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
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    .line 28
    .local v0, "translateX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 29
    .local v1, "translateY":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

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
    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;->scaleYFloats:[F

    aget v5, v5, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 33
    new-instance v3, Landroid/graphics/RectF;

    neg-float v5, v0

    div-float/2addr v5, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x40200000    # 2.5f

    div-float/2addr v6, v7

    div-float v4, v0, v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/LineScaleIndicator;->getHeight()I

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
