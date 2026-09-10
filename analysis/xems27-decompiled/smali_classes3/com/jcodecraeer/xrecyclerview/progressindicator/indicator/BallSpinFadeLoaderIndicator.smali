.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallSpinFadeLoaderIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    }
.end annotation


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
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->alphas:[I

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
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
.method circleAt(IIFD)Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "radius"    # F
    .param p4, "angle"    # D

    .line 63
    div-int/lit8 v0, p1, 0x2

    int-to-double v0, v0

    float-to-double v2, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 64
    .local v0, "x":F
    div-int/lit8 v1, p2, 0x2

    int-to-double v1, v1

    float-to-double v3, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 65
    .local v1, "y":F
    new-instance v2, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;

    invoke-direct {v2, p0, v0, v1}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;FF)V

    return-object v2
.end method

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

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 72
    .local v1, "delays":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 73
    move v3, v2

    .line 74
    .local v3, "index":I
    const/4 v4, 0x3

    new-array v5, v4, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 75
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 77
    aget v9, v1, v2

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 78
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$1;

    invoke-direct {v9, p0, v3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 87
    new-array v4, v4, [I

    fill-array-data v4, :array_2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 88
    .local v4, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 90
    aget v6, v1, v2

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 91
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$2;

    invoke-direct {v6, p0, v3}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 98
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 99
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v3    # "index":I
    .end local v4    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "i":I
    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x78
        0xf0
        0x168
        0x1e0
        0x258
        0x2d0
        0x30c
        0x348
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x4d
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    .line 42
    .local v0, "radius":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v6, v2, v0

    int-to-double v2, v1

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    mul-double v7, v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->circleAt(IIFD)Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;

    move-result-object v2

    .line 45
    .local v2, "point":Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    iget v3, v2, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;->x:F

    iget v4, v2, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->scaleFloats:[F

    aget v4, v3, v1

    aget v3, v3, v1

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    iget-object v3, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator;->alphas:[I

    aget v3, v3, v1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    .end local v2    # "point":Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallSpinFadeLoaderIndicator$Point;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
