.class public final Lcom/isaigu/gymapp/widget/TimerRingView;
.super Landroid/view/View;
.source "TimerRingView.java"


# static fields
.field private static final COLOR_PROGRESS:I = -0x657f8d

.field private static final COLOR_TRACK:I = -0x1f2222


# instance fields
.field private final arcBounds:Landroid/graphics/RectF;

.field private curProcess:I

.field private maxProcess:I

.field private final progressPaint:Landroid/graphics/Paint;

.field private final trackPaint:Landroid/graphics/Paint;

.field private trackWidthPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 28
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

    .line 24
    const/16 v0, 0x64

    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 25
    iput v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 29
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 33
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

    .line 24
    const/16 p2, 0x64

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 25
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 34
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
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

    .line 24
    const/16 p2, 0x64

    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 25
    iput p2, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 39
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private static dp(Landroid/content/Context;F)F
    .registers 3

    .line 115
    nop

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 115
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 43
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    .line 44
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    const v0, -0x1f2222

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 49
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    const v0, -0x657f8d

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setWillNotDraw(Z)V

    .line 51
    return-void
.end method

.method private suggestedMinimumHeight()I
    .registers 2

    .line 96
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->suggestedMinimumWidth()I

    move-result v0

    return v0
.end method

.method private suggestedMinimumWidth()I
    .registers 3

    .line 92
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 101
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/TimerRingView;->dp(Landroid/content/Context;F)F

    move-result v1

    add-float/2addr v0, v1

    .line 103
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

    .line 104
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackWidthPx:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->trackPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 107
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    if-gtz v0, :cond_43

    .line 108
    return-void

    .line 110
    :cond_43
    const/high16 v1, 0x43b40000    # 360.0f

    int-to-float v0, v0

    mul-float v0, v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 111
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->arcBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->progressPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 112
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 81
    const/high16 v2, 0x40000000    # 2.0f

    if-eq p1, v2, :cond_18

    .line 82
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->suggestedMinimumWidth()I

    move-result v0

    .line 84
    :cond_18
    if-eq p2, v2, :cond_1e

    .line 85
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->suggestedMinimumHeight()I

    move-result v1

    .line 87
    :cond_1e
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 88
    invoke-virtual {p0, p1, p1}, Lcom/isaigu/gymapp/widget/TimerRingView;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method

.method public setCurProcess(I)V
    .registers 3

    .line 65
    if-gez p1, :cond_3

    .line 66
    const/4 p1, 0x0

    .line 68
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    if-le p1, v0, :cond_8

    .line 69
    move p1, v0

    .line 71
    :cond_8
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 72
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 73
    return-void
.end method

.method public setMaxProcess(I)V
    .registers 3

    .line 54
    if-gtz p1, :cond_3

    .line 55
    const/4 p1, 0x1

    .line 57
    :cond_3
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->maxProcess:I

    .line 58
    iget v0, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    if-le v0, p1, :cond_b

    .line 59
    iput p1, p0, Lcom/isaigu/gymapp/widget/TimerRingView;->curProcess:I

    .line 61
    :cond_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/TimerRingView;->invalidate()V

    .line 62
    return-void
.end method
