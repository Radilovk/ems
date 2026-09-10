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

    .prologue
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

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 97
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isEnable:Z

    .line 98
    iput-boolean v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isScaleThumb:Z

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    .line 114
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 115
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->initPaint()V

    .line 117
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 118
    new-instance v0, Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {v0, p0, p2, v2}, Lcom/isaigu/gymapp/widget/SeekBar;-><init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 119
    new-instance v0, Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {v0, p0, p2, v3}, Lcom/isaigu/gymapp/widget/SeekBar;-><init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

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

    .line 121
    :cond_0
    new-instance v0, Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-direct {v0, p0, p2, v2}, Lcom/isaigu/gymapp/widget/SeekBar;-><init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    goto :goto_0
.end method

.method private changeThumbActivateState(Z)V
    .locals 5
    .param p1, "hasActivate"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v3, :cond_4

    .line 508
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 509
    .local v0, "state":Z
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 510
    :cond_0
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 515
    .end local v0    # "state":Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 508
    goto :goto_0

    .restart local v0    # "state":Z
    :cond_3
    move v1, v2

    .line 510
    goto :goto_1

    .line 512
    .end local v0    # "state":Z
    :cond_4
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    .line 513
    :cond_5
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->setActivate(Z)V

    goto :goto_2
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, "t":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    .line 149
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    .line 150
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    .line 151
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    .line 152
    const/16 v1, 0xe

    const v2, -0xb4269e    # -2.70962E38f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    .line 153
    const/16 v1, 0xd

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    .line 154
    const/16 v1, 0xf

    const v2, -0x282829

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    .line 155
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    .line 156
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    .line 157
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    .line 158
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 159
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    .line 160
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    .line 161
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    .line 162
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    .line 163
    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    return-void
.end method

.method private initPaint()V
    .locals 2

    .prologue
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

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 134
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorHeight()I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorArrowSize()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

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

    if-gez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    .line 144
    :cond_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorHeight()I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorArrowSize()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

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

    goto :goto_0
.end method

.method private resetCurrentSeekBarThumb()V
    .locals 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

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

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

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

    .prologue
    .line 529
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

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

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbScaleRatio()F

    move-result v2

    mul-float/2addr v1, v2

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

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getEventY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getLeftProgress()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftProgress:F

    return v0
.end method

.method public getLeftSeekBar()Lcom/isaigu/gymapp/widget/SeekBar;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    return-object v0
.end method

.method public getLineBottom()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineBottom:I

    return v0
.end method

.method public getLineLeft()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    return v0
.end method

.method public getLinePaddingRight()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->linePaddingRight:I

    return v0
.end method

.method public getLineRight()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    return v0
.end method

.method public getLineTop()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    return v0
.end method

.method public getMinProgress()F
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    return v0
.end method

.method public getProgressDefaultColor()I
    .locals 1

    .prologue
    .line 922
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    return v0
.end method

.method public getProgressHeight()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    return v0
.end method

.method public getProgressRadius()F
    .locals 1

    .prologue
    .line 906
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    return v0
.end method

.method public getRangeInterval()F
    .locals 1

    .prologue
    .line 898
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    return v0
.end method

.method public getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 415
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v2, v4, v5

    .line 416
    .local v2, "range":F
    new-instance v1, Lcom/isaigu/gymapp/widget/SeekBarState;

    invoke-direct {v1}, Lcom/isaigu/gymapp/widget/SeekBarState;-><init>()V

    .line 417
    .local v1, "leftSeekBarState":Lcom/isaigu/gymapp/widget/SeekBarState;
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    .line 418
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v4, v6, :cond_5

    .line 419
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 420
    .local v0, "index":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 421
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 423
    :cond_0
    if-nez v0, :cond_4

    .line 424
    iput-boolean v6, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    .line 438
    .end local v0    # "index":I
    :cond_1
    :goto_0
    new-instance v3, Lcom/isaigu/gymapp/widget/SeekBarState;

    invoke-direct {v3}, Lcom/isaigu/gymapp/widget/SeekBarState;-><init>()V

    .line 439
    .local v3, "rightSeekBarState":Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v4, :cond_3

    .line 440
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v5, v5, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    .line 441
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v4, v6, :cond_8

    .line 442
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v5, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 443
    .restart local v0    # "index":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 444
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 446
    :cond_2
    if-nez v0, :cond_7

    .line 447
    iput-boolean v6, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    .line 461
    .end local v0    # "index":I
    :cond_3
    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/isaigu/gymapp/widget/SeekBarState;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v6

    return-object v4

    .line 425
    .end local v3    # "rightSeekBarState":Lcom/isaigu/gymapp/widget/SeekBarState;
    .restart local v0    # "index":I
    :cond_4
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-ne v0, v4, :cond_1

    .line 426
    iput-boolean v6, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    goto :goto_0

    .line 430
    .end local v0    # "index":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 431
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v4

    if-nez v4, :cond_6

    .line 432
    iput-boolean v6, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    goto :goto_0

    .line 433
    :cond_6
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v4

    if-nez v4, :cond_1

    .line 434
    iput-boolean v6, v1, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    goto :goto_0

    .line 448
    .restart local v0    # "index":I
    .restart local v3    # "rightSeekBarState":Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_7
    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-ne v0, v4, :cond_3

    .line 449
    iput-boolean v6, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    goto :goto_1

    .line 452
    .end local v0    # "index":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget v5, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 453
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v4

    if-nez v4, :cond_9

    .line 454
    iput-boolean v6, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->isMin:Z

    goto :goto_1

    .line 455
    :cond_9
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    invoke-static {v4, v8}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v4

    if-nez v4, :cond_3

    .line 456
    iput-boolean v6, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->isMax:Z

    goto :goto_1
.end method

.method public getRightProgress()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightProgress:F

    return v0
.end method

.method public getRightSeekBar()Lcom/isaigu/gymapp/widget/SeekBar;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    return-object v0
.end method

.method public getSeekBarMode()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    return v0
.end method

.method public getTickMarkGravity()I
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    return v0
.end method

.method public getTickMarkInRangeTextColor()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    return v0
.end method

.method public getTickMarkMode()I
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    return v0
.end method

.method public getTickMarkNumber()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    return v0
.end method

.method public getTickMarkTextArray()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTickMarkTextColor()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    return v0
.end method

.method public getTickMarkTextMargin()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    return v0
.end method

.method public getTickMarkTextSize()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 215
    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    div-int v4, v7, v8

    .line 216
    .local v4, "trickPartWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v0, v7, :cond_4

    .line 217
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "text2Draw":Ljava/lang/String;
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 222
    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v7

    mul-int v8, v0, v4

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float v5, v7, v8

    .line 239
    .local v5, "x":F
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v7

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 240
    .local v6, "y":F
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_0
    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v7

    mul-int v8, v0, v4

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v5, v7, v8

    .restart local v5    # "x":F
    goto :goto_1

    .line 227
    .end local v5    # "x":F
    :cond_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v7

    mul-int v8, v0, v4

    add-int/2addr v7, v8

    int-to-float v5, v7

    .restart local v5    # "x":F
    goto :goto_1

    .line 230
    .end local v5    # "x":F
    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 231
    .local v1, "num":F
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v2

    .line 232
    .local v2, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    const/4 v7, 0x0

    aget-object v7, v2, v7

    iget v7, v7, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v7, 0x1

    aget-object v7, v2, v7

    iget v7, v7, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/widget/Utils;->compareFloat(FF)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 233
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v9, v1, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 237
    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v5, v7, v8

    .restart local v5    # "x":F
    goto :goto_1

    .line 246
    .end local v0    # "i":I
    .end local v1    # "num":F
    .end local v2    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    .end local v3    # "text2Draw":Ljava/lang/String;
    .end local v4    # "trickPartWidth":I
    .end local v5    # "x":F
    :cond_4
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->backgroundLineRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 248
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 250
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 251
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 252
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 253
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 254
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 264
    :goto_2
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorShowMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 265
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 267
    :cond_5
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v7, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 270
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v7, :cond_7

    .line 271
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/widget/SeekBar;->getIndicatorShowMode()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 272
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 274
    :cond_6
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v7, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 276
    :cond_7
    return-void

    .line 256
    :cond_8
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 257
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 258
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v9}, Lcom/isaigu/gymapp/widget/SeekBar;->getThumbSize()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 259
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineBottom()I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 260
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->foregroundLineRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget v9, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 170
    .local v2, "heightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 171
    .local v0, "heightMode":I
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    add-int v1, v3, v4

    .line 179
    .local v1, "heightNeeded":I
    if-ne v0, v5, :cond_0

    .line 180
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 187
    :goto_0
    invoke-super {p0, p1, v2}, Landroid/view/View;->onMeasure(II)V

    .line 188
    return-void

    .line 181
    :cond_0
    if-ne v0, v6, :cond_1

    .line 182
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 752
    move-object v5, p1

    check-cast v5, Lcom/isaigu/gymapp/widget/SavedState;

    .line 753
    .local v5, "ss":Lcom/isaigu/gymapp/widget/SavedState;
    invoke-virtual {v5}, Lcom/isaigu/gymapp/widget/SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v7

    invoke-super {p0, v7}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 754
    iget v3, v5, Lcom/isaigu/gymapp/widget/SavedState;->minValue:F

    .line 755
    .local v3, "min":F
    iget v2, v5, Lcom/isaigu/gymapp/widget/SavedState;->maxValue:F

    .line 756
    .local v2, "max":F
    iget v4, v5, Lcom/isaigu/gymapp/widget/SavedState;->rangeInterval:F

    .line 757
    .local v4, "rangeInterval":F
    iget v6, v5, Lcom/isaigu/gymapp/widget/SavedState;->tickNumber:I

    .line 758
    .local v6, "tickNumber":I
    invoke-virtual {p0, v3, v2, v4, v6}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setRange(FFFI)V

    .line 759
    iget v1, v5, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMin:F

    .line 760
    .local v1, "currSelectedMin":F
    iget v0, v5, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMax:F

    .line 761
    .local v0, "currSelectedMax":F
    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(FF)V

    .line 762
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 738
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 739
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/isaigu/gymapp/widget/SavedState;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/widget/SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 740
    .local v1, "ss":Lcom/isaigu/gymapp/widget/SavedState;
    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->minValue:F

    .line 741
    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->maxValue:F

    .line 742
    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->rangeInterval:F

    .line 743
    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->tickNumber:I

    .line 744
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v0

    .line 745
    .local v0, "results":[Lcom/isaigu/gymapp/widget/SeekBarState;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget v3, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    iput v3, v1, Lcom/isaigu/gymapp/widget/SavedState;->currSelectedMin:F

    .line 746
    const/4 v3, 0x1

    aget-object v3, v0, v3

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

    .prologue
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
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    .line 198
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    .line 199
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

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
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

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
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 550
    iget-boolean v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->isEnable:Z

    if-nez v10, :cond_0

    .line 733
    :goto_0
    return v9

    .line 551
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 733
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0

    .line 553
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->touchDownX:F

    .line 554
    const/4 v5, 0x0

    .line 555
    .local v5, "touchResult":Z
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v11

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/isaigu/gymapp/widget/SeekBar;->collide(FF)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 556
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 557
    const/4 v5, 0x1

    .line 558
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    .line 569
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 570
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 572
    :cond_2
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_4

    .line 573
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v11, v12, :cond_3

    move v8, v9

    :cond_3
    invoke-interface {v10, p0, v8}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 575
    :cond_4
    invoke-direct {p0, v9}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    move v9, v5

    .line 576
    goto :goto_0

    .line 559
    :cond_5
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v11

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/isaigu/gymapp/widget/SeekBar;->collide(FF)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 560
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 561
    const/4 v5, 0x1

    .line 562
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_2

    .line 563
    :cond_6
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v11

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventY(Landroid/view/MotionEvent;)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/isaigu/gymapp/widget/SeekBar;->collide(FF)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 564
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 565
    const/4 v5, 0x1

    .line 566
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto :goto_2

    .line 579
    .end local v5    # "touchResult":Z
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getEventX(Landroid/view/MotionEvent;)F

    move-result v7

    .line 580
    .local v7, "x":F
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v12, v12, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v10, v10, v12

    if-nez v10, :cond_8

    .line 581
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/widget/SeekBar;->materialRestore()V

    .line 582
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_7

    .line 583
    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v13, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v10, v13, :cond_d

    move v10, v9

    :goto_3
    invoke-interface {v12, p0, v10}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 585
    :cond_7
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->touchDownX:F

    sub-float v10, v7, v10

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_f

    .line 587
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eq v10, v12, :cond_e

    .line 588
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 589
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 590
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    .line 604
    :goto_4
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_8

    .line 605
    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v13, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v10, v13, :cond_11

    move v10, v9

    :goto_5
    invoke-interface {v12, p0, v10}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStartTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 608
    :cond_8
    iput v7, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->touchDownX:F

    .line 609
    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_12

    move v10, v11

    :goto_6
    iput v10, v12, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    .line 610
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v10, v12, :cond_19

    .line 611
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v10, v9, :cond_16

    .line 612
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gez v10, :cond_13

    .line 613
    const/4 v2, 0x0

    .line 617
    .local v2, "percent":F
    :goto_7
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 619
    .local v4, "touchLeftCellsValue":I
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_14

    .line 620
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 624
    .local v1, "currRightCellsValue":I
    :goto_8
    int-to-float v10, v4

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v2, v10, v11

    .line 625
    :goto_9
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    sub-int v10, v1, v10

    if-le v4, v10, :cond_9

    .line 626
    add-int/lit8 v4, v4, -0x1

    .line 627
    if-gez v4, :cond_15

    .line 646
    .end local v1    # "currRightCellsValue":I
    .end local v4    # "touchLeftCellsValue":I
    :cond_9
    :goto_a
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->slide(F)V

    .line 647
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v9}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 649
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 650
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 681
    .end local v2    # "percent":F
    :cond_a
    :goto_b
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_b

    .line 682
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v3

    .line 683
    .local v3, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    aget-object v8, v3, v8

    iget v8, v8, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    aget-object v11, v3, v9

    iget v11, v11, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-interface {v10, p0, v8, v11, v9}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 685
    .end local v3    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 687
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 688
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 690
    :cond_c
    invoke-direct {p0, v9}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    goto/16 :goto_1

    :cond_d
    move v10, v8

    .line 583
    goto/16 :goto_3

    .line 592
    :cond_e
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    goto/16 :goto_4

    .line 596
    :cond_f
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eq v10, v12, :cond_10

    .line 597
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 598
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    .line 599
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->scaleCurrentSeekBarThumb()V

    goto/16 :goto_4

    .line 601
    :cond_10
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iput-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    goto/16 :goto_4

    :cond_11
    move v10, v8

    .line 605
    goto/16 :goto_5

    .line 609
    :cond_12
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    const v13, 0x3dcccccd    # 0.1f

    add-float/2addr v10, v13

    goto/16 :goto_6

    .line 615
    :cond_13
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v7, v10

    mul-float/2addr v10, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v12, v12

    div-float v2, v10, v12

    .restart local v2    # "percent":F
    goto/16 :goto_7

    .line 622
    .restart local v4    # "touchLeftCellsValue":I
    :cond_14
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float v10, v11, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1    # "currRightCellsValue":I
    goto/16 :goto_8

    .line 628
    :cond_15
    int-to-float v10, v4

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v2, v10, v11

    goto/16 :goto_9

    .line 631
    .end local v1    # "currRightCellsValue":I
    .end local v2    # "percent":F
    .end local v4    # "touchLeftCellsValue":I
    :cond_16
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gez v10, :cond_17

    .line 632
    const/4 v2, 0x0

    .line 636
    .restart local v2    # "percent":F
    :goto_c
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_18

    .line 637
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v10, v11

    cmpl-float v10, v2, v10

    if-lez v10, :cond_9

    .line 638
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v2, v10, v11

    goto/16 :goto_a

    .line 634
    .end local v2    # "percent":F
    :cond_17
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v7, v10

    mul-float/2addr v10, v11

    iget v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v12, v12

    div-float v2, v10, v12

    .restart local v2    # "percent":F
    goto :goto_c

    .line 641
    :cond_18
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v10, v11, v10

    cmpl-float v10, v2, v10

    if-lez v10, :cond_9

    .line 642
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v2, v11, v10

    goto/16 :goto_a

    .line 652
    .end local v2    # "percent":F
    :cond_19
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v10, v12, :cond_a

    .line 653
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    if-le v10, v9, :cond_1d

    .line 654
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineRight()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_1b

    .line 655
    const/high16 v2, 0x3f800000    # 1.0f

    .line 659
    .restart local v2    # "percent":F
    :goto_d
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 660
    .local v6, "touchRightCellsValue":I
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 661
    .local v0, "currLeftCellsValue":I
    int-to-float v10, v6

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v2, v10, v11

    .line 663
    :goto_e
    iget v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    add-int/2addr v10, v0

    if-ge v6, v10, :cond_1a

    .line 664
    add-int/lit8 v6, v6, 0x1

    .line 665
    int-to-float v10, v6

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1c

    .line 678
    .end local v0    # "currLeftCellsValue":I
    .end local v6    # "touchRightCellsValue":I
    :cond_1a
    :goto_f
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->slide(F)V

    .line 679
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v9}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    goto/16 :goto_b

    .line 657
    .end local v2    # "percent":F
    :cond_1b
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v7, v10

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v11, v11

    div-float v2, v10, v11

    .restart local v2    # "percent":F
    goto :goto_d

    .line 666
    .restart local v0    # "currLeftCellsValue":I
    .restart local v6    # "touchRightCellsValue":I
    :cond_1c
    int-to-float v10, v6

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    mul-float v2, v10, v11

    goto :goto_e

    .line 669
    .end local v0    # "currLeftCellsValue":I
    .end local v2    # "percent":F
    .end local v6    # "touchRightCellsValue":I
    :cond_1d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineRight()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_1e

    .line 670
    const/high16 v2, 0x3f800000    # 1.0f

    .line 674
    .restart local v2    # "percent":F
    :goto_10
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v10, v11

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1a

    .line 675
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v10, v10, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float v2, v10, v11

    goto :goto_f

    .line 672
    .end local v2    # "percent":F
    :cond_1e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v7, v10

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    int-to-float v11, v11

    div-float v2, v10, v11

    .restart local v2    # "percent":F
    goto :goto_10

    .line 693
    .end local v2    # "percent":F
    .end local v7    # "x":F
    :pswitch_2
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_1f

    .line 694
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v8}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 696
    :cond_1f
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v10, v11, :cond_23

    .line 697
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 701
    :cond_20
    :goto_11
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v8}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 702
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_21

    .line 703
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v3

    .line 704
    .restart local v3    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    aget-object v11, v3, v8

    iget v11, v11, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    aget-object v12, v3, v9

    iget v12, v12, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-interface {v10, p0, v11, v12, v8}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 707
    .end local v3    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_22

    .line 708
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 710
    :cond_22
    invoke-direct {p0, v8}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    goto/16 :goto_1

    .line 698
    :cond_23
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v10, v11, :cond_20

    .line 699
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    goto :goto_11

    .line 713
    :pswitch_3
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v10, :cond_24

    .line 714
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v8}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 716
    :cond_24
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10, v8}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 717
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v10}, Lcom/isaigu/gymapp/widget/SeekBar;->materialRestore()V

    .line 718
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->resetCurrentSeekBarThumb()V

    .line 719
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_25

    .line 720
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v3

    .line 721
    .restart local v3    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    aget-object v11, v3, v8

    iget v11, v11, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    aget-object v12, v3, v9

    iget v12, v12, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    invoke-interface {v10, p0, v11, v12, v8}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 724
    .end local v3    # "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    :cond_25
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_26

    .line 725
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 727
    :cond_26
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v10, :cond_27

    .line 728
    iget-object v10, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    iget-object v11, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->currTouchSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v12, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-ne v11, v12, :cond_28

    :goto_12
    invoke-interface {v10, p0, v9}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onStopTrackingTouch(Lcom/isaigu/gymapp/widget/RangeSeekBar;Z)V

    .line 730
    :cond_27
    invoke-direct {p0, v8}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->changeThumbActivateState(Z)V

    goto/16 :goto_1

    :cond_28
    move v9, v8

    .line 728
    goto :goto_12

    .line 551
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
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

    .prologue
    .line 472
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorText(Ljava/lang/String;)V

    .line 478
    :cond_1
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatPattern"    # Ljava/lang/String;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    .line 491
    :cond_1
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatPattern"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorTextStringFormat(Ljava/lang/String;)V

    .line 504
    :cond_1
    return-void
.end method

.method public setLineBottom(I)V
    .locals 0
    .param p1, "lineBottom"    # I

    .prologue
    .line 793
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineBottom:I

    .line 794
    return-void
.end method

.method public setLineLeft(I)V
    .locals 0
    .param p1, "lineLeft"    # I

    .prologue
    .line 801
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineLeft:I

    .line 802
    return-void
.end method

.method public setLineRight(I)V
    .locals 0
    .param p1, "lineRight"    # I

    .prologue
    .line 809
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineRight:I

    .line 810
    return-void
.end method

.method public setLineTop(I)V
    .locals 0
    .param p1, "lineTop"    # I

    .prologue
    .line 785
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineTop:I

    .line 786
    return-void
.end method

.method public setLineWidth(I)V
    .locals 0
    .param p1, "lineWidth"    # I

    .prologue
    .line 934
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->lineWidth:I

    .line 935
    return-void
.end method

.method public setOnRangeChangedListener(Lcom/isaigu/gymapp/widget/OnRangeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    .line 766
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .param p1, "progressColor"    # I

    .prologue
    .line 918
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressColor:I

    .line 919
    return-void
.end method

.method public setProgressColor(II)V
    .locals 0
    .param p1, "progressDefaultColor"    # I
    .param p2, "progressColor"    # I

    .prologue
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

    .prologue
    .line 926
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressDefaultColor:I

    .line 927
    return-void
.end method

.method public setProgressHeight(I)V
    .locals 0
    .param p1, "progressHeight"    # I

    .prologue
    .line 821
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressHeight:I

    .line 822
    return-void
.end method

.method public setProgressRadius(F)V
    .locals 0
    .param p1, "progressRadius"    # F

    .prologue
    .line 910
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->progressRadius:F

    .line 911
    return-void
.end method

.method public setRange(FF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
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

    .prologue
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

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 363
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() max must be greater than min ! #max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    cmpg-float v0, p3, v5

    if-gez v0, :cond_1

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() interval must be greater than zero ! #interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_1
    sub-float v0, p2, p1

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() interval must be less than (max - min) ! #interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #max - min:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-float v2, p2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_2
    if-ge p4, v1, :cond_3

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRange() tickMarkNumber must be greater than 1 ! #tickMarkNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_3
    iput p2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    .line 376
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    .line 377
    iput p4, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 378
    int-to-float v0, p4

    div-float v0, v4, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    .line 379
    iput p3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    .line 380
    sub-float v0, p2, p1

    div-float v0, p3, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    .line 381
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    div-float v2, v0, v2

    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    rem-float/2addr v0, v3

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    int-to-float v0, v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    .line 383
    if-le p4, v1, :cond_8

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_7

    .line 385
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 408
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 409
    return-void

    .line 381
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 387
    :cond_6
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto :goto_1

    .line 391
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 392
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->cellsPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minRangeCells:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, v4, v1

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto :goto_1

    .line 396
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v0, :cond_a

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto/16 :goto_1

    .line 399
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto/16 :goto_1

    .line 403
    :cond_a
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v0, v4, v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v0, v4, v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, v1, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 404
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->reservePercent:F

    sub-float v1, v4, v1

    iput v1, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto/16 :goto_1
.end method

.method public setRangeInterval(F)V
    .locals 0
    .param p1, "rangeInterval"    # F

    .prologue
    .line 902
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    .line 903
    return-void
.end method

.method public setSeekBarMode(I)V
    .locals 0
    .param p1, "seekBarMode"    # I

    .prologue
    .line 946
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->seekBarMode:I

    .line 947
    return-void
.end method

.method public setTickMarkGravity(I)V
    .locals 0
    .param p1, "tickMarkGravity"    # I

    .prologue
    .line 886
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkGravity:I

    .line 887
    return-void
.end method

.method public setTickMarkInRangeTextColor(I)V
    .locals 0
    .param p1, "tickMarkInRangeTextColor"    # I

    .prologue
    .line 850
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkInRangeTextColor:I

    .line 851
    return-void
.end method

.method public setTickMarkMode(I)V
    .locals 0
    .param p1, "tickMarkMode"    # I

    .prologue
    .line 942
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkMode:I

    .line 943
    return-void
.end method

.method public setTickMarkNumber(I)V
    .locals 0
    .param p1, "tickMarkNumber"    # I

    .prologue
    .line 930
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    .line 931
    return-void
.end method

.method public setTickMarkTextArray([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "tickMarkTextArray"    # [Ljava/lang/CharSequence;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextArray:[Ljava/lang/CharSequence;

    .line 895
    return-void
.end method

.method public setTickMarkTextColor(I)V
    .locals 0
    .param p1, "tickMarkTextColor"    # I

    .prologue
    .line 842
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextColor:I

    .line 843
    return-void
.end method

.method public setTickMarkTextMargin(I)V
    .locals 0
    .param p1, "tickMarkTextMargin"    # I

    .prologue
    .line 870
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextMargin:I

    .line 871
    return-void
.end method

.method public setTickMarkTextSize(I)V
    .locals 0
    .param p1, "tickMarkTextSize"    # I

    .prologue
    .line 878
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkTextSize:I

    .line 879
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .prologue
    .line 950
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 951
    return-void
.end method

.method public setValue(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 285
    iget v0, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->setValue(FF)V

    .line 286
    return-void
.end method

.method public setValue(FF)V
    .locals 5
    .param p1, "leftValue"    # F
    .param p2, "rightValue"    # F

    .prologue
    .line 289
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 290
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 291
    sub-float v2, p2, p1

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 292
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rangeInterval:F

    sub-float p1, p2, v2

    .line 294
    :cond_0
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 295
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setValue() min < (preset min - offsetValue) . #min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #preset min:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_1
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setValue() max > (preset max - offsetValue) . #max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #preset max:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 300
    :cond_2
    iput p1, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftProgress:F

    .line 301
    iput p2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightProgress:F

    .line 302
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->maxProgress:F

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v1, v2, v3

    .line 304
    .local v1, "range":F
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 305
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->tickMarkNumber:I

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v0, v2

    .line 306
    .local v0, "percent":I
    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    rem-int/2addr v2, v0

    if-nez v2, :cond_3

    iget v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    rem-int/2addr v2, v0

    if-eqz v2, :cond_4

    .line 307
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The current value must be at the equal point"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_4
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 310
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 311
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 320
    .end local v0    # "percent":I
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    if-eqz v2, :cond_6

    .line 321
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->callback:Lcom/isaigu/gymapp/widget/OnRangeChangedListener;

    const/4 v3, 0x0

    invoke-interface {v2, p0, p1, p2, v3}, Lcom/isaigu/gymapp/widget/OnRangeChangedListener;->onRangeChanged(Lcom/isaigu/gymapp/widget/RangeSeekBar;FFZ)V

    .line 323
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->invalidate()V

    .line 324
    return-void

    .line 314
    :cond_7
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->leftSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 315
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    if-eqz v2, :cond_5

    .line 316
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->rightSB:Lcom/isaigu/gymapp/widget/SeekBar;

    iget v3, p0, Lcom/isaigu/gymapp/widget/RangeSeekBar;->minProgress:F

    sub-float v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v1

    iput v3, v2, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    goto :goto_0
.end method
