.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallRotateIndicator.java"


# instance fields
.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 10
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
    const-wide/16 v8, 0x3e8

    const/4 v5, 0x3

    const/4 v6, -0x1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 49
    .local v2, "scaleAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 51
    new-instance v3, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator$1;

    invoke-direct {v3, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->getTarget()Landroid/view/View;

    move-result-object v3

    const-string v4, "rotation"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 61
    .local v1, "rotateAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 62
    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 63
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-object v0

    .line 48
    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v0, v3

    .line 23
    .local v0, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 24
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 26
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    mul-float v3, v0, v6

    sub-float v3, v1, v3

    sub-float/2addr v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    invoke-virtual {p1, v5, v5, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 35
    invoke-virtual {p1, v5, v5, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 39
    mul-float v3, v0, v6

    add-float/2addr v3, v1

    add-float/2addr v3, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    iget v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    iget v4, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 41
    invoke-virtual {p1, v5, v5, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    return-void
.end method
