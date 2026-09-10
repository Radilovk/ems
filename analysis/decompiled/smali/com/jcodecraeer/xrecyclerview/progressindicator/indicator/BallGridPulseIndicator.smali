.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallGridPulseIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->alphas:[I

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->scaleFloats:[F

    return-void

    .line 20
    :array_0
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
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
    const/4 v11, -0x1

    const/16 v10, 0x9

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 67
    .local v3, "durations":[I
    new-array v2, v10, [I

    fill-array-data v2, :array_1

    .line 69
    .local v2, "delays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v10, :cond_0

    .line 70
    move v5, v4

    .line 71
    .local v5, "index":I
    const/4 v7, 0x3

    new-array v7, v7, [F

    fill-array-data v7, :array_2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 72
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    aget v7, v3, v4

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    invoke-virtual {v6, v11}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    aget v7, v2, v4

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$1;

    invoke-direct {v7, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 84
    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_3

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 85
    .local v0, "alphaAnim":Landroid/animation/ValueAnimator;
    aget v7, v3, v4

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 87
    aget v7, v2, v4

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 88
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$2;

    invoke-direct {v7, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;I)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v5    # "index":I
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    :cond_0
    return-object v1

    .line 66
    :array_0
    .array-data 4
        0x2d0
        0x3fc
        0x500
        0x58c
        0x5aa
        0x49c
        0x366
        0x5aa
        0x424
    .end array-data

    .line 67
    :array_1
    .array-data 4
        -0x3c
        0xfa
        -0xaa
        0x1e0
        0x136
        0x1e
        0x1cc
        0x30c
        0x1c2
    .end array-data

    .line 71
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 84
    :array_3
    .array-data 4
        0xff
        0xd2
        0x7a
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 44
    const/high16 v0, 0x40800000    # 4.0f

    .line 45
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v0

    sub-float/2addr v8, v9

    const/high16 v9, 0x40c00000    # 6.0f

    div-float v3, v8, v9

    .line 46
    .local v3, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v3

    add-float/2addr v9, v0

    sub-float v6, v8, v9

    .line 47
    .local v6, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v3

    add-float/2addr v9, v0

    sub-float v7, v8, v9

    .line 49
    .local v7, "y":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v1, v8, :cond_1

    .line 50
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v8, 0x3

    if-ge v2, v8, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    int-to-float v9, v2

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    int-to-float v9, v2

    mul-float/2addr v9, v0

    add-float v4, v8, v9

    .line 53
    .local v4, "translateX":F
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    int-to-float v9, v1

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v0

    add-float v5, v8, v9

    .line 54
    .local v5, "translateY":F
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v9, v1, 0x3

    add-int/2addr v9, v2

    aget v8, v8, v9

    iget-object v9, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v10, v1, 0x3

    add-int/2addr v10, v2

    aget v9, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 56
    iget-object v8, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->alphas:[I

    mul-int/lit8 v9, v1, 0x3

    add-int/2addr v9, v2

    aget v8, v8, v9

    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v4    # "translateX":F
    .end local v5    # "translateY":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v2    # "j":I
    :cond_1
    return-void
.end method
