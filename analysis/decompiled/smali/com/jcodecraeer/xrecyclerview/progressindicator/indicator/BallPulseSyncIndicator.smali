.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallPulseSyncIndicator.java"


# instance fields
.field translateYFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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
    .locals 13
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
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x3

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/high16 v1, 0x40800000    # 4.0f

    .line 36
    .local v1, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v8, v1, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x40c00000    # 6.0f

    div-float v5, v7, v8

    .line 37
    .local v5, "radius":F
    new-array v2, v11, [I

    fill-array-data v2, :array_0

    .line 38
    .local v2, "delays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v11, :cond_0

    .line 39
    move v4, v3

    .line 40
    .local v4, "index":I
    new-array v7, v11, [F

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    mul-float v10, v5, v12

    sub-float/2addr v9, v10

    aput v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 41
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0x258

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 43
    aget v7, v2, v3

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 44
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator$1;

    invoke-direct {v7, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 52
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v4    # "index":I
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    :cond_0
    return-object v0

    .line 37
    nop

    :array_0
    .array-data 4
        0x46
        0x8c
        0xd2
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 20
    const/high16 v0, 0x40800000    # 4.0f

    .line 21
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v0, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x40c00000    # 6.0f

    div-float v2, v5, v6

    .line 22
    .local v2, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float v6, v2, v7

    add-float/2addr v6, v0

    sub-float v4, v5, v6

    .line 23
    .local v4, "x":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 25
    mul-float v5, v2, v7

    int-to-float v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    int-to-float v6, v1

    mul-float/2addr v6, v0

    add-float v3, v5, v6

    .line 26
    .local v3, "translateX":F
    iget-object v5, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseSyncIndicator;->translateYFloats:[F

    aget v5, v5, v1

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    invoke-virtual {p1, v8, v8, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    .end local v3    # "translateX":F
    :cond_0
    return-void
.end method
