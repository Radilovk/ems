.class public Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
.super Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;
.source "PacmanIndicator.java"


# instance fields
.field private alpha:I

.field private degrees1:F

.field private degrees2:F

.field private translateX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # F

    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->translateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # I

    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->alpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # F

    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees1:F

    return p1
.end method

.method static synthetic access$302(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # F

    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees2:F

    return p1
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 55
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    .line 56
    .local v0, "radius":F
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->alpha:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iget v1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->translateX:F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method private drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 31
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    .line 32
    .local v8, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v9, v0

    .line 34
    .local v9, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees1:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 38
    const/16 v6, 0xff

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v8

    const v7, 0x3fd9999a    # 1.7f

    div-float/2addr v0, v7

    neg-float v2, v9

    div-float/2addr v2, v7

    div-float v3, v8, v7

    div-float v4, v9, v7

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 40
    .local v1, "rectF1":Landroid/graphics/RectF;
    const/4 v2, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees2:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 47
    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    new-instance v3, Landroid/graphics/RectF;

    neg-float v0, v8

    div-float/2addr v0, v7

    neg-float v2, v9

    div-float/2addr v2, v7

    div-float v4, v8, v7

    div-float v5, v9, v7

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    .local v3, "rectF2":Landroid/graphics/RectF;
    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43870000    # 270.0f

    const/4 v6, 0x1

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 51
    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    .line 64
    .local v1, "startT":F
    const/4 v2, 0x2

    new-array v3, v2, [F

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v4

    div-int/2addr v4, v2

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 65
    .local v3, "translationAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x28a

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$1;

    invoke-direct {v7, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 78
    .local v2, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 80
    new-instance v7, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;

    invoke-direct {v7, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 89
    const/4 v7, 0x3

    new-array v8, v7, [F

    fill-array-data v8, :array_1

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 90
    .local v8, "rotateAnim1":Landroid/animation/ValueAnimator;
    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    invoke-virtual {v8, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 92
    new-instance v9, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$3;

    invoke-direct {v9, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$3;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    new-array v7, v7, [F

    fill-array-data v7, :array_2

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 102
    .local v7, "rotateAnim2":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 104
    new-instance v4, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$4;

    invoke-direct {v4, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$4;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v7, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v0

    nop

    :array_0
    .array-data 4
        0xff
        0x7a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3dcc0000    # -45.0f
        0x0
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 28
    return-void
.end method
