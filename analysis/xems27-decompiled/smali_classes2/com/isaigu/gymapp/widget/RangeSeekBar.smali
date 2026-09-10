.class public Lcom/isaigu/gymapp/widget/RangeSeekBar;
.super Landroid/view/View;
.source "RangeSeekBar.java"


# static fields
.field public static final SEEKBAR_MODE_RANGE:I = 0x2

.field public static final SEEKBAR_MODE_SINGLE:I = 0x1

.field public static final TRICK_MARK_GRAVITY_CENTER:I = 0x1

.field public static final TRICK_MARK_GRAVITY_LEFT:I = 0x0

.field public static final TRICK_MARK_GRAVITY_RIGHT:I = 0x2

.field public static final TRICK_MARK_MODE_NUMBER:I = 0x0

.field public static final TRICK_MARK_MODE_OTHER:I = 0x1


# instance fields
.field private backgroundLineRect:Landroid/graphics/RectF;

.field private callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

.field private cellsPercent:F

.field private currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

.field private foregroundLineRect:Landroid/graphics/RectF;

.field private isEnable:Z

.field private isScaleThumb:Z

.field private leftProgress:F

.field private leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

.field protected lineBottom:I

.field protected lineLeft:I

.field private linePaddingRight:I

.field protected lineRight:I

.field protected lineTop:I

.field private lineWidth:I

.field private maxProgress:F

.field private minProgress:F

.field private minRangeCells:I

.field private paint:Landroid/graphics/Paint;

.field private progressColor:I

.field private progressDefaultColor:I

.field private progressHeight:I

.field private progressRadius:F

.field private rangeInterval:F

.field private reservePercent:F

.field private rightProgress:F

.field private rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

.field private seekBarMode:I

.field private tickMarkGravity:I

.field private tickMarkInRangeTextColor:I

.field private tickMarkMode:I

.field private tickMarkNumber:I

.field private tickMarkTextArray:[Ljava/lang/CharSequence;

.field private tickMarkTextColor:I

.field private tickMarkTextMargin:I

.field private tickMarkTextSize:I

.field private touchDownX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 97
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isEnable:Z

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isScaleThumb:Z

    .line 99
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 100
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    .line 101
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    .line 114
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 115
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->initPaint()V

    .line 117
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 118
    new-instance v2, Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {v2, p0, p2, v0}, Lcom/isaigu/gymapp/widget/SeekBar;-><init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 119
    new-instance v0, Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {v0, p0, p2, v1}, Lcom/isaigu/gymapp/widget/SeekBar;-><init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v1, Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {v1, p0, p2, v0}, Lcom/isaigu/gymapp/widget/SeekBar;-><init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 125
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FFFI)V

    .line 127
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->initProgressLine()V

    .line 128
    return-void
.end method

.method private changeThumbActivateState(Z)V
    .locals 4
    .param p1, "hasActivate"    # Z

    .line 507
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_4

    .line 508
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 509
    .local v1, "state":Z
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 511
    .end local v1    # "state":Z
    :cond_3
    goto :goto_1

    .line 512
    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 513
    :cond_5
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 515
    :cond_6
    :goto_1
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 147
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, "t":Landroid/content/res/TypedArray;
    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    .line 149
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    .line 150
    const/16 v1, 0xe

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    .line 151
    const/16 v1, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    .line 152
    const/16 v1, 0x12

    const v2, -0xb4269e    # -2.70962E38f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    .line 153
    const/16 v1, 0x15

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    .line 154
    const/16 v1, 0x13

    const v2, -0x282829

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    .line 155
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    .line 156
    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    .line 157
    const/16 v1, 0x1b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    .line 158
    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 159
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    .line 160
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    .line 161
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    .line 162
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    .line 163
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 280
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 282
    return-void
.end method

.method private initProgressLine()V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorHeight()I

    move-result v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorArrowSize()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v3

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorHeight()I

    move-result v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorArrowSize()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v3

    mul-float v2, v2, v3

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorHeight()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorArrowSize()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    .line 139
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineBottom:I

    .line 141
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    .line 144
    :cond_1
    return-void
.end method

.method private resetCurrentSeekBarThumb()V
    .locals 4

    .line 540
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isScaleThumb:Z

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isScaleThumb:Z

    .line 542
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SeekBar;->setThumbSize(I)V

    .line 543
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->onSizeChanged(III)V

    .line 546
    :cond_0
    return-void
.end method

.method private scaleCurrentSeekBarThumb()V
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isScaleThumb:Z

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isScaleThumb:Z

    .line 531
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/SeekBar;->setThumbSize(I)V

    .line 532
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->onSizeChanged(III)V

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method protected getEventX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getEventY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getLeftProgress()F
    .locals 1

    .line 327
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftProgress:F

    return v0
.end method

.method public getLeftSeekBar()Lcom/isaigu/gymapp/widget/SeekBar;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    return-object v0
.end method

.method public getLineBottom()I
    .locals 1

    .line 789
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineBottom:I

    return v0
.end method

.method public getLineLeft()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    return v0
.end method

.method public getLinePaddingRight()I
    .locals 1

    .line 813
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->linePaddingRight:I

    return v0
.end method

.method public getLineRight()I
    .locals 1

    .line 805
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    return v0
.end method

.method public getLineTop()I
    .locals 1

    .line 781
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 938
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .line 829
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    .line 825
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .line 914
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    return v0
.end method

.method public getProgressDefaultColor()I
    .locals 1

    .line 922
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    return v0
.end method

.method public getProgressHeight()I
    .locals 1

    .line 817
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    return v0
.end method

.method public getProgressRadius()F
    .locals 1

    .line 906
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    return v0
.end method

.method public getRangeInterval()F
    .locals 1

    .line 898
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    return v0
.end method

.method public getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;
    .locals 8

    .line 415
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float/2addr v0, v1

    .line 416
    .local v0, "range":F
    new-instance v1, Lcom/isaigu/gymapp/widget/SeekBarState;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/SeekBarState;-><init>()V

    .line 417
    .local v1, "leftSeekBarState":Lcom/isaigu/gymapp/widget/SeekBarState;
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iput v2, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    .line 418
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    .line 419
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    int-to-float v6, v6

    mul-float v2, v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 420
    .local v2, "index":I
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    if-ltz v2, :cond_0

    array-length v7, v6

    if-ge v2, v7, :cond_0

    .line 421
    aget-object v6, v6, v2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 423
    :cond_0
    if-nez v2, :cond_1

    .line 424
    iput-boolean v5, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    goto :goto_0

    .line 425
    :cond_1
    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-ne v2, v6, :cond_2

    .line 426
    iput-boolean v5, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    .line 429
    .end local v2    # "index":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 430
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget v6, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 431
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v2

    if-nez v2, :cond_4

    .line 432
    iput-boolean v5, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    goto :goto_1

    .line 433
    :cond_4
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v2

    if-nez v2, :cond_5

    .line 434
    iput-boolean v5, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    .line 438
    :cond_5
    :goto_1
    new-instance v2, Lcom/isaigu/gymapp/widget/SeekBarState;

    invoke-direct {v2}, Lcom/isaigu/gymapp/widget/SeekBarState;-><init>()V

    .line 439
    .local v2, "rightSeekBarState":Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v6, :cond_b

    .line 440
    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iget v6, v6, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v6, v6, v0

    add-float/2addr v7, v6

    iput v7, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    .line 441
    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v6, v5, :cond_9

    .line 442
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 443
    .local v3, "index":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    if-ltz v3, :cond_6

    array-length v6, v4

    if-ge v3, v6, :cond_6

    .line 444
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 446
    :cond_6
    if-nez v3, :cond_7

    .line 447
    iput-boolean v5, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    goto :goto_2

    .line 448
    :cond_7
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-ne v3, v4, :cond_8

    .line 449
    iput-boolean v5, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    .line 451
    .end local v3    # "index":I
    :cond_8
    :goto_2
    goto :goto_3

    .line 452
    :cond_9
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget v7, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 453
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v6, v6, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v6, v4}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v4

    if-nez v4, :cond_a

    .line 454
    iput-boolean v5, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    goto :goto_3

    .line 455
    :cond_a
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v3

    if-nez v3, :cond_b

    .line 456
    iput-boolean v5, v2, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    .line 461
    :cond_b
    :goto_3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/isaigu/gymapp/widget/SeekBarState;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    return-object v3
.end method

.method public getRightProgress()F
    .locals 1

    .line 331
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightProgress:F

    return v0
.end method

.method public getRightSeekBar()Lcom/isaigu/gymapp/widget/SeekBar;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    return-object v0
.end method

.method public getSeekBarMode()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    return v0
.end method

.method public getTickMarkGravity()I
    .locals 1

    .line 882
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    return v0
.end method

.method public getTickMarkInRangeTextColor()I
    .locals 1

    .line 846
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    return v0
.end method

.method public getTickMarkMode()I
    .locals 1

    .line 858
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    return v0
.end method

.method public getTickMarkNumber()I
    .locals 1

    .line 862
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    return v0
.end method

.method public getTickMarkTextArray()[Ljava/lang/CharSequence;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTickMarkTextColor()I
    .locals 1

    .line 838
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    return v0
.end method

.method public getTickMarkTextMargin()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    return v0
.end method

.method public getTickMarkTextSize()I
    .locals 1

    .line 874
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 210
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 215
    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    array-length v0, v0

    sub-int/2addr v0, v2

    div-int/2addr v3, v0

    .line 216
    .local v3, "trickPartWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 217
    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "text2Draw":Ljava/lang/String;
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v2, :cond_2

    .line 222
    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    if-ne v5, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v5

    mul-int v6, v0, v3

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    sub-float/2addr v5, v6

    .local v5, "x":F
    goto :goto_1

    .line 224
    .end local v5    # "x":F
    :cond_0
    if-ne v5, v2, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v5

    mul-int v7, v0, v3

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v5, v7

    .restart local v5    # "x":F
    goto :goto_1

    .line 227
    .end local v5    # "x":F
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v5

    mul-int v6, v0, v3

    add-int/2addr v5, v6

    int-to-float v5, v5

    .restart local v5    # "x":F
    goto :goto_1

    .line 230
    .end local v5    # "x":F
    :cond_2
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 231
    .local v5, "num":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v7

    .line 232
    .local v7, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    aget-object v8, v7, v2

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v8

    if-eq v8, v2, :cond_3

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    if-ne v8, v1, :cond_3

    .line 233
    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v11, v5, v10

    mul-float v9, v9, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    sub-float/2addr v11, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 237
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    div-float/2addr v9, v6

    sub-float v6, v8, v9

    move v5, v6

    .line 239
    .end local v7    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    .local v5, "x":F
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v6

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 240
    .local v6, "y":F
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    .end local v4    # "text2Draw":Ljava/lang/String;
    .end local v5    # "x":F
    .end local v6    # "y":F
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 246
    .end local v0    # "i":I
    .end local v3    # "trickPartWidth":I
    :cond_4
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    if-ne v0, v1, :cond_5

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v1, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 253
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v1, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 259
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    :goto_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorShowMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 267
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_8

    .line 271
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorShowMode()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 272
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 276
    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 170
    .local v0, "heightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 171
    .local v1, "heightMode":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    add-int/2addr v2, v3

    .line 179
    .local v2, "heightNeeded":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 180
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 181
    :cond_0
    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_1

    .line 182
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 187
    :goto_0
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 188
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 752
    move-object v0, p1

    check-cast v0, Lcom/isaigu/gymapp/widget/SavedState;

    .line 753
    .local v0, "ss":Lcom/isaigu/gymapp/widget/SavedState;
    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 754
    iget v1, v0, Lcom/isaigu/gymapp/widget/SavedState;->minValue:F

    .line 755
    .local v1, "min":F
    iget v2, v0, Lcom/isaigu/gymapp/widget/SavedState;->maxValue:F

    .line 756
    .local v2, "max":F
    iget v3, v0, Lcom/isaigu/gymapp/widget/SavedState;->rangeInterval:F

    .line 757
    .local v3, "rangeInterval":F
    iget v4, v0, Lcom/isaigu/gymapp/widget/SavedState;->tickNumber:I

    .line 758
    .local v4, "tickNumber":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FFFI)V

    .line 759
    iget v5, v0, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMin:F

    .line 760
    .local v5, "currSelectedMin":F
    iget v6, v0, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMax:F

    .line 761
    .local v6, "currSelectedMax":F
    invoke-virtual {p0, v5, v6}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(FF)V

    .line 762
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 738
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 739
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/isaigu/gymapp/widget/SavedState;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/widget/SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 740
    .local v1, "ss":Lcom/isaigu/gymapp/widget/SavedState;
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iput v2, v1, Lcom/isaigu/gymapp/widget/SavedState;->minValue:F

    .line 741
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iput v2, v1, Lcom/isaigu/gymapp/widget/SavedState;->maxValue:F

    .line 742
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    iput v2, v1, Lcom/isaigu/gymapp/widget/SavedState;->rangeInterval:F

    .line 743
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    iput v2, v1, Lcom/isaigu/gymapp/widget/SavedState;->tickNumber:I

    .line 744
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v2

    .line 745
    .local v2, "results":[Lcom/isaigu/gymapp/widget/SeekBarState;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMin:F

    .line 746
    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMax:F

    .line 747
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    .line 197
    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    .line 198
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    .line 199
    sub-int v0, p1, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->linePaddingRight:I

    .line 200
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->onSizeChanged(III)V

    .line 202
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->onSizeChanged(III)V

    .line 205
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 550
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isEnable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 551
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_28

    if-eq v0, v1, :cond_22

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto/16 :goto_12

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v0, v2, :cond_3

    .line 697
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    goto :goto_0

    .line 698
    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v0, v2, :cond_4

    .line 699
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 701
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 702
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v0, :cond_5

    .line 703
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v0

    .line 704
    .local v0, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    aget-object v4, v0, v3

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    aget-object v5, v0, v1

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-interface {v2, p0, v4, v5, v3}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 707
    .end local v0    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 708
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 710
    :cond_6
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    .line 711
    goto/16 :goto_12

    .line 579
    :cond_7
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 580
    .local v0, "x":F
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_e

    .line 581
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/SeekBar;->materialRestore()V

    .line 582
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v4, :cond_9

    .line 583
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v4, p0, v5}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 585
    :cond_9
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->touchDownX:F

    sub-float v4, v0, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    .line 587
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eq v4, v5, :cond_a

    .line 588
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 589
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 590
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_2

    .line 592
    :cond_a
    iput-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    goto :goto_2

    .line 596
    :cond_b
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eq v4, v5, :cond_c

    .line 597
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 598
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 599
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_2

    .line 601
    :cond_c
    iput-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 604
    :goto_2
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v4, :cond_e

    .line 605
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v4, p0, v5}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 608
    :cond_e
    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->touchDownX:F

    .line 609
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v4, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_f
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    const v6, 0x3dcccccd    # 0.1f

    add-float/2addr v5, v6

    :goto_4
    iput v5, v4, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    .line 610
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v4, v5, :cond_18

    .line 611
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v4, v1, :cond_14

    .line 612
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_10

    .line 613
    const/4 v4, 0x0

    .local v4, "percent":F
    goto :goto_5

    .line 615
    .end local v4    # "percent":F
    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    mul-float v4, v4, v2

    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 617
    .restart local v4    # "percent":F
    :goto_5
    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 619
    .local v5, "touchLeftCellsValue":I
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v6, :cond_11

    .line 620
    iget v2, v6, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .local v2, "currRightCellsValue":I
    goto :goto_6

    .line 622
    .end local v2    # "currRightCellsValue":I
    :cond_11
    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 624
    .restart local v2    # "currRightCellsValue":I
    :goto_6
    int-to-float v6, v5

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v6, v6, v7

    .line 625
    .end local v4    # "percent":F
    .local v6, "percent":F
    :goto_7
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    sub-int v4, v2, v4

    if-le v5, v4, :cond_13

    .line 626
    add-int/lit8 v5, v5, -0x1

    .line 627
    if-gez v5, :cond_12

    goto :goto_8

    .line 628
    :cond_12
    int-to-float v4, v5

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v6, v4, v7

    goto :goto_7

    .line 630
    .end local v2    # "currRightCellsValue":I
    .end local v5    # "touchLeftCellsValue":I
    :cond_13
    :goto_8
    goto :goto_a

    .line 631
    .end local v6    # "percent":F
    :cond_14
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_15

    .line 632
    const/4 v4, 0x0

    move v6, v4

    .restart local v4    # "percent":F
    goto :goto_9

    .line 634
    .end local v4    # "percent":F
    :cond_15
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    mul-float v4, v4, v2

    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v6, v4

    .line 636
    .restart local v6    # "percent":F
    :goto_9
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v4, :cond_16

    .line 637
    iget v2, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v2, v4

    cmpl-float v2, v6, v2

    if-lez v2, :cond_17

    .line 638
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v6, v2, v4

    goto :goto_a

    .line 641
    :cond_16
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v5, v2, v4

    cmpl-float v5, v6, v5

    if-lez v5, :cond_17

    .line 642
    sub-float v6, v2, v4

    .line 646
    :cond_17
    :goto_a
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/SeekBar;->slide(F)V

    .line 647
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 649
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 650
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_10

    .line 652
    .end local v6    # "percent":F
    :cond_18
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v4, v5, :cond_1f

    .line 653
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v4, v1, :cond_1c

    .line 654
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_19

    .line 655
    const/high16 v2, 0x3f800000    # 1.0f

    .local v2, "percent":F
    goto :goto_b

    .line 657
    .end local v2    # "percent":F
    :cond_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    mul-float v4, v4, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v2, v2

    div-float v2, v4, v2

    .line 659
    .restart local v2    # "percent":F
    :goto_b
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 660
    .local v4, "touchRightCellsValue":I
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v6, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 661
    .local v5, "currLeftCellsValue":I
    int-to-float v6, v4

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v6, v6, v7

    .line 663
    .end local v2    # "percent":F
    .restart local v6    # "percent":F
    :goto_c
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_1b

    .line 664
    add-int/lit8 v4, v4, 0x1

    .line 665
    int-to-float v2, v4

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float/2addr v7, v8

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1a

    goto :goto_d

    .line 666
    :cond_1a
    int-to-float v2, v4

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v6, v2, v7

    goto :goto_c

    .line 668
    .end local v4    # "touchRightCellsValue":I
    .end local v5    # "currLeftCellsValue":I
    :cond_1b
    :goto_d
    goto :goto_f

    .line 669
    .end local v6    # "percent":F
    :cond_1c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineRight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1d

    .line 670
    const/high16 v2, 0x3f800000    # 1.0f

    move v6, v2

    .restart local v2    # "percent":F
    goto :goto_e

    .line 672
    .end local v2    # "percent":F
    :cond_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    mul-float v4, v4, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    move v6, v4

    .line 674
    .restart local v6    # "percent":F
    :goto_e
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v2, v4

    cmpg-float v2, v6, v2

    if-gez v2, :cond_1e

    .line 675
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float v6, v2, v4

    .line 678
    :cond_1e
    :goto_f
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/widget/SeekBar;->slide(F)V

    .line 679
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 681
    .end local v6    # "percent":F
    :cond_1f
    :goto_10
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v2, :cond_20

    .line 682
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v2

    .line 683
    .local v2, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    aget-object v3, v2, v3

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    aget-object v5, v2, v1

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-interface {v4, p0, v3, v5, v1}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 685
    .end local v2    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_20
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 687
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 690
    :cond_21
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    .line 691
    goto :goto_12

    .line 713
    .end local v0    # "x":F
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_23

    .line 714
    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 716
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 717
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->materialRestore()V

    .line 718
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v0, :cond_24

    .line 720
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v0

    .line 721
    .local v0, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    aget-object v4, v0, v3

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    aget-object v5, v0, v1

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-interface {v2, p0, v4, v5, v3}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 724
    .end local v0    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_24
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 725
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 727
    :cond_25
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v0, :cond_27

    .line 728
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v2, v4, :cond_26

    goto :goto_11

    :cond_26
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, p0, v1}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 730
    :cond_27
    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    .line 733
    :goto_12
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 553
    :cond_28
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->touchDownX:F

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "touchResult":Z
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v4, :cond_29

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_29

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/widget/SeekBar;->collide(FF)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 556
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 557
    const/4 v0, 0x1

    .line 558
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_13

    .line 559
    :cond_29
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v2, :cond_2a

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/widget/SeekBar;->collide(FF)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 560
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 561
    const/4 v0, 0x1

    .line 562
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_13

    .line 563
    :cond_2a
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v4

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/isaigu/gymapp/widget/SeekBar;->collide(FF)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 564
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 565
    const/4 v0, 0x1

    .line 566
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    .line 569
    :cond_2b
    :goto_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 570
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 572
    :cond_2c
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v2, :cond_2e

    .line 573
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v4, v5, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    invoke-interface {v2, p0, v3}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 575
    :cond_2e
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    .line 576
    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 467
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isEnable:Z

    .line 469
    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 1
    .param p1, "progress"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    .line 478
    :cond_1
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatPattern"    # Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    .line 491
    :cond_1
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatPattern"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    .line 504
    :cond_1
    return-void
.end method

.method public setLineBottom(I)V
    .locals 0
    .param p1, "lineBottom"    # I

    .line 793
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineBottom:I

    .line 794
    return-void
.end method

.method public setLineLeft(I)V
    .locals 0
    .param p1, "lineLeft"    # I

    .line 801
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    .line 802
    return-void
.end method

.method public setLineRight(I)V
    .locals 0
    .param p1, "lineRight"    # I

    .line 809
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    .line 810
    return-void
.end method

.method public setLineTop(I)V
    .locals 0
    .param p1, "lineTop"    # I

    .line 785
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    .line 786
    return-void
.end method

.method public setLineWidth(I)V
    .locals 0
    .param p1, "lineWidth"    # I

    .line 934
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    .line 935
    return-void
.end method

.method public setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    .line 765
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    .line 766
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "progressColor"    # I

    .line 918
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    .line 919
    return-void
.end method

.method public setProgressColor(II)V
    .locals 0
    .param p1, "progressDefaultColor"    # I
    .param p2, "progressColor"    # I

    .line 833
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    .line 834
    iput p2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    .line 835
    return-void
.end method

.method public setProgressDefaultColor(I)V
    .locals 0
    .param p1, "progressDefaultColor"    # I

    .line 926
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    .line 927
    return-void
.end method

.method public setProgressHeight(I)V
    .locals 0
    .param p1, "progressHeight"    # I

    .line 821
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    .line 822
    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0
    .param p1, "progressRadius"    # F

    .line 910
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    .line 911
    return-void
.end method

.method public setRange(FF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 340
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FFFI)V

    .line 341
    return-void
.end method

.method public setRange(FFF)V
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "interval"    # F

    .line 350
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FFFI)V

    .line 351
    return-void
.end method

.method public setRange(FFFI)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "interval"    # F
    .param p4, "tickMarkNumber"    # I

    .line 363
    cmpg-float v0, p2, p1

    if-lez v0, :cond_a

    .line 366
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_9

    .line 369
    sub-float v1, p2, p1

    cmpl-float v1, p3, v1

    if-gez v1, :cond_8

    .line 372
    const/4 v1, 0x1

    if-lt p4, v1, :cond_7

    .line 375
    iput p2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    .line 376
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    .line 377
    iput p4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 378
    int-to-float v2, p4

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    iput v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    .line 379
    iput p3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    .line 380
    sub-float v4, p2, p1

    div-float v4, p3, v4

    iput v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    .line 381
    div-float v5, v4, v2

    rem-float/2addr v4, v2

    cmpl-float v2, v4, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    .line 383
    if-le p4, v1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_2

    .line 385
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v4, v4

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto/16 :goto_1

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto/16 :goto_1

    .line 391
    :cond_2
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    int-to-float v4, v2

    mul-float v4, v4, v1

    sub-float v4, v3, v4

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_6

    int-to-float v0, v2

    mul-float v1, v1, v0

    sub-float v0, v3, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 392
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v3, v1

    iput v3, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto :goto_1

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 397
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v2, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto :goto_1

    .line 399
    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v1, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto :goto_1

    .line 403
    :cond_5
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v2, v3, v1

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_6

    sub-float v0, v3, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v3, v1

    iput v3, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 408
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 409
    return-void

    .line 373
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() tickMarkNumber must be greater than 1 ! #tickMarkNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() interval must be less than (max - min) ! #interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " #max - min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() interval must be greater than zero ! #interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() max must be greater than min ! #max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRangeInterval(F)V
    .locals 0
    .param p1, "rangeInterval"    # F

    .line 902
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    .line 903
    return-void
.end method

.method public setSeekBarMode(I)V
    .locals 0
    .param p1, "seekBarMode"    # I

    .line 946
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    .line 947
    return-void
.end method

.method public setTickMarkGravity(I)V
    .locals 0
    .param p1, "tickMarkGravity"    # I

    .line 886
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    .line 887
    return-void
.end method

.method public setTickMarkInRangeTextColor(I)V
    .locals 0
    .param p1, "tickMarkInRangeTextColor"    # I

    .line 850
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    .line 851
    return-void
.end method

.method public setTickMarkMode(I)V
    .locals 0
    .param p1, "tickMarkMode"    # I

    .line 942
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    .line 943
    return-void
.end method

.method public setTickMarkNumber(I)V
    .locals 0
    .param p1, "tickMarkNumber"    # I

    .line 930
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 931
    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "tickMarkTextArray"    # [Ljava/lang/CharSequence;

    .line 894
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    .line 895
    return-void
.end method

.method public setTickMarkTextColor(I)V
    .locals 0
    .param p1, "tickMarkTextColor"    # I

    .line 842
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    .line 843
    return-void
.end method

.method public setTickMarkTextMargin(I)V
    .locals 0
    .param p1, "tickMarkTextMargin"    # I

    .line 870
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    .line 871
    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0
    .param p1, "tickMarkTextSize"    # I

    .line 878
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    .line 879
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .line 950
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 951
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .line 285
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(FF)V

    .line 286
    return-void
.end method

.method public setValue(FF)V
    .locals 4
    .param p1, "leftValue"    # F
    .param p2, "rightValue"    # F

    .line 289
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 291
    sub-float v0, p2, p1

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 292
    sub-float p1, p2, v1

    .line 294
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_7

    .line 297
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_6

    .line 300
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftProgress:F

    .line 301
    iput p2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightProgress:F

    .line 302
    sub-float/2addr v1, v0

    .line 304
    .local v1, "range":F
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 305
    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v2, v2

    .line 306
    .local v2, "percent":I
    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 311
    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 313
    .end local v2    # "percent":I
    :cond_1
    goto :goto_0

    .line 307
    .restart local v2    # "percent":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "The current value must be at the equal point"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    .end local v2    # "percent":I
    :cond_3
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v1

    iput v0, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 316
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    iput v2, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 320
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v0, :cond_5

    .line 321
    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, p2, v2}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 323
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 324
    return-void

    .line 298
    .end local v1    # "range":F
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() max > (preset max - offsetValue) . #max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " #preset max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue() min < (preset min - offsetValue) . #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " #preset min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
