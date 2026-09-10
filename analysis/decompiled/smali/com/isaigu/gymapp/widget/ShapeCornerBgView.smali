.class public Lcom/isaigu/gymapp/widget/ShapeCornerBgView;
.super Landroid/widget/TextView;
.source "ShapeCornerBgView.java"


# instance fields
.field bgColor:I

.field borderColor:I

.field borderWidth:I

.field isBottomLeftCorner:Z

.field isBottomRightCorner:Z

.field isHasBorder:Z

.field isTopLeftCorner:Z

.field isTopRightCorner:Z

.field mColorBgEnableFalse:I

.field mColorText:I

.field mColorTextEnableFalse:I

.field mRadius:I

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v4, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    .line 21
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isHasBorder:Z

    .line 25
    iput v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    .line 29
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    .line 32
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopLeftCorner:Z

    .line 33
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomLeftCorner:Z

    .line 34
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopRightCorner:Z

    .line 35
    iput-boolean v4, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomRightCorner:Z

    .line 43
    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    invoke-virtual {p0, p1, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->getDimen720Px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    .line 44
    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    invoke-virtual {p0, p1, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->getDimen720Px(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    .line 45
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->getCurrentTextColor()I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderColor:I

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorTextEnableFalse:I

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorText:I

    .line 47
    sget-object v1, Lcom/isaigu/gymapp/R$styleable;->ShapeCornerBgView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isHasBorder:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isHasBorder:Z

    .line 49
    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    .line 50
    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    .line 52
    const/4 v1, 0x4

    iget v3, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderColor:I

    .line 54
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isHasBorder:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    .line 56
    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    .line 58
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopLeftCorner:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopLeftCorner:Z

    .line 59
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomLeftCorner:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomLeftCorner:Z

    .line 60
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopRightCorner:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopRightCorner:Z

    .line 61
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomRightCorner:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomRightCorner:Z

    .line 63
    const/16 v1, 0x9

    iget v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorBgEnableFalse:I

    .line 64
    const/16 v1, 0xa

    iget v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorTextEnableFalse:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorTextEnableFalse:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setGravity(I)V

    .line 67
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setEnabled(Z)V

    .line 68
    return-void

    .line 54
    :cond_0
    const/high16 v1, -0x10000

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 156
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getOutterRadii()[F
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 102
    const/16 v1, 0x8

    new-array v0, v1, [F

    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v1, v1

    aput v1, v0, v4

    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v1, v1

    aput v1, v0, v5

    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v1, v1

    aput v1, v0, v6

    iget v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v1, v1

    aput v1, v0, v7

    const/4 v1, 0x4

    iget v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mRadius:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 104
    .local v0, "fRandis":[F
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopLeftCorner:Z

    if-nez v1, :cond_0

    .line 105
    aput v3, v0, v4

    .line 106
    aput v3, v0, v5

    .line 108
    :cond_0
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isTopRightCorner:Z

    if-nez v1, :cond_1

    .line 109
    aput v3, v0, v6

    .line 110
    aput v3, v0, v7

    .line 112
    :cond_1
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomLeftCorner:Z

    if-nez v1, :cond_2

    .line 113
    const/4 v1, 0x4

    aput v3, v0, v1

    .line 114
    const/4 v1, 0x5

    aput v3, v0, v1

    .line 116
    :cond_2
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isBottomRightCorner:Z

    if-nez v1, :cond_3

    .line 117
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 118
    const/4 v1, 0x7

    aput v3, v0, v1

    .line 120
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getDimen720Px(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dimen"    # I

    .prologue
    .line 147
    int-to-float v1, p2

    const/high16 v2, 0x44870000    # 1080.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v0, v1, v2

    .line 148
    .local v0, "dp":F
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->getWidth()I

    move-result v5

    if-nez v5, :cond_0

    .line 98
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->getOutterRadii()[F

    move-result-object v1

    .line 77
    .local v1, "ffVar":[F
    iget v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    if-eqz v5, :cond_2

    .line 78
    iget v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    .line 79
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    iget v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorBgEnableFalse:I

    .line 82
    :cond_1
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v5, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 83
    .local v4, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 84
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 86
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    .end local v0    # "color":I
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v4    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_2
    iget-boolean v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->isHasBorder:Z

    if-eqz v5, :cond_3

    .line 90
    new-instance v3, Landroid/graphics/RectF;

    iget v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderWidth:I

    int-to-float v8, v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    .local v3, "rectF":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v5, v1, v3, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 92
    .restart local v4    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 93
    .restart local v2    # "paint":Landroid/graphics/Paint;
    iget v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->borderColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 95
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "rectF":Landroid/graphics/RectF;
    .end local v4    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->rect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 131
    return-void
.end method

.method public setBgColor(I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->bgColor:I

    .line 143
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->invalidate()V

    .line 144
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorText:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->setTextColor(I)V

    .line 138
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->invalidate()V

    .line 139
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/ShapeCornerBgView;->mColorTextEnableFalse:I

    goto :goto_0
.end method
