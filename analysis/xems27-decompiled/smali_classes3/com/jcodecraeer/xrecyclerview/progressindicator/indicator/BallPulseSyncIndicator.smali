.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallPulseSyncIndicator.java"


# instance fields
.field translateYFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->translateYFloats:[F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/high16 v1, 0x40800000    # 4.0f

    .line 36
    .local v1, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    sub-float/2addr v2, v4

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v2, v4

    .line 37
    .local v2, "radius":F
    const/4 v4, 0x3

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    .line 38
    .local v5, "delays":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 39
    move v7, v6

    .line 40
    .local v7, "index":I
    new-array v8, v4, [F

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getHeight()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getHeight()I

    move-result v9

    div-int/2addr v9, v11

    int-to-float v9, v9

    mul-float v10, v2, v3

    sub-float/2addr v9, v10

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getHeight()I

    move-result v9

    div-int/2addr v9, v11

    int-to-float v9, v9

    aput v9, v8, v11

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 41
    .local v8, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v9, 0x258

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 43
    aget v9, v5, v6

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 44
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator$1;

    invoke-direct {v9, p0, v7}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;I)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v7    # "index":I
    .end local v8    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    .end local v6    # "i":I
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x46
        0x8c
        0xd2
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 20
    const/high16 v0, 0x40800000    # 4.0f

    .line 21
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    .line 22
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 23
    .local v3, "x":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    mul-float v5, v1, v2

    int-to-float v6, v4

    mul-float v5, v5, v6

    add-float/2addr v5, v3

    int-to-float v6, v4

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    .line 26
    .local v5, "translateX":F
    iget-object v6, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->translateYFloats:[F

    aget v6, v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    .end local v5    # "translateX":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local v4    # "i":I
    :cond_0
    return-void
.end method
