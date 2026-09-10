.class public Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;
.super Landroid/view/View;
.source "VerticalColorSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;
    }
.end annotation


# instance fields
.field clickMove:Z

.field private colorArray:[I

.field private endColor:I

.field private linearGradient:Landroid/graphics/LinearGradient;

.field private mRadius:F

.field private maxCount:F

.field private middleColor:I

.field protected onStateChangeListener:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private sBottom:F

.field private sHeight:F

.field private sLeft:F

.field private sRight:F

.field private sTop:F

.field private sWidth:F

.field private startColor:I

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private thumbBorderColor:I

.field private thumbColor:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x1000000

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->startColor:I

    .line 24
    const v0, -0x777778

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->middleColor:I

    .line 25
    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->endColor:I

    .line 26
    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbColor:I

    .line 27
    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBorderColor:I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->startColor:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->middleColor:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->endColor:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    .line 33
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030063

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sTop:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sRight:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sBottom:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 104
    .local v0, "rectBlackBg":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    div-float/2addr v1, v6

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 124
    .local v0, "thumbPaint":Landroid/graphics/Paint;
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    :goto_0
    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    .line 125
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    sub-float/2addr v1, v2

    :goto_1
    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->x:F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    return-void

    .line 124
    :cond_0
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    goto :goto_0

    .line 125
    :cond_1
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    goto :goto_1
.end method

.method private drawForground(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 113
    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    div-float/2addr v2, v3

    sub-float v2, v5, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sRight:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sBottom:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 114
    .local v8, "rectBlackBg":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->linearGradient:Landroid/graphics/LinearGradient;

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->linearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 119
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    div-float/2addr v0, v9

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    div-float/2addr v1, v9

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 139
    .local v0, "thumbPaint":Landroid/graphics/Paint;
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    :goto_0
    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    .line 140
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    sub-float/2addr v1, v2

    :goto_1
    iput v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->x:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    return-void

    .line 139
    :cond_0
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    goto :goto_0

    .line 140
    :cond_1
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    goto :goto_1
.end method


# virtual methods
.method public getMaxCount()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getMeasuredHeight()I

    move-result v0

    .line 82
    .local v0, "h":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getMeasuredWidth()I

    move-result v1

    .line 83
    .local v1, "w":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    .line 84
    int-to-float v2, v1

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    .line 85
    int-to-float v2, v1

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sRight:F

    .line 86
    const/4 v2, 0x0

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sTop:F

    .line 87
    int-to-float v2, v0

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sBottom:F

    .line 88
    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sRight:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    .line 89
    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sBottom:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sTop:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    .line 90
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->x:F

    .line 91
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    iget v6, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    .line 93
    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    :goto_0
    iput v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    .line 95
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->drawForground(Landroid/graphics/Canvas;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->drawCircle(Landroid/graphics/Canvas;)V

    .line 98
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 99
    return-void

    .line 93
    :cond_0
    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->mRadius:F

    goto :goto_0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 54
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    .line 166
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->y:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    .line 167
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 168
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    .line 170
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 171
    iput v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    return v2

    .line 177
    :pswitch_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->clickMove:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->onStateChangeListener:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->onStateChangeListener:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;->onStopTrackingTouch(Landroid/view/View;F)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->clickMove:Z

    goto :goto_0

    .line 183
    :pswitch_2
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->clickMove:Z

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->onStateChangeListener:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->onStateChangeListener:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;->OnStateChangeListener(Landroid/view/View;F)V

    .line 187
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setProgress(F)V

    .line 188
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColor(IIIII)V
    .locals 2
    .param p1, "startColor"    # I
    .param p2, "middleColor"    # I
    .param p3, "endColor"    # I
    .param p4, "thumbColor"    # I
    .param p5, "thumbBorderColor"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->startColor:I

    .line 59
    iput p2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->middleColor:I

    .line 60
    iput p3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->endColor:I

    .line 61
    iput p4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbColor:I

    .line 62
    iput p5, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->thumbBorderColor:I

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 66
    return-void
.end method

.method public setColorArray(III)V
    .locals 2
    .param p1, "startColor"    # I
    .param p2, "middleColor"    # I
    .param p3, "endColor"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->startColor:I

    .line 70
    iput p2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->middleColor:I

    .line 71
    iput p3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->endColor:I

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->colorArray:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 75
    return-void
.end method

.method public setMaxCount(I)V
    .locals 2
    .param p1, "maxCount"    # I

    .prologue
    .line 152
    int-to-float v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    .line 153
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 154
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    .line 156
    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;)V
    .locals 0
    .param p1, "onStateChangeListener"    # Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->onStateChangeListener:Lcom/isaigu/gymapp/widget/VerticalColorSeekBar$OnStateChangeListener;

    .line 203
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 206
    iput p1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    .line 207
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 208
    iget v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->maxCount:F

    iput v0, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->progress:F

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->invalidate()V

    .line 211
    return-void
.end method
