.class public final Lcom/isaigu/gymapp/widget/TimerRingView;
.super Landroid/view/View;
.source "TimerRingView.java"


# static fields
.field private static final RES_COLOR_TRACK:I = 0x7f0600ac


# instance fields
.field private final arcBounds:Landroid/graphics/RectF;

.field private curProcess:I

.field private elapsedFraction:F

.field private maxDiameterPx:I

.field private maxProcess:I

.field private final progressPaint:Landroid/graphics/Paint;

.field private remainingFraction:F

.field private final trackPaint:Landroid/graphics/Paint;

.field private trackWidthPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 32
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    .line 21
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    .line 25
    const/16 p2, 0x64

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 28
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 37
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    .line 20
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    .line 21
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    .line 25
    const/16 p2, 0x64

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 28
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 42
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public static colorForRemaining(F)I
    .registers 3

    .line 127
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_a

    .line 128
    const p0, -0x1ac6cb

    return p0

    .line 130
    :cond_a
    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_13

    .line 131
    const p0, -0xbc5fb9

    return p0

    .line 133
    :cond_13
    sub-float/2addr v0, p0

    const/high16 p0, 0x42f00000    # 120.0f

    mul-float v0, v0, p0

    .line 134
    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    const v1, 0x3f6147ae    # 0.88f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f75c28f    # 0.96f

    aput v1, p0, v0

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 3

    .line 164
    nop

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 164
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 46
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    .line 47
    const/high16 v0, 0x43400000    # 192.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 48
    nop

    .line 50
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    .line 52
    goto :goto_22

    .line 51
    :catchall_1e
    move-exception p1

    const p1, -0x1f2222

    .line 53
    :goto_22
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setWillNotDraw(Z)V

    .line 59
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->updateProgressColor()V

    .line 60
    return-void
.end method

.method private updateProgressColor()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 150
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 151
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    .line 152
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 156
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->elapsedFraction:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v5, v0, v1

    .line 157
    const/4 v0, 0x0

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_4a

    .line 158
    return-void

    .line 160
    :cond_4a
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 161
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 139
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 140
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 141
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 142
    if-lez p1, :cond_12

    iget p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    if-le p1, p2, :cond_14

    .line 143
    :cond_12
    iget p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 145
    :cond_14
    invoke-virtual {p0, p1, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMeasuredDimension(II)V

    .line 146
    return-void
.end method

.method public setCurProcess(I)V
    .registers 3

    .line 80
    if-gez p1, :cond_3

    .line 81
    const/4 p1, 0x0

    .line 83
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    if-le p1, v0, :cond_8

    .line 84
    move p1, v0

    .line 86
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 87
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 88
    return-void
.end method

.method public setElapsedFraction(F)V
    .registers 4

    .line 106
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 107
    const/4 p1, 0x0

    .line 109
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_e

    .line 110
    const/high16 p1, 0x3f800000    # 1.0f

    .line 112
    :cond_e
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->elapsedFraction:F

    .line 113
    sub-float/2addr v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 114
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->updateProgressColor()V

    .line 115
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 116
    return-void
.end method

.method public setMaxDiameterDp(F)V
    .registers 3

    .line 63
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->requestLayout()V

    .line 65
    return-void
.end method

.method public setMaxProcess(I)V
    .registers 3

    .line 68
    if-gtz p1, :cond_3

    .line 69
    const/4 p1, 0x1

    .line 71
    :cond_3
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 72
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    if-le v0, p1, :cond_b

    .line 73
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 75
    :cond_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 76
    return-void
.end method

.method public setRemainingFraction(F)V
    .registers 4

    .line 92
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 93
    const/4 p1, 0x0

    .line 95
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_e

    .line 96
    const/high16 p1, 0x3f800000    # 1.0f

    .line 98
    :cond_e
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->remainingFraction:F

    .line 99
    sub-float/2addr v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->elapsedFraction:F

    .line 100
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->updateProgressColor()V

    .line 101
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 102
    return-void
.end method
