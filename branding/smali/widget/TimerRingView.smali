.class public final Lcom/isaigu/gymapp/widget/TimerRingView;
.super Landroid/view/View;
.source "TimerRingView.java"


# static fields
.field private static final RES_COLOR_TRACK:I = 0x7f0600ac


# instance fields
.field private final arcBounds:Landroid/graphics/RectF;

.field private curProcess:I

.field private maxDiameterPx:I

.field private maxProcess:I

.field private final progressPaint:Landroid/graphics/Paint;

.field private final trackPaint:Landroid/graphics/Paint;

.field private trackWidthPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 29
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

    .line 26
    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 30
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 34
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

    .line 26
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 35
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
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

    .line 26
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 40
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private static blend(IIF)I
    .registers 8

    .line 115
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    .line 116
    return p1

    .line 118
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_d

    .line 119
    return p0

    .line 121
    :cond_d
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, p2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 122
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 123
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 124
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    .line 125
    invoke-static {v1, v2, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static colorForRemaining(F)I
    .registers 7

    .line 96
    const v0, -0x1ac6cb

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_a

    .line 97
    return v0

    .line 99
    :cond_a
    const/4 v1, 0x0

    const v2, -0xbc5fb9

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_13

    .line 100
    return v2

    .line 102
    :cond_13
    const/16 v1, -0x6800

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3e800000    # 0.25f

    cmpl-float v5, p0, v3

    if-ltz v5, :cond_24

    .line 103
    sub-float/2addr p0, v3

    div-float/2addr p0, v4

    invoke-static {v1, v0, p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->blend(IIF)I

    move-result p0

    return p0

    .line 105
    :cond_24
    const/16 v0, -0x14c5

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v5, p0, v3

    if-ltz v5, :cond_33

    .line 106
    sub-float/2addr p0, v3

    div-float/2addr p0, v4

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->blend(IIF)I

    move-result p0

    return p0

    .line 108
    :cond_33
    const v1, -0x994496

    cmpl-float v3, p0, v4

    if-ltz v3, :cond_41

    .line 109
    sub-float/2addr p0, v4

    div-float/2addr p0, v4

    invoke-static {v1, v0, p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->blend(IIF)I

    move-result p0

    return p0

    .line 111
    :cond_41
    div-float/2addr p0, v4

    invoke-static {v2, v1, p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->blend(IIF)I

    move-result p0

    return p0
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 3

    .line 155
    nop

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 155
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .line 44
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    .line 45
    const/high16 v0, 0x43400000    # 192.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 46
    nop

    .line 48
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    .line 50
    goto :goto_22

    .line 49
    :catchall_1e
    move-exception p1

    const p1, -0x1f2222

    .line 51
    :goto_22
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 56
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setWillNotDraw(Z)V

    .line 57
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->updateProgressColor()V

    .line 58
    return-void
.end method

.method private updateProgressColor()V
    .registers 3

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->colorForRemaining(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    .line 143
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

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 147
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    if-gtz v0, :cond_43

    .line 148
    return-void

    .line 150
    :cond_43
    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 151
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 152
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 133
    if-lez p1, :cond_12

    iget p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    if-le p1, p2, :cond_14

    .line 134
    :cond_12
    iget p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 136
    :cond_14
    invoke-virtual {p0, p1, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMeasuredDimension(II)V

    .line 137
    return-void
.end method

.method public setCurProcess(I)V
    .registers 3

    .line 78
    if-gez p1, :cond_3

    .line 79
    const/4 p1, 0x0

    .line 81
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    if-le p1, v0, :cond_8

    .line 82
    move p1, v0

    .line 84
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 85
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->updateProgressColor()V

    .line 86
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 87
    return-void
.end method

.method public setMaxDiameterDp(F)V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxDiameterPx:I

    .line 62
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->requestLayout()V

    .line 63
    return-void
.end method

.method public setMaxProcess(I)V
    .registers 3

    .line 66
    if-gtz p1, :cond_3

    .line 67
    const/4 p1, 0x1

    .line 69
    :cond_3
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 70
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    if-le v0, p1, :cond_b

    .line 71
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 73
    :cond_b
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->updateProgressColor()V

    .line 74
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 75
    return-void
.end method
