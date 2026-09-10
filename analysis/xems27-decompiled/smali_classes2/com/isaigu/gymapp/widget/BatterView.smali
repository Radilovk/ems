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

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    .line 39
    const/16 v0, 0xf

    iput v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/R$styleable;->MyBatteryView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->textSize:F

    .line 67
    const/16 v1, 0xff

    const/16 v2, 0x96

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->batteryColor:I

    .line 68
    invoke-static {v1, v3, v1, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->powerColor:I

    .line 69
    invoke-static {v1, v1, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->lowPowerColor:I

    .line 70
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->isShowText:Z

    .line 71
    const/4 v1, 0x3

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

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 81
    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->batteryColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    iget v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->lowPowerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->lowPowerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->powerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->powerColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :goto_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->isShowText:Z

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "textString":Ljava/lang/String;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .local v4, "textRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v0, v6, v7, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 127
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "textWidth\uff1a"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 130
    .local v5, "textHeight":F
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    .line 131
    .local v6, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 132
    .local v7, "top":F
    iget v8, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 133
    .local v8, "bottom":F
    iget v9, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    div-float v10, v7, v3

    sub-float/2addr v9, v10

    div-float v10, v8, v3

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 136
    .local v9, "baseLineY":I
    iget v10, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v10, v11

    sub-float/2addr v10, v2

    int-to-float v11, v9

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    .end local v0    # "textString":Ljava/lang/String;
    .end local v4    # "textRect":Landroid/graphics/Rect;
    .end local v5    # "textHeight":F
    .end local v6    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v7    # "top":F
    .end local v8    # "bottom":F
    .end local v9    # "baseLineY":I
    goto :goto_1

    .line 139
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    .line 146
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v5, v5, -0x4

    int-to-float v5, v5

    invoke-direct {v0, v3, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryRect:Landroid/graphics/RectF;

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    iget v4, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v5, v4

    iget v6, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v5, v6

    sub-float/2addr v5, v2

    iget v7, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v8, v7, -0x2

    int-to-float v8, v8

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float v8, v8, v9

    int-to-float v4, v4

    sub-float/2addr v4, v6

    sub-float/2addr v4, v2

    add-int/lit8 v7, v7, -0x4

    int-to-float v6, v7

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v6, v6, v7

    invoke-direct {v0, v5, v8, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapRect:Landroid/graphics/RectF;

    .line 156
    iget v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    const/high16 v4, 0x42c80000    # 100.0f

    if-ge v0, v1, :cond_2

    .line 157
    iget v0, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    .local v0, "right":F
    goto :goto_2

    .line 160
    .end local v0    # "right":F
    :cond_2
    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v1, v1

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->textWidth:F

    sub-float/2addr v1, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    int-to-float v0, v0

    mul-float v0, v0, v1

    .line 162
    .restart local v0    # "right":F
    :goto_2
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    sub-float/2addr v5, v3

    invoke-direct {v1, v2, v2, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerRect:Landroid/graphics/RectF;

    .line 165
    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    if-ge v1, v2, :cond_3

    .line 167
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    mul-float v5, v5, v9

    iget v6, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    add-float v8, v6, v3

    add-int/lit8 v2, v2, -0x4

    int-to-float v2, v2

    mul-float v2, v2, v7

    iget v7, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    add-float/2addr v6, v7

    add-float/2addr v6, v3

    invoke-direct {v1, v5, v8, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapRect:Landroid/graphics/RectF;

    .line 170
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    add-float/2addr v2, v3

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    add-int/lit8 v5, v5, -0x4

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-direct {v1, v3, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryRect:Landroid/graphics/RectF;

    .line 172
    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    add-int/lit8 v1, v1, -0x4

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 173
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryStroke:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/BatterView;->specHeightSize:I

    int-to-float v5, v4

    sub-float/2addr v5, v2

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    int-to-float v6, v6

    sub-float/2addr v6, v2

    sub-float/2addr v6, v3

    int-to-float v3, v4

    sub-float/2addr v3, v2

    invoke-direct {v1, v2, v5, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerRect:Landroid/graphics/RectF;

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mCapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/BatterView;->mPowerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 185
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

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

    .line 110
    iget v1, p0, Lcom/isaigu/gymapp/widget/BatterView;->specWidthSize:I

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/widget/BatterView;->setMeasuredDimension(II)V

    .line 111
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "power"    # I

    .line 46
    if-gez p1, :cond_0

    .line 47
    const/4 p1, 0x0

    goto :goto_0

    .line 48
    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 49
    const/16 p1, 0x64

    .line 51
    :cond_1
    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/BatterView;->power:I

    .line 52
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/BatterView;->invalidate()V

    .line 53
    return-void
.end method
