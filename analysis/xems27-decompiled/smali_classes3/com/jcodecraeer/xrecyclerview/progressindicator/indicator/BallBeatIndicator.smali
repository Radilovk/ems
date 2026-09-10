.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallBeatIndicator.java"


# static fields
.field public static final ALPHA:I = 0xff

.field public static final SCALE:F = 1.0f


# instance fields
.field alphas:[I

.field private scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 20
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    .line 24
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->alphas:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method static synthetic access$000(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;)[F
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;

    .line 14
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    return-object v0
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

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 49
    .local v2, "delays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 50
    move v4, v3

    .line 51
    .local v4, "index":I
    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 52
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x2bc

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    aget v9, v2, v3

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 55
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$1;

    invoke-direct {v9, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;I)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    new-array v9, v1, [I

    fill-array-data v9, :array_2

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 65
    .local v9, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {v9, v8}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 67
    aget v6, v2, v3

    int-to-long v6, v6

    invoke-virtual {v9, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 68
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$2;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;I)V

    invoke-virtual {v9, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    .end local v9    # "alphaAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "i":I
    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x15e
        0x0
        0x15e
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0xff
        0x33
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    .line 31
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    .line 32
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 33
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 34
    .local v4, "y":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    mul-float v6, v1, v2

    int-to-float v7, v5

    mul-float v6, v6, v7

    add-float/2addr v6, v3

    int-to-float v7, v5

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    .line 37
    .local v6, "translateX":F
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget-object v7, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    aget v8, v7, v5

    aget v7, v7, v5

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 39
    iget-object v7, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->alphas:[I

    aget v7, v7, v5

    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    .end local v6    # "translateX":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 43
    .end local v5    # "i":I
    :cond_0
    return-void
.end method
