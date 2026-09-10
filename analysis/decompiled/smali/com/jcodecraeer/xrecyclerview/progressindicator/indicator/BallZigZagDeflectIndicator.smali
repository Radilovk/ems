.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;
.source "BallZigZagDeflectIndicator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagIndicator;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 15
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
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    int-to-float v3, v7

    .line 22
    .local v3, "startX":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    int-to-float v4, v7

    .line 23
    .local v4, "startY":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_2

    .line 24
    move v2, v1

    .line 25
    .local v2, "index":I
    const/4 v7, 0x5

    new-array v7, v7, [F

    aput v3, v7, v12

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v10

    aput v3, v7, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v13

    aput v3, v7, v14

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 26
    .local v5, "translateXAnim":Landroid/animation/ValueAnimator;
    if-ne v1, v10, :cond_0

    .line 27
    const/4 v7, 0x5

    new-array v7, v7, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v12

    aput v3, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v11

    aput v3, v7, v13

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v3

    aput v8, v7, v14

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 29
    :cond_0
    const/4 v7, 0x5

    new-array v7, v7, [F

    aput v4, v7, v12

    aput v4, v7, v10

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v11

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v13

    aput v4, v7, v14

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 30
    .local v6, "translateYAnim":Landroid/animation/ValueAnimator;
    if-ne v1, v10, :cond_1

    .line 31
    const/4 v7, 0x5

    new-array v7, v7, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v12

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v10

    aput v4, v7, v11

    aput v4, v7, v13

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v7, v14

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 34
    :cond_1
    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 36
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 37
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$1;

    invoke-direct {v7, p0, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;I)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 48
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 49
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$2;

    invoke-direct {v7, p0, v2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallZigZagDeflectIndicator;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 56
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 61
    .end local v2    # "index":I
    .end local v5    # "translateXAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "translateYAnim":Landroid/animation/ValueAnimator;
    :cond_2
    return-object v0
.end method
