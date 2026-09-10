.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallGridBeatIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff


# instance fields
.field alphas:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;->alphas:[I

    return-void

    nop

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

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v1, 0x9

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 53
    .local v2, "durations":[I
    new-array v3, v1, [I

    fill-array-data v3, :array_1

    .line 55
    .local v3, "delays":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 56
    move v5, v4

    .line 57
    .local v5, "index":I
    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 58
    .local v6, "alphaAnim":Landroid/animation/ValueAnimator;
    aget v7, v2, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 60
    aget v7, v3, v4

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 61
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator$1;

    invoke-direct {v7, p0, v5}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 69
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v5    # "index":I
    .end local v6    # "alphaAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v4    # "i":I
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3c0
        0x3a2
        0x4a6
        0x46a
        0x53c
        0x3ac
        0x4b0
        0x334
        0x4a6
    .end array-data

    :array_1
    .array-data 4
        0x168
        0x190
        0x2a8
        0x19a
        0x2c6
        -0x96
        -0x78
        0xa
        0x140
    .end array-data

    :array_2
    .array-data 4
        0xff
        0xa8
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    .line 31
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    .line 32
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    add-float/2addr v4, v0

    sub-float/2addr v2, v4

    .line 33
    .local v2, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float v5, v1, v3

    add-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 35
    .local v4, "y":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 36
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    mul-float v8, v1, v3

    int-to-float v9, v7

    mul-float v8, v8, v9

    add-float/2addr v8, v2

    int-to-float v9, v7

    mul-float v9, v9, v0

    add-float/2addr v8, v9

    .line 39
    .local v8, "translateX":F
    mul-float v9, v1, v3

    int-to-float v10, v5

    mul-float v9, v9, v10

    add-float/2addr v9, v4

    int-to-float v10, v5

    mul-float v10, v10, v0

    add-float/2addr v9, v10

    .line 40
    .local v9, "translateY":F
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    iget-object v10, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallGridBeatIndicator;->alphas:[I

    mul-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v7

    aget v10, v10, v11

    invoke-virtual {p2, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v10, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 36
    .end local v8    # "translateX":F
    .end local v9    # "translateY":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 35
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 46
    .end local v5    # "i":I
    :cond_1
    return-void
.end method
