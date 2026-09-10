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

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/BaseIndicatorController;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->translateX:F

    return p1
.end method

.method static synthetic access$102(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->alpha:I

    return p1
.end method

.method static synthetic access$202(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees1:F

    return p1
.end method

.method static synthetic access$302(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;F)F
    .locals 0
    .param p0, "x0"    # Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;
    .param p1, "x1"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees2:F

    return p1
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0xb

    int-to-float v0, v1

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
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/16 v9, 0xff

    const/4 v4, 0x1

    const/high16 v3, 0x43870000    # 270.0f

    const v8, 0x3fd9999a    # 1.7f

    .line 31
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v11, v0

    .line 32
    .local v11, "x":F
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v12, v0

    .line 34
    .local v12, "y":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees1:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 38
    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    neg-float v0, v11

    div-float/2addr v0, v8

    neg-float v2, v12

    div-float/2addr v2, v8

    div-float v5, v11, v8

    div-float v7, v12, v8

    invoke-direct {v1, v0, v2, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 40
    .local v1, "rectF1":Landroid/graphics/RectF;
    const/4 v2, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget v0, p0, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->degrees2:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 47
    invoke-virtual {p2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    new-instance v6, Landroid/graphics/RectF;

    neg-float v0, v11

    div-float/2addr v0, v8

    neg-float v2, v12

    div-float/2addr v2, v8

    div-float v5, v11, v8

    div-float v7, v12, v8

    invoke-direct {v6, v0, v2, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 49
    .local v6, "rectF2":Landroid/graphics/RectF;
    const/high16 v7, 0x42b40000    # 90.0f

    move-object v5, p1

    move v8, v3

    move v9, v4

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 51
    return-void
.end method


# virtual methods
.method public createAnimation()Ljava/util/List;
    .locals 14
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
    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/16 v10, 0x28a

    const/4 v9, -0x1

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0xb

    int-to-float v4, v6

    .line 64
    .local v4, "startT":F
    new-array v6, v12, [F

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    aput v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 65
    .local v5, "translationAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 68
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$1;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$1;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    new-array v6, v12, [I

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 78
    .local v0, "alphaAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 79
    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 80
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$2;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 89
    new-array v6, v13, [F

    fill-array-data v6, :array_1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 90
    .local v2, "rotateAnim1":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 91
    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 92
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$3;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$3;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 99
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 101
    new-array v6, v13, [F

    fill-array-data v6, :array_2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 102
    .local v3, "rotateAnim2":Landroid/animation/ValueAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 103
    invoke-virtual {v3, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 104
    new-instance v6, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$4;

    invoke-direct {v6, p0}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator$4;-><init>(Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v1

    .line 77
    :array_0
    .array-data 4
        0xff
        0x7a
    .end array-data

    .line 89
    :array_1
    .array-data 4
        0x0
        0x42340000    # 45.0f
        0x0
    .end array-data

    .line 101
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

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->drawPacman(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/jcodecraeer/xrecyclerview/progressindicator/indicator/PacmanIndicator;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 28
    return-void
.end method
