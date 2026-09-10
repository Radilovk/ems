.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "BallPulseIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field private scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->scaleFloats:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;)[F
    .locals 1
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;

    .line 14
    iget-object v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->scaleFloats:[F

    return-object v0
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    .line 45
    .local v2, "delays":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 46
    move v4, v3

    .line 48
    .local v4, "index":I
    new-array v5, v1, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 50
    .local v5, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x2ee

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 51
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 52
    aget v6, v2, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 54
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator$1;

    invoke-direct {v6, p0, v4}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 62
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 63
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v4    # "index":I
    .end local v5    # "scaleAnim":Landroid/animation/ValueAnimator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "i":I
    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 27
    const/high16 v0, 0x40800000    # 4.0f

    .line 28
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    sub-float/2addr v1, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v1, v3

    .line 29
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    mul-float v4, v1, v2

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 30
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 31
    .local v4, "y":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    mul-float v6, v1, v2

    int-to-float v7, v5

    mul-float v6, v6, v7

    add-float/2addr v6, v3

    int-to-float v7, v5

    mul-float v7, v7, v0

    add-float/2addr v6, v7

    .line 34
    .local v6, "translateX":F
    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v7, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BallPulseIndicator;->scaleFloats:[F

    aget v8, v7, v5

    aget v7, v7, v5

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 36
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 31
    .end local v6    # "translateX":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 39
    .end local v5    # "i":I
    :cond_0
    return-void
.end method
