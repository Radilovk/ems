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

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 20
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->alphas:[I

    .line 30
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->scaleFloats:[F

    return-void

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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 67
    .local v2, "durations":[I
    new-array v3, v1, [I

    fill-array-data v3, :array_1

    .line 69
    .local v3, "delays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 70
    move v5, v4

    .line 71
    .local v5, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 72
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    aget v7, v2, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    aget v8, v3, v4

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    new-instance v8, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$1;

    invoke-direct {v8, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;I)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 84
    const/4 v8, 0x4

    new-array v8, v8, [I

    fill-array-data v8, :array_3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 85
    .local v8, "alphaAnim":Landroid/animation/ValueAnimator;
    aget v9, v2, v4

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 87
    aget v7, v3, v4

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 88
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$2;

    invoke-direct {v7, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;I)V

    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 96
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v5    # "index":I
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    .end local v8    # "alphaAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v4    # "i":I
    :cond_0
    return-object v0

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

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xd2
        0x7a
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 44
    const/high16 v0, 0x40800000    # 4.0f

    .line 45
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    .line 46
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    add-float/2addr v4, v0

    sub-float/2addr v2, v4

    .line 47
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v5, v1, v3

    add-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 49
    .local v4, "y":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 50
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    mul-float v8, v1, v3

    int-to-float v9, v7

    mul-float v8, v8, v9

    add-float/2addr v8, v2

    int-to-float v9, v7

    mul-float v9, v9, v0

    add-float/2addr v8, v9

    .line 53
    .local v8, "translateX":F
    mul-float v9, v1, v3

    int-to-float v10, v5

    mul-float v9, v9, v10

    add-float/2addr v9, v4

    int-to-float v10, v5

    mul-float v10, v10, v0

    add-float/2addr v9, v10

    .line 54
    .local v9, "translateY":F
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    iget-object v10, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->scaleFloats:[F

    mul-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v7

    aget v11, v10, v11

    mul-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v7

    aget v10, v10, v12

    invoke-virtual {p1, v11, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 56
    iget-object v10, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridPulseIndicator;->alphas:[I

    mul-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v7

    aget v10, v10, v11

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v10, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 50
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 49
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    .end local v5    # "i":I
    :cond_1
    return-void
.end method
