.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleMultipleIndicator;
.source "BallScaleRippleMultipleIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleMultipleIndicator;-><init>()V

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

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    .line 29
    .local v2, "delays":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 30
    move v4, v3

    .line 31
    .local v4, "index":I
    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 32
    .local v6, "scaleAnim":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 33
    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    new-instance v10, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator$1;

    invoke-direct {v10, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator;I)V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 42
    aget-wide v10, v2, v3

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 43
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 45
    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 46
    .local v5, "alphaAnim":Landroid/animation/ValueAnimator;
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 47
    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 48
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator$2;

    invoke-direct {v7, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleRippleMultipleIndicator;I)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    aget-wide v7, v2, v3

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 57
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .end local v4    # "index":I
    .end local v5    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v3    # "i":I
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0xc8
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    invoke-super {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallScaleMultipleIndicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 23
    return-void
.end method
