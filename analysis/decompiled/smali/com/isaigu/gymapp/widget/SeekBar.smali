.class public Lcom/isaigu/gymapp/widget/SeekBar;
.super Ljava/lang/Object;
.source "SeekBar.java"


# static fields
.field public static final INDICATOR_MODE_ALWAYS_HIDE:I = 0x1

.field public static final INDICATOR_MODE_ALWAYS_SHOW:I = 0x3

.field public static final INDICATOR_MODE_ALWAYS_SHOW_AFTER_TOUCH:I = 0x2

.field public static final INDICATOR_MODE_SHOW_WHEN_TOUCH:I


# instance fields
.field private anim:Landroid/animation/ValueAnimator;

.field protected bottom:I

.field protected currPercent:F

.field private indicatorArrowPath:Landroid/graphics/Path;

.field private indicatorArrowSize:I

.field private indicatorBackgroundColor:I

.field private indicatorBitmap:Landroid/graphics/Bitmap;

.field private indicatorDrawableId:I

.field private indicatorHeight:I

.field private indicatorMargin:I

.field private indicatorPaddingBottom:I

.field private indicatorPaddingLeft:I

.field private indicatorPaddingRight:I

.field private indicatorPaddingTop:I

.field private indicatorRadius:F

.field private indicatorRect:Landroid/graphics/Rect;

.field private indicatorShowMode:I

.field private indicatorTextColor:I

.field private indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

.field private indicatorTextRect:Landroid/graphics/Rect;

.field private indicatorTextSize:I

.field private indicatorTextStringFormat:Ljava/lang/String;

.field private indicatorWidth:I

.field private isActivate:Z

.field private isLeft:Z

.field private isShowIndicator:Z

.field protected left:I

.field private lineWidth:I

.field protected material:F

.field private paint:Landroid/graphics/Paint;

.field private rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

.field protected right:I

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private thumbDrawableId:I

.field private thumbInactivatedBitmap:Landroid/graphics/Bitmap;

.field private thumbInactivatedDrawableId:I

.field private thumbScaleRatio:F

.field private thumbSize:I

.field protected top:I

.field private userText2Draw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/widget/RangeSeekBar;Landroid/util/AttributeSet;Z)V
    .locals 2
    .param p1, "rangeSeekBar"    # Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "isLeft"    # Z

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    .line 74
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    .line 82
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    .line 83
    iput-boolean p3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isLeft:Z

    .line 84
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/widget/SeekBar;->initAttrs(Landroid/util/AttributeSet;)V

    .line 85
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->initVariables()V

    .line 86
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->initBitmap()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/SeekBar;)Lcom/isaigu/gymapp/widget/RangeSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/widget/SeekBar;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    return-object v0
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text2Draw"    # Ljava/lang/String;

    .prologue
    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    move/from16 v18, v0

    add-int v9, v17, v18

    .line 171
    .local v9, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    move/from16 v17, v0

    if-gtz v17, :cond_2

    .line 172
    move v13, v9

    .line 179
    .local v13, "realIndicatorWidth":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    div-int/lit8 v19, v13, 0x2

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    move/from16 v17, v0

    div-int/lit8 v5, v17, 0x2

    .line 189
    .local v5, "ax":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 190
    .local v6, "ay":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    move/from16 v17, v0

    sub-int v7, v5, v17

    .line 191
    .local v7, "bx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    move/from16 v17, v0

    sub-int v8, v6, v17

    .line 192
    .local v8, "by":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    move/from16 v17, v0

    add-int v10, v5, v17

    .line 193
    .local v10, "cx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    int-to-float v0, v7

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 204
    .end local v5    # "ax":I
    .end local v6    # "ay":I
    .end local v7    # "bx":I
    .end local v8    # "by":I
    .end local v10    # "cx":I
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v18}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v11

    .line 205
    .local v11, "defaultPaddingOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v18

    sub-int v17, v17, v18

    add-int v12, v17, v11

    .line 206
    .local v12, "leftOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLinePaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    add-int v14, v17, v11

    .line 207
    .local v14, "rightOffset":I
    if-lez v12, :cond_4

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 216
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/Utils;->drawNinePath(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 226
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 234
    .local v15, "tx":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    move/from16 v17, v0

    if-lez v17, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 243
    .local v16, "ty":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    return-void

    .line 173
    .end local v11    # "defaultPaddingOffset":I
    .end local v12    # "leftOffset":I
    .end local v13    # "realIndicatorWidth":I
    .end local v14    # "rightOffset":I
    .end local v15    # "tx":I
    .end local v16    # "ty":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v9, :cond_3

    .line 174
    move v13, v9

    .restart local v13    # "realIndicatorWidth":I
    goto/16 :goto_0

    .line 176
    .end local v13    # "realIndicatorWidth":I
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    .restart local v13    # "realIndicatorWidth":I
    goto/16 :goto_0

    .line 210
    .restart local v11    # "defaultPaddingOffset":I
    .restart local v12    # "leftOffset":I
    .restart local v14    # "rightOffset":I
    :cond_4
    if-lez v14, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v14

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 218
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_6

    .line 219
    new-instance v17, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 221
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 228
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    move/from16 v17, v0

    if-lez v17, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v15, v17, v18

    .restart local v15    # "tx":I
    goto/16 :goto_3

    .line 231
    .end local v15    # "tx":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v18, v13, v18

    div-int/lit8 v18, v18, 0x2

    add-int v15, v17, v18

    .restart local v15    # "tx":I
    goto/16 :goto_3

    .line 236
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    move/from16 v17, v0

    if-lez v17, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .restart local v16    # "ty":I
    goto/16 :goto_4

    .line 239
    .end local v16    # "ty":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    add-int/lit8 v16, v17, 0x1

    .restart local v16    # "ty":I
    goto/16 :goto_4
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getProgressHeight()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getProgressHeight()I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "t":Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 92
    :cond_0
    const/16 v1, 0x14

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    .line 93
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorDrawableId:I

    .line 94
    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    .line 95
    const/16 v1, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    .line 96
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    .line 97
    const/16 v1, 0x15

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    .line 98
    const/16 v1, 0x16

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    .line 99
    const/16 v1, 0x19

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d001d

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    .line 100
    const/16 v1, 0x1a

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    .line 101
    const/16 v1, 0x1b

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    .line 102
    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    .line 103
    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    .line 104
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    .line 105
    const/16 v1, 0x1f

    const v2, 0x7f0200be

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbDrawableId:I

    .line 106
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedDrawableId:I

    .line 107
    const/16 v1, 0x21

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41d00000    # 26.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    .line 108
    const/16 v1, 0x22

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbScaleRatio:F

    .line 109
    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private initBitmap()V
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorDrawableId:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setIndicatorDrawableId(I)V

    .line 136
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbDrawableId:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setThumbDrawableId(I)V

    .line 137
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedDrawableId:I

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/SeekBar;->setThumbInactivatedDrawableId(I)V

    .line 138
    return-void
.end method

.method private initVariables()V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if you want to show indicator, the indicatorHeight must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    if-gtz v0, :cond_1

    .line 118
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    .line 120
    :cond_1
    return-void
.end method


# virtual methods
.method protected collide(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 317
    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 318
    .local v0, "offset":I
    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->right:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->top:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 254
    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 255
    .local v0, "offset":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    int-to-float v3, v0

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v1

    .line 258
    .local v1, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    .line 259
    .local v2, "text2Draw":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isLeft:Z

    if-eqz v3, :cond_5

    .line 260
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz v3, :cond_4

    .line 262
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    aget-object v4, v1, v6

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 276
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 280
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v6, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 282
    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    int-to-float v3, v3

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 284
    invoke-virtual {p0, v7}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 286
    :cond_2
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    if-eqz v3, :cond_3

    .line 287
    invoke-direct {p0, p1, v2}, Lcom/isaigu/gymapp/widget/SeekBar;->drawIndicator(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 289
    :cond_3
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    return-void

    .line 264
    :cond_4
    aget-object v3, v1, v6

    iget-object v2, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_5
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 269
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz v3, :cond_6

    .line 270
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    aget-object v4, v1, v7

    iget v4, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 272
    :cond_6
    aget-object v3, v1, v7

    iget-object v2, v3, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getActivate()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    return v0
.end method

.method public getIndicatorArrowSize()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    return v0
.end method

.method public getIndicatorBackgroundColor()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    return v0
.end method

.method public getIndicatorDrawableId()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorDrawableId:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    return v0
.end method

.method public getIndicatorMargin()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    return v0
.end method

.method public getIndicatorPaddingBottom()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    return v0
.end method

.method public getIndicatorPaddingLeft()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    return v0
.end method

.method public getIndicatorPaddingRight()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    return v0
.end method

.method public getIndicatorPaddingTop()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    return v0
.end method

.method public getIndicatorShowMode()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    return v0
.end method

.method public getIndicatorTextColor()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    return v0
.end method

.method public getIndicatorTextDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getIndicatorTextSize()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    return v0
.end method

.method public getIndicatorWidth()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    return v0
.end method

.method public getThumbDrawableId()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbDrawableId:I

    return v0
.end method

.method public getThumbInactivatedDrawableId()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedDrawableId:I

    return v0
.end method

.method public getThumbScaleRatio()F
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbScaleRatio:F

    return v0
.end method

.method public getThumbSize()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    return v0
.end method

.method public materialRestore()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 344
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->material:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/isaigu/gymapp/widget/SeekBar$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/SeekBar$1;-><init>(Lcom/isaigu/gymapp/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/isaigu/gymapp/widget/SeekBar$2;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/SeekBar$2;-><init>(Lcom/isaigu/gymapp/widget/SeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 360
    return-void
.end method

.method protected onSizeChanged(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "parentLineWidth"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->initVariables()V

    .line 150
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->initBitmap()V

    .line 151
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    .line 152
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->right:I

    .line 153
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->top:I

    .line 154
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->bottom:I

    .line 155
    iput p3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    .line 158
    return-void
.end method

.method protected setActivate(Z)V
    .locals 0
    .param p1, "activate"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    .line 521
    return-void
.end method

.method public setIndicatorArrowSize(I)V
    .locals 0
    .param p1, "indicatorArrowSize"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    .line 395
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 0
    .param p1, "indicatorBackgroundColor"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    .line 483
    return-void
.end method

.method public setIndicatorDrawableId(I)V
    .locals 1
    .param p1, "indicatorDrawableId"    # I

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorDrawableId:I

    .line 385
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    .line 387
    :cond_0
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0
    .param p1, "indicatorHeight"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    .line 451
    return-void
.end method

.method public setIndicatorMargin(I)V
    .locals 0
    .param p1, "indicatorMargin"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    .line 435
    return-void
.end method

.method public setIndicatorPaddingBottom(I)V
    .locals 0
    .param p1, "indicatorPaddingBottom"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    .line 427
    return-void
.end method

.method public setIndicatorPaddingLeft(I)V
    .locals 0
    .param p1, "indicatorPaddingLeft"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    .line 403
    return-void
.end method

.method public setIndicatorPaddingRight(I)V
    .locals 0
    .param p1, "indicatorPaddingRight"    # I

    .prologue
    .line 410
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    .line 411
    return-void
.end method

.method public setIndicatorPaddingTop(I)V
    .locals 0
    .param p1, "indicatorPaddingTop"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    .line 419
    return-void
.end method

.method public setIndicatorShowMode(I)V
    .locals 0
    .param p1, "indicatorShowMode"    # I

    .prologue
    .line 442
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    .line 443
    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setIndicatorTextColor(I)V
    .locals 0
    .param p1, "indicatorTextColor"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    .line 475
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatPattern"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    .line 368
    return-void
.end method

.method public setIndicatorTextSize(I)V
    .locals 0
    .param p1, "indicatorTextSize"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    .line 467
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "formatPattern"    # Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 0
    .param p1, "indicatorWidth"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    .line 459
    return-void
.end method

.method protected setShowIndicatorEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 328
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    goto :goto_0

    .line 334
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    goto :goto_0

    .line 337
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setThumbDrawableId(I)V
    .locals 2
    .param p1, "thumbDrawableId"    # I

    .prologue
    .line 501
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbDrawableId:I

    .line 503
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/Utils;->drawableToBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 505
    :cond_0
    return-void
.end method

.method public setThumbInactivatedDrawableId(I)V
    .locals 2
    .param p1, "thumbInactivatedDrawableId"    # I

    .prologue
    .line 490
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedDrawableId:I

    .line 492
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/Utils;->drawableToBitmap(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    .line 494
    :cond_0
    return-void
.end method

.method public setThumbSize(I)V
    .locals 0
    .param p1, "thumbSize"    # I

    .prologue
    .line 512
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    .line 513
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 525
    return-void
.end method

.method protected slide(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 322
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 324
    :cond_0
    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 325
    return-void

    .line 323
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
