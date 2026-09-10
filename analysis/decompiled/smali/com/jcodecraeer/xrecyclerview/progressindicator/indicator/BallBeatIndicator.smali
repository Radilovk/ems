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

    .prologue
    const/4 v1, 0x3

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->alphas:[I

    return-void

    .line 20
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 24
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

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    return-object v0
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
    const-wide/16 v10, 0x2bc

    const/4 v9, -0x1

    const/4 v8, 0x3

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 49
    .local v2, "delays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_0

    .line 50
    move v4, v3

    .line 51
    .local v4, "index":I
    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 52
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 53
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    aget v6, v2, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 55
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 64
    new-array v6, v8, [I

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 65
    .local v0, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 67
    aget v6, v2, v3

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 68
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$2;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    :cond_0
    return-object v1

    .line 48
    :array_0
    .array-data 4
        0x15e
        0x0
        0x15e
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
    .end array-data

    .line 64
    :array_2
    .array-data 4
        0xff
        0x33
        0xff
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 30
    const/high16 v0, 0x40800000    # 4.0f

    .line 31
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v0, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40c00000    # 6.0f

    div-float v2, v6, v7

    .line 32
    .local v2, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float v7, v2, v8

    add-float/2addr v7, v0

    sub-float v4, v6, v7

    .line 33
    .local v4, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v5, v6

    .line 34
    .local v5, "y":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v1, v6, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    mul-float v6, v2, v8

    int-to-float v7, v1

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    int-to-float v7, v1

    mul-float/2addr v7, v0

    add-float v3, v6, v7

    .line 37
    .local v3, "translateX":F
    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget-object v6, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->scaleFloats:[F

    aget v7, v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 39
    iget-object v6, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallBeatIndicator;->alphas:[I

    aget v6, v6, v1

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    invoke-virtual {p1, v9, v9, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "translateX":F
    :cond_0
    return-void
.end method
