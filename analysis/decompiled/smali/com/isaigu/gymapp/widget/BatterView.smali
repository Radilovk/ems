.class public Lcom/isaigu/gymapp/widget/BatterView;
.super Landroid/view/View;
.source "BatterView.java"


# instance fields
.field private batteryColor:I

.field private isShowText:Z

.field private lowPowerColor:I

.field private mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryRect:Landroid/graphics/RectF;

.field private mBatteryStroke:F

.field private mCapRect:Landroid/graphics/RectF;

.field private mCapWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPowerPaint:Landroid/graphics/Paint;

.field private mPowerRect:Landroid/graphics/RectF;

.field private power:I

.field private powerColor:I

.field private specHeightSize:I

.field private specWidthSize:I

.field private textSize:F

.field private textWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/BatterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/isaigu/gymapp/widget/BatterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v2, 0x96

    const/16 v4, 0xff

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v1, 0x40800000    # 4.0f

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    .line 39
    const/16 v1, 0xf

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    .line 65
    sget-object v1, Lcom/isaigu/gymapp/R$styleable;->MyBatteryView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->textSize:F

    .line 67
    const/4 v1, 0x1

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->batteryColor:I

    .line 68
    const/4 v1, 0x2

    invoke-static {v4, v3, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->powerColor:I

    .line 69
    const/4 v1, 0x3

    invoke-static {v4, v4, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->lowPowerColor:I

    .line 70
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->isShowText:Z

    .line 71
    const/4 v1, 0x5

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/BatterView;->initPaint()V

    .line 74
    return-void
.end method


# virtual methods
.method public initPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->batteryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    const/16 v9, 0x14

    if-gt v8, v9, :cond_1

    .line 117
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->lowPowerColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->lowPowerColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :goto_0
    iget-boolean v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->isShowText:Z

    if-eqz v8, :cond_2

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "textString":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .local v5, "textRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v6, v9, v10, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    .line 128
    const-string/jumbo v8, "textWidth\uff1a"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v4, v8

    .line 130
    .local v4, "textHeight":F
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 131
    .local v2, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 132
    .local v7, "top":F
    iget v1, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 133
    .local v1, "bottom":F
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v1, v9

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 136
    .local v0, "baseLineY":I
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    sub-float/2addr v8, v9

    int-to-float v9, v0

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 146
    .end local v0    # "baseLineY":I
    .end local v1    # "bottom":F
    .end local v2    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v4    # "textHeight":F
    .end local v5    # "textRect":Landroid/graphics/Rect;
    .end local v6    # "textString":Ljava/lang/String;
    .end local v7    # "top":F
    :goto_1
    new-instance v8, Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x41200000    # 10.0f

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v12, v12, -0x4

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryRect:Landroid/graphics/RectF;

    .line 150
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v9, v9

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x41200000    # 10.0f

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v10, v10, -0x2

    int-to-float v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x41200000    # 10.0f

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v12, v12, -0x4

    int-to-float v12, v12

    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapRect:Landroid/graphics/RectF;

    .line 156
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    const/16 v9, 0x14

    if-ge v8, v9, :cond_3

    .line 157
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float v3, v8, v9

    .line 162
    .local v3, "right":F
    :goto_2
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v11, v12

    invoke-direct {v8, v9, v10, v3, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerRect:Landroid/graphics/RectF;

    .line 165
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    if-ge v8, v9, :cond_0

    .line 167
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    add-int/lit8 v9, v9, -0x2

    int-to-float v9, v9

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v10, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    add-int/lit8 v11, v11, -0x4

    int-to-float v11, v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    iget v13, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    add-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapRect:Landroid/graphics/RectF;

    .line 170
    new-instance v8, Landroid/graphics/RectF;

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    add-int/lit8 v11, v11, -0x4

    int-to-float v11, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v12, v12, -0x2

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryRect:Landroid/graphics/RectF;

    .line 172
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v8, v8, -0x4

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    int-to-float v9, v9

    mul-float v3, v8, v9

    .line 173
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    sub-float/2addr v10, v11

    sub-float/2addr v10, v3

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v11, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    int-to-float v12, v12

    iget v13, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    sub-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerRect:Landroid/graphics/RectF;

    .line 177
    :cond_0
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryRect:Landroid/graphics/RectF;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40a00000    # 5.0f

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapRect:Landroid/graphics/RectF;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40a00000    # 5.0f

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerRect:Landroid/graphics/RectF;

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40a00000    # 5.0f

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 185
    return-void

    .line 120
    .end local v3    # "right":F
    :cond_1
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->powerColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->powerColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 139
    :cond_2
    const/4 v8, 0x0

    iput v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    goto/16 :goto_1

    .line 160
    :cond_3
    iget v8, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    int-to-float v9, v9

    mul-float v3, v8, v9

    .restart local v3    # "right":F
    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    .line 106
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    .line 108
    const-string v0, "specWidthSize:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "specHeightSize:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/BatterView;->setMeasuredDimension(II)V

    .line 111
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "power"    # I

    .prologue
    .line 46
    if-gez p1, :cond_1

    .line 47
    const/4 p1, 0x0

    .line 51
    :cond_0
    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    .line 52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/BatterView;->invalidate()V

    .line 53
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 49
    const/16 p1, 0x64

    goto :goto_0
.end method
