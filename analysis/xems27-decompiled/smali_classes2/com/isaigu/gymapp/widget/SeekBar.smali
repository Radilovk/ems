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

    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    return-object v0
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text2Draw"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    add-int/2addr v0, v1

    .line 171
    .local v0, "contentWidth":I
    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    if-gtz v1, :cond_0

    .line 172
    move v1, v0

    .local v1, "realIndicatorWidth":I
    goto :goto_0

    .line 173
    .end local v1    # "realIndicatorWidth":I
    :cond_0
    if-ge v1, v0, :cond_1

    .line 174
    move v1, v0

    .restart local v1    # "realIndicatorWidth":I
    goto :goto_0

    .line 176
    .end local v1    # "realIndicatorWidth":I
    :cond_1
    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    .line 179
    .restart local v1    # "realIndicatorWidth":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 180
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->bottom:I

    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 181
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 182
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 184
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 188
    iget v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v3, v2, 0x2

    .line 189
    .local v3, "ax":I
    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->bottom:I

    sub-int/2addr v4, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    sub-int/2addr v4, v2

    .line 190
    .local v4, "ay":I
    iget v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    sub-int v5, v3, v2

    .line 191
    .local v5, "bx":I
    sub-int v6, v4, v2

    .line 192
    .local v6, "by":I
    add-int/2addr v2, v3

    .line 193
    .local v2, "cx":I
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    .line 194
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v8, v3

    int-to-float v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 195
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    int-to-float v8, v2

    int-to-float v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 198
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 199
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 200
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 204
    .end local v2    # "cx":I
    .end local v3    # "ax":I
    .end local v4    # "ay":I
    .end local v5    # "bx":I
    .end local v6    # "by":I
    :cond_2
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    .line 205
    .local v2, "defaultPaddingOffset":I
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    .line 206
    .local v4, "leftOffset":I
    iget-object v5, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    sub-float/2addr v3, v7

    mul-float v6, v6, v3

    float-to-int v3, v6

    sub-int/2addr v5, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLinePaddingRight()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 207
    .local v5, "rightOffset":I
    if-lez v4, :cond_3

    .line 208
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 209
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    iput v6, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 210
    :cond_3
    if-lez v5, :cond_4

    .line 211
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 212
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v3, Landroid/graphics/Rect;->right:I

    .line 216
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 217
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-static {p1, v3, v6}, Lcom/isaigu/gymapp/widget/Utils;->drawNinePath(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 218
    :cond_5
    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    .line 219
    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    invoke-direct {v3, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 221
    :cond_6
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 226
    :goto_2
    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    if-lez v3, :cond_7

    .line 227
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    add-int/2addr v3, v6

    .local v3, "tx":I
    goto :goto_3

    .line 228
    .end local v3    # "tx":I
    :cond_7
    iget v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    if-lez v3, :cond_8

    .line 229
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v3, v6

    .restart local v3    # "tx":I
    goto :goto_3

    .line 231
    .end local v3    # "tx":I
    :cond_8
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    .line 234
    .restart local v3    # "tx":I
    :goto_3
    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    if-lez v6, :cond_9

    .line 235
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    add-int/2addr v6, v7

    .local v6, "ty":I
    goto :goto_4

    .line 236
    .end local v6    # "ty":I
    :cond_9
    iget v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    if-lez v6, :cond_a

    .line 237
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    sub-int/2addr v6, v7

    .restart local v6    # "ty":I
    goto :goto_4

    .line 239
    .end local v6    # "ty":I
    :cond_a
    iget-object v6, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    .line 243
    .restart local v6    # "ty":I
    :goto_4
    iget-object v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    int-to-float v7, v3

    int-to-float v8, v6

    iget-object v9, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 245
    return-void
.end method

.method private drawThumb(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 303
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    if-nez v3, :cond_0

    .line 304
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getProgressHeight()I

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 306
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getLineTop()I

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getProgressHeight()I

    move-result v4

    iget v5, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    :cond_1
    :goto_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 90
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/R$styleable;->RangeSeekBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "t":Landroid/content/res/TypedArray;
    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    .line 93
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorDrawableId:I

    .line 94
    const/16 v1, 0xa

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    .line 95
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    .line 96
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    .line 97
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    .line 98
    const/16 v1, 0xb

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    .line 99
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f060031

    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    .line 100
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    .line 101
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    .line 102
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    .line 103
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    .line 104
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    .line 105
    const/16 v1, 0x17

    const v4, 0x7f0800c6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbDrawableId:I

    .line 106
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedDrawableId:I

    .line 107
    const/16 v1, 0x1a

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    .line 108
    const/16 v1, 0x19

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbScaleRatio:F

    .line 109
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorRadius:F

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method private initBitmap()V
    .locals 1

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

    .line 114
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if you want to show indicator, the indicatorHeight must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    :goto_0
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    if-gtz v0, :cond_2

    .line 118
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    .line 120
    :cond_2
    return-void
.end method


# virtual methods
.method protected collide(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 317
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

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

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 254
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->lineWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 255
    .local v0, "offset":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->rangeSeekBar:Lcom/isaigu/gymapp/widget/RangeSeekBar;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/RangeSeekBar;->getRangeSeekBarState()[Lcom/isaigu/gymapp/widget/SeekBarState;

    move-result-object v1

    .line 258
    .local v1, "states":[Lcom/isaigu/gymapp/widget/SeekBarState;
    iget-object v3, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    .line 259
    .local v3, "text2Draw":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isLeft:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 261
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz v4, :cond_0

    .line 262
    aget-object v7, v1, v6

    iget v7, v7, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-double v7, v7

    invoke-virtual {v4, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 264
    :cond_0
    aget-object v4, v1, v6

    iget-object v3, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    goto :goto_0

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 269
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    if-eqz v4, :cond_2

    .line 270
    aget-object v7, v1, v5

    iget v7, v7, Lcom/isaigu/gymapp/widget/SeekBarState;->value:F

    float-to-double v7, v7

    invoke-virtual {v4, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 272
    :cond_2
    aget-object v4, v1, v5

    iget-object v3, v4, Lcom/isaigu/gymapp/widget/SeekBarState;->indicatorText:Ljava/lang/String;

    .line 276
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 277
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v6

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 279
    :cond_4
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 280
    iget-object v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v6, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 282
    iget v4, p0, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    int-to-float v4, v4

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 283
    iget v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 284
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/widget/SeekBar;->setShowIndicatorEnable(Z)V

    .line 286
    :cond_5
    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    if-eqz v2, :cond_6

    .line 287
    invoke-direct {p0, p1, v3}, Lcom/isaigu/gymapp/widget/SeekBar;->drawIndicator(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 289
    :cond_6
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/SeekBar;->drawThumb(Landroid/graphics/Canvas;)V

    .line 290
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 291
    return-void
.end method

.method protected getActivate()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    return v0
.end method

.method public getIndicatorArrowSize()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    return v0
.end method

.method public getIndicatorBackgroundColor()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    return v0
.end method

.method public getIndicatorDrawableId()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorDrawableId:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    return v0
.end method

.method public getIndicatorMargin()I
    .locals 1

    .line 430
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    return v0
.end method

.method public getIndicatorPaddingBottom()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    return v0
.end method

.method public getIndicatorPaddingLeft()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    return v0
.end method

.method public getIndicatorPaddingRight()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    return v0
.end method

.method public getIndicatorPaddingTop()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    return v0
.end method

.method public getIndicatorShowMode()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    return v0
.end method

.method public getIndicatorTextColor()I
    .locals 1

    .line 470
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    return v0
.end method

.method public getIndicatorTextDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextDecimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getIndicatorTextSize()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    return v0
.end method

.method public getIndicatorWidth()I
    .locals 1

    .line 454
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    return v0
.end method

.method public getThumbDrawableId()I
    .locals 1

    .line 497
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbDrawableId:I

    return v0
.end method

.method public getThumbInactivatedDrawableId()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbInactivatedDrawableId:I

    return v0
.end method

.method public getThumbScaleRatio()F
    .locals 1

    .line 533
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbScaleRatio:F

    return v0
.end method

.method public getThumbSize()I
    .locals 1

    .line 508
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    return v0
.end method

.method public materialRestore()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

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
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "parentLineWidth"    # I

    .line 149
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->initVariables()V

    .line 150
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/SeekBar;->initBitmap()V

    .line 151
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    div-int/lit8 v1, v0, 0x2

    sub-int v1, p1, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->left:I

    .line 152
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->right:I

    .line 153
    div-int/lit8 v1, v0, 0x2

    sub-int v1, p2, v1

    iput v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->top:I

    .line 154
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

    .line 520
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isActivate:Z

    .line 521
    return-void
.end method

.method public setIndicatorArrowSize(I)V
    .locals 0
    .param p1, "indicatorArrowSize"    # I

    .line 394
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorArrowSize:I

    .line 395
    return-void
.end method

.method public setIndicatorBackgroundColor(I)V
    .locals 0
    .param p1, "indicatorBackgroundColor"    # I

    .line 482
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorBackgroundColor:I

    .line 483
    return-void
.end method

.method public setIndicatorDrawableId(I)V
    .locals 1
    .param p1, "indicatorDrawableId"    # I

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

    .line 450
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorHeight:I

    .line 451
    return-void
.end method

.method public setIndicatorMargin(I)V
    .locals 0
    .param p1, "indicatorMargin"    # I

    .line 434
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorMargin:I

    .line 435
    return-void
.end method

.method public setIndicatorPaddingBottom(I)V
    .locals 0
    .param p1, "indicatorPaddingBottom"    # I

    .line 426
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingBottom:I

    .line 427
    return-void
.end method

.method public setIndicatorPaddingLeft(I)V
    .locals 0
    .param p1, "indicatorPaddingLeft"    # I

    .line 402
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingLeft:I

    .line 403
    return-void
.end method

.method public setIndicatorPaddingRight(I)V
    .locals 0
    .param p1, "indicatorPaddingRight"    # I

    .line 410
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingRight:I

    .line 411
    return-void
.end method

.method public setIndicatorPaddingTop(I)V
    .locals 0
    .param p1, "indicatorPaddingTop"    # I

    .line 418
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorPaddingTop:I

    .line 419
    return-void
.end method

.method public setIndicatorShowMode(I)V
    .locals 0
    .param p1, "indicatorShowMode"    # I

    .line 442
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    .line 443
    return-void
.end method

.method public setIndicatorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->userText2Draw:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setIndicatorTextColor(I)V
    .locals 0
    .param p1, "indicatorTextColor"    # I

    .line 474
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextColor:I

    .line 475
    return-void
.end method

.method public setIndicatorTextDecimalFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatPattern"    # Ljava/lang/String;

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

    .line 466
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextSize:I

    .line 467
    return-void
.end method

.method public setIndicatorTextStringFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "formatPattern"    # Ljava/lang/String;

    .line 375
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorTextStringFormat:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setIndicatorWidth(I)V
    .locals 0
    .param p1, "indicatorWidth"    # I

    .line 458
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorWidth:I

    .line 459
    return-void
.end method

.method protected setShowIndicatorEnable(Z)V
    .locals 3
    .param p1, "isEnable"    # Z

    .line 328
    iget v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->indicatorShowMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    goto :goto_0

    .line 330
    :cond_2
    iput-boolean p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->isShowIndicator:Z

    .line 331
    nop

    .line 340
    :goto_0
    return-void
.end method

.method public setThumbDrawableId(I)V
    .locals 2
    .param p1, "thumbDrawableId"    # I

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

    .line 512
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->thumbSize:I

    .line 513
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .line 524
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/SeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 525
    return-void
.end method

.method protected slide(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 322
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 323
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 324
    :cond_1
    :goto_0
    iput p1, p0, Lcom/isaigu/gymapp/widget/SeekBar;->currPercent:F

    .line 325
    return-void
.end method
